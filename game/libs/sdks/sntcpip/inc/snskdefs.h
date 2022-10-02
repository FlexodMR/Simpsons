/****************************************************************************/
/*                                                                          */
/* Copyright SN Systems Ltd 2000                                            */
/*                                                                          */
/* File:        snskdefs.h                                                  */
/* Version:     1.02                                                        */
/* Description: Definitions used by snsocket.h which may also be            */
/*              included in the IOP build of the RPC interface              */
/*                                                                          */
/* Change History:                                                          */
/* Vers Date        Author     Changes                                      */
/* 1.00 25-May-2000 D.Lowther  File Released                                */
/* 1.01 14-Jun-2000 D.Lowther  Added error codes for snmdm_get_connect_err  */
/* 1.02 26-Jun-2000 D.Lowther  Changed version to 1.02 to keep in step      */
/*                                                                          */
/*                                                                          */
/*                                                                          */
/*                                                                          */
/****************************************************************************/


#ifndef _SNSKDEFS_H_
#define _SNSKDEFS_H_

/* Include definitions of SN systems standard types */
#include "sntypes.h"

/* Error codes returned by gethostbyname() and (if implemented)             */
/* gethostbyaddr(), can be read with sn_h_errno().                          */

#define HOST_NOT_FOUND  1 /* Authoritative answer host not found            */
#define TRY_AGAIN       2 /* Non-authoritive host not found, or SERVERFAIL  */
#define NO_RECOVERY     3 /* Non recoverable, FORMERR, REFUSED, NOTIMP      */
#define NO_DATA         4 /* Valid name, no data record of requested type   */
#define NO_ADDRESS      NO_DATA         /* no address, look for MX record   */

/* Define the default name returned by gethostname() if it doesn't have a   */
/* real name. If this name is passed to gethostbyname() it will return the  */
/* local ip address                                                         */

#define LOCAL_NAME      "local host"

/* Additional SN Systems error codes */

#define SN_ENOTINIT     100             /* Socket API not initialised       */
#define SN_ETHNOTREG    101             /* Thread not registered with API   */
#define SN_EMAXTHREAD   102             /* Max no of threads exceeded       */
#define SN_EIOPNORESP   103             /* Failed to initialise IOP end     */
#define SN_ENOMEM       104             /* Not enough mem to init sock API  */
#define SN_EBINDFAIL    105             /* sceSifBindRpc failed             */
#define SN_EINVTHREAD   106             /* Invalid thread id                */
#define SN_EALRDYINIT   107             /* Socket API already initialised   */
#define SN_SWERROR      108             /* Software error in SN sys code    */
#define SN_ESTKDOWN     108             /* Stack has not been started       */
#define SN_EIFSTATE     109             /* Error in inet_ifstate            */
#define SN_EDNSFAIL     110             /* General failure code for DNS     */

#define SN_REQSIZE     1000             /* RPC request is not expected size */
#define SN_REQINV      1001             /* RPC request is not valid         */
#define SN_REQSYNC     1002             /* RPC general IOP s/w failure      */
#define SN_RPCBAD      1003             /* RPC fn code unknown to IOP       */

#define SN_SOCKERR      -1              /* General socket API error         */

/* The moment the maximum number of sockets that can be supported.          */

#define SN_MAX_SOCKETS 10

/* Support for the socket API select() function                             */
/* A socket is specified by an integer in the range 1 to SN_MAX_SOCKETS     */
/* A socket set is an array of 32 bit integers, with each bit representing  */
/* one socket, e.g. array[0] bit 0 = socket 1, array[0] bit 31 = socket 32  */
/* array[1] bit 0 = socket 33 etc.                                          */
/*                                                                          */
/* So to access a bit in the socket set, using socketid (1..N), it's done   */
/* like this ....  array[(socketid-1)/32] & (1 << ((socketid-1) % 32))      */
/* In the macros defined later in this file for accessing socket sets,      */
/* rather than using /32, >> 5 is used, and rather than using %32, & 0x1F   */
/* is used.                                                                 */

#define SN_FD_SHR       5
#define SN_FD_BITS   0x1F

/* Define the maximum array index for the socket set */

#define SN_FD_MAXIND  ((SN_MAX_SOCKETS - 1) >> SN_FD_SHR)

#define SN_MAXNAMELEN 127               /* Max length for a domain name */

#define IOV_MAX        16               /* Max elements in iov array */

#define INADDR_NONE    0xffffffff       /* e.g for inet_addr */

/* Define some items used for the modem API calls */

#define SN_MAX_PHONE_LEN    31          /* Max length of phone number */
#define SN_MAX_MDMINIT_LEN  63          /* Max length of modem init string */
#define SN_MAX_SCRIPT_LEN   31          /* Max length of script line */
#define SN_MAX_SCRIPT_LINES 10          /* Max number of lines in script */

/* Values of modem status */

#define SN_MODEM_UNKNOWN       0        /* Modem state is unknown */
#define SN_MODEM_IDLE          1        /* Disconnected and idle  */
#define SN_MODEM_INITIALIZE    2        /* Modem is being initialised */
#define SN_MODEM_READY         3        /* Ready to dial */
#define SN_MODEM_READY_AUTOANS 4        /* Ready to dial (in autoanswer mode) */
#define SN_MODEM_DIALING       5        /* Modem is dialing / connecting */
#define SN_MODEM_LOGIN         6        /* Connected to ISP - logging on */
#define SN_MODEM_CONNECTED     7        /* Logged on to ISP - PPP not up yet */
#define SN_MODEM_PPP_UP        8        /* The PPP Link is up */
#define SN_MODEM_HANGINGUP     9        /* Modem is hanging up */
#define SN_MODEM_BROKEN        10       /* Modem hard error detected */

/* Define some misc items */

#define SN_MAX_DNS_SERVERS 4            /* Up to N servers can be added */

/* Values used by sn_stack_state() */

#define SN_STACK_STATE_READ   0
#define SN_STACK_STATE_START  1
#define SN_STACK_STATE_STOP   2

/* Values used by snmdm_get_connect_err */

#define SN_CONERR_UNKNOWN    -1
#define SN_CONERR_SUCCESS     1
#define SN_CONERR_BUSY        2
#define SN_CONERR_NOCARRIER   3
#define SN_CONERR_NOANSWER    4
#define SN_CONERR_NODIALTONE  5


#endif /* !_SNSKDEFS_H_ */

