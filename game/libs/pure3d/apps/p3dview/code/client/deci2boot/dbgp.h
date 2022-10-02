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

#if !defined(_DBGP_H)
#define _DBGP_H

typedef struct {/* debugging command header */
    half id;    /*   processor id */
    byte type;    /*   command type */
    byte code;    /*   command code */
    byte result;    /*   result code */
    byte count;    /*   count */
    half unused;    /*   (reserved) */
} DBGP_HDR;

/* processor id */
#define DBGP_CPUID_CPU        0    /* CPU (ESDBGP) */
#define DBGP_CPUID_VU0        1    /* VU0 (ESDBGP) */
#define DBGP_CPUID_VU1        2    /* VU1 (ESDBGP) */

/* command type,code */
#define DBGP_TYPE_GETCONF    0x00    /* get configuration request */
#define DBGP_TYPE_GETCONFR    0x01    /* get configuration response */
#define DBGP_TYPE_RESERVED_02    0x02    /* (reserved) */
#define DBGP_TYPE_RESERVED_03    0x03    /* (reserved) */
#define DBGP_TYPE_GETREG    0x04    /* get register request */
#define DBGP_TYPE_GETREGR    0x05    /* get register response */
#define DBGP_TYPE_PUTREG    0x06    /* put register request */
#define DBGP_TYPE_PUTREGR    0x07    /* put register response */
#define DBGP_TYPE_RDMEM        0x08    /* read memory request */
#define DBGP_TYPE_RDMEMR    0x09    /* read memory response */
#define DBGP_TYPE_WRMEM        0x0a    /* write memory request */
#define DBGP_TYPE_WRMEMR    0x0b    /* write memory response */
#define DBGP_TYPE_RESERVED_0c    0x0c    /* (reserved) */
#define DBGP_TYPE_RESERVED_0d    0x0d    /* (reserved) */
#define DBGP_TYPE_RESERVED_0e    0x0e    /* (reserved) */
#define DBGP_TYPE_RESERVED_0f    0x0f    /* (reserved) */
#define DBGP_TYPE_GETBRKPT    0x10    /* get breakpoint request */
#define DBGP_TYPE_GETBRKPTR    0x11    /* get breakpoint response */
#define DBGP_TYPE_PUTBRKPT    0x12    /* put breakpoint request */
#define DBGP_TYPE_PUTBRKPTR    0x13    /* put breakpoint response */
#define DBGP_TYPE_BREAK        0x14    /* break request */
#define   DBGP_CODE_OTHER      0xff    /*   not DBGT_CONTINUE */
#define DBGP_TYPE_BREAKR    0x15    /* break response */
#define DBGP_TYPE_CONTINUE    0x16    /* continue request */
#define   DBGP_CODE_CONT      0x0    /*   continue */
#define   DBGP_CODE_STEP      0x1    /*   step */
#define   DBGP_CODE_NEXT      0x2    /*   next */
#define DBGP_TYPE_CONTINUER    0x17    /* continue reply */
#define DBGP_TYPE_RUN        0x18    /* run request (EE) */
#define DBGP_TYPE_RUNR        0x19    /* run reply (EE) */
#define DBGP_TYPE_XGKTCTL    0x20    /* XGKICK trace control request (EE) */
#define DBGP_TYPE_XGKTCTLR    0x21    /* XGKICK trace control response (EE) */
#define DBGP_TYPE_RESERVED_22    0x22    /* (reserved) */
#define DBGP_TYPE_XGKTDATAR    0x23    /* XGKICK trace data response (EE) */
#define DBGP_TYPE_DBGCTL    0x24    /* debug control request (EE) */
#define DBGP_TYPE_DBGCTLR    0x25    /* debug control response (EE) */
#define DBGP_TYPE_RESERVED_26    0x26    /* (reserved) */
#define DBGP_TYPE_RESERVED_27    0x27    /* (reserved) */
#define DBGP_TYPE_RDIMG        0x28    /* read GS image request (EE) */
#define DBGP_TYPE_RDIMGR    0x29    /* read GS image response (EE) */
#define DBGP_TYPE_RESERVED_2a    0x2a    /* (reserved) */
#define DBGP_TYPE_RESERVED_2b    0x2b    /* (reserved) */
#define DBGP_TYPE_RESERVED_2c    0x2c    /* (reserved) */
#define DBGP_TYPE_RESERVED_2d    0x2d    /* (reserved) */
#define DBGP_TYPE_SETBPFUNC    0x2e    /* set break point function request */
#define DBGP_TYPE_SETBPFUNCR    0x2f    /* set break point function response */

/* result code */
#define DBGP_RESULT_GOOD        0x00    /* good */
#define DBGP_RESULT_INVALREQ        0x01    /* invalid request */
#define DBGP_RESULT_UNIMPREQ        0x02    /* unimplemented request */
#define DBGP_RESULT_ERROR        0x03    /* error */
#define DBGP_RESULT_INVALCONT        0x04    /* invalid continue */
#define DBGP_RESULT_TLBERR        0x10    /* TLB mod/load/store */
#define DBGP_RESULT_ADRERR        0x11    /* address error */
#define DBGP_RESULT_BUSERR        0x12    /* bus error */
#define DBGP_RESULT_INVALSTATE        0x20    /* invalid state */
#define DBGP_RESULT_BREAKED        0x21    /* breaked */
#define DBGP_RESULT_BRKPT        0x22    /* breakpoint */
#define DBGP_RESULT_STEPNEXT        0x23    /* step or next */
#define DBGP_RESULT_EXCEPTION        0x24    /* exception */
#define DBGP_RESULT_PROGEND        0x25    /* normal end of program */
#define DBGP_RESULT_BUSYSTATE        0x26    /* busy/critical state */
#define DBGP_RESULT_DEBUG_EXCEPTION    0x27    /* debug exception */
#define DBGP_RESULT_TIMEOUT        0x28    /* timeout */

