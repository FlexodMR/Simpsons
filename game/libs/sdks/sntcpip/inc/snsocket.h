/****************************************************************************/
/*                                                                          */
/* Copyright SN Systems Ltd 2000                                            */
/*                                                                          */
/* File:        snsocket.h                                                  */
/* Version:     1.02                                                        */
/* Description: TCP/IP socket API & modem API header file                   */
/*                                                                          */
/* Change History:                                                          */
/* Vers Date        Author     Changes                                      */
/* 1.00 25-May-2000 D.Lowther  File Released                                */
/* 1.01 14-Jun-2000 D.Lowther  Added snmdm_get_connect_err                  */
/* 1.02 26-Jun-2000 D.Lowther  Changed version to 1.02 to keep in step      */
/*                                                                          */
/*                                                                          */
/*                                                                          */
/****************************************************************************/

#ifndef _SN_SOCKET_H_
#define _SN_SOCKET_H_

/* Include definitions of SN systems standard types */
#include "sntypes.h"

/* Include other SN systems definitions used by this file */
#include "snskdefs.h"

/* BSD style socket error codes                                             */
/* These error codes can be read using sn_errno() after a socket operation  */
/* has completed.                                                           */

#define ENOBUFS         1
#define ETIMEDOUT       2
#define EISCONN         3
#define EOPNOTSUPP      4
#define ECONNABORTED    5
#define EWOULDBLOCK     6
#define ECONNREFUSED    7
#define ECONNRESET      8
#define ENOTCONN        9
#define EALREADY        10
#define EINVAL          11
#define EMSGSIZE        12
#define EPIPE           13
#define EDESTADDRREQ    14
#define ESHUTDOWN       15
#define ENOPROTOOPT     16
#define EHAVEOOB        17
#define ENOMEM          18
#define EADDRNOTAVAIL   19
#define EADDRINUSE      20
#define EAFNOSUPPORT    21
#define EINPROGRESS     22
#define ELOWER          23
#define EBADF           24

/* Additional SN Systems error codes can be found in snskdefs.h */

/* Socket types */

#define SOCK_STREAM     1               /* stream socket */
#define SOCK_DGRAM      2               /* datagram socket */


/* Option flags for a socket */

#define SO_DEBUG        0x0001          /* turn on debugging info recording */
#define SO_ACCEPTCONN   0x0002          /* socket has had listen() */
#define SO_REUSEADDR    0x0004          /* allow local address reuse */
#define SO_KEEPALIVE    0x0008          /* keep connections alive */
#define SO_DONTROUTE    0x0010          /* just use interface addresses */
#define SO_BROADCAST    0x0020          /* permit sending of broadcast msgs */
#define SO_USELOOPBACK  0x0040          /* bypass hardware when possible */
#define SO_LINGER       0x0080          /* linger on close if data present */
#define SO_OOBINLINE    0x0100          /* leave received OOB data in line */

/* Additional options not kept in so_options */

#define SO_SNDBUF       0x1001          /* send buffer size */
#define SO_RCVBUF       0x1002          /* receive buffer size */
#define SO_SNDLOWAT     0x1003          /* send low-water mark */
#define SO_RCVLOWAT     0x1004          /* receive low-water mark */
#define SO_SNDTIMEO     0x1005          /* send timeout */
#define SO_RCVTIMEO     0x1006          /* receive timeout */
#define SO_ERROR        0x1007          /* get error status and clear */
#define SO_TYPE         0x1008          /* get socket type */

#define SO_HOPCNT       0x1009          /* Get hop count to destination */
#define SO_MAXMSG       0x1010          /* Get TCP_MSS (max segment size) */

/* Option extensions */

#define SO_RXDATA       0x1011          /* Get count of received bytes */
#define SO_MYADDR       0x1012          /* Get local IP address */
#define SO_NBIO         0x1013          /* Set socket non-blocking */
#define SO_BIO          0x1014          /* Set socket blocking */
#define SO_NONBLOCK     0x1015          /* Set/get blocking state */


/* Structure used for linger option. */

struct linger
{
    sn_int32 l_onoff;                   /* option on/off */
    sn_int32 l_linger;                  /* linger time */
};

