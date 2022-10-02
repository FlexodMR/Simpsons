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
#include "netmp.h"

void *NetmpMakeConnect(void) {
    struct _pkt {
        DECI2_HDR deci2;
        NETMP_HDR netmp;
        NETMP_PROTOS protos[2];
    } *pkt;

    if ((pkt=(struct _pkt *)malloc(sizeof(struct _pkt))) == NULL) return NULL;

     MakeDeci2Hdr(&pkt->deci2, sizeof(struct _pkt), DECI2_PROTO_NETMP,
                            DECI2_NODE_HOST, DECI2_NODE_HOST);
     pkt->netmp.code = NETMP_CODE_CONNECT;
     pkt->netmp.result = 0;
    pkt->protos[0].pri = NETMP_PRI_DEFAULT;
    pkt->protos[0].reserved = 0;
    pkt->protos[0].proto = PROTO_SAMPLE;
    pkt->protos[1].pri = NETMP_PRI_DEFAULT;
    pkt->protos[1].reserved = 0;
    pkt->protos[1].proto = DECI2_PROTO_ESDBGP;
     return pkt;
}


void *NetmpMakeReset(void) {
    struct _pkt {
        DECI2_HDR deci2;
        NETMP_HDR netmp;
        NETMP_BOOTP bootp;
    } *pkt;

    if ((pkt=(struct _pkt *)malloc(sizeof(struct _pkt))) == NULL) return NULL;

     MakeDeci2Hdr(&pkt->deci2, sizeof(struct _pkt), DECI2_PROTO_NETMP,
                            DECI2_NODE_HOST, DECI2_NODE_HOST);
     pkt->netmp.code = NETMP_CODE_RESET;
     pkt->netmp.result = 0;
    pkt->bootp.reserved = 0;
    pkt->bootp.param[0] = 0xffffffff;
    pkt->bootp.param[1] = 0xffffffff;
    pkt->bootp.param[2] = 0xffffffff;
    pkt->bootp.param[3] = 0xffffffff;
     return pkt;
}


int NetmpHandler(PKTLIST *pl, char *buf) {
    NETMP_HDR *hdr = (NETMP_HDR *)buf;
    PKT *pkt;

    switch (hdr->code) {
        case NETMP_CODE_RESETR:
            if (hdr->result) return ShowError("target reset failed");
            printf("Target reset.\n");
            connected2ee = 0;
            sampleProtoOpened = 0;
            if ((pkt = GetHeadPktByStat(PKT_WAIT_REPLY)) != NULL) pkt->stat<<=1;
            break;
        case NETMP_CODE_CONNECTR:
            if (hdr->result) return ShowError("cannot connect to dsnetm");
            printf("Connected.\n");
            if ((pkt = GetHeadPktByStat(PKT_WAIT_REPLY)) != NULL) pkt->stat<<=1;
            break;
        default:
            printf("unknown netmp packet received.\n");
            break;
    }
    return 1;
}

// Local variables:
// tab-width: 4
// End:
// vi:set tabstop=4:


