/**
 * @file main.c
 *
 * @brief
 *
 * @author alex.george
 * @version 1.0.0
 * @date 2020-09-08
 *
 * @copyright Copyright (c) 2020 EPT.Inc
 *
 * @par Revision history:
 * <table>
 * <tr><th>Date       <th>Version  <th>Author       <th>Description
 * <tr><td>2020-09-08 <td>1.0.0    <td>alex.george  <td>draft created.
 * </table>
 */

#include "dataapi.h"
#include "platform.h"
#include "uds_api.h"
#include <math.h>
#include <memory.h>
#include <pthread.h>
#include <stdio.h>

#if defined(UDP_PIPETESTER)
#include "udppipe.h"
#endif
#if defined(__linux__)
#include "dataapi.h"
#endif

static const server_timing_params_t timing = {
    50, 0, 5000, 0, 10000,
};

// function declaration
int Login(void);
int Logout(void);
void Usage(void);

static uds_server_params_t server;
#if defined(WIN32) || defined(__linux__)
static unsigned long uds_loop_tick;
static pthread_t _tid_uds_timer;
#endif

static void uds_server_loop(void);

/*-----------------------------------------------------------------------------------------------*/
int Login(void)
{
    int rc = -1;
    uds_mode_t mode = diagnosis_application; // is default

    memset(&server, 0, sizeof(uds_server_params_t));

    server.mode = mode;
    server.timing = &timing;
    server.baseTime = 5;

    rc = init_server_node(mode, &server.node, uds_service_notify);
    if (0 == rc)
    {
        printf("sid_num = %d \n", server.node.sid_num);
        if (server.node.sid_num > 0)
        {
            printf("sid_num = x%02X, x%02X \n", server.node.features[0].sid,
                   server.node.features[server.node.sid_num - 1].sid);
        }
    }
    else
    {
        printf("[error], init_server_node() failure! \n");
    }

    /* 2. init service of server */
    rc = init_server_service(&server.service);
    if (0 == rc) {
        printf("routine num = %d \n", server.service.rt.rc.dids.total);
    }
    else {
        printf("[error],init_server_service() failure! \n");
    }

    init_uds_runtime(uds_server_mode);
    init_uds_server(&server);

#if defined(WIN32) || defined(__linux__)
    uds_loop_tick = get_uds_tick();
    pthread_create(&_tid_uds_timer, NULL, (void *)uds_server_loop, NULL);
#endif

    return rc;
}

int Logout(void)
{
    pthread_join(_tid_uds_timer, 0);
    return 0;
}

void uds_server_loop(void)
{
    unsigned long curr_tick = 0;

    while (1)
    {
        curr_tick = get_uds_tick();
        if (curr_tick - uds_loop_tick > 5)
        {
            // printf("tick 5ms running! curr_tick = %ld \n", curr_tick);
            uds_loop_5ms();
            server_loop_5ms();

            uds_loop_tick = get_uds_tick();
        }
        else
        {
            uds_sleep(0);
        }
    }
}

#if defined(UDP_PIPETESTER)
#if defined(__linux__)
#include <stdlib.h>
#endif

// the struct info copy from libuds
typedef struct uds_sbuf_s
{
    int len;
    uint8_t *data;
    // uint8_t  data[4096];
} uds_sbuf_t;

typedef struct uds_pdu_s
{
    uint8_t ch;
    uint8_t sid;
    /* is physical addressing*/
    int is_phy;
    /* is subfunction */
    int is_sf;
    int pos;
    uds_sbuf_t sbuf;
} uds_pdu_t, *uds_pdu_pt;

enum uds_event_e
{
    eUdsEvt_None = 0,
    eUdsEvt_RequestInd, /* request indication */
};

typedef struct xif_datum_s
{
    /* 事件 */
    enum uds_event_e evt;
    /* 事件上下文 */
    union
    {
        uint8_t *_cxt;
        uint8_t buff[4096];
    } u;
    /* 上下文字节数 */
    int size;
} xif_datum_t;
extern ept_bool_t uds_fifo_push(xif_datum_t *datum);

static uds_pdu_t a_pdu;
static void StreamCallback(const uint8_t *_data, uint16_t len)
{
    printf("server receive data-stream: ");
    for (uint16_t i = 0; i < len; i++)
    {
        printf("x%02x ", _data[i]);
    }
    printf("\n");

    a_pdu.ch = 0;
    a_pdu.is_phy = 1;
    a_pdu.sbuf.len = len;
    a_pdu.sbuf.data = malloc(len);
    if (a_pdu.sbuf.data)
    {
        memcpy(a_pdu.sbuf.data, _data, len);
    }
    xif_datum_t datum;
    datum.evt = eUdsEvt_RequestInd;
    datum.u._cxt = (uint8_t *)&a_pdu;
    uds_fifo_push(&datum);
}

bool uds_response(const uint8_t *_data, const uint16_t size)
{
    printf("response data: ");
    for (uint16_t i = 0; i < size; i++)
    {
        printf("x%02x ", _data[i]);
    }
    printf("\n");

    UDP_PIPE_Send(_data, size);
    return true;
}

#endif

int main(int argc, char *argv[])
{
    int rt = -1;
    // bool ret = false;

    printf("Welcome to the uds.service( argc = %d )! \n", argc);

    if (argc < 1)
    {
        Usage();
        return 0;
    }

#if defined(UDP_PIPETESTER)
    UDP_PIPE_InitB();
    UDP_PIPE_SetStreamCallback(StreamCallback);

    uds_init_response_cb(uds_response);
#endif

    Login();

    while (1)
    {
        ;
    }

    Logout();

#if defined(UDP_PIPETESTER)
    UDP_PIPE_DeInit();
#endif

    return 0;
}

void Usage(void)
{
    printf(" -v    get version \n");
    printf(" -h    get help \n");
    // printf(" -c    set command \n");
    // printf("    COMMAND_UPGRADE        = 0[default]\n");
    // printf(" -d    set device \n");
    // printf("    DEVICE_MCU        = 0[default]\n");
    // printf(" -f    set upgrade file path \n");
}

#if 0
ept_bool_t ArgvsHandle( int argc, char *argv[] ) 
{
    int c = 0;
    ept_bool_t ret = true;
    // default ret is true, for process isn't exit;
    
    while( -1 != ( c = getopt( argc, argv, "vh" ) ) ) {
        switch( c ) {
        case 'v': {
            ret = false; // need to exit;
        }
        break;
        
        case 'h': {
            Usage();
            ret = false; // need to exit;
        }
        break;
        
        case '?':
        default: {
            if ( argc > 1 ) {
                printf( "Invalid argument!" );
                ret = false; // need to exit;
            }
        }
        break;
        }
    }

    return ret;
}
#endif
