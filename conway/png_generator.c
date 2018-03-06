#include "png_generator.h"
#include "vars_and_tools.h"

void save_png(Matrix *matrix, int number, const char *base_file_name, const char *directory){     //funkcja zapisujaca generacje do pliku .png za pomoca bilbioteki libpng
    char file_name[1024]="";
    sprintf(file_name,"%s(%d).png",base_file_name, number);
    char path_to_file[1024]="";
    sprintf(path_to_file,"%s/%s", directory,file_name);

    int i, j;
    int rows=matrix->rows;
    int columns=matrix->columns;

    FILE *fp;
    fp=fopen(path_to_file, "wb");
    if(fp==NULL){
        printf("Could not open file.\n");
        return;
    }
    png_structp png_ptr;                                //tworzenie koniecznych struktur
    png_infop info_ptr;
    png_bytep * row_pointers;
    png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);

    if (!png_ptr){
            printf("png_create_write_struct failed\n");
            return;
    }

    info_ptr = png_create_info_struct(png_ptr);
    if (!info_ptr){
            printf("png_create_info_struct failed\n");
            return;
    }

    if (setjmp(png_jmpbuf(png_ptr))){
            printf("Error during init_io\n");
            return;
    }

    png_init_io(png_ptr, fp);
    if (setjmp(png_jmpbuf(png_ptr))){
            printf("Error during writing header\n");
            return;
    }

    png_set_IHDR(png_ptr, info_ptr, rows, columns,
                 8, PNG_COLOR_TYPE_GRAY, PNG_INTERLACE_NONE,                    //tworzenie naglowka
                 PNG_COMPRESSION_TYPE_BASE, PNG_FILTER_TYPE_BASE);

    png_write_info(png_ptr, info_ptr);

    png_set_invert_mono(png_ptr);
    row_pointers = (png_bytep*) malloc(sizeof(png_bytep) * columns);

    for(i=0;i<columns;i++){
        row_pointers[i]=(png_byte*) malloc(png_get_rowbytes(png_ptr,info_ptr));    //tworzenie struktury kolorow
        for(j=0;j<rows;j++){
            if(matrix->grid[i][j]==0){
                row_pointers[i][j]=0;

            }
            if(matrix->grid[i][j]==1){
                row_pointers[i][j]=255;

            }
        }

    }

    if (setjmp(png_jmpbuf(png_ptr))){
            printf("Error during writing bytes\n");
            return;
    }

    png_write_image(png_ptr, row_pointers);     //zapisywanie obrazka

    if (setjmp(png_jmpbuf(png_ptr))){
            printf("Error during end of write\n");
            return;
    }

    png_write_end(png_ptr, NULL);

    for (i=0; i<columns; i++){
                free(row_pointers[i]);          //zwalnianie pamieci
    }
    free(row_pointers);

    fclose(fp);

}
