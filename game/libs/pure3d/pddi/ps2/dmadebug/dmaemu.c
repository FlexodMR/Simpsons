/* SYSTEM EMULATION */

//#define DEBUG

#include <eeregs.h>
#include <libdma.h>
#include <stdio.h>
#include <string.h>
#include <pddi/ps2/dmadebug/Debug.h>
#include <pddi/ps2/dmadebug/Dmaemu.h>
#include <pddi/ps2/dmadebug/Vifcursor.h>
#include <pddi/ps2/dmadebug/Gifcursor.h>


// =======================================
// DEFINES AND CONSTANTS
// =======================================

#define setADR(v,x)     {if ((v)!=(void *)-1) (v)=(sceDmaTag *)(x);}
#define setQWC(v,x)     (v)=(x)
#define setCHCR(v,m,d)  (v).MOD=(m),(v).DIR=(d),(v).STR=1


static const char *gDmaIdNames[] = {
    "REFE", "CNT", "NEXT", "REF", "REFS", "CALL", "RET", "END"
};

static const char *gDmaChanNames[] = {
    "VIF0", "VIF1", "GIF", "fromIPU", "toIPU",
    "SIF0", "SIF1", "SIF2", "fromSPR", "toSPR"
};

static const char *gPceDescription[] = { "No priority", "*RESERVED*", "Disabled", "Enabled" };


// =======================================
// TYPEDEFS
// =======================================

typedef struct {
    tD_CHCR chcr;            // channel control
    void  *madr;        // memory address
    u_int qwc;            // transfer count
    sceDmaTag *tadr;    // tag address
    void *as0;            // address stack
    void *as1;            // address stack
    void *sadr;            // spr address
} DMA_REGISTER;

// =======================================
// GLOBALS
// =======================================

int gChan;        // The number of the channel we are examining
static DMA_REGISTER *d;
static void *gNextTAddr;        // pointer to where the next tag address will be.

static u_int gTagCount[8];        // Holds how many tags of each type we have encountered.
static u_int gTagTransLengthTotal[8];    // And the total length of data transferred by each type.

    // Globally accessible QWord which is what the DMA emulator puts onto the 'bus'.
u_int *gDmaTransferQWord;
BOOL gDmaTransferQWordIsTag;        // Is this a DMA tag?

        // Upper limit on memory size, used for bounds checking
u_int gUpperMainMemLimit = MEM_MAX_128;
static BOOL gEnableMirrors = FALSE;        // do we consider mirrored memory spaces to be valid?
                        // This is used because some parts of VU memory are mirrored in more than
                        // one place in memory. By default, this is disabled.

static BOOL gDumpDmaTags = TRUE;
static BOOL gDumpDmaStats = TRUE;

    //  -------------
    //    DMA REGISTERS
    //    -------------

    // --------- Registers common to all DMA channels
static u_int    d_ctrl;
static u_int    d_stat;
static u_int    d_pcr;
static u_int    d_sqwc;
static u_int    d_rbor;
static u_int    d_rbsr;
static u_int    d_stadr;
static u_int    d_enabler;

static DMA_REGISTER dmaRegs[10];

// =================================================================
// PROTOTYPES
// =================================================================

// =======================================================================
// FUNCTIONS
// =======================================================================

static void saveDmaRegisters(void) {
    int i;

    d_ctrl = (u_int)DGET_D_CTRL();
    d_stat = (u_int)DGET_D_STAT();
    d_pcr = (u_int)DGET_D_PCR();
    d_sqwc = (u_int)DGET_D_SQWC();
    d_rbor = (u_int)DGET_D_RBOR();
    d_rbsr = (u_int)DGET_D_RBSR();
    d_stadr = (u_int)DGET_D_STADR();
    d_enabler = (u_int)DGET_D_ENABLER();

    for(i = 0; i < 10; i++) {
        sceDmaChan *dc = sceDmaGetChan(i);
        dmaRegs[i].chcr = dc->chcr;
        dmaRegs[i].madr = (void *)dc->madr;
        dmaRegs[i].qwc = (u_int)dc->qwc;
        dmaRegs[i].tadr = (sceDmaTag *)dc->tadr;
        dmaRegs[i].as0 = (void *)dc->as0;
        dmaRegs[i].as1 = (void *)dc->as1;
        dmaRegs[i].sadr = (void *)dc->sadr;
    }
}

