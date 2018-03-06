#include "grid_manager.h"
#include "vars_and_tools.h"

void generation(Matrix *matrix, Neighbor_mode neighbor_mode, Border_mode border_mode){
      int x[8]={0,1,0,-1,-1,1,1,-1};
      int y[8]={1,0,-1,0,1,1,-1,-1};
      int neighbors=8;
      if(neighbor_mode==NEUMAN){
            neighbors=4;
      }
      int i, j, k, x_neigh, y_neigh;
      int ones;

      int rows=matrix->rows;
      int columns=matrix->columns;
      for (i=0;i<rows;i++){              //potrojna petla for sluzy do zliczania zywych sasiadow i zmiany wartosci komorek
                                        //na podstawie zasad gry
            for(j=0;j<columns;j++){
                  ones=0;
                  for(k=0;k<neighbors;k++){
                        x_neigh=i+x[k];
                        y_neigh=j+y[k];
                        if(border_mode==BORDER){
                              if(x_neigh<0 || y_neigh<0 || x_neigh>=rows || y_neigh>=columns){
                                    continue;
                              }
                        }else if(border_mode==NOBORDER){
                              if(x_neigh==-1){
                                    x_neigh=rows-1;
                              }else if(x_neigh==rows){
                                    x_neigh=0;
                              }
                              if(y_neigh==-1){
                                    y_neigh=columns-1;
                              }else if(y_neigh==columns){
                                    y_neigh=0;
                              }
                        }

                        if(matrix->grid[x_neigh][y_neigh]==1 || matrix->grid[x_neigh][y_neigh]==10){
                              ones++;
                        }
                  }
                  if(matrix->grid[i][j]==1&&ones!=2&&ones!=3){
                        matrix->grid[i][j]=10;                    //10 - komorka o wartosci 1 zmieniajaca sie na 0
                  }else if(matrix->grid[i][j]==0&&ones==3){
                        matrix->grid[i][j]=11;                    //11-komorka o wartosci 0 i zmieniajaca sie na 1
                  }
            }
      }

      for (i=0;i<rows;i++){                          //petle odpowiedzialne za zmiane wartosci wczesniej oznaczonych
            for (j=0;j<columns;j++){
                  if(matrix->grid[i][j]==10){
                        matrix->grid[i][j]=0;
                  }else if(matrix->grid[i][j]==11){
                        matrix->grid[i][j]=1;
                  }
            }

      }


}

Matrix *create_matrix(int rows, int columns){
      int i, j;
      Matrix *matrix;
      matrix=malloc(2*sizeof(Matrix));     //tworzenie dynamicznej tablicy dwuwymiarowej
      matrix->rows=rows;
      matrix->columns=columns;
      matrix->grid=(int **)malloc(rows*sizeof(int *));
      for(i=0;i<rows;i++){
         matrix->grid[i]=(int *)malloc(columns*sizeof(int));  //pobieranie danych z pliku
         for (j=0;j<columns;j++){
                matrix->grid[i][j]=0;
         }
      }
      return matrix;
}

void print_matrix(Matrix *matrix){
      if(matrix!=0){
            int rows=matrix->rows;
            int columns=matrix->columns;
            int i, j;
            for(i=0;i<rows;i++){
                  for(j=0;j<columns;j++){
                        printf("%d ", matrix->grid[i][j]);
                  }
                  printf("\n");
            }
      }
}

int change_cell(Matrix *matrix, int row, int column, int type){
      int rows=matrix->rows;
      int columns=matrix->columns;

      if(row<=rows && column<=columns){
            if(type==0){
                  matrix->grid[row][column]=0;
                  return 1;
            }else if(type==1){
                  matrix->grid[row][column]=1;
                  return 1;
            }else{
                  return -1;
            }
      }
      return -1;

}

int change_cell_from_str(Matrix *matrix, char *input, char *message){
      char *input_arg;
      int row, column, type;
      input_arg = strtok (input, " \n");
      if(input_arg!=NULL){
            row=is_integer(input_arg);
            if(row==-1){
                  strcpy(message, "Input arguments must be of integer type.\n");
                  return -1;
            }else if(row>=matrix->rows){
                  strcpy(message, "Wrong row number.\n");
                  return -1;
            }
      }else{
            strcpy(message, "Too few arguments.\n");
            return -1;
      }
      input_arg = strtok (NULL, " \n");
      if(input_arg!=NULL){
            column=is_integer(input_arg);
            if(column==-1){
                  strcpy(message, "Input arguments must be of integer type.\n");
                  return -1;
            }else if(column>=matrix->columns){
                  strcpy(message, "Wrong column number.\n");
                  return -1;
            }
      }else{
            strcpy(message, "Too few arguments.\n");
            return -1;
      }
      input_arg = strtok (NULL, " \n");
      if(input_arg!=NULL){
            type=is_integer(input_arg);
            if(type!=0 && type!=1){
                  strcpy(message,"Wrong type.\n");
                  return -1;
            }
      }else{
            strcpy(message, "Too few arguments.\n");
            return -1;
      }
      input_arg = strtok (NULL, " \n");
      if(input_arg!=NULL){
            strcpy(message,"Too many arguments.\n");
            return -1;
      }

      if(change_cell(matrix,row, column, type)==-1){
            strcpy(message,"Couldn't apply change.\n");
            return -1;
      }
      return 1;

}
