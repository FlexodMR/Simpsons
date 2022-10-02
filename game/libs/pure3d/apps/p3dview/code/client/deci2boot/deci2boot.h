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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include <signal.h>
#include <sys/types.h>
#include <io.h>
typedef unsigned short u_short;
typedef unsigned char u_char;
//#include <winsock.h>
#include <winsock2.h>
/* 
#include <netinet/in.h>
#include <sys/socket.h> 
#include <netdb.h>
#include <sys/time.h>
#include <sys/param.h>
*/
#include "elf.h"

typedef unsigned char byte;                // 8bit
typedef unsigned short half;            // 16bit
typedef unsigned int word;                // 32bit
typedef struct { word xa[2]; } twin;    // 64bit
typedef struct { word xa[4]; } quad;    // 128bit

#include "deci2.h"
#include "list.h"

#define PROTO_SAMPLE    0xe000

#define PKT_SEND_READY    0x01
#define PKT_NEED_REPLY    0x02
#define PKT_WAIT_REPLY    0x04
#define PKT_DONE        0x08

typedef struct {
    LIST         list;
    int                stat;
    DECI2_HDR    *deci2;
} PKT, PKTLIST;

extern int connected2ee;
extern int sampleProtoOpened;

void  ChildProcess(int fd);
void  MakeDeci2Hdr(DECI2_HDR *hdr, u_short l, u_short p, u_char s, u_char d);
PKT  *GetHeadPktByStat(int stat);
int   SendAndWaitReply(void *buf);
int   ShowError(char *mes);
int   DcmpHandler(char *buf);
int   DbgpHandler(PKTLIST *pl, char *buf);
int   DbgpPload(char *filename);
int   NetmpHandler(PKTLIST *pl, char *buf);
void *NetmpMakeReset(void);
void *NetmpMakeConnect(void);

int         ElfOpen(char *fname);
int         ElfGetEhdr(int fd, Elf32_Ehdr *ehdr);
int         ElfIsForEE(Elf32_Ehdr *ehdr);
Elf32_Phdr *ElfGetPhdrTbl(int fd, Elf32_Ehdr *ehdr);
Elf32_Shdr *ElfGetShdrTbl(int fd, Elf32_Ehdr *ehdr);
void       *ElfReadSectionData(int fd, Elf32_Off off, Elf32_Word sz);

// Local variables:
// tab-width: 4
// End:
// vi:set tabstop=4:


