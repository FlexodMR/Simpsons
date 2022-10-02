/* SCEI CONFIDENTIAL
 "PlayStation2" Programmer Tool Runtime Library  Release 1.1
 */
// Version 0.00
// ASCII
// 
// Copyright (C) 1998-1999 Sony Computer Entertainment Inc. All Rights Reserved.
// 
// Version        Date            Design      Log
// --------------------------------------------------------------------
// 0.00           10/13/99        koji        1st version

#include "deci2boot.h"
#include "dcmp.h"

int DcmpHandler(char *buf){
    DCMP_HDR *hdr = (DCMP_HDR *)buf;
    DCMP_STATUS_DATA *id;

    switch (hdr->type) {
        case DCMP_TYPE_STATUS:
            printf("DCMP_TYPE_STATUS: ");
            id = (DCMP_STATUS_DATA *)(hdr + 1);
            switch (hdr->code) {
                case DCMP_CODE_CONNECTED: printf("CONNECTED");
                    if (id->proto == DECI2_NODE_EE) connected2ee = 1;
                    break;
                case DCMP_CODE_PROTO:     printf("PROTO");
                    if (id->proto == PROTO_SAMPLE) sampleProtoOpened = 1;
                    break;
                case DCMP_CODE_UNLOCKED:  printf("UNLOCKED");  break;
                case DCMP_CODE_SPACE:     printf("SPACE");     break;
                default:                  printf("UNKNOWN");   break;
            }
            printf(" proto/node=0x%x", id->proto);
            break;
        case DCMP_TYPE_ERROR:
            printf("DCMP_TYPE_ERROR: ");
            switch (hdr->code) {
                case DCMP_CODE_NOPROTO:   printf("NOPROTO");   break;
                case DCMP_CODE_LOCKED:    printf("LOCKED");    break;
                case DCMP_CODE_NOSPACE:   printf("NOSPACE");   break;
                case DCMP_CODE_INVALHEAD: printf("INVALHEAD"); break;
                case DCMP_CODE_NOCONNECT: printf("NOCONNECT"); break;
                default:                  printf("UNKNOWN");   break;
            }
            return ShowError("\nget DCMP_TYPE_ERROR message");
        default:
            printf("Unknown DCMP message");
            break;
    }
    printf(" Received.\n");
    return 1;
}

// Local variables:
// tab-width: 4
// End:
// vi:set tabstop=4:


