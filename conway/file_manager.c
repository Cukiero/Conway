#include "file_manager.h"
#include "vars_and_tools.h"

int check_file(const char *file_name, int *lines, int *columns){
    int col_check=0, chr_count=0;
    char file_char;
    FILE *fp;
    fp=fopen(file_name, "r");
    *columns=0;
    *lines=0;

    if(fp==NULL){
        printf("Could not open file.\n");
        return -1;
    }
    while(1){               //ta petla sprawdza czy kazda komorka ma wartosc 0 lub 1
        file_char=fgetc(fp);      //oraz czy liczba komorek w kazdym wierszy jest taka sama
        if(file_char==EOF){       //a takze liczy wiersze i kolumny
            break;
        }else if(file_char=='1'||file_char=='0'){
            (*columns)++;
            chr_count++;
            if(chr_count>1){
                return -1;
            }
        }else if(file_char==' '){
            chr_count=0;
        }else if(file_char=='\n'){
            if(col_check!=0&&*columns!=col_check){
                return -1;
            }
            col_check=*columns;
            *columns=0;
            chr_count=0;
            (*lines)++;
        }else{
            return -1;
        }
    }
    *columns=col_check;
    fclose(fp);
    return 1;
}

Matrix *read_file(const char *path_to_file){

    int i, j;
    int rows, columns;
    Matrix *matrix;
    FILE *fp;
    fp=fopen(path_to_file, "r");
    if(fp==NULL){
        return 0;
    }
    if(check_file(path_to_file,&rows,&columns)==-1){
      return 0;
    }
    matrix=malloc(2*sizeof(Matrix));
    matrix->rows=rows;
    matrix->columns=columns;
    matrix->grid=(int **)malloc(rows*sizeof(int *));     //tworzenie dynamicznej tablicy dwuwymiarowej

    for(i=0;i<rows;i++){
         matrix->grid[i]=(int *)malloc(columns*sizeof(int));  //pobieranie danych z pliku
         for (j=0;j<columns;j++){
                fscanf(fp,"%d", &matrix->grid[i][j]);
         }
    }
    fclose(fp);
    return matrix;      //zwraca macierz wypelniona danymi
}


int save_gen(Matrix *matrix, int number, const char *base_file_name, const char *directory){
    char file_name[1024]="";
    sprintf(file_name,"%s(%d)",base_file_name,number);
    if(save_matrix_file(matrix, file_name, directory)==-1){
      return -1;
    }
    return 1;

}

int save_matrix_file(Matrix *matrix, const char *filename, const char *directory){
    char file_name[1024]="";
    sprintf(file_name,"%s.txt",filename);
    char path_to_file[1024]="";
    sprintf(path_to_file,"%s/%s", directory,file_name);

    int i, j;
    int rows=matrix->rows;
    int columns=matrix->columns;
    FILE *fp;
    if(!dir_exists(directory)){
            return -1;
    }
    fp=fopen(path_to_file, "w");
    if(fp==NULL){
        printf("Could not open file.\n");
        return -1;
    }
    for (i=0;i<rows;i++){
        for (j=0;j<columns;j++){
            fprintf(fp,"%d ",matrix->grid[i][j]);         //petla wpisujaca do pliku .txt dane w poprawnym formacie

        }
        fprintf(fp, "\n");
    }
    fclose(fp);
    return 1;
}


int make_directory(const char* name) {
   #ifdef __linux__
       mkdir(name, 777);
   #else
       _mkdir(name);
   #endif
   if(dir_exists(name)==1){
      return 1;
   }else{
   return 0;
   }
}

int dir_exists(const char* name){
      DIR* dir = opendir(name);
      if (dir){
          closedir(dir);
          return 1;
      }else if (ENOENT == errno){
          return 0;
      }else{
          return -1;
      }
}

int check_for_files_with_basename(const char *directory, const char *pre, Save_mode save_mode){
      char ext1[10]="";
      char ext2[10]="";
      switch(save_mode){
            case TXT:
                  strcpy(ext1, "txt");
                  strcpy(ext1, "txt");
                  break;
            case PNG:
                  strcpy(ext1, "png");
                  strcpy(ext1, "png");
                  break;
            case BOTH:
                  strcpy(ext1, "txt");
                  strcpy(ext1, "png");
                  break;
            case NOSAVE:

                  break;
      }
      DIR *dir;
      char *extension, *file_name;
      int i;
      bool file_exists=false;
      struct dirent *ent;
      if ((dir = opendir (directory)) != NULL) {
            while ((ent = readdir (dir)) != NULL) {
                  if(check_prefix(pre, ent->d_name)==true){
                        file_name=strtok(ent->d_name,".");
                        extension=strtok(NULL,".");
                        if(strcmp(extension,ext1)==0||strcmp(extension,ext2)==0){
                              if(file_name[strlen(pre)]=='(' && file_name[strlen(file_name)-1]==')' && (strlen(file_name)-strlen(pre)>2)){
                                    file_exists=true;
                                    for(i=strlen(pre)+1;i<strlen(file_name)-2;i++){
                                          if(!isdigit(file_name[i])){
                                                file_exists=false;
                                                break;
                                          }
                                    }
                              }else{continue;}
                        }else{continue;}
                        if(file_exists==true){
                              closedir(dir);
                              return 1;
                        }

                  }
            }
      closedir (dir);
      return 0;
      } else {
            return -1;
      }
}

bool check_prefix(const char *pre, const char *str){
    return strncmp(pre, str, strlen(pre)) == 0;
}