/* Level number for (get/set)sockopt() to apply to socket itself. */

#define SOL_SOCKET      0               /* options for socket level */

/* Address families, only INET supported */

#define AF_INET         2               /* internetwork: UDP, TCP, etc. */

/* Socket address !! */

struct sockaddr
{
    sn_uint16       sa_family;          /* Address family */
    sn_char         sa_data[14];        /* Address (family dependent) */
};

/* BSD style internet address */
struct in_addr
{
    sn_uint32       s_addr;             /* IP address */
};

#define INADDR_ANY      0               /* Match any internet address */

/* Socket address structure as used for internet TCP/IP protocol */

struct sockaddr_in
{
    sn_uint16       sin_family;         /* Address family = AF_INET */
    sn_uint16       sin_port;           /* TCP: protocol port */
    struct in_addr  sin_addr;           /* TCP: IP address */
    sn_char         sin_zero[8];        /* TCP: unused (0) */
};

/* Time value used by sockets interface !! */

struct timeval
{
    sn_uint32       tv_sec;             /* Seconds */
    sn_uint32       tv_usec;            /* Microseconds */
};

/* Protocol families, same as address families */

#define PF_INET         AF_INET

/* Data IO vector used to define each of a set of send/recv data blocks !! */

struct iovec
{
    void            *iov_base;          /* Data pointer */
    sn_int32        iov_len;            /* Length of data */
};


/* Message header for recvmsg and sendmsg calls. !! */

struct msghdr
{
    struct sockaddr *msg_name;          /* Socket address */
    sn_int32        msg_namelen;        /* Length of address */
    struct iovec    *msg_iov;           /* Data vector array */
    sn_int32        msg_iovlen;         /* # of entries in vector array */
    void            *msg_control;       /* Control data */
    sn_int32        msg_controllen;     /* Length of control data */
    sn_int32        msg_flags;          /* Received flags */
};

#define MSG_OOB         0x1             /* process out-of-band data */
#define MSG_PEEK        0x2             /* peek at incoming message */
#define MSG_DONTROUTE   0x4             /* send without using routing tables */
#define MSG_DONTWAIT    0x20            /* this message should be nonblocking */


/* Define the socket set structure used by select() !! the stack expects */
/* this array to have an even number of elements, so rather than "+1" as */
/* would normally happen, use "+2" and if the result is odd, clear bit 0 */
/* by anding it with a mask containing all 1's except bit 0 which is 0   */

typedef struct
{
    sn_uint32 array[(SN_FD_MAXIND+2) & ~1];
} fd_set;


/* Function to start / stop / get state of TCP/IP stack */

sn_int32 sn_stack_state(sn_int32 new_state, sn_int32* current_state);

/* Socket API functions */
sn_int32 accept(sn_int32 s, struct sockaddr* addr, sn_int32* addrlen);
sn_int32 bind(sn_int32 s, const struct sockaddr* addr, sn_int32 addrlen);
sn_int32 closesocket(sn_int32 s);
sn_int32 connect(sn_int32 s, const struct sockaddr* addr, sn_int32 addrlen);
sn_int32 getpeername(sn_int32 s, struct sockaddr* addr, sn_int32* addrlen);
sn_int32 getsockname(sn_int32 s, struct sockaddr* addr, sn_int32* addrlen);
sn_int32 getsockopt(sn_int32 s, sn_int32 level, sn_int32 optname,
                    void* optval, sn_int32* optlen);
sn_int32 listen(sn_int32 s, sn_int32 backlog);
sn_int32 recv(sn_int32 s, void* buf, sn_int32 len, sn_int32 flags);
sn_int32 recvfrom(sn_int32 s, void* buf, sn_int32 len, sn_int32 flags,
                  struct sockaddr* from, sn_int32* fromlen);
sn_int32 recvmsg(sn_int32 s, struct msghdr* msg, sn_int32 flags);
sn_int32 select(sn_int32 nfds, fd_set* readfs, fd_set* writefs,
                fd_set* exceptfs, struct timeval* timeout);
