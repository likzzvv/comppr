#include <stdio.h>
#include "fun.h"

/* заменить все отрицательные элементы их квадратами */
void process_matrix(int m[MAT_ROWS][MAT_COLS])
{
    int i, j;
    printf("\n--- MATRIX (7x6) BEFORE ---\n");
    for (i = 0; i < MAT_ROWS; i++) {
        for (j = 0; j < MAT_COLS; j++)
            printf("%4d ", m[i][j]);
        printf("\n");
    }

    for (i = 0; i < MAT_ROWS; i++)
        for (j = 0; j < MAT_COLS; j++)
            if (m[i][j] < 0)
                m[i][j] = m[i][j] * m[i][j];

    printf("\n--- MATRIX (7x6) AFTER  ---\n");
    for (i = 0; i < MAT_ROWS; i++) {
        for (j = 0; j < MAT_COLS; j++)
            printf("%4d ", m[i][j]);
        printf("\n");
    }
}