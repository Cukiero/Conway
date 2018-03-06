#include "vars_and_tools.h"

int is_integer(char *str){
      char *end;
      long number;
      int int_number;
      number=strtol(str, &end, 10);
      if (number < INT_MIN || number > INT_MAX || *end != '\0'){
            return -1;
      }
      int_number=(int)number;
      return int_number;
}

char * getline(void) {
    char * line = malloc(100), * linep = line;
    size_t lenmax = 100, len = lenmax;
    int c;

    if(line == NULL)
        return NULL;

    for(;;) {
        c = fgetc(stdin);
        if(c == EOF)
            break;

        if(--len == 0) {
            len = lenmax;
            char * linen = realloc(linep, lenmax *= 2);

            if(linen == NULL) {
                free(linep);
                return NULL;
            }
            line = linen + (line - linep);
            linep = linen;
        }

        if((*line++ = c) == '\n')
            break;
    }
    *line = '\0';
    return linep;
}

bool filename_ok(const char *filename){
      int correct_chars=0;
      correct_chars=strspn(filename, "\\/:*?\"<>|");
      if(filename!=NULL){
            if(correct_chars==0&&strlen(filename)<252){
                  return true;
            }
      }
      return false;
}

bool file_path_ok(const char *filepath){
      char *temp, *extension, *filename;
      char file_path[1024];
      strcpy(file_path, filepath);
      temp=strtok(file_path,"/");
      filename=temp;
      while(temp!=NULL){
            filename=temp;
            temp=strtok(NULL,"/");
      }

      filename=strtok(filename,".");
      extension=strtok(NULL,".");
      if(extension!=NULL){
            if(filename_ok(filename)==true && strcmp(extension, "txt")==0){
                  return true;
            }
            return false;
      }
      return false;
}
