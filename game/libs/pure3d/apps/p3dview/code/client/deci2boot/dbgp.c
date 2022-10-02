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
#include "dbgp.h"

#define MAX_DBG_MEM_LEN     (DECI2_MAX_LEN - sizeof(DECI2_HDR) \
        - sizeof(DBGP_HDR) - sizeof(DBGP_MEM))

static DBGP_CONF_DATA cf;
static MaxMemAlign = DBGP_ALIGN_BYTE;

static void *DbgpMakeRun(u_int entry, u_int gp) {
    struct _pkt {
        DECI2_HDR deci2;
        DBGP_HDR dbgp;
        DBGP_EERUN run;
    } *pkt;

    if ((pkt=(struct _pkt *)malloc(sizeof(*pkt))) == NULL) return NULL;

    MakeDeci2Hdr(&pkt->deci2, sizeof(*pkt), DECI2_PROTO_ESDBGP,
                            DECI2_NODE_HOST, DECI2_NODE_EE);
    pkt->dbgp.id = DBGP_CPUID_CPU;
    pkt->dbgp.type = DBGP_TYPE_RUN;
    pkt->dbgp.code = 0;
    pkt->dbgp.result = 0;
    pkt->dbgp.count = 1;
    pkt->dbgp.unused = 0;
    pkt->run.entry = entry;
    pkt->run.gp = gp;
    pkt->run.reserved1 = 0;
    pkt->run.reserved2 = 0;
    pkt->run.argc = 0;
    return pkt;
}


static int DbgpWrMem(u_char align, u_int adr, char *ptr, int len) {
    int nhdr, npad, asize, amask, n, nw;
    struct _pkt {
        DECI2_HDR deci2;
        DBGP_HDR dbgp;
        DBGP_MEM memh;
    } *pkt;

    while (align > 0 && !(cf.mem_align & (1 << align))) --align;
    amask = (asize = (1 << align)) - 1;
    nhdr = sizeof(DECI2_HDR) + sizeof(DBGP_HDR) + sizeof(DBGP_MEM);
    npad = ((nhdr + amask) & ~amask) - nhdr;
    while (len > 0) {
        if ((n = len) > MAX_DBG_MEM_LEN) n = MAX_DBG_MEM_LEN;
        n = ((n - npad) + amask) & ~amask;
        if (n + npad > MAX_DBG_MEM_LEN) n -= asize;
        if (cf.v1.mem_limit_align & (1 << align))
            if (nhdr + npad + n > (int)(cf.v1.mem_limit_size)) {
                n = cf.v1.mem_limit_size - nhdr - npad;
                if (n <= 0) return -1;
            }
        nw = npad + n;
        if ((pkt=(struct _pkt *)malloc(sizeof(*pkt)+nw)) == NULL) return -1;
        
        MakeDeci2Hdr(&pkt->deci2, sizeof(*pkt)+nw, DECI2_PROTO_ESDBGP,
                                        DECI2_NODE_HOST, DECI2_NODE_EE);
        pkt->dbgp.id = DBGP_CPUID_CPU;
        pkt->dbgp.type = DBGP_TYPE_WRMEM;
        pkt->dbgp.code = 0;
        pkt->dbgp.result = 0;
        pkt->dbgp.count = 1;
        pkt->dbgp.unused = 0;
        pkt->memh.space = DBGP_SPACE_MAIN_MEMORY;
        pkt->memh.align = align;
        pkt->memh.reserved = 0;
        pkt->memh.address = adr;
        pkt->memh.length = n;
        if (npad > 0) memset((pkt + 1), 0, npad);
        memcpy((void *)((char*)(pkt + 1) + npad), ptr, n);
        if (SendAndWaitReply(pkt) < 0)
            return ShowError("faild to send DBGP_TYPE_WRMEM packet");
        adr += n, ptr += n, len -= n;
    }
    return 0;
}


static int DbgpDownLoad(int adr, char *ptr, int len) {
    int asize, amask, off, n;

    amask = (asize = (1 << MaxMemAlign)) - 1;
    if ((off = (adr & amask)) > 0) {
        if ((n = asize - off) > len) n = len;
        if (0 > DbgpWrMem(DBGP_ALIGN_BYTE, adr, ptr, n)) return -1;
        adr += n;
        ptr += n;
        len -= n;
    }
    if ((n = (len & ~amask)) > 0) {
        if (DbgpWrMem(MaxMemAlign, adr, ptr, n) < 0) return -1;
        adr += n;
        ptr += n;
        len -= n;
    }
    if ((n = len) > 0) {
        if (DbgpWrMem(DBGP_ALIGN_BYTE, adr, ptr, n) < 0) return -1;
        adr += n;
        ptr += n;
        len -= n;
    }
    return 0;
}


static void *DbgpMakeGetconf(void) {
    struct _pkt {
        DECI2_HDR deci2;
        DBGP_HDR dbgp;
        DBGP_CONF_DATA conf;
    } *pkt;

    if ((pkt=(struct _pkt *)malloc(sizeof(*pkt))) == NULL) return NULL;

    MakeDeci2Hdr(&pkt->deci2, sizeof(*pkt), DECI2_PROTO_ESDBGP,
                            DECI2_NODE_HOST, DECI2_NODE_EE);
    pkt->dbgp.id = DBGP_CPUID_CPU;
    pkt->dbgp.type = DBGP_TYPE_GETCONF;
    pkt->dbgp.code = 0;
    pkt->dbgp.result = 0;
    pkt->dbgp.count = 0;
    pkt->dbgp.unused = 0;
    memset(&pkt->conf, 0, sizeof(DBGP_CONF_DATA));
    return pkt;
}


int DbgpHandler(PKTLIST *pl, char *buf) {
    int n;
    DBGP_HDR *hdr = (DBGP_HDR *)buf;
    PKT *pkt;

    switch (hdr->type) {
        case DBGP_TYPE_GETCONFR:
            if (hdr->result)
                return ShowError("cannot get DBGP configuration data");
            memcpy(&cf, (hdr + 1), sizeof(DBGP_CONF_DATA));
            for (n=DBGP_ALIGN_1KB; DBGP_ALIGN_BYTE <= n; n--)
                if(cf.mem_align & (1 << n)) break;
            MaxMemAlign = n;
            if ((pkt = GetHeadPktByStat(PKT_WAIT_REPLY)) != NULL) pkt->stat<<=1;
            break;
        case DBGP_TYPE_WRMEMR:
            if (hdr->result) return ShowError("DBGP_TYPE_WRMEM failed");
            if ((pkt = GetHeadPktByStat(PKT_WAIT_REPLY)) != NULL) pkt->stat<<=1;
            break;
        case DBGP_TYPE_RUNR:
            if (hdr->result) return ShowError("DBGP_TYPE_RUN failed");
            if ((pkt = GetHeadPktByStat(PKT_WAIT_REPLY)) != NULL) pkt->stat<<=1;
            break;
        case DBGP_TYPE_BREAKR:
            return ShowError("target program breaked by unknown reason");
        default:
            printf("unknown dbgp packet received.\n");
            break;
    }
    return 1;
}


int DbgpPload(char *filename) {
    int i, fd;
    long gp = 0;
    char *buf;
    Elf32_Ehdr ehdr;                            // elf header
    Elf32_Phdr *phdrTbl;                        // program header tbl
    Elf32_Shdr *shdrTbl;                        // section header tbl

    if (SendAndWaitReply(DbgpMakeGetconf()) < 0)
        return ShowError("faild to send DBGP_TYPE_GETCONF packet");

    if ((fd = ElfOpen(filename)) < 0) return ShowError("Cannot open file");
     if (!ElfGetEhdr(fd, &ehdr) < 0) return ShowError("Cannot read ELF header");
    if (ElfIsForEE(&ehdr)) return ShowError("File is not for EE architecture");
    if (!(phdrTbl = ElfGetPhdrTbl(fd, &ehdr)))
        return ShowError("There is no program headers");

    for (i=0; i<ehdr.e_phnum; i++) {
        if (phdrTbl[i].p_type != PT_LOAD || !phdrTbl[i].p_filesz) continue;
        printf("Loading program (address=0x%08x size=0x%08x) ...\n",
                phdrTbl[i].p_vaddr, phdrTbl[i].p_filesz);

        if ((buf = (char *)ElfReadSectionData(fd, phdrTbl[i].p_offset,
            phdrTbl[i].p_filesz)) == NULL)
            return ShowError("Error occured while reading file");

        DbgpDownLoad(phdrTbl[i].p_vaddr, buf, phdrTbl[i].p_filesz);
        free(buf);
    }

    if (!(shdrTbl = ElfGetShdrTbl(fd, &ehdr)))
        return ShowError("cannot read section headers");

    for (i=0; i<ehdr.e_shnum; i++) {        // find reginfo section
        if (shdrTbl[i].sh_type == SHT_MIPS_REGINFO) {
            Elf32_RegInfo *ri;
            if (shdrTbl[i].sh_size != sizeof(Elf32_RegInfo)) break;
            if ((ri = (Elf32_RegInfo *)ElfReadSectionData(fd,
                shdrTbl[i].sh_offset, shdrTbl[i].sh_size)) == NULL) break;
            gp = ri->ri_gp_value;
            free(ri);
            break;
        }
    }

    if (SendAndWaitReply(DbgpMakeRun(ehdr.e_entry, gp)) < 0 )
        return ShowError("faild to send DBGP_TYPE_RUN packet");

    if (fd > 0 ) close(fd);
    if (phdrTbl != NULL) free(phdrTbl);
    if (shdrTbl != NULL) free(shdrTbl);
     return 0;
}

// Local variables:
// tab-width: 4
// End:
// vi:set tabstop=4:


