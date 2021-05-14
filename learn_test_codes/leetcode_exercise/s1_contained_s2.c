#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>

#define SBUFFER_MAXLEN 16

static bool IsInclusion(char *s1, char *s2);

int main() {

    char s1[SBUFFER_MAXLEN] = {0};
    char s2[SBUFFER_MAXLEN] = {0};
    
    printf("Input s1:");//"ab"
    scanf("%s", s1);
    printf("Input s2:");//"adcvbab"
    scanf("%s", s2);

    if(IsInclusion(s1, s2)) {
        printf("s1 In s2\n");
    } else {
        printf("s1 NOT In s2\n");
    }

}

static bool IsInclusion(char *s1, char *s2) {
    uint8_t len1 = strlen(s1);
    uint8_t len2 = strlen(s2);
    // printf("len: %d %d", len1, len2);

    if((strlen(s1) > 0) && (strlen(s2) > 0)) {
        size_t i=0, j=0;
        for (; i < len2 - len1 + 1; i++) {
            j = 0;
            for (; j < len1; j++) {
                // printf("%c %c\n", s1[j], s2[i+j]);
                if((s1[j] == s2[i+j]) || (s1[len1-1-j] == s2[i+j])) {
                    continue;
                } 
                break;
            }
            if(len1 == j) {
                return true;
            }
        }
    }

    return false;
}