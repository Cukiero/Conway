#ifndef VARS_AND_TOOLS_H_INCLUDED
#define VARS_AND_TOOLS_H_INCLUDED

#include <stdio.h>
#include <stdlib.h>
#include <png.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>
#include <errno.h>
#include <ctype.h>

int is_integer(char *str);
char * getline(void);
bool filename_ok(const char *filename);
bool file_path_ok(const char *filepath);

typedef struct Matrix {
      int rows, columns;
      int **grid;
}Matrix;

typedef enum {
    MOORE,
    NEUMAN
} Neighbor_mode;

typedef enum {
    BORDER,
    NOBORDER
} Border_mode;

typedef enum {
    LOAD,
    NEW
} Matrix_mode;

typedef enum {
    MANUAL,
    AUTO
} Program_mode;

typedef enum {
    NOSAVE,
    TXT,
    PNG,
    BOTH
} Save_mode;

#endif // VARS_AND_TOOLS_H_INCLUDED