#define DBGP_CF_MAJOR_VERSION        3

typedef struct {    /* debugging configuration */
    word major_ver;    /*   major version (protocol version) */
    word minor_ver;    /*   minor version (target implement version) */
    word target_id;    /*   target id (=protocol field's value in DECI2_HDR) */
    word reserved1;    /*   (reserved) */
    word mem_align;    /*   align mask (DB_MEM) */
    word reserved2;    /*   (reserved) */
    word reg_size;    /*   register size code (DB_REG) */
    word nreg;    /*   max count (DB_REG) */
    word nbrkpt;    /*   max count ({PUT,GET}{BRKPT,BRKPTR} */
    word ncont;    /*   max count (DBC_CONT) */
    word nstep;    /*   max count (DBC_STEP) */
    word nnext;    /*   max count (DBC_NEXT) */
#if 1 <= DBGP_CF_MAJOR_VERSION
    struct {
        word mem_limit_align;    /* memory packet limit align */
        word mem_limit_size;    /* memory packet limit size */
    } v1;
#endif    /* 1 <= DBGP_CF_MAJOR_VERSION */
#if 3 <= DBGP_CF_MAJOR_VERSION
    struct {
        word run_stop_state;
        word hdbg_area_addr;
        word hdbg_area_size;
    } v3;
#endif    /* 3 <= DBGP_CF_MAJOR_VERSION */
} DBGP_CONF_DATA;

#define DBGP_CF_MAJOR_CURRENT        DBGP_CF_MAJOR_VERSION
#define DBGP_CF_MINOR_FIRST        0    /* first implementation */
#define DBGP_CF_REG_SIZE_WORD        5    /* (1 << 5) =  32bit */
#define DBGP_CF_REG_SIZE_QUAD        7    /* (1 << 7) = 128bit */
#define DBGP_CF_RSS_RUNNING        1    /* run_stop_state = running  */
#define DBGP_CF_RSS_STOPPED        2    /* run_stop_state = stopping */
#define DBGP_CF_HDBG_AREA_MIN_SIZE    256    /* min. hdbg_area_size */

typedef struct {    /* memory data header */
    byte space;    /*   address space code */
    byte align;    /*   align code */
    half reserved;    /*   (must be zero) */    
    word address;    /*   memory address */
    word length;    /*   memory length */
} DBGP_MEM;

/* address space code */
#define DBGP_SPACE_MAIN_MEMORY    0
#define DBGP_SPACE_VU_MEM    1    /* (EE) */
#define DBGP_SPACE_VU_UMEM    2    /* (EE) */
#define DBGP_SPACE_GS        3    /* (EE) */

/* align code */
#define DBGP_ALIGN_BYTE        0    /*    1 byte */
#define DBGP_ALIGN_HALF        1    /*    2 byte */
#define DBGP_ALIGN_WORD        2    /*    4 byte */
#define DBGP_ALIGN_TWIN        3    /*    8 byte */
#define DBGP_ALIGN_QUAD        4    /*   16 byte */
#define DBGP_ALIGN_1KB        10    /* 1024 byte */

typedef struct {    /* register data header */
    byte kind;    /*   register kind */
    byte number;    /*   register number */
    half reserved;    /*   (must be zero) */
} DBGP_REG;

typedef struct {    /* break point data */
    word adr;    /*   address */
    word cnt;    /*   count */
} DBGP_BRKPT_DATA;

typedef struct {    /* EE run header */
    word entry;
    word gp;
    word reserved1;
    word reserved2;
    word argc;
    } DBGP_EERUN;

typedef struct {/* XGKICK trace control */
    word flag;
    word off;
    word cnt;
} DBGP_XGKT_CTL;

#define DBGP_XGKT_FLAG_VBS0    0x00000001    /* VU0  busy */
//define DBGP_XGKT_FLAG_VIF0    0x00000010        
//define DBGP_XGKT_FLAG_VBS1    0x00000100    
#define DBGP_XGKT_FLAG_VIF1    0x00001000/* VIF1 busy */
//define DBGP_XGKT_FLAG_GIF    0x00010000        

typedef struct {/* XGKICK trace data */
    word flag;
    word length;
    word offset;
    word sequence;
    } DBGP_XGKT_DATA;

typedef struct {/* RDIMG message */
    half reserved;
    half sbp;    /* buffer base address (x64) */
    half sbw;    /* buffer width (x64) */
    half spsm;    /* pixel format */
    half x;        /* left of rectangle */
    half y;        /* top of rectangle */
    half w;        /* width of rectangle [pixel] */
    half h;        /* height of rectangle [pixel] */
} DBGP_RDIMG;

#define DBGP_PSMCT32    0
#define DBGP_PSMCT24    1
#define DBGP_PSMCT16    2
#define DBGP_PSMCT16S    10
#define DBGP_PSMT8    19
#define DBGP_PSMT4    20
#define DBGP_PSMT8H    27
#define DBGP_PSMT4HL    36
#define DBGP_PSMT4HH    44
#define DBGP_PSMCZ32    48
#define DBGP_PSMCZ24    49
#define DBGP_PSMCZ16    50
#define DBGP_PSMCZ16S    58

typedef struct {    /* RDIMG data */
    word length;
    word sequence;
    word reserved[2];
} DBGP_RDIMG_DATA;

#endif    /* !_DBGP_H */

