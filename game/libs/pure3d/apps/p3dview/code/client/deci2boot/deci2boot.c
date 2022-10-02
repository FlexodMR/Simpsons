/* SCEI CONFIDENTIAL
 "PlayStation2" Programmer Tool Runtime Library  Release 1.1
 */
// Version 0.00
// ASCII
// 
// Copyright (C) 1999 Sony Computer Entertainment Inc. All Rights Reserved.
// 
// Version        Date            Design      Log
// --------------------------------------------------------------------
// 0.00           10/13/99        koji        1st version

#include "deci2boot.h"

#define DECI2_DEFAULT_PORT        "8510"
#define DECI2_DEFAULT_TIMEOUT    10

int connected2ee = 0;
int sampleProtoOpened = 0;

static PKTLIST *pl;
static char *bname;
static int   fdSock;
static int   fdChild;


int ShowError(char *mes) {
    fprintf(stderr, "%s: %s.\n", bname, mes); return -1;
}


static int AddPacket(void *buf, int stat) {
    PKT *newnode;

    if (!buf) return -1;
    if ((newnode = (PKT *)malloc(sizeof(PKT))) == NULL)
        return ShowError("cannot allocate memory");

    newnode->deci2 = (DECI2_HDR *)buf;
    newnode->stat = stat;
    ListAddTail(pl, newnode);
    return 0;
}


static void DelPacket(PKT *pkt) {
    pkt = ListDelete(pkt);
    free(pkt->deci2);
    free(pkt);
}


PKT *GetHeadPktByStat(int stat) {
    PKT *pkt;

    if (ListIsEmpty(pl)) return NULL;

    pkt = (PKT *)ListGetHead(pl);
    if (pkt->stat & stat) return pkt;
    return NULL;
}


void MakeDeci2Hdr(DECI2_HDR *hdr, u_short l, u_short p, u_char s, u_char d) {
    hdr->length      = l;
    hdr->reserved    = 0;
    hdr->protocol    = p;
    hdr->source      = s;
    hdr->destination = d;
}


static int SendPacket(int fd, PKT *pkt) {
    int r = send(fd, (char*)pkt->deci2, pkt->deci2->length,0);
    if (pkt->stat & PKT_SEND_READY) DelPacket(pkt);
    else pkt->stat <<= 1;                            // PKT_NEED_REPLY
    return r;
}


static int RecvPacket(int fd, u_char *buf) {
     int n;
    int len = sizeof(DECI2_HDR);
     DECI2_HDR *pkt = (DECI2_HDR *)buf;

    if ((n = recv(fd, buf, len,0)) < 0) return ShowError("read() failed");
    if (n != len) return ShowError("read() failed.");

    if ((n = recv(fd, buf+len, pkt->length-len, 0)) < 0)
        return ShowError("read() failed");
    if (n != pkt->length-len) return ShowError("read() failed.");

    switch (pkt->protocol) {
        case DECI2_PROTO_NETMP:    return NetmpHandler(pl, (char *)(pkt + 1));
        case DECI2_PROTO_DCMP:    return DcmpHandler((char *)(pkt + 1));
        case DECI2_PROTO_ESDBGP:return DbgpHandler(pl, (char *)(pkt + 1));
        default:                 return ShowError("unknown packet received");
    }
}


static void *SampleMakeXyb(int *xyb) {
    struct _pkt {
        DECI2_HDR deci2;
        int xyb[3];
    } *pkt;

    if ((pkt=(struct _pkt *)malloc(sizeof(struct _pkt))) == NULL) return NULL;

     MakeDeci2Hdr(&pkt->deci2, sizeof(struct _pkt), PROTO_SAMPLE,
                            DECI2_NODE_HOST, DECI2_NODE_EE);
     pkt->xyb[0] = xyb[0];
     pkt->xyb[1] = xyb[1];
     pkt->xyb[2] = xyb[2];
     return pkt;
}


static int MySelect(void) 
{
    
    int n, r;
    int xyb[3];


    fd_set rfds, wfds;
    static char rbuf[DECI2_MAX_LEN];
    struct timeval tval, *tv = NULL;

    FD_ZERO(&rfds);
    FD_ZERO(&wfds);
    FD_SET((unsigned int)fdSock, &rfds);
    //FD_SET(fdChild, &rfds);
    if (GetHeadPktByStat(PKT_SEND_READY|PKT_NEED_REPLY)) FD_SET((unsigned int)fdSock, &wfds);

    tv = &tval;
    tv->tv_sec = DECI2_DEFAULT_TIMEOUT;
    tv->tv_usec = 0;
    if ((n = select(FD_SETSIZE, &rfds, &wfds, NULL, tv)) < 0) {
        if (errno == EINTR) {
            printf("EINTR\n");
            return 0;
        }
        return ShowError("select() faild.");
    }
     if (!n) return 0;

     if (FD_ISSET(fdSock, &rfds))
        if (RecvPacket(fdSock, rbuf) < 0) return ShowError("receive error");

     if (FD_ISSET(fdSock, &wfds)) {
        PKT *nnode;
        if ((nnode = GetHeadPktByStat(PKT_SEND_READY|PKT_NEED_REPLY)))
            SendPacket(fdSock, nnode);
     }

    if (FD_ISSET(fdChild, &rfds)) {
        if ((r = read(fdChild, xyb, sizeof(xyb))) > 0) {
            if (sampleProtoOpened) {
//                printf("Parent: x:%03d, y:%03d\n", xyb[0], xyb[1]);
                if (AddPacket(SampleMakeXyb(xyb), PKT_SEND_READY) < 0)
                    return ShowError("faild to send packet");
            }
        }
    }

  
    return 1;
}


int SendAndWaitReply(void *buf) {
    int r;

    if (AddPacket(buf, PKT_NEED_REPLY) < 0) return -1;
    while ((r = MySelect()) > 0) if (GetHeadPktByStat(PKT_DONE)) break;
    if (r == 0) return ShowError("timeout");
    else if (r < 0) return ShowError("select error");
    DelPacket(ListGetHead(pl));
    return 1;
}

#define MAXHOSTNAMELEN 255

static 
SOCKET ConnectNet(char *arg) {
    int fd;
    char *pos;
    char hostname[MAXHOSTNAMELEN + 1];
    char *strport = DECI2_DEFAULT_PORT;
    u_long addr, port;
    struct hostent *hp;
    struct sockaddr_in server;

    if (arg == NULL || !*arg) {                    // arg indicates "host:port"
        if (gethostname(hostname, sizeof(hostname)) < 0)
            return ShowError("gethostname() fail");
    } else if ((pos = strchr(arg, ':')) != NULL) {
        strncpy(hostname, arg, pos - arg);
        if (*(pos + 1)) strport = pos + 1;
    } else {
        if (strlen(arg) > sizeof(hostname))
            return ShowError("argument larger than expect");
        strcpy(hostname, arg);
    }

    memset((char *)&server, 0, sizeof(server));
    if ((addr = inet_addr(hostname)) == -1) {
        if ((hp = gethostbyname(hostname)) == NULL)
            return ShowError("gethostbyname() fail");
        addr = *(u_long *)hp->h_addr;
        server.sin_family = hp->h_addrtype;
    } else {
        server.sin_family = AF_INET;
    }

    if (sscanf(strport, "%d", &port) != 1 || !port)    // get port number
        return ShowError("invalid port number");

    if ((fd = socket(AF_INET, SOCK_STREAM, 0)) == INVALID_SOCKET)    // create socket
        return ShowError("socket() fail");

    server.sin_addr.s_addr = addr;
    server.sin_port = htons((unsigned short)port);
    // connect to host
    if (connect(fd, (struct sockaddr *)&server, sizeof(server)) < 0)
        return ShowError("connect() fail");
    return fd;
}


static int Usage(int f_true){
    if (!f_true) return(0);
    printf("Usage: %s [-d <host>[:<port>]] <filename>\n", bname);
    exit(1);
}


