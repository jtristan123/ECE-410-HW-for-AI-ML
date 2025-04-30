#!/usr/bin/env python3

import random
import time
import pandas as pd

def bubble_sort(arr):
    """
    Perform bubble sort on a list and return the sorted list.
    """
    a = arr.copy()
    n = len(a)
    for i in range(n):
        # After each pass, the largest element among the first n-i elements
        # is placed at the end at position n-i-1
        for j in range(0, n - 1 - i):
            if a[j] > a[j + 1]:
                a[j], a[j + 1] = a[j + 1], a[j]
    return a

def main():
    # List of sizes to test — feel free to adjust or extend
    sizes = [50, 100, 200, 500, 1000]

    timings = []
    for size in sizes:
        # Generate a random list of the given size
        arr = [random.random() for _ in range(size)]
        start = time.perf_counter()
        bubble_sort(arr)
        end = time.perf_counter()
        timings.append(end - start)

    # Construct a DataFrame and write to CSV
    df = pd.DataFrame({
        'Size': sizes,
        'TimeSeconds': timings
    })

    output_csv = 'bubble_sort_times.csv'
    df.to_csv(output_csv, index=False)
    print(f"Results written to {output_csv}\n")
    print(df)

if __name__ == '__main__':
    main()
