#ifdef RUNTIME 
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>

void *malloc(size_t size) {

    printf("entered malloc!");
    return NULL;
}

void free(void *ptr) {
    printf("entered free!");
    return;
}
#endif