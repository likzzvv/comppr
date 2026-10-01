#include <stdio.h>
#include <windows.h>
#include "array_io.h"
#include "array_process.h"

int main() {
	SetConsoleCP(65001);
    SetConsoleOutputCP(65001);
    int C[20];
    fill_array(C, 20);

    printf("Исходный массив C:\n");
    print_array(C, 20);

    reverse_array(C, 20);

    printf("Перевернутый массив C:\n");
    print_array(C, 20);

    return 0;
}