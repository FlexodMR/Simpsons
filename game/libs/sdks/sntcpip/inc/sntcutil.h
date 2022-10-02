/****************************************************************************/
/*                                                                          */
/* Copyright SN Systems Ltd 2000                                            */
/*                                                                          */
/* File:        sntcutil.h                                                  */
/* Version:     1.02                                                        */
/* Description: EE TCP/IP Utilities                                         */
/*                                                                          */
/* Change History:                                                          */
/* Vers Date        Author     Changes                                      */
/* 1.00 25-May-2000 D.Lowther  File Released                                */
/* 1.01 05-Jun-2000 D.Lowther  Added functions                              */
/*                               sntc_connect_to_tcpip_server()             */
/*                                 and defines for state parameter          */
/*                               sn_int32 sntc_recv_nbytes()                */
/*                               sn_int32 sntc_send_nbytes()                */
/*                             Added support for GRIC script                */
/*      15-Jun-2000 D.Lowther  Added more SNTC_ERR_ values (BUSY, NOCARRIER */
/*                             NOANSWER, NODIALTONE) for use by             */
/*                             sntc_connect_modem                           */
/* 1.02 26-Jun-2000 D.Lowther  Changed version to 1.02 to keep in step      */
/*                                                                          */
/****************************************************************************/

#ifndef _SNTCUTIL_H_
#define _SNTCUTIL_H_

#include "sntypes.h"

/*--------------------------------------------------------------------------*/
/* Define error codes which may be returned by some of the functions in     */
/* this module.                                                             */

#define SNTC_ERR_NONE       0  /* The function was successful               */
#define SNTC_ERR_INVAL      1  /* Invalid parameter passed to function      */
#define SNTC_ERR_MDMAPI     2  /* A Modem API function failed               */
#define SNTC_ERR_NOMODEM    3  /* A compatible modem is not attached        */
#define SNTC_ERR_BSCRIPT    4  /* Error building log in script              */
#define SNTC_ERR_CONNECT    5  /* Modem went to bad state during connect    */
#define SNTC_ERR_TIMEOUT    6  /* Timed out                                 */
#define SNTC_ERR_IOPDNS     7  /* Error sending DNS server to IOP           */
#define SNTC_ERR_BUSY       8  /* Dialled phone number was busy             */
#define SNTC_ERR_NOCARRIER  9  /* Remote modem not communicating            */
#define SNTC_ERR_NOANSWER   10 /* Dialled phone number not answered         */
#define SNTC_ERR_NODIALTONE 11 /* Local modem could not get dial tone       */

/*--------------------------------------------------------------------------*/
/* Define states used by connection_state parameter of the function         */
/* sntc_connect_to_tcpip_server                                             */

#define SNTC_STATE_CREATE_SOCK 0 /* Creating socket                         */
#define SNTC_STATE_BIND        1 /* Binding socket                          */
#define SNTC_STATE_CONV_NAME   2 /* Converting server name                  */
#define SNTC_STATE_CONV_DOTTED 3 /* Converting server dotted ip addr        */
#define SNTC_STATE_CONNECTING  4 /* Connecting to server                    */
#define SNTC_STATE_CONNECTED   5 /* Connected to server (success)           */

/*--------------------------------------------------------------------------*/
/* Define the type of the callback function which is a parameter to the     */
/* functions sntc_connect_modem(), sntc_disconnect_modem(),                 */
/* sntc_reset_modem().                                                      */

typedef void (*sntc_mdmstate_callback)(sn_int32 modem_state);

/*--------------------------------------------------------------------------*/
/* Define some values for use with sntc_connect_modem()                     */

/* First a list of different ISP types (more will be added if necessary)    */

#define SNTC_ISP_GENERIC    0        /* This should work with most ISPs     */
#define SNTC_ISP_GRIC       1        /* For GRIC                            */

#define SNTC_ISP_MIN        0
#define SNTC_ISP_MAX        1

/* The maximum allowed length for user_name and password                    */

#define SNTC_UN_PW_MAX_LEN (SN_MAX_SCRIPT_LEN-8)


/* Exported functions */

sn_int32 sntc_set_dns_server_list(const sn_char** dns_servers);

sn_int32 sntc_connect_modem(sn_char*               phone_no,
                            sn_int32               isp_type,
                            sn_char*               user_name,
                            sn_char*               password,
                            sn_int32               timeout_secs,
                            sntc_mdmstate_callback callback,
                            sn_char**              error_message);

sn_int32 sntc_disconnect_modem(sn_int32               timeout_secs,
                               sntc_mdmstate_callback callback,
                               sn_char**              error_message);

sn_int32 sntc_reset_modem(sn_int32               timeout_secs,
                          sntc_mdmstate_callback callback,
                          sn_char**              error_message);

sn_char* sntc_str_modem_state(sn_int32 modem_state);

void sntc_test_gethostbyname(sn_char* name);

sn_int32 sntc_connect_to_tcpip_server(sn_char*  server_addr,
                                      sn_uint16 server_port,
                                      sn_int32* sock_ptr,
                                      sn_int32* connection_state);

sn_int32 sntc_recv_nbytes(sn_int32 s, sn_char* buf, sn_int32 len);

sn_int32 sntc_send_nbytes(sn_int32 s, sn_char* buf, sn_int32 len);


#endif /* _SNTCUTIL_H_ */