// ==========================================================
// CRC functions, for checking to see if data is getting corrupted
// ==========================================================

static int gTableInitialised = 0;
static u_int gCrc;
static u_int crc32_table[256];

#define CRC32_POLY (0x04c11db7)

static void initCrc32(void) {
    int i, j;
    u_long c;
    for(i = 0; i < 256; i++) {
        for(c = i << 24, j = 8; j > 0; --j) {
            c = c & 0x80000000 ? (c << 1) ^ CRC32_POLY : (c << 1);
        }
        crc32_table[i] = c;
    }
}

static u_int addCRC(u_char *buf, int len) {
    for(; len > 0; ++buf, --len) {
        gCrc = (gCrc << 8) ^ crc32_table[(gCrc >> 24) ^ *buf];
    }
    return ~gCrc;
}

int DMA_getCRC(u_int *result) {
    int err = NO_ERROR;

    if(gTableInitialised == 0) {
        initCrc32();
        gTableInitialised = 1;
    }

    gCrc = 0xffffffff;
    do {
        err |= DMA_emulateDMACycle();
        if(gDmaTransferQWord != NULL) {
            *result = addCRC((char *)gDmaTransferQWord, 16);
        }
    } while(!FATAL(err) && gDmaTransferQWord != NULL);
    return err;
}




// =================================================================
// MINOR SUPPORT FUNCTIONS
// =================================================================


// Output the statistics that have been accumulated so far
// 

static int outputDmaStatistics(void) {
    int err = NO_ERROR;
    int i;
    u_int totalTags = 0, totalSize = 0;
    char *p;

    err |= DEBUG_addToOutputBuffer("==== DMA STATISTICS ====");
    err |= DEBUG_addToOutputBuffer("  Tags      # Tags    QWords Txfr'd");
    err |= DEBUG_addToOutputBuffer("  ----      ------    -------------");

    for(i = 0; i < 8; i++) {
        if(gTagCount[i] != 0) {
            p = gTempString;
            p += sprintf(p, "  %-12s%4d%6s%6d", gDmaIdNames[i],
                    gTagCount[i], "", gTagTransLengthTotal[i]);

            totalTags += gTagCount[i];
            totalSize += gTagTransLengthTotal[i];
            err |= DEBUG_addToOutputBuffer(gTempString);
        }
    }
    err |= DEBUG_addToOutputBuffer(   "            ======    =============");
    sprintf(gTempString, "  %12s%4d%6s%6d", "", totalTags, "", totalSize);
    err |= DEBUG_addToOutputBuffer(gTempString);

    return err;
}


// -------------------------------
// ERROR HANDLING
// -------------------------------


// This function acts as a wrapper to DEBUG_AddError. If an address is supplied,
// it will add the address, and address contents to the error string.
// Depending on the severity, it will call DEBUG_addError or DEBUG_addWarning.
// Parameters:
//        errnum - the error number. See Debug.h for those.
//        severity - severity of the error, ie a warning, fatal error or non-fatal error.
//        addr - address where the error was found. Can be NULL.
//        error - string describing the error that was found.

static int AddSysError(int errnum, int severity, u_int *addr, char *error) {
    static char err[1024];

    dputs("-->Entering AddSysError");
    sprintf(err, "%s : ", gDmaChanNames[gChan]);
    if(addr != NULL) {
        addr = DMA_convertToMainMemAddress(addr);
        sprintf(err + strlen(err), ADDRESS_HEX ":[" MEMCONTENTS_64 "] ",
            (u_int)addr,
            addr[1], addr[0]);
    }
    switch(severity) {
        case ERROR_WARNING:
            strcat(err, WARNINGCOL);
            break;
        case ERROR_FATAL_CONT:
        case ERROR_FATAL_HALT:
            strcat(err, ERRORCOL);
            break;
    }
    strcat(err, error);
    strcat(err, NORM);
    dputs("<--Leaving AddSysError");
    return DEBUG_addError(errnum, severity, err);
}

// ----------------------------------------
// MEMORY addres validation and conversion
// ----------------------------------------
    // returns TRUE if the u_int falls in main memory or scratchpad ram.
