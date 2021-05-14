#include <stdint.h>
#include <stdio.h>
#include "funcs_type.h"

static uint8_t test_func(uint8_t p1, uint8_t p2);

int main() {
    func1 f = test_func;
    printf("func result = %d\n", f(5, 6));
}

uint8_t test_func(uint8_t p1, uint8_t p2) {
    return (p1+p2);
}