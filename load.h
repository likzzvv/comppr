#ifndef LOAD_H
#define LOAD_H

/* макрос для экспорта функций в Windows */
#ifdef _WIN32
  #define EXPORT __declspec(dllexport)
#else
  #define EXPORT
#endif

EXPORT void LoadRun(const char * const libname,
                    const char * const funcname,
                    void *data);

#endif