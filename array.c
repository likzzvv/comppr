#include <stdio.h>
#include "fun.h"

/* заменить все отрицательные элементы их квадратами */
void process_array(int a[ARR_SIZE])
{
    int i;
    printf("\n--- ARRAY (67) BEFORE ---\n");
    for (i = 0; i < ARR_SIZE; i++)
        printf("%4d ", a[i]);
    printf("\n");

    for (i = 0; i < ARR_SIZE; i++)
        if (a[i] < 0)
            a[i] = a[i] * a[i];

    printf("\n--- ARRAY (67) AFTER  ---\n");
    for (i = 0; i < ARR_SIZE; i++)
        printf("%4d ", a[i]);
    printf("\n");
}