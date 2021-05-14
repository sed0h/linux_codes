#include <stdint.h>
#include <stdio.h>

typedef struct test_type_align_s{
    uint8_t  element_1byte;
    uint16_t element_2bytes_1;
    uint16_t element_2bytes_2;
    uint32_t element_4bytes;
}__attribute__ ((__packed__)) test_packed_t;
// typedef struct test_type_align_s __attribute__ ((__packed__))   test_packed_t;

// typedef struct test_type_align_s __attribute__ ((__packed(2)))  test_packed2_t;
// typedef struct test_type_align_s __attribute__ ((aligned(4))) test_type_4align_t;
// typedef struct test_type_align_s __attribute__ ((aligned(2))) test_type_2align_t;
// typedef struct test_type_align_s __attribute__ ((aligned(1))) test_type_1align_t;
// typedef struct test_type_align_s __attribute__ ((__packed__))   test_type_packed_t;

typedef struct _sDownItem_t {
    uint16_t PWMValue[8];
    uint16_t GPIOBits;
} sDownItem_t;

int main() {
    printf("sizeof(sDownItem_t)=%lu\n", sizeof(sDownItem_t));
    //case blow are 9:
    printf("sizeof(test_packed_t)=%lu\n", sizeof(test_packed_t));
    
    //all cases blow are 12:
    // printf("sizeof(test_type_4align_t)=%lu\n", sizeof(test_type_4align_t));
        
    // printf("sizeof(test_type_2align_t)=%lu\n", sizeof(test_type_2align_t));

    // printf("sizeof(test_type_1align_t)=%lu\n", sizeof(test_type_1align_t));

    // printf("sizeof(test_type_1align_t)=%lu\n", sizeof(test_type_1align_t));
}