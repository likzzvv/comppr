#include <stdio.h>
#include <windows.h>
#include <string.h>
#include "funcs.h"

int main() {
    SetConsoleCP(1251);
    SetConsoleOutputCP(1251);

    char str[256];

    // вызов функции ввода из библиотеки
    input_string(str, sizeof(str));

    // решение задачи (подсчет подслова «АВВА»)
    int count = 0;
    int len = strlen(str);

    for (int i = 0; i <= len - 4; i++) {
        if (str[i] == 'А' && str[i+1] == 'В' && str[i+2] == 'В' && str[i+3] == 'А') {
            count++;
        }
    }

    // вызов функции вывода из библиотеки
    print_result(count);

    return 0;
}