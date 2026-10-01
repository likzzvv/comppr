#include <stdio.h>
#include <windows.h>
#include "array_io.h"
#include "array_process.h"

int main() {
	SetConsoleCP(65001);
    SetConsoleOutputCP(65001);
    int A[16] = {-3, 5, -1, 8, -4, 2, 9, 0, -2, 11, -7, 6, -8, 1, -5};
    int size = 15;

    printf("Исходный массив A:\n");
    print_array(A, size);

    size = insert_100_after_second_pos(A, size);

    printf("Измененный массив A:\n");
    print_array(A, size);

    return 0;
}