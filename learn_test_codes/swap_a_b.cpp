#include <stdio.h>
#include "swap.h"

int main() {
    int a = 6, b = 9;
    swap(a, b);

    printf("a=%d, b=%d\n", a, b);
    
    return 0;
}