#include <stdio.h>
#include <malloc.h>

int main() {
    int *p = malloc(32);
    printf("malloc passed!\n");
    free(p);
    return(0);
}