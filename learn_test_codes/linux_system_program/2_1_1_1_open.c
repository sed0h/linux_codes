// #include <sys/types.h>
// #include <sys/stat.h>
#include <fcntl.h>

int main() {
    int fd;
    // fd = open("/home/zgt/linux_system_program/1_4_16_wrong_process.c", O_RDONLY);
    fd = open("1_4_16_wrong_process.c", O_RDONLY);
    if(fd == -1) {
     perror("open");
    }

    return 0;
}