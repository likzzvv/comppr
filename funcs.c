#include <stdio.h>
#include <string.h>
#include "funcs.h"

// Функция для ввода строки
void input_string(char *str, int max_len) {
    printf("Введите строку символов: ");
    if (fgets(str, max_len, stdin) != NULL) {
        size_t len = strlen(str);
        if (len > 0 && str[len - 1] == '\n') {
            str[len - 1] = '\0';
        }
    }
}

// Функция для вывода результата
void print_result(int count) {
    printf("Количество вхождений подслова «АВВА»: %d\n", count);
}