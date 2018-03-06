#include "vars_and_tools.h"

#include "png_generator.h"
#include "grid_manager.h"
#include "file_manager.h"

#define NEUMAN_MODIFIER "-n"
#define NOBORDER_MODIFIER "-nb"
#define NEW_MODIFIER "-new"
#define LOAD_MODIFIER "-load"
#define AUTO_MODIFIER "-auto"
#define FOLDER_MODIFIER "-f"
#define FILENAME_MODIFIER "-name"
#define HELP_MODIFIER "-h"
#define NOSAVE_MODIFIER "-nosave"
#define PNG_MODIFIER "-png"
#define BOTH_MODIFIER "-both"

#define NUMBER_OF_MODIFIERS 11



int main(int argc, char **argv)
{
      int columns, rows, number_of_generations, optind;     //optind - argument indicator
      int number_of_arguments=argc;
      int modifier_number;

      bool arg_check[1];            //table that shows how many arguments are required
      bool arg_correct=false;
      bool is_wrong=false;

      Neighbor_mode neighbor_mode=MOORE;
      Border_mode border_mode=BORDER;
      Matrix_mode matrix_mode;
      Program_mode program_mode=MANUAL;
      Save_mode save_mode=TXT;

      char argument[256];
      char message[1024]="";              //error message
      char file_to_load[256];             //path to a file with matrix
      char folder_to_save[256]="./";      //path to folder where files will be saved
      char file_to_save[256]="generation"; //base name of the files
      char str_with_int[256]="";          //useful string
      char help_message[2048]="\n"
            "This program represents Conway's game of life.\n"
            "By default it generates new grids with following settings:\n"
            "1. Input is a grid loaded from file or created by the user. (-new | -load modifiers are neccessary)\n"
            "2. It uses Moore's neigborhood.\n"
            "3. Grid is limited by a border.\n"
            "4. It saves only .txt files.\n"
            "5. Files are saved in current directory with name: generation([generation number]). If files already exist in the directory then a \"([number])\" prefix is added.\n"
            "6. Program is set to manual generating.\n"
            "\n"
            "Here is a list of modifiers:\n"
            "\n"
            "Required:\n"
            "-new [rows] [columns]                     | Create new grid with given size.\n"
            "or\n"
            "-load [path to .txt file containing grid] | Load grid from .txt file.\n"
            "\n"
            "Optional:\n"
            "-n                                        | Change to Neuman's neighborhood.\n"
            "-nb                                       | Grid without borders.\n"
            "-auto [number of generation]              | Automatically generate new grids.\n"
            "-f [path to folder]                       | Save generations in this folder.\n"
            "-name [filename without extension]        | Save generation with this base file name.\n"
            "-nosave                                   | Don't save generations.\n"
            "-png                                      | Save generations only to .png files.\n"
            "-both                                     | Save generations both to .txt and .png files.\n";



      const char *modifiers[NUMBER_OF_MODIFIERS]={HELP_MODIFIER, NEUMAN_MODIFIER, NOBORDER_MODIFIER, NEW_MODIFIER, LOAD_MODIFIER, AUTO_MODIFIER, FOLDER_MODIFIER, FILENAME_MODIFIER, NOSAVE_MODIFIER, PNG_MODIFIER, BOTH_MODIFIER}; //Table that contains all modifiers

      for (optind = 1; optind < number_of_arguments; optind++) {              //loop iterating all arguments
            strcpy(argument, argv[optind]);
            if(strlen(argv[optind])>1024){
                  sprintf(str_with_int, "Argument number %d is too long(max 1024 characters).\n", optind);
                  strcat(message, str_with_int);
                  is_wrong=true;
                  continue;
            }
            arg_correct=false;
            for (modifier_number=0; modifier_number<NUMBER_OF_MODIFIERS; modifier_number++){
                  if(strcmp(argument,modifiers[modifier_number])==0){
                        arg_correct=true;
                        switch(modifier_number){                        //switch that defines actions for each modifier and checks syntax
                              case 0:
                                    printf(help_message);
                                    return 0;
                                    break;
                              case 1:
                                    neighbor_mode=NEUMAN;
                                    break;

                              case 2:
                                    border_mode=NOBORDER;
                                    break;

                              case 3:
                                    if(arg_check[0]==false){
                                         arg_check[0]=true;
                                    }else{strcat(message, "-new|-load argument repeated.\n");}

                                    matrix_mode=NEW;
                                    if((optind+2)>=argc){
                                       strcat(message, "Matrix size arguments missing.\n");
                                       is_wrong=true;
                                       optind++;
                                       break;
                                    }
                                    optind++;
                                    if(strlen(argv[optind])>1024){
                                          sprintf(str_with_int, "Argument number %d is too long(max 1024 characters).\n", optind);
                                          strcat(message, str_with_int);
                                          is_wrong=true;
                                    }else{
                                          strcpy(argument, argv[optind]);
                                          if(argument[0]=='-'){
                                             strcat(message, "Missing new matrix size arguments.\n");
                                             is_wrong=true;
                                             optind--;
                                             break;
                                          }
                                          rows=is_integer(argument);
                                          if(rows==-1){
                                             strcat(message, "Wrong row number format.\n");
                                             is_wrong=true;
                                          }
                                    }



                                    optind++;
                                    if(strlen(argv[optind])>1024){
                                          sprintf(str_with_int, "Argument number %d is too long(max 1024 characters).\n", optind);
                                          strcat(message, str_with_int);
                                          is_wrong=true;
                                    }else{
                                          strcpy(argument, argv[optind]);
                                          if(argument[0]=='-'){
                                             strcat(message, "Missing new matrix size arguments.\n");
                                             is_wrong=true;
                                             optind--;
                                             break;
                                          }
                                          columns=is_integer(argument);
                                          if(columns==-1){
                                             strcat(message, "Wrong column number format.\n");
                                             is_wrong=true;
                                          }
                                    }

                                    break;
                              case 4:

                                    if(arg_check[0]==false){
                                         arg_check[0]=true;
                                    }else{strcat(message, "-new|-load argument repeated.\n");}

                                    matrix_mode=LOAD;
                                    if((optind+1)>=argc){
                                       strcat(message, "Load file's name missing.\n");
                                       is_wrong=true;
                                       break;
                                    }

                                    optind++;
                                    if(strlen(argv[optind])>1024){
                                          sprintf(str_with_int, "Argument number %d is too long(max 1024 characters).\n", optind);
                                          strcat(message, str_with_int);
                                          is_wrong=true;
                                          break;
                                    }
                                    strcpy(argument, argv[optind]);
                                    if(argument[0]=='-'){
                                       strcat(message, "Missing load file path.\n");
                                       is_wrong=true;
                                       optind--;
                                       break;
                                    }
                                    if(!file_path_ok(argument)){
                                       strcat(message, "Wrong load file path.\n");
                                       is_wrong=true;
                                       break;
                                    }else{
                                          strcpy(file_to_load, argument);
                                          if( access( file_to_load, F_OK ) == -1 ) {
                                               strcat(message, "File you want to load doesn't exist.\n");
                                               is_wrong=true;
                                          }
                                    }


                                    break;

                              case 5:


                                    program_mode=AUTO;
                                    if((optind+1)>=argc){
                                       strcat(message, "Number of generations argument is missing.\n");
                                       is_wrong=true;
                                       break;
                                    }

                                    optind++;
                                    if(strlen(argv[optind])>1024){
                                          sprintf(str_with_int, "Argument number %d is too long(max 1024 characters).\n", optind);
                                          strcat(message, str_with_int);
                                          is_wrong=true;
                                          break;
                                    }
                                    strcpy(argument, argv[optind]);
                                    if(argument[0]=='-'){
                                       strcat(message, "Missing number of generations argument.\n");
                                       is_wrong=true;
                                       optind--;
                                       break;
                                    }
                                    number_of_generations=is_integer(argument);
                                    if(number_of_generations<1){
                                       strcat(message, "Wrong generation number format.\n");
                                       is_wrong=true;
                                    }
                                    break;

                              case 6:
                                    if((optind+1)>=argc){
                                       strcat(message, "Save folder's name missing.\n");
                                       is_wrong=true;
                                       break;
                                    }
                                    optind++;
                                    if(strlen(argv[optind])>1024){
                                          sprintf(str_with_int, "Argument number %d is too long(max 1024 characters).\n", optind);
                                          strcat(message, str_with_int);
                                          is_wrong=true;
                                          break;
                                    }
                                    strcpy(argument, argv[optind]);
                                    if(argument[0]=='-'){
                                       strcat(message, "Missing folder path argument.\n");
                                       is_wrong=true;
                                       optind--;
                                       break;
                                    }
                                    if(argument[strlen(argument-1)]=='/' || argument[strlen(argument-1)]=='\\'){
                                       strcat(message, "Wrong folder path syntax.\n");
                                       is_wrong=true;
                                       break;
                                    }
                                    strcpy(folder_to_save,argument);
                                    break;
                              case 7:
                                    if((optind+1)>=argc){
                                       strcat(message, "Save file's name missing.\n");
                                       is_wrong=true;
                                       break;
                                    }
                                    optind++;
                                    if(strlen(argv[optind])>1024){
                                          sprintf(str_with_int, "Argument number %d is too long(max 1024 characters).\n", optind);
                                          strcat(message, str_with_int);
                                          is_wrong=true;
                                          break;
                                    }
                                    strcpy(argument, argv[optind]);
                                    if(argument[0]=='-'){
                                       strcat(message, "Missing base file name argument.\n");
                                       is_wrong=true;
                                       optind--;
                                       break;
                                    }

                                    if(!filename_ok(argument)){
                                       strcat(message, "Wrong save file name.\n");
                                       is_wrong=true;
                                       break;
                                    }

                                    strcpy(file_to_save,argument);

                                    break;
                              case 8:
                                    save_mode=NOSAVE;
                                    break;
                              case 9:
                                    save_mode=PNG;
                                    break;
                              case 10:
                                    save_mode=BOTH;
                                    break;

                              default:

                                    break;

                        }
                  }
            }
            if(arg_correct==false){                                           //check if argument has meaning
                  sprintf(str_with_int, "Argument number %d is incorrect.\n", optind);
                  strcat(message, str_with_int);
                  is_wrong=true;
            }


      }

      int req_args_number=sizeof(arg_check)/sizeof(arg_check[0]);
      int j;
      for (j=0;j<req_args_number;j++){                            //loop checking if required arguments have been given
            if(arg_check[j]==false){
                  strcat(message, "(-new|-load) modifier is required. \n");
                  is_wrong=true;
            }
      }


      if(check_for_files_with_basename(folder_to_save, file_to_save, save_mode)==1){      //checks if files with this basename exist
            if(strcmp(file_to_save,"generation")==0){
                  char new_filename[256]="";
                  int attempt_number=1;
                  while(1){
                        sprintf(new_filename,"(%d)%s",attempt_number,file_to_save);
                        if(check_for_files_with_basename(folder_to_save, new_filename, save_mode)==1){
                              attempt_number++;
                              continue;
                        }else{
                              strcpy(file_to_save, new_filename);
                              break;
                        }
                  }
            }else{
                  strcat(message, "Generation file with this name already exists. \n");
                  is_wrong=true;
            }

      }


      if(is_wrong==true){           //checks if there has been an error
            strcat(message, "Use -h modifier to read program manual.");
            printf(message);
            return 0;
      }

      if(!dir_exists(folder_to_save)){          //check for folder existence
         make_directory(folder_to_save);
         if(!dir_exists(folder_to_save)){
               strcat(message, "Couldn't create directory.\n");
               strcat(message, "Use -h modifier to read program manual.");
               printf(message);
               return 0;
         }
      }

      printf("Nice.\n");

      Matrix *matrix;
      char *buffer = NULL;

      if(matrix_mode==NEW){                                 //creates matrix based on mode
            matrix=create_matrix(rows, columns);
            if(matrix==0){
                  printf("Error while creating the matrix.");
                  return 0;
            }
      }else if(matrix_mode==LOAD){
            matrix=read_file(file_to_load);
            if(matrix==0){
                  printf("Wrong file content.");
                  return 0;
            }
      }
      if(matrix_mode!=LOAD || program_mode!=AUTO){          //while loops used to edit input matrix if setting aren't set to auto and load
            while(1){
                  print_matrix(matrix);
                  printf("\nType \"row column type\" to change cell, \"save\" to save file, \"stop\" to close program or \"start\" to  begin generation.\n");
                  buffer = getline();
                  if (buffer == NULL){
                    printf("Wrong input.\n");
                    printf("\n");
                    continue;
                  }
                  if(strcmp(buffer, "start\n")==0){
                        break;
                  }else if(strcmp(buffer, "stop\n")==0){

                        return 0;
                  }else if(strcmp(buffer, "save\n")==0){
                        char save_directory[1024];
                        char save_name[1024];
                        while(1){
                              printf("Type in the directory.\n");
                              buffer = getline();
                              if (buffer == NULL){
                                    printf("Wrong input.\n");
                                    continue;
                              }
                              if(strlen(buffer)>1024){
                                    printf("Too long.\n");
                                    continue;
                              }else if(strlen(buffer)<2){
                                    printf("Too short.\n");
                                    continue;
                              }
                              if(strcmp(buffer, "stop\n")==0){
                                    break;
                              }
                              strcpy(save_directory, buffer);
                              save_directory[strlen(save_directory)-1]='\0';
                              if(save_directory[strlen(save_directory-1)]=='/' || save_directory[strlen(save_directory-1)]=='\\'){
                                    printf("Directory can't end with a slash.\n");
                                    continue;
                              }
                              if(!dir_exists(save_directory)){
                                    printf("Directory doesn't exist.\n");
                                    continue;
                              }
                              while(1){
                                    printf("Type in the file's name.\n");
                                    buffer = getline();
                                    if (buffer == NULL){
                                          printf("Wrong input.\n");
                                          continue;
                                    }
                                    if(strlen(buffer)>1020){
                                          printf("Too long.\n");
                                          continue;
                                    }else if(strlen(buffer)<2){
                                          printf("Too short.\n");
                                          continue;
                                    }
                                    if(strcmp(buffer, "stop\n")==0){
                                          break;
                                    }
                                    strcpy(save_name, buffer);
                                    save_name[strlen(save_name)-1]='\0';
                                    if(!filename_ok(save_name)){
                                          printf("Wrong filename.\n");
                                          continue;
                                    }
                                    if(save_matrix_file(matrix, save_name, save_directory)==-1){
                                          printf("Error while saving file.\n");
                                    }
                                    printf("File has been saved.\n");
                                    break;
                              }

                              break;
                        }


                  }else if (change_cell_from_str(matrix, buffer, message)==-1){
                        printf(message);
                        printf("\n");
                        continue;
                  }
                  printf("\n");
            }
      }

      int gen_number;

      if(program_mode==AUTO){                                                             // if statements definig program behaviour based on its mode
            for(gen_number=0;gen_number<number_of_generations;gen_number++){
                  switch(save_mode){
                        case TXT:
                              save_gen(matrix,gen_number,file_to_save,folder_to_save);
                              break;
                        case PNG:
                              save_png(matrix,gen_number,file_to_save,folder_to_save);
                              break;
                        case BOTH:
                              save_gen(matrix,gen_number,file_to_save,folder_to_save);
                              save_png(matrix,gen_number,file_to_save,folder_to_save);
                              break;
                        case NOSAVE:

                              break;
                  }
                  generation(matrix, neighbor_mode, border_mode);

            }

            switch(save_mode){
                  case TXT:
                        save_gen(matrix,gen_number,file_to_save,folder_to_save);
                        break;
                  case PNG:
                        save_png(matrix,gen_number,file_to_save,folder_to_save);
                        break;
                  case BOTH:
                        save_gen(matrix,gen_number,file_to_save,folder_to_save);
                        save_png(matrix,gen_number,file_to_save,folder_to_save);
                        break;
                  case NOSAVE:

                        break;
            }


      }else if(program_mode==MANUAL){

            gen_number=0;
            while(1){
                  print_matrix(matrix);
                  switch(save_mode){
                        case TXT:
                              save_gen(matrix,gen_number,file_to_save,folder_to_save);
                              break;
                        case PNG:
                              save_png(matrix,gen_number,file_to_save,folder_to_save);
                              break;
                        case BOTH:
                              save_gen(matrix,gen_number,file_to_save,folder_to_save);
                              save_png(matrix,gen_number,file_to_save,folder_to_save);
                              break;
                        case NOSAVE:

                              break;
                  }
                  printf("Press enter to generate or type \"stop\" to end.\n");
                  buffer = getline();
                  if (buffer == NULL){
                    printf("Wrong input.\n");
                    printf("\n");
                    continue;
                  }
                  if(strcmp(buffer, "\n")==0){
                        generation(matrix, neighbor_mode, border_mode);
                        gen_number++;
                        continue;
                  }else if(strcmp(buffer, "stop\n")==0){
                        if(save_mode!=NOSAVE){
                              printf("\nYour files have been saved with basename: %s\n", file_to_save);
                        }
                        return 0;
                  }else{
                        printf("Wrong input.\n");
                  }
            }
      }

      return 0;


}


