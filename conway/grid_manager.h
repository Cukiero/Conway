#ifndef GRID_MANAGER_H_INCLUDED
#define GRID_MANAGER_H_INCLUDED
#include "vars_and_tools.h"

void generation(Matrix *matrix, Neighbor_mode neighbor_mode, Border_mode border_mode);
Matrix *create_matrix(int rows, int columns);
int change_cell(Matrix *matrix, int row, int column, int type);
void print_matrix(Matrix *matrix);
int change_cell_from_str(Matrix *matrix, char *input, char *message);
#endif // GRID_MANAGER_H_INCLUDED
