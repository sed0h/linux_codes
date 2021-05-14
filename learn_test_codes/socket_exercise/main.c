#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <errno.h>
#include <stdint.h>

#define INVALID_SOCK    -1
#define TARGET_PORT     23333
#define MAXSIZE_BUF     7

#if !defined(UDS_IPOFFSET)
#define UDS_IPOFFSET(X, OFFSET) (((uint32_t)((X)&0xFF)) << (OFFSET))
#endif

#if !defined(UDS_MAKEIP)
#define UDS_MAKEIP(A, B, C, D) (UDS_IPOFFSET(A, 24) | UDS_IPOFFSET(B, 16) | UDS_IPOFFSET(C, 8) | UDS_IPOFFSET(D, 0))
#endif

int main() {
    uint32_t IP   = inet_addr("192.168.176.128");
    struct sockaddr_in serveraddr = {0};
    struct sockaddr_in target_address;
    int target_addrlength = sizeof(target_address);
    char send_buf[MAXSIZE_BUF]={1,2,3,4,5,};

    int sock = socket(AF_INET, SOCK_DGRAM, 0);
    
    if (sock >= 0) {
        
        serveraddr.sin_family      = AF_INET;
        serveraddr.sin_addr.s_addr = htonl(IP);
        serveraddr.sin_port        = htons(23333);

        if (bind(sock, (struct sockaddr *)&serveraddr, sizeof(serveraddr)) < 0) {
            close(sock);
            sock = INVALID_SOCK;
        } else {
            target_address.sin_family            = AF_INET;
            target_address.sin_addr.s_addr       = htonl(UDS_MAKEIP(0,0, 0, 0));
            target_address.sin_port              = htons(TARGET_PORT);
        }
    } else {
        sock = INVALID_SOCK;
        fprintf(stderr, "socket error %s errno: %d\n", strerror(errno), errno);
    }



    if (INVALID_SOCK != sock) {
        while (1) {
            sendto(sock, send_buf, MAXSIZE_BUF, 0, (const struct sockaddr *)&target_address,
               target_addrlength);
        }
        
    }


    

}

