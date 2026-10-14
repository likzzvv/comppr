#include <stdio.h>
#include <windows.h>
#include <string.h>

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

// функция для вывода строки
void print_string(const char *str) {
    printf("Результат: %s\n", str);
}

int main() {
    // кодировка для Windows-1251 в консоли
    SetConsoleCP(1251);
    SetConsoleOutputCP(1251);
    
    char str[256];
    char result[256] = "";
    char word[256];
    
    // вызов функции ввода
    input_string(str, sizeof(str));
    
    int i = 0, j = 0;
    while (str[i] != '\0') {
        // пропуск пробелов
        while (str[i] == ' ' || str[i] == '\t') {
            i++;
        }
        if (str[i] == '\0') {
            break;
        }
        
        // копируем очередное слово
        j = 0;
        while (str[i] != ' ' && str[i] != '\0' && str[i] != '\t') {
            word[j++] = str[i++];
        }
        word[j] = '\0';
        
        // если длина слова чётная, оставляем его
        if (strlen(word) % 2 == 0) {
            if (strlen(result) > 0) {
                strcat(result, " ");
            }
            strcat(result, word);
        }
    }
    
    // вызов функции вывода
    print_string(result);
    
    return 0;
}