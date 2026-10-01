#include <windows.h>
#include <stdio.h>

int main() {
    SetConsoleCP(65001);
    SetConsoleOutputCP(65001);
    int N;
    int count = 0;

    printf("Введи N: ");
    if (scanf("%d", &N) != 1) {
        printf("Ошибка ввода!\n");
        return 1;
    }

    for (int i = 100; i <= 999; i++) {
        int d1 = i / 100;
        int d2 = (i / 10) % 10;
        int d3 = i % 10;

        if (d1 + d2 + d3 == N) {
            count++;
        }
    }

    printf("Количество трехзначных чисел с суммой цифр %d: %d\n", N, count);
    return 0;
}