#ifndef FUN_H
#define FUN_H

#define MAT_ROWS 7
#define MAT_COLS 6
#define ARR_SIZE 67

/* функции, экспортируемые из DLL */
void process_matrix(int m[MAT_ROWS][MAT_COLS]);
void process_array(int a[ARR_SIZE]);

#endif //мяу