#include <stdio.h>
#include <windows.h>

int main() {
	SetConsoleCP(65001);
    SetConsoleOutputCP(65001);
    int N;
    printf("Введите натуральное число N (> 1): ");
    
    // проверка корректности ввода
    if (scanf("%d", &N) != 1 || N <= 1) {
        printf("Неверный ввод. Число должно быть больше 1.\n");
        return 1;
    }

    printf("Простые множители числа %d: ", N);
    int first = 1; // флаг для красивого вывода
    
    // цикл для нахождения простых множителей
    for (int d = 2; d * d <= N; d++) {
        while (N % d == 0) {
            if (!first) {
                printf(" * ");
            }
            printf("%d", d);
            first = 0;
            N /= d;
        }
    }
    
    // если остался простой множитель больше 1
    if (N > 1) {
        if (!first) {
            printf(" * ");
        }
        printf("%d", N);
    }
    printf("\n");

    return 0;
}