sn_int32 send(sn_int32 s, const void* buf, sn_int32 len, sn_int32 flags);
sn_int32 sendmsg(sn_int32 s, const struct msghdr* msg, sn_int32 flags);
sn_int32 sendto(sn_int32 s, const void* buf, sn_int32 len, sn_int32 flags,
                const struct sockaddr* to, sn_int32 tolen);
sn_int32 setsockopt(sn_int32 s, sn_int32 level, sn_int32 optname,
                    const void* optval, sn_int32 optlen);
sn_int32 shutdown(sn_int32 s, sn_int32 how);
sn_int32 sockAPIinit(sn_int32 maxthreads);
sn_int32 sockAPIregthr(void);
sn_int32 sockAPIderegthr(void);
sn_int32 socket(sn_int32 af, sn_int32 type, sn_int32 protocol);
sn_int32 sn_errno(sn_int32 s);
sn_int32 sn_h_errno(void);

/* Definitions for type of shutdown() */
#define SD_RECEIVE  0
#define SD_SEND     1
#define SD_BOTH     2

/* Macros for swapping between host / network byte order.                   */
/* Network byte order is big endian, host byte order is defined by          */
/* SN_ENDIAN (see sntypes.h)                                                */

#if (SN_ENDIAN == SN_END_BIG)
  /* Host and Network byte order is the same, so no need to swap bytes */
  #define htonl(l)        ((sn_uint32)(l))
  #define ntohl(l)        ((sn_uint32)(l))
  #define htons(s)        ((sn_uint16)(s))
  #define ntohs(s)        ((sn_uint16)(s))
#else
  /* Host and Network byte order is not the same, so need to swap bytes */
  sn_uint32 sn_swap32(sn_uint32 l);
  sn_uint16 sn_swap16(sn_uint16 s);
  #define htonl(l)        sn_swap32((sn_uint32)(l))
  #define ntohl(l)        sn_swap32((sn_uint32)(l))
  #define htons(s)        sn_swap16((sn_uint16)(s))
  #define ntohs(s)        sn_swap16((sn_uint16)(s))
#endif


/* Define macros to manipulate fd_set */

#define FD_ZERO(p)    (memset((p), 0, sizeof(fd_set)))

#define FD_SET(s,p)   ( (p)->array[((s) - 1) >> SN_FD_SHR] |= \
                        (1 << (((s) - 1) & SN_FD_BITS)) )

#define FD_CLR(s,p)   ( (p)->array[((s) - 1) >> SN_FD_SHR] &= \
                       ~(1 << (((s) - 1) & SN_FD_BITS)) )

#define FD_ISSET(s,p) ( (p)->array[((s) - 1) >> SN_FD_SHR] &  \
                        (1 << (((s) - 1) & SN_FD_BITS)) )



/* Define hostent structure used by gethostbyname */

struct hostent
{
    sn_char*        h_name;         /* Domain name */
    sn_char**       h_aliases;      /* Alternate names */
    sn_int16        h_addrtype;     /* The type of address */
    sn_int16        h_length;       /* Length in bytes of each address */
    sn_char**       h_addr_list;    /* List of addresses for the host */
};


/* Other utility functions */

struct hostent* gethostbyname(const sn_char* name);
sn_int32 gethostname(sn_char* name, sn_int32 namelen);
sn_uint32 inet_addr(const sn_char* cp);
sn_int32 inet_aton(const sn_char* cp, struct in_addr* addr);
sn_char* inet_ntoa(struct in_addr in);

/* Modem API functions */

sn_int32 snmdm_get_attached(sn_bool* attached,
                            sn_int16* idVendor, sn_int16* idProduct);
sn_int32 snmdm_set_phone_no(const sn_char* phone_no);
sn_int32 snmdm_set_mdm_init(const sn_char* modem_init_str);
sn_int32 snmdm_set_script(const sn_char* script_str);
sn_int32 snmdm_connect(void);
sn_int32 snmdm_disconnect(void);
sn_int32 snmdm_get_state(sn_int32* modem_state);
sn_int32 snmdm_get_connect_err(sn_int32* connect_err);

/* Misc functions */

sn_int32 sndns_add_server(sn_int32 netend_ip_addr);
sn_int32 sndbg_print_stats(void);

#endif /* !_SN_SOCKET_H_ */


