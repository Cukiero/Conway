#ifndef FILE_MANAGER_H_INCLUDED
#define FILE_MANAGER_H_INCLUDED
#include "vars_and_tools.h"

int check_file(const char *file_name, int *lines, int *columns);    //funkcja sprawdzająca poprawnosc pliku z macierzy
Matrix *read_file(const char *file_name);     //funkcja wczytujaca dane z pliku
int save_gen(Matrix *matrix, int number, const char *base_file_name, const char *directory);
int save_matrix_file(Matrix *matrix, const char *filename, const char *directory);   //funkcja zapisujaca genereacje do pliku .txt
int make_directory(const char* name);
int dir_exists(const char* name);
int check_for_files_with_basename(const char *dir, const char *pre, Save_mode save_mode);
bool check_prefix(const char *pre, const char *str);

#endif // FILE_MANAGER_H_INCLUDED