BOOL DMA_isValidAddress(void *addr) {
    u_int a = (u_int)addr;
    u_int b = (a & 0xf0000000) >> 28;
    u_int upperVu0Mem;

    if(b == 2 || b == 3) {
        a = a & 0x0fffffff;
    }
    upperVu0Mem = (gEnableMirrors)? 0x11007fff : 0x11004fff;
    return
            (a >= 0x00100000 && a <= gUpperMainMemLimit) ||        // Main memory (not including kernal area)
            (a >= 0x70000000 && a <= 0x70003fff) ||        // Scratch pad
            (a >= 0x11000000 && a <= 0x11000fff) ||        // VU 0 MicroMem
            (a >= 0x11004000 && a <= upperVu0Mem) ||    // VU 0 Memory
            (a >= 0x1100c000 && a <= 0x1100ffff) ||        // VU 1 Memory
            (a >= 0x11008000 && a <= 0x1100bfff)         // VU 1 MicroMem
            ;
}
// ==================
    // Converts from DMA ADDR field format to a normal EE main memory address.
void *DMA_convertToMainMemAddress(void *addr) {
    u_int a = (u_int)addr;

    if(a & 0x80000000) {
        a = (a & 0x0ffffff0) | 0x70000000;
    }

    if((a>>28) == 0 || (a>>28) == 3) {        // If Cached or Uncached Accelerated, change to Uncached.
        a = (a & 0x0fffffff) | 0x20000000;
    }
    dprintf(("Converted %p to main memory address: %p.\n", addr, (u_int *)a));
    return (u_int *)a;
}

// ==================
static void *convertToDmaAddress(void *addr) {
    u_int a = (u_int)addr;
    if( (a & 0xf0000000) == 0x70000000) {
        a &= 0x0fffffff;
        a |= 0x80000000;
    }
    return (void *)a;
}

// ==================
        // Validates an address in DMA format, ie top bit is SPR.
static int validateDmaAddress(void *address, char *description) {
    int err = NO_ERROR;

    dputs("--> Entering validateDmaAddress");

        // Extra information - if the address is 0x7***, then they've just given
        // the scratch pad address without setting the top bit.
    if(((u_int)address & 0xf0000000) == 0x70000000) {
        sprintf(gTempString, "%s at %p looks like a scratchpad address, but bit 31 is not set.", description, address);
        err |= AddSysError(WARN_DMA_LOOKS_SPR, ERROR_WARNING, NULL, gTempString);
    }

    if(((u_int)address & 0xf) != 0) {
        sprintf(gTempString, "%s at %p is not quadword aligned.", description, address);
        err |= AddSysError(ERR_DMA_ALIGNMENT, ERROR_FATAL_HALT, NULL, gTempString);
    }

    if(!DMA_isValidAddress(DMA_convertToMainMemAddress(address))) {
        sprintf(gTempString, "%s (0x%08x) is not in a valid address range", description, (u_int)address);
        err |= AddSysError(ERR_DMA_INVALID_ADDRESS, ERROR_FATAL_HALT, NULL, gTempString);
    }
    dputs("<-- Leaving validateDmaAddress");
    return err;
}




//==============
static void putTransferSourceAddress(void *addr) {
    if(gChan == SCE_DMA_fromSPR || gChan == SCE_DMA_toSPR) {
        d->sadr = (void *)((u_int)addr & 0x3ff0);
    } else {
        d->madr = addr;
    }
}
//==============
static void *getTransferSourceAddress(void) {
    void *addr;
    if(gChan == SCE_DMA_fromSPR || gChan == SCE_DMA_toSPR) {
        addr = d->sadr;
    } else {
        addr = d->madr;
    }
    return addr;
}
//==============
static void incrementTransferAddress(void) {
    void *saddr;
    saddr = getTransferSourceAddress();
    saddr += 16;
    putTransferSourceAddress(saddr);
}

//==============
    // Sets the global QWord which is transferred by the DMA
    // This emulates the qword being transferred.
static void setDmaTransferQWord(void *address, BOOL isTag) {
    gDmaTransferQWord = address;
    gDmaTransferQWordIsTag = isTag;
}







//==============
        // Turns off the DMA
static void endDmaTransfer(void) {
    d->chcr.STR = 0;
    gDmaTransferQWord = NULL;
    gDmaTransferQWordIsTag = FALSE;

    if(gDumpDmaStats && d->chcr.MOD == 1) {        // Only worth outputting stats if we're in Source Chain mode
        outputDmaStatistics();
    }
}

//==============
        // Read from MADR, pop it in the global register, increment MADR and decrease QWC.
