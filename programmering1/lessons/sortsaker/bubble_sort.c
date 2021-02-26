#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>

long millis()
{
    struct timespec now;
    timespec_get(&now, TIME_UTC);
    return ((long) now.tv_sec) * 1000 + ((long) now.tv_nsec) / 1000000;
}

void bubble_sort(int array[], int size) {
    int stop = size;
    while (stop > 0) {
        int i = 0;
        while (i < size) {
            if (array[i] > array[i+1]) {
                int tmp = array[i];
                array[i] = array[i+1];
                array[i+1] = tmp;
            }
            i++;
        }
        stop--;
    }
}

int main(int argc, char const *argv[])
{
    // int randomized_list[] = {};
    FILE* file = fopen("randomized_list.txt", "r");

    char c;
    int count = 0;
    for (c = getc(file); c != EOF; c = getc(file)) {
        if (c == '\n') {
            count++;
        }
    }
    long fsize = ftell(file);
    char *string = malloc(fsize + 1);
    rewind(file);
    fread(string, 1, fsize, file);
    fclose(file);

    int randomized_list[count];

    int current_num = 0;

    char tmp[20];
    int string_i = 0;
    for (int i = 0; i < fsize; i++)
    {
        if (string[i] == '\n') {
            sscanf(tmp, "%d", &(randomized_list[current_num]));
            current_num++;
            string_i = 0;
            memset(tmp, 0, 20);
        }
        tmp[string_i] = string[i];
        string_i++;
    }
    

    int start = millis();
    bubble_sort(randomized_list, count);

    // printf("[%d", randomized_list[0]);
    // for(int loop = 1; loop < 10000; loop++)
    //     printf(", %d", randomized_list[loop]);
    // printf("]\n");

    printf("Sorteringen tog %dms\n", millis()-start);
    return 0;
}