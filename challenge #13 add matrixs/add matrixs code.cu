#include <iostream>
#include <cmath>
#include <cuda_runtime.h>

// parallel SAXPY‐style kernel (here just x + y)
__global__
void addKernel(int n, float* x, float* y) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < n) {
        y[i] = x[i] + y[i];
    }
}

int main() {
    const int minExp = 15;
    const int maxExp = 25;
    const int threadsPerBlock = 256;

    for (int exp = minExp; exp <= maxExp; ++exp) {
        int N = 1 << exp;
        float *x, *y;

        // 1) allocate unified memory
        cudaMallocManaged(&x, N * sizeof(float));
        cudaMallocManaged(&y, N * sizeof(float));

        // 2) initialize on host
        for (int i = 0; i < N; ++i) {
            x[i] = 1.0f;
            y[i] = 2.0f;
        }

        int blocksPerGrid = (N + threadsPerBlock - 1) / threadsPerBlock;

        // 3) setup CUDA event timers
        cudaEvent_t start, stop;
        cudaEventCreate(&start);
        cudaEventCreate(&stop);

        // 4) record, launch, record, sync
        cudaEventRecord(start);
        addKernel<<<blocksPerGrid, threadsPerBlock>>>(N, x, y);
        cudaEventRecord(stop);
        cudaEventSynchronize(stop);

        // 5) compute elapsed time
        float ms = 0.0f;
        cudaEventElapsedTime(&ms, start, stop);

        // 6) verify correctness
        float maxError = 0.0f;
        for (int i = 0; i < N; ++i) {
            maxError = fmax(maxError, fabs(y[i] - 3.0f));
        }

        // 7) print results
        std::cout
            << "2^" << exp
            << " (N=" << N << "): "
            << ms << " ms,  maxError=" << maxError
            << std::endl;

        // 8) cleanup
        cudaEventDestroy(start);
        cudaEventDestroy(stop);
        cudaFree(x);
        cudaFree(y);
    }

    return 0;
}
