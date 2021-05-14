#include "stdio.h"
#include <math.h>

int GetPrimeCount(int a, int b);
int main() {
    int a = 101, b = 200;

    printf("count of prime between(%d, %d) is %d\n", a, b, GetPrimeCount(a, b));
    return 0;
}

int GetPrimeCount(int a, int b) {
    int count = 0;
    for (size_t i = a; i <= b; i++) {
        for (size_t j = 2; j <= sqrt(i); i++) {
            if(i % j == 0) {
                count++;
                break;
            }
        }
    }
    return (b-a+1-count);
}