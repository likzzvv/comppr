#include <stdio.h>
#include "array_io.h"

void print_array(const int *arr, int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

void fill_array(int *arr, int size) {
    for (int i = 0; i < size; i++) {
        arr[i] = (i + 1) * 2 - 5; // заполнение тестовыми числами
    }
}