static int transferQWord(void) {
    int err = NO_ERROR;
    void *saddr;
    saddr = getTransferSourceAddress();
    err |= validateDmaAddress(saddr, "DMA data");
    saddr = DMA_convertToMainMemAddress(saddr);
    setDmaTransferQWord(saddr, FALSE);
    
    incrementTransferAddress(); // Increment MADR/SADR
    d->qwc--;
    return err;
}

//==============

static int interpretSourceChainTag(void) {
    int err = NO_ERROR;
    u_int *tagAddress, *addr, lo, hi, i;
    u_int tte, id, qwc, irq, pce, callStackDepth;        // holds DMA channel info
    static char s[1024];
    
    int numBlocks;        // number of different areas in memory that this DMA tag will transfer from.
                        // This has a min of 0 and a max of 2.
    u_int *startTransAddr[2], *endTransAddr[2];
    
    dputs("--> Entering interpretSourceChainTag");

        // --------- Get the tag (tagAddress in d->tadr is assumed to be correct)
        // --------- and suck all the data out of it.
    tagAddress = DMA_convertToMainMemAddress((u_int *)d->tadr);
    lo = tagAddress[0];
    hi = tagAddress[1];
    id = (lo >> 28) & 0x7;
    qwc = lo & 0xffff;
    tte = d->chcr.TTE;
    irq = lo >> 31;
    pce = (lo >> 26) & 0x3;
    addr = (u_int *)tagAddress[1];
    callStackDepth = d->chcr.ASP;

        // ------- Dump what we have so far

    s[0] = 0;

        // Add the name of the channel, the TTE state, the tagAddress of the tag, and the
        // contents of the tag, followed by the tag ID (the type of tag).
    DEBUG_addField(ENTRY_TITLE, s, DMATITLE "DMA %s%s %-4s" NORM " " DATASOURCEADDRESS,
                // Generate output prefix (indentation for 'CALL/RET')
            (callStackDepth >= 1) ? "->" : "  ",
            (callStackDepth == 2) ? "->" : "  ",
            gDmaIdNames[id],
            (u_int)tagAddress);

    DEBUG_addField(ENTRY_FIELD, s, "["MEMCONTENTS_64 "]", hi, lo);            // Tag contents (Hi/Lo)
    DEBUG_addField(ENTRY_FIELD, s, "CHAN="DATA_STR,  gDmaChanNames[gChan]);        // Channel name
    DEBUG_addField(ENTRY_FIELD, s, "TTE="DATA_DEC, tte);                                    // TTE status
    DEBUG_addField(ENTRY_FIELD, s, "IRQ="DATA_DEC, irq);                                    // 'interrupt'
    DEBUG_addField(ENTRY_FIELD, s, "PCE="DATA "%11s" NORM, gPceDescription[pce]);        // PCE status
    DEBUG_addField(ENTRY_FIELD, s, "QWC:" DATA_4HEX NORM, qwc);                        // QuadWordCount

        // ---------------- Tag field boundary checks

    if(pce == 1) {
        err |= AddSysError(ERR_RESERVED_PCE, ERROR_FATAL_CONT, tagAddress, "PCE field is 1, which is reserved.");
    }

        // Warning check on ignored bits above the QuadWordCount
    if(((lo >> 16) & 0x3ff) != 0) {
        err |= AddSysError(WARN_UNUSED_TAG_BITS_NON_ZERO, ERROR_WARNING, tagAddress,
                "Bits 16-25 in this DMA tag are not 0. You may be trying to transfer >= 1Mb?");
    }

        // Sanity check to see that certain tags are not used on certain DMA channels.
    if(id == DMA_REFS && !(gChan == SCE_DMA_VIF1 || gChan == SCE_DMA_SIF1 || gChan == SCE_DMA_GIF)) {
        err |= AddSysError(ERR_INVALID_TAG_FOR_CHANNEL, ERROR_FATAL_CONT, tagAddress,
            "DMA tag of type REFS encountered, but this is only permitted on VIF1, GIF & SIF1 channels!");
    }
    if(    (id == DMA_CALL || id == DMA_RET) && !(gChan == SCE_DMA_VIF0 || gChan == SCE_DMA_VIF1 || gChan == SCE_DMA_GIF)) {
        err |= AddSysError(ERR_INVALID_TAG_FOR_CHANNEL, ERROR_FATAL_CONT, tagAddress,
             "DMA tag of type CALL/RET encountered, but this is only permitted on VIF0, VIF1 & GIF channels!");
    }

            // If any of these tags aren't being used, we must check ADDR field for sanity
    if(!(id == DMA_CNT || id == DMA_RET || id == DMA_END)) {
        err |= validateDmaAddress(addr, "ADDR field");
        addr = DMA_convertToMainMemAddress(addr);
        if(FATAL(err)) {
            err |= AddSysError(ERR_DMA_INVALID_ADDRESS, ERROR_FATAL_CONT, tagAddress, "DMA tag ADDR field is invalid");
        }
    }

        // --------------- Display tagAddress ranges transferred

        // Fill in the arrays holding details of the tagAddress ranges to transfer
        // (There can be 0, 1 or 2 tagAddress ranges per DMA tag depending on the tag ID, TTE and QWC)
    numBlocks = 0;
    if(id == DMA_REF || id == DMA_REFE || id == DMA_REFS) {
        if(tte) {
            startTransAddr[numBlocks] = tagAddress;
            endTransAddr[numBlocks] = tagAddress + 4;
            numBlocks++;
        }
        if(qwc > 0) {
            startTransAddr[numBlocks] = DMA_convertToMainMemAddress(addr);
            endTransAddr[numBlocks] = startTransAddr[numBlocks] + qwc * 4;
            numBlocks++;
        }
    } else {
        if(tte) {
            startTransAddr[numBlocks] = tagAddress;
        } else {
            startTransAddr[numBlocks] = tagAddress + 4;
        }
        if(qwc > 0 || tte) {
            endTransAddr[numBlocks] = tagAddress + 4 + qwc * 4;
            numBlocks++;
        }
    }

        // Memory bounds checking on the data ranges being transferred
    for(i = 0; i < numBlocks; i++) {
        int error;

        error = NO_ERROR;
        error |= validateDmaAddress(convertToDmaAddress(startTransAddr[i]), "Transfer start address");
        error |= validateDmaAddress(convertToDmaAddress(endTransAddr[i]-16), "Transfer end address");
        if(FATAL(error)) {
            sprintf(gTempString, "Data to be transferred falls outside main mem/scratch pad RAM. "
                    "[%08x -> %08x]", (u_int)startTransAddr[i], (u_int)endTransAddr[i]);
            err |= AddSysError(ERR_DMA_INVALID_ADDRESS, ERROR_FATAL_CONT, NULL, gTempString);
            break;
        }
    }

    dputs("About to display blocks");

        // Display the areas of memory that are being transferred. (0, 1 or 2 areas)
    if(numBlocks == 0) {
        DEBUG_addField(ENTRY_FIELD_NL, s, "Transfers from: ["ADDRESS"No data is transferred"NORM"]");
    } else {
        dputs("++++blocks");
        for(i = 0; i < numBlocks; i++) {
            DEBUG_addField(ENTRY_FIELD_NL, s, "Transfers: ["ADDRESS_HEX "->" ADDRESS_HEX ") [len(qwords):"DATA_HEX "]%s",
                (u_int)startTransAddr[i], (u_int)endTransAddr[i], ((u_int)endTransAddr[i] - (u_int)startTransAddr[i]) >> 4,
                (i == 0 && tte)?" (Includes DMA tag)":"");
        }
    }

            // ------------ Update statistics

    gTagCount[id]++;
    for(i = 0; i < numBlocks; i++) {
        gTagTransLengthTotal[id] += ((u_int)endTransAddr[i] - (u_int)startTransAddr[i]) >> 4;
    }

    dputs("About to calculate next tag address");


            // ------------ Calculate next Tag address, and set MADDR and QWC.

    d->qwc = qwc;

    switch(id) {
        case DMA_CNT:
            gNextTAddr = tagAddress + 4 + qwc * 4;
            d->madr = convertToDmaAddress(tagAddress + 4);
            break;

        case DMA_REF:
        case DMA_REFS:
        case DMA_REFE:
            if(id == DMA_REFE) {
                gNextTAddr = NULL;
            } else {
                gNextTAddr = convertToDmaAddress(tagAddress + 4);
            }
            d->madr = convertToDmaAddress(addr);
            break;

        case DMA_END:
            gNextTAddr = NULL;
            d->madr = convertToDmaAddress(tagAddress + 4);
            break;

        case DMA_RET:
            dprintf(("RET encountered - ASP = %d\n", d->chcr.ASP));
            if(d->chcr.ASP == 0) {
                gNextTAddr = NULL;
                err |= AddSysError(WARN_PREMATURE_END, ERROR_WARNING, tagAddress,
                             "RET tag encountered, but the call stack is not empty!");
            } else if(d->chcr.ASP == 1) {
                gNextTAddr = d->as0;
            } else if(d->chcr.ASP == 2) {
                gNextTAddr = d->as1;
            } else {
                ASSERT((0), "Logic error - ASP of CHCR is > 2\n");
            }
            d->madr = convertToDmaAddress(tagAddress + 4);
            break;

        case DMA_NEXT:
            gNextTAddr = convertToDmaAddress(addr);
            d->madr = convertToDmaAddress(tagAddress + 4);
            break;

        case DMA_CALL:
            dprintf(("CALL encountered - ASP = %d\n", d->chcr.ASP));
            gNextTAddr = convertToDmaAddress(addr);
            if(d->chcr.ASP == 0) {
                d->as0 = tagAddress + 4 + qwc * 4;
                d->chcr.ASP++;
            } else if(d->chcr.ASP == 1) {
                d->as1 = tagAddress + 4 + qwc * 4;
                d->chcr.ASP++;
            } else if(d->chcr.ASP == 2) {
                gNextTAddr = NULL;
                err |= AddSysError(ERR_CALLSTACK_OVERFLOW, ERROR_FATAL_HALT, tagAddress,
                    "DMA tag of type CALL encountered, but call stack is full!");
            }
            d->madr = convertToDmaAddress(tagAddress + 4);
            break;
    }

    if(gDumpDmaTags) {
        err |= DEBUG_addToOutputBuffer(s);
    }

    dputs("<-- Leaving interpretSourceChainTag");

    return err;
}

// =================================================================
//                   MAJOR SUPPORT FUNCTIONS
// =================================================================
    // The DMA Cycle in source Chain mode can be viewed like this:
    // 1) if QWC > 0 then transfer from MADR until QWC = 0;
    // 2) examine tag in TADR, which sets ASP, MADR, QWC and gNextTaddr.
    // 3) if QWC > 0 then transfer from MADR until QWC = 0;
    // 4) if tag == RET && ASP == 0, || tag = END || tag = REFE, then end.
    // 5) TADR = gNextTaddr
    // 6) GOTO 2
// To help duplicate this loop, we use 'gNextSCProcessingStage' to tell us what the next stage should be.
// This is necessary, because when QWC reaches 0, we have to know whether to move onto stage 2 or stage 4.
// 'nextSCProcessingStage' should be set to INTERPRET_TAG if QWC > 0 when the Source Chain transfer is started.
typedef enum { INTERPRET_TAG, CHECK_DMA_END_TRANSFER } PROCESSING_STAGE;
static BOOL gNextSCProcessingStage;

static int emulateChainDmaCycle(void) {
    int err = NO_ERROR;
    void *tadr;

    BOOL finished = FALSE;
    dputs("--> Entering emulateChainDmaCycle");
    do {
        if(d->qwc != 0) {
            dputs("}}}}}}} Transferred Qword");
            err |= transferQWord();
            finished = TRUE;
        } else {
            if(gNextSCProcessingStage == INTERPRET_TAG) {
                dputs(" ---- Interpret tag");
                d->tadr = (sceDmaTag *)gNextTAddr;    // set the next tag address
                tadr = d->tadr;
                err |= validateDmaAddress(tadr, "DMA Tag");
                if(FATAL(err)) {
                    break;
                }
                tadr = DMA_convertToMainMemAddress(tadr);
                dputs(" About to interpret source tag");

                    // Tag address is OK, read it, interpret it and set gNextTAddr, MADR, QWC
                err |= interpretSourceChainTag();
                dputs(" Finished interpreting source tag");
                if(d->chcr.TTE == 1) {
                    setDmaTransferQWord(tadr, TRUE);
                    finished = TRUE;
                }
                gNextSCProcessingStage = CHECK_DMA_END_TRANSFER;
                dputs(" ==== Interpret tag");

            } else {
                u_int id;
                dputs(" ---- Check end");
                tadr = DMA_convertToMainMemAddress(d->tadr);
                id = (*(u_int*)tadr >> 28) & 0x7;
                if(id == DMA_REFE || (id == DMA_RET && d->chcr.ASP == 0) || id == DMA_END) {
                    if((id == DMA_REFE || id == DMA_END) && d->chcr.ASP != 0) {
                        err |= AddSysError(WARN_PREMATURE_END, ERROR_WARNING, (u_int*)d->tadr,
                                 "END/REFE tag encountered, but the call stack is not empty!");
                    }
                    endDmaTransfer();
                    finished = TRUE;
                } else if(id == DMA_RET && d->chcr.ASP > 0) {
                    d->chcr.ASP--;
                }
            
                gNextSCProcessingStage = INTERPRET_TAG;
                dputs(" ==== Check end");
            }
        }
    } while(!FATAL(err) && !finished);
    dputs("<-- Leaving emulateChainDmaCycle");
    return err;
}


static int emulateNormalDmaCycle(void) {
    int err = NO_ERROR;

    dputs("--> Entering emulateNormalDmaCycle");
    if(d->qwc == 0) {
        endDmaTransfer();
    } else {
        err |= transferQWord();
    }
    dputs("<-- Leaving emulateNormalDmaCycle");
    return err;
}



        // This function assumes that the DMA transfer has been initialised with DMA_startTransfer.
        // It will emulate a DMA cycle, placing a pointer to the word being transferred into
        // gDmaTransferQWord (it's NULL if there's nothing to transfer). At the end of the function,
        // gDmaTransferQWord will point to the word to be transferred, or NULL if we're at the end.

        // gDmaTeansferQWordIsTag will be TRUE if the word pointed to is a tag.

int DMA_emulateDMACycle(void) {
    int err = NO_ERROR;

    dputs("--> Entering DMA_emulateDMACycle");

    gDmaTransferQWord = NULL;
    gDmaTransferQWordIsTag = FALSE;

    if(d->chcr.MOD == 0) {
        err |= emulateNormalDmaCycle();
    } else {
        err |= emulateChainDmaCycle();
    }

    dputs("<-- Leaving DMA_emulateDMACycle");
    return err;
}



// ===================================================


    // Returns the DMA channel number, given a sce channel structure
    // (as used by sceDmaSend et al).
int DMA_getDmaChannelNumber(sceDmaChan *d) {
    static sceDmaChan *chanAddresses[] = {
        (sceDmaChan*)D0_CHCR, (sceDmaChan*)D1_CHCR, (sceDmaChan*)D2_CHCR,
        (sceDmaChan*)D3_CHCR, (sceDmaChan*)D4_CHCR, (sceDmaChan*)D5_CHCR,
        (sceDmaChan*)D6_CHCR, (sceDmaChan*)D7_CHCR, (sceDmaChan*)D8_CHCR,
        (sceDmaChan*)D9_CHCR
    };
    int i;

    for(i = 0; i < 10; i++) {
        if(chanAddresses[i] == d) {
            return i;
        }
    }
    return -1;
}



static int startup(int channelNum) {
    int err = NO_ERROR;
    int i;

    saveDmaRegisters();
    VIF_saveVifRegisters();
    GIF_saveGifRegisters();

    GIF_reset();            // added V1.0, even though it's possible to transfer data to the GIF when it isn't idle.
                            // however, the likelihood of wanting to do this is pretty low.

    DEBUG_reset();            // Clear output buffers

    gChan = channelNum;
    d = &dmaRegs[gChan];
    gNextTAddr = d->tadr;

    gNextSCProcessingStage = INTERPRET_TAG;

    for(i = 0; i < 8; i++) {
        gTagCount[i] = 0;
        gTagTransLengthTotal[i] = 0;
    }

    gDmaTransferQWord = NULL;
    gDmaTransferQWordIsTag = FALSE;

    return err;
}

static int startupSanityChecks(void) {
    int err = NO_ERROR;

        // Sanity checks on register settings
    if((d->qwc != 0) && d->chcr.MOD == 1) {        // if mode = chain && qwc != 0)
        err |= AddSysError(WARN_DMA_QWC_NOT_ZERO, ERROR_WARNING, gNextTAddr,
                "The DMA transfer was started in Chain Mode, but QWC != 0");
    }
    if(d->qwc == 0 && d->chcr.MOD == 0) {
        err |= AddSysError(WARN_DMA_NORMAL_QWC_ZERO, ERROR_WARNING, NULL,    
                "'Normal' Mode DMA transfer started, but QWC == 0!");
    }
    if(d->chcr.ASP != 0) {
        err |= AddSysError(WARN_DMA_ASP_NOT_ZERO, ERROR_WARNING, NULL,
                "ASP (DMA call stack depth) is not zero at beginning of transfer.");
    }
    if(d->chcr.DIR == 0) {
        err |= AddSysError(ERR_DMA_INVALID_DIR, ERROR_FATAL_HALT, NULL,
            "Sorry, these modules are not designed to handle DMA DIR = 0 (to memory)");
    }

    if(d->chcr.MOD != 0 && d->chcr.MOD != 1) {
        err |= AddSysError(ERR_DMA_INVALID_MOD, ERROR_FATAL_HALT, NULL,
            "Sorry, these modules are not designed to handle DMA MOD == 2 or 3");
    }
    if(d->chcr.TTE == 1 && d->chcr.MOD == 0) {    // TTE=1 and Mode=Normal is suspicious
        err |= AddSysError(WARN_DMA_TTE_IN_NORM_MODE, ERROR_WARNING, NULL,
            "TTE is set to 1 during a 'Normal' mode transfer");
    }

    if(d->chcr.TTE == 1 && d->chcr.MOD == 1 && gChan == SCE_DMA_GIF) {    // TTE=1 on GIF channel
        err |= AddSysError(WARN_DMA_TTE_IN_GIF_CHANNEL, ERROR_WARNING, NULL,
            "TTE is set to 1 for a transfer to the GIF channel");
    }
    return err;
}


// ===================================================

void DMA_parseConfig(char *cs) {
            // Parse config string
    gDumpDmaTags = TRUE;
    gDumpDmaStats = TRUE;
    gUpperMainMemLimit = MEM_MAX_128;
    gEnableMirrors = FALSE;
    if(cs != NULL) {
        if(strstr(cs, "-nodmatags") != NULL) {
            gDumpDmaTags = FALSE;
        }
        if(strstr(cs, "-nodmastats") != NULL) {
            gDumpDmaStats = FALSE;
        }
        if(strstr(cs, "-mem32") != NULL) {
            gUpperMainMemLimit = MEM_MAX_32;
        }
        if(strstr(cs, "-usemirrors") != NULL) {
            gEnableMirrors = TRUE;
        }
    }
}


        // This sets up the emulator for a DMA transfer. After this call, you can call DMA_emulateCycle to
        // get the next qword to be transferred.
        // Use this if you set CHCR.STR manually.

int DMA_startDmaTransfer(int channelNum, u_int chcr) {
    int err = NO_ERROR;

    err |= startup(channelNum);
    d->chcr = *(tD_CHCR*)&chcr;

    err |= startupSanityChecks();
    return err;
}



        // This is similar to the DMA_startDmaTransfer function above.
        // Use this if you start the transfer by calling sceDmaSend()

        // Send by Source Chain
int DMA_sceDmaSend(sceDmaChan *dc, void *tag) {
    int chan;
    int err = NO_ERROR;

    chan = DMA_getDmaChannelNumber(dc);
    ASSERT( (chan != -1), "Error - DMA_sceDmaSend was passed an invalid DMA Handler pointer");

            // wait for 'real' channel to complete current transfer
        // NV:  messes with the mfifo while ((*(volatile u_int *)&(dc->chcr))&0x0100);
    err |= startup(chan);

    gNextTAddr = tag;
    setADR(d->tadr, tag);
    setQWC(d->qwc,  0);
    setCHCR(d->chcr, 1, 1);

    err |= startupSanityChecks();
    return err;
}


        // This is similar to the DMA_startDmaTransfer function above.
        // Use this if you start the transfer by calling sceDmaSendN()

        // Send by Normal
int DMA_sceDmaSendN(sceDmaChan *dc, void *addr, int size) {
    int chan;
    int err = NO_ERROR;

    chan = DMA_getDmaChannelNumber(dc);

    ASSERT( (chan != -1), "Error - DMA_sceDmaSend was passed an invalid DMA Handler pointer");

                // wait for 'real' channel to complete current transfer
    //NV: messes with the mfifo  while ((*(volatile u_int *)&(dc->chcr))&0x0100);
    err |= startup(chan);

    setADR(d->madr, addr);
    setQWC(d->qwc,  size);
    setCHCR(d->chcr, 0, 1);

    err |= startupSanityChecks();
    return err;
}

