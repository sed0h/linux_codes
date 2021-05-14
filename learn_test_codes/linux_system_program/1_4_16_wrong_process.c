#include <stdio.h>

int main() {
    FILE fd;
    if(close(fd) == -1) {
        perror("close");
    } else {
        perror("no error");
    }
    
    return 0;
}