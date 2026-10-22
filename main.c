#include <stdio.h>
#include <stdlib.h>
#include <time.h> // для случайных чисел
#include "fun.h"
#include "load.h"

static void fill_matrix(int m[MAT_ROWS][MAT_COLS])
{
    int i, j;
    for (i = 0; i < MAT_ROWS; i++)
        for (j = 0; j < MAT_COLS; j++)
            m[i][j] = rand() % 101 - 50;   // [-50; 50] 
}

static void fill_array(int a[ARR_SIZE])
{
    int i;
    for (i = 0; i < ARR_SIZE; i++)
        a[i] = rand() % 101 - 50;
}

int main(void)
{
    int matrix[MAT_ROWS][MAT_COLS];
    int array[ARR_SIZE];
    int choice;

    srand((unsigned)time(NULL));

    fill_matrix(matrix);
    fill_array(array);

    for (;;) {
        printf("\nChoose library:\n");
        printf("  1 - matrix (lib_matrix.dll)\n");
        printf("  2 - array  (lib_array.dll)\n");
        printf("  3 - quit\n");
        printf("> ");
        if (scanf("%d", &choice) != 1) return 0;

        switch (choice) {
        case 1:
            LoadRun("lib_matrix.dll", "process_matrix", matrix);
            break;
        case 2:
            LoadRun("lib_array.dll",  "process_array",  array);
            break;
        case 3:
            return 0;
        default:
            printf("wrong choice\n");
        }
    }
}