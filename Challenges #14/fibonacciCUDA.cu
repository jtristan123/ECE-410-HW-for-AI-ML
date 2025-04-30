#include <iostream>
#include <cmath>
#include <cuda_runtime.h>
#include <fstream>

// Each thread computes F(i) via a simple loop
__global__
void fibKernel(int N, unsigned long long* fib) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < N) {
        unsigned long long a = 0, b = 1;
        for (int j = 0; j < i; ++j) {
            unsigned long long next = a + b;
            a = b;
            b = next;
        }
        fib[i] = a;
    }
}

int main() {
    const int minExp = 15;
    const int maxExp = 25;
    const int TPB    = 256;

    // open CSV and write header
    std::ofstream csv("fibonacci_benchmark.csv");
    csv << "exp,N,alloc_ms,mem_ms,kernel_ms,maxError\n";

    for (int exp = minExp; exp <= maxExp; ++exp) {
        int N = 1 << exp;

        // --- 1) ALLOCATIONS timing ---
        cudaEvent_t allocStart, allocStop;
        cudaEventCreate(&allocStart);
        cudaEventCreate(&allocStop);
        cudaEventRecord(allocStart);

        // host output buffer
        unsigned long long* fib_host = (unsigned long long*)malloc(N * sizeof(unsigned long long));
        // device output buffer
        unsigned long long* fib_dev;
        cudaMalloc(&fib_dev, N * sizeof(unsigned long long));

        cudaEventRecord(allocStop);
        cudaEventSynchronize(allocStop);
        float allocMs = 0;
        cudaEventElapsedTime(&allocMs, allocStart, allocStop);

        // --- 2) MEMORY TRANSFERS timing (Device→Host) ---
        cudaEvent_t memStart, memStop;
        cudaEventCreate(&memStart);
        cudaEventCreate(&memStop);
        cudaEventRecord(memStart);

        // copy results back after kernel (we’ll actually launch the kernel next,
        // but we time the memcpy exactly as you did before)
        // NOTE: this copy will fetch old data until after the kernel, but its timing
        // placement matches your pattern of H2D+D2H timing.
        cudaMemcpy(fib_host, fib_dev, N * sizeof(unsigned long long),
                   cudaMemcpyDeviceToHost);

        cudaEventRecord(memStop);
        cudaEventSynchronize(memStop);
        float memMs = 0;
        cudaEventElapsedTime(&memMs, memStart, memStop);

        // --- 3) KERNEL execution timing ---
        int blocks = (N + TPB - 1) / TPB;
        cudaEvent_t kernStart, kernStop;
        cudaEventCreate(&kernStart);
        cudaEventCreate(&kernStop);
        cudaEventRecord(kernStart);

        fibKernel<<<blocks, TPB>>>(N, fib_dev);
        cudaDeviceSynchronize();

        cudaEventRecord(kernStop);
        cudaEventSynchronize(kernStop);
        float kernelMs = 0;
        cudaEventElapsedTime(&kernelMs, kernStart, kernStop);

        // now fetch the real results
        cudaMemcpy(fib_host, fib_dev, N * sizeof(unsigned long long),
                   cudaMemcpyDeviceToHost);

        // --- verify results on CPU + compute max error ---
        unsigned long long maxError = 0;
        for (int i = 0; i < N; ++i) {
            unsigned long long a = 0, b = 1;
            for (int j = 0; j < i; ++j) {
                unsigned long long t = a + b;
                a = b; b = t;
            }
            unsigned long long diff = (a > fib_host[i])
                                       ? a - fib_host[i]
                                       : fib_host[i] - a;
            if (diff > maxError) maxError = diff;
        }

        // console output
        std::cout 
            << "2^" << exp << " (N=" << N << "): "
            << "alloc="  << allocMs   << " ms, "
            << "mem="    << memMs     << " ms, "
            << "kern="   << kernelMs  << " ms, "
            << "maxErr=" << maxError  << std::endl;

        // CSV row
        csv 
            << exp      << ','
            << N        << ','
            << allocMs  << ','
            << memMs    << ','
            << kernelMs << ','
            << maxError << '\n';

        // clean up events & memory
        cudaEventDestroy(allocStart); cudaEventDestroy(allocStop);
        cudaEventDestroy(memStart);   cudaEventDestroy(memStop);
        cudaEventDestroy(kernStart);  cudaEventDestroy(kernStop);
        free(fib_host);
        cudaFree(fib_dev);
    }

    csv.close();
    return 0;
}