static void Exit(int s) {
    ListForEach((void *)pl, (void *)DelPacket);
    free(pl);
    printf("bye!!!\n");
    exit(0);
}


int BootTool(char* filename, char* hostname)
{
    int r;

    WORD wVersionRequested;
    WSADATA wsaData;
    int err; 
    wVersionRequested = MAKEWORD( 2, 0 ); 
    err = WSAStartup( wVersionRequested, &wsaData );
    if ( err != 0 ) {
     /* Tell the user that we could not find a usable */
     /* WinSock DLL.                                  */    
        return ShowError("can't initialize windows sockets\n");
    }


    /*
    if (pipe(pfds)) return ShowError("cannot open pipe");
    fdChild = pfds[0];

    switch ((r = fork())) {
        case -1: return ShowError("cannot exec fork");
        case  0: ChildProcess(pfds[1]); return 0;    // child process
        default: break;                                // parent process
    }
    */
    if ((fdSock = ConnectNet(hostname)) < 0) return fdSock;
    
    if ((pl = (PKTLIST *)malloc(sizeof(PKTLIST))) == NULL)
        return ShowError("cannot allocate memory");
    ListInit(&(pl->list));

    if (SendAndWaitReply(NetmpMakeConnect()) < 0) 
        return ShowError("faild to send connect packet");
    if (SendAndWaitReply(NetmpMakeReset()) < 0)
        return ShowError("faild to send reset packet");

    // waiting for receiving DCMP_CODE_CONNECTED for EE
    while ((r = MySelect()) > 0) if (connected2ee) break;
    if (r == 0) return ShowError("timeout");
    else if (r < 0) return ShowError("select error");

    if (DbgpPload(filename) < 0) return ShowError("cannot download program");

//    while ((r = MySelect()) >= 0)
//        if (!r && GetHeadPktByStat(PKT_WAIT_REPLY)) return ShowError("timeout");

//    ListForEach((void *)pl, (void *)DelPacket);
//    free(pl);
//    if (r < 0) return 1;
    return 0;
}

/*
int main(int ac, char *av[]) {
    int r;
    int pfds[2];
    char *p, *filename;
    char *hostname = getenv("DSNETM");

    signal(SIGCHLD, Exit);
    bname = ((p = strrchr(av[0], '/')) != NULL) ? (p+1) : (av[0]);

    Usage(ac < 2);
    for (--ac, ++av; 0 < ac && *av[0] == '-'; --ac, ++av) {
        if (!strcmp("-d", av[0])) Usage(--ac <= 0), hostname = *++av;
        else Usage(1);
    }
    Usage(ac != 1);
    filename = *av;

    if (pipe(pfds)) return ShowError("cannot open pipe");
    fdChild = pfds[0];

    switch ((r = fork())) {
        case -1: return ShowError("cannot exec fork");
        case  0: ChildProcess(pfds[1]); return 0;    // child process
        default: break;                                // parent process
    }

    if ((fdSock = ConnectNet(hostname)) < 0) return fdSock;

    if ((pl = (PKTLIST *)malloc(sizeof(PKTLIST))) == NULL)
        return ShowError("cannot allocate memory");
    ListInit(&(pl->list));

    if (SendAndWaitReply(NetmpMakeConnect()) < 0) 
        return ShowError("faild to send connect packet");
    if (SendAndWaitReply(NetmpMakeReset()) < 0)
        return ShowError("faild to send reset packet");

    // waiting for receiving DCMP_CODE_CONNECTED for EE
    while ((r = MySelect()) > 0) if (connected2ee) break;
    if (r == 0) return ShowError("timeout");
    else if (r < 0) return ShowError("select error");

    if (DbgpPload(filename) < 0) return ShowError("cannot download program");

    while ((r = MySelect()) >= 0)
        if (!r && GetHeadPktByStat(PKT_WAIT_REPLY)) return ShowError("timeout");

    ListForEach((void *)pl, (void *)DelPacket);
    free(pl);
    if (r < 0) return 1;
    return 0;
}
*/

// Local variables:
// tab-width: 4
// End:
// vi:set tabstop=4:


