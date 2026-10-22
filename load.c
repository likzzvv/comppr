#include "load.h"
#include <stdio.h>
#include <windows.h>

EXPORT void LoadRun(const char * const libname,
             const char * const funcname,
             void *data)
{
    HMODULE lib; //дескриптор 
    void (*fun)(void *);

    lib = LoadLibraryA(libname); //ищет библиотеку, загружает в оп и возвращает дескриптор
    if (!lib) {
        printf("cannot open library '%s' (error %lu)\n",
               libname, GetLastError()); // возвращаем код последней ошибки
        return;
    }

    fun = (void (*)(void *))GetProcAddress(lib, funcname); //из найденной библиотеки возвращает адрес функции в памяти 
    if (!fun) {
        printf("cannot load function '%s' from '%s'\n",
               funcname, libname);
        FreeLibrary(lib); // выгрузка библиотеки
        return;
    }

    fun(data);          // вызов функции из DLL 

    FreeLibrary(lib);   // выгрузка библиотеки 
}