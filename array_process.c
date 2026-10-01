#include "array_process.h"

// программа 2
// переворот массива C(20) без вспомогательного массива
void reverse_array(int *arr, int size) {
    for (int i = 0; i < size / 2; i++) {
        int temp = arr[i];
        arr[i] = arr[size - 1 - i];
        arr[size - 1 - i] = temp;
    }
}

// программа 3
// вставка числа 100 после второго положительного элемента массива A(15)
int insert_100_after_second_pos(int *arr, int size) {
    int pos_count = 0;
    int target_idx = -1;

    for (int i = 0; i < size; i++) {
        if (arr[i] > 0) {
            pos_count++;
            if (pos_count == 2) {
                target_idx = i;
                break;
            }
        }
    }

    if (target_idx != -1) {
        for (int i = size; i > target_idx + 1; i--) {
            arr[i] = arr[i - 1];
        }
        arr[target_idx + 1] = 100;
        return size + 1;
    }

    return size;
}