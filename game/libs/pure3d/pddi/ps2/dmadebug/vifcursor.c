/*
    VIF cursor and validator
    James Russell - SCEE Technology Group

    ===================================================
    *Please* send bug reports to James_Russell@scee.net
    If you fix it yourself but don't tell me, your fix
    may be wiped out when you d/l the next release!
    ===================================================

    These functions can be used to examine VIF lists. It uses
    the DMA source chain walking library, so it can be used to
    examine VIF lists embedded in DMA Source Chains.


    Version history:

    Ver        Author        Comments
    ===        ======        ========

    2.07    J Russell   20/02/2002 - Fixed bug where VIF cursor would not
                        report failures if it had a problem trying to get the next
                        DMA word

    0.95    J Russell    12/7/2000 - Added ability to disassemble GS packets
                        coming through DIRECT/DIRECTHL vifcodes.
                        Add colour output support.
    0.8        J Russell    13/6/2000 - Rearchitected system so that it uses the
                        new DMA library like a file system. Much more modular.
    0.7        J Russell    1/6/2000 - First release

*/


//#define DEBUG

#include <stdio.h>
#include <sys/types.h>
#include <string.h>
#include <eestruct.h>
#include <malloc.h>
#include <libdma.h>

#include <pddi/ps2/dmadebug/Debug.h>
#include <pddi/ps2/dmadebug/Dmaemu.h>
#include <pddi/ps2/dmadebug/Gifcursor.h>
#include <pddi/ps2/dmadebug/Vifcursor.h>

/*
    Various notes to programmers that are going to hack this for their own porpoises:
    =================================================================================

    1) Parts of the VIF commands and formats have numbers (codes) associated with them.
    These numbers are dictated by the specification of the EE.
    These codes are sometimes large and not consecutive. It's easier to reference/manipulate
    these via an index rather than the code itself. (eg gVifCodeNames[cmdIndex] is
    easier to write than gVifCodeNames[getIndexFromCmd(cmd)])

    So whereever you see 'Index' in a variable, it means an index number from a consective set
    of numbers starting at 0, rather than the actual code itself, which is from a set of numbers
    the same size, but not necessarily in order or starting from 0.

    The enums that are defined in the file _may_ have a suffix of 'c'. This means
    that the actual code is represented. EG VIF_UNPACKc = 0x60. If it doesn't end in 'c',
    then that's the index number, EG VIF_UNPACK = 12, 'cos it's the 13th VIF code.

*/

// =======================================
// TYPEDEFS
// =======================================

typedef struct {
    u_int c[4];
    u_int r[4];
    u_int cycle;
    u_int mask;
    u_int mode;
    u_int itop;
    u_int itops;
    u_int mark;
    u_int code;
} VIF_REGISTERS;


// =======================================
// GLOBALS
// =======================================
static BOOL gDumpVifCodes = TRUE;
static BOOL gVerbose = TRUE;
static BOOL gDumpVifRegs = TRUE;
static BOOL gDumpVifStats = TRUE;
static BOOL gDisassembleDirect = TRUE;
static BOOL    gDisassembleUnpack = TRUE;

static int gDmaWordOffset;        // offset of the current VIF code into the current DMA transfer word
    // -------------
    // VIF REGISTERS
    // -------------

    // ----------- VIF 0 ONLY registers
    // Control registers
static u_int        v0_stat;
static u_int        v0_err;
//    tVIF0_FBRST        v0_fbrst;        // not writeable

    // Other registers
static u_int v0_num;

    // ----------- VIF 1 ONLY registers
    // Control registers
static u_int        v1_stat;
static u_int        v1_err;
//    tVIF1_FBRST        v1_fbrst;        // not writeable

    // Other registers
static u_int v1_base;
static u_int v1_ofst;
static u_int v1_top;
static u_int v1_tops;
static u_int v1_num;

    // ----------- VIF common registers
static int gChanIdx;    // 0 or 1 - indicates which VIF we are decompressing into
static VIF_REGISTERS vr[2];
static VIFCODE gVifcode;        // current VIF code

static int gVifcodeCount[NUMVIFCODES];        // Holds statistics on each vifcode
        // ------------------------

        // Names for all the vifcodes. I put the prefix of 'VIF_' in here because it makes
        // the output easier to interpret, esp. when there are DMA/GIF codes in there too.
char *gVifCodeNames[] = {
    "NOP", "STCYCL", "OFFSET", "BASE", "ITOP", "STMOD",
    "MSKPATH3", "MARK", "FLUSHE", "FLUSH", "FLUSHA", "MSCAL",
    "MSCNT", "MSCALF", "STMASK", "STROW", "STCOL", "MPG",
    "DIRECT", "DIRECTHL", "UNPACK"
};

    // Names of all the modes of unpacking VIF data
char *gUnpackFormatNames[] = {
    "S_32", "S_16", "S_8",
    "V2_32", "V2_16", "V2_8",
    "V3_32", "V3_16", "V3_8",
    "V4_32", "V4_16", "V4_8", "V4_5"
};

    // Array used to convert from an unpack format's code index into its actual code
static u_char gUnpackFormat_Indx2Code[13] = {
    UNPACK_S_32c, UNPACK_S_16c, UNPACK_S_8c, UNPACK_V2_32c,
    UNPACK_V2_16c, UNPACK_V2_8c, UNPACK_V3_32c, UNPACK_V3_16c,
    UNPACK_V3_8c, UNPACK_V4_32c, UNPACK_V4_16c, UNPACK_V4_8c, UNPACK_V4_5c
};

    // Array used to convert from an vif code's index into its actual code
static u_char gVifCodes_Indx2Code[21] = {
    VIF_NOPc, VIF_STCYCLc, VIF_OFFSETc, VIF_BASEc, VIF_ITOPc, VIF_STMODc,
    VIF_MSKPATH3c, VIF_MARKc, VIF_FLUSHEc, VIF_FLUSHc, VIF_FLUSHAc,
    VIF_MSCALc, VIF_MSCNTc, VIF_MSCALFc, VIF_STMASKc, VIF_STROWc, VIF_STCOLc,
    VIF_MPGc, VIF_DIRECTc, VIF_DIRECTHLc, VIF_UNPACKc
};





// ========================================================================
// FUNCTIONS
// ========================================================================

void VIF_saveVifRegisters(void) {
    v0_stat = DGET_VIF0_STAT();
    v0_err = DGET_VIF0_ERR();
    v0_num = DGET_VIF0_NUM();

    v1_stat = DGET_VIF1_STAT();
    v1_err = DGET_VIF1_ERR();
    v1_base = DGET_VIF1_BASE();
    v1_ofst = DGET_VIF1_OFST();
    v1_top = DGET_VIF1_TOP();
    v1_tops = DGET_VIF1_TOPS();
    v1_num = DGET_VIF1_NUM();

        // Get common registers
    vr[0].c[0] = DGET_VIF0_C0();
    vr[0].c[1] = DGET_VIF0_C1();
    vr[0].c[2] = DGET_VIF0_C2();
    vr[0].c[3] = DGET_VIF0_C3();
    vr[0].r[0] = DGET_VIF0_R0();
    vr[0].r[1] = DGET_VIF0_R1();
    vr[0].r[2] = DGET_VIF0_R2();
    vr[0].r[3] = DGET_VIF0_R3();
    vr[0].cycle = DGET_VIF0_CYCLE();
    vr[0].mask = DGET_VIF0_MASK();
    vr[0].mode = DGET_VIF0_MODE();
    vr[0].itop = DGET_VIF0_ITOP();
    vr[0].itops = DGET_VIF0_ITOPS();
    vr[0].mark = DGET_VIF0_MARK();
    vr[0].code = DGET_VIF0_CODE();

    vr[1].c[0] = DGET_VIF1_C0();
    vr[1].c[1] = DGET_VIF1_C1();
    vr[1].c[2] = DGET_VIF1_C2();
    vr[1].c[3] = DGET_VIF1_C3();
    vr[1].r[0] = DGET_VIF1_R0();
    vr[1].r[1] = DGET_VIF1_R1();
    vr[1].r[2] = DGET_VIF1_R2();
    vr[1].r[3] = DGET_VIF1_R3();
    vr[1].cycle = DGET_VIF1_CYCLE();
    vr[1].mask = DGET_VIF1_MASK();
    vr[1].mode = DGET_VIF1_MODE();
    vr[1].itop = DGET_VIF1_ITOP();
    vr[1].itops = DGET_VIF1_ITOPS();
    vr[1].mark = DGET_VIF1_MARK();
    vr[1].code = DGET_VIF1_CODE();
}



// ========================
// Adds a string to the error string.
// This is a wrapper for the DEBUG_addError calls, as
// it also adds in extra information about the tag.

static int AddVifError(int errnum, int severity, char *error) {
    char err[1024];

    strcpy(err, "VIF: ");
    strcat(err, error);
    return DEBUG_addError(errnum, severity, err);
}











void VIF_parseConfig(char *cs) {
    int i;

    gDumpVifCodes = TRUE;
    gVerbose = TRUE;
    gDumpVifRegs = TRUE;
    gDumpVifStats = TRUE;
    gDisassembleDirect = TRUE;
    gDisassembleUnpack = TRUE;

    for(i = 0; i < NUMVIFCODES; i++) {
        gVifcodeCount[i] = 0;
    }

    if(cs != NULL) {
        if(strstr(cs, "-novifcodes") != NULL) {
            gDumpVifCodes = FALSE;
        }

        if(strstr(cs, "-novifverbose") != NULL) {
            gVerbose = FALSE;
        }

        if(strstr(cs, "-novifregs") != NULL) {
            gDumpVifRegs = FALSE;
        }

        if(strstr(cs, "-novifstats") != NULL) {
            gDumpVifStats = FALSE;
        }

        if(strstr(cs, "-nodisdirect") != NULL) {
            gDisassembleDirect = FALSE;
        }

        if(strstr(cs, "-nodisunpack") != NULL) {
            gDisassembleUnpack = FALSE;
        }
    }
}

// --------------------------------------------------------------------






        // Display

static int VIF_outputVifRegisters(void) {
    int err = NO_ERROR;
    VIF_REGISTERS *v;
    int i;

    v = &vr[gChanIdx];

    err |= DEBUG_addToOutputBuffer("\n==== VIF REGISTERS ====");

    for(i = 0; i < 4; i++) {
        sprintf(gTempString, "COL%d  : " DATA_8HEX, i, v->c[i]);
        err |= DEBUG_addToOutputBuffer(gTempString);
    }
    for(i = 0; i < 4; i++) {
        sprintf(gTempString, "ROW%d  : " DATA_8HEX, i, v->r[i]);
        err |= DEBUG_addToOutputBuffer(gTempString);
    }

    sprintf(gTempString, "CYCLE : " DATA_8HEX, v->cycle);
    err |= DEBUG_addToOutputBuffer(gTempString);

    sprintf(gTempString, "MASK  : " DATA_8HEX, v->mask);
    err |= DEBUG_addToOutputBuffer(gTempString);

    sprintf(gTempString, "MODE  : " DATA_8HEX, v->mode);
    err |= DEBUG_addToOutputBuffer(gTempString);

    sprintf(gTempString, "MARK  : " DATA_8HEX, v->mark);
    err |= DEBUG_addToOutputBuffer(gTempString);

    if(gChanIdx == 1) {
        sprintf(gTempString, "BASE  : " DATA_8HEX, v1_base);
        err |= DEBUG_addToOutputBuffer(gTempString);

        sprintf(gTempString, "OFFSET: " DATA_8HEX, v1_ofst);
        err |= DEBUG_addToOutputBuffer(gTempString);
    }

    return err;
}


    // -----------------------------------------------------------

int VIF_outputVifStatistics() {
    int err = NO_ERROR;
    int i;
    u_int totalCodes = 0;

    err |= DEBUG_addToOutputBuffer("\n==== VIF STATISTICS ====");
    err |= DEBUG_addToOutputBuffer("  Codes      # Codes");
    err |= DEBUG_addToOutputBuffer("  -----      -------");

    dprintf(("Number of VIF codes: %d\n", NUMVIFCODES));

    for(i = 0; i < NUMVIFCODES; i++) {
        if(gVifcodeCount[i] > 0) {
            sprintf(gTempString, "  %-14s%4d", gVifCodeNames[i],  gVifcodeCount[i]);
            totalCodes += gVifcodeCount[i];
            err |= DEBUG_addToOutputBuffer(gTempString);
        }
    }
    err |= DEBUG_addToOutputBuffer(   "               =====");
    sprintf(gTempString, "  %14s%4d", "", totalCodes);
    err |= DEBUG_addToOutputBuffer(gTempString);
    return err;
}


















// ========================================
// Find the unpack format used in the UNPACK code, and return
// its index. Returns -1 if there was no such format code.

static char getUnpackFormatIndex(u_long format) {
    int i;

    format &= 0xf;
    for(i = 0; i < 13; i++) {
        if(format == gUnpackFormat_Indx2Code[i]) {
            return i;
        }
    }
    return -1;
}


// ====================================
// Given the upper 8 bits of the VIFcode, search for the code and
// return its index. Returns -1 if there was no such format code.

static char getCmdIndex(u_long vifcmd) {
    int i;

    vifcmd &= 0x7f;
    if((vifcmd & VIF_UNPACKc) == VIF_UNPACKc) {        // Is UNPACK?
        vifcmd &= VIF_UNPACKc;
    }
    for(i = 0; i < 21; i++) {
        if(vifcmd == gVifCodes_Indx2Code[i]) {
            return i;
        }
    }
    return -1;
}


// =============================================
// Calculates the number of words after the VIFcode that are data
// (includes the VIF code itself) and inserts it into the length
// field of the VIFcode. Returns TRUE if an error occurred.

static int getVifPacketLength(VIF_REGISTERS *v) {
    u_int viflen = 0;
    int err = NO_ERROR;

    switch(gVifcode.cmdIndex) {
        case VIF_STMASK:
            viflen = 1 + 1;
            break;

        case VIF_STROW:
        case VIF_STCOL:
            viflen = 1 + 4;
            break;

        case VIF_MPG:
            viflen = 1 + gVifcode.num * 2;
            break;

        case VIF_DIRECT:
        case VIF_DIRECTHL:
            viflen = 1 + gVifcode.imm * 4;
            break;

        case VIF_UNPACK:
            if(gVifcode.unpackFormatIndex == -1) {
                // ===== Invalid unpack format
                sprintf(gTempString,
                    "Unknown UNPACK format '%x'.", gVifcode.rawCmd & 0xf);
                err |= AddVifError(ERR_VIF_UNKNOWN_UNPACK_FORMAT, ERROR_FATAL_HALT, gTempString);
                viflen = 1;
            } else {
                u_int cl, wl, vl, vn;
                int bytesPerData, numElementsPerData, totalWordsUsed;

                vl = gVifcode.rawCmd & 0x3;
                vn = (gVifcode.rawCmd >> 2) & 0x3;

                if(vl == 0x3) {                // vl == 3 only for V4_5
                    bytesPerData = 2;        // 16 bits of RGBA data
                    numElementsPerData = 1;
                } else {
                    bytesPerData = (4 >> vl);        // 0=>4, 1=>2, 2=>1
                    numElementsPerData = vn + 1;
                }

                    // the total number of data words reqd for the unpack depends on
                    // the current value of WL & CL. If CL >=WL (skipping write), it
                    // is very simple to calculate. But if CL < WL (filling write), it
                    // is a little more difficult.
                cl = v->cycle & 0xff;
                wl = (v->cycle >> 8) & 0xff;

                if(cl >= wl) {        // skipping write
                    totalWordsUsed = bytesPerData * numElementsPerData * gVifcode.num;
                } else {
                    int reqdWrites;        // number of qwords we'll be unpacking to from source data (not from internal regs)

                    totalWordsUsed = bytesPerData * numElementsPerData;        // bytes required per data

                    reqdWrites = cl * (gVifcode.num / wl);
                    if((gVifcode.num % wl) > cl) {
                        reqdWrites += cl;
                    } else {
                        reqdWrites += gVifcode.num % wl;
                    }

                    totalWordsUsed *= reqdWrites;
                }

                totalWordsUsed = (totalWordsUsed + 3) / 4;            // Round, in case there's any padding.

                viflen = 1 + totalWordsUsed;
            }
            break;

        default:
            viflen = 1;
    }
    gVifcode.length = viflen;

    return err;
}









// =====================================================
// Parses and disassembles a VIFCODE structure,
// and adds it to gOutputBuffer
// Verbose makes the disassembly a little clearer.

static int parseVifCode(u_int *pCode, char *s) {
    int err = NO_ERROR;
    char bits[20];
    u_int code;
    VIF_REGISTERS *v;

    v = &vr[gChanIdx];


            // ------------ Fill in the VIFCODE structure
    code = *pCode;
    gVifcode.addr = pCode;
    gVifcode.rawCmd = code >> 24;
    gVifcode.interruptBit = (gVifcode.rawCmd & 0x80) != 0;
    gVifcode.num = (code >> 16) & 0xff;
    gVifcode.imm = code & 0xffff;
    gVifcode.cmdIndex = getCmdIndex(gVifcode.rawCmd);
    if(gVifcode.num == 0) {
        gVifcode.num = 256;
    }

    if(gVifcode.cmdIndex == VIF_UNPACK) {
        gVifcode.unpackFormatIndex = getUnpackFormatIndex(gVifcode.rawCmd);
    }
    if((gVifcode.cmdIndex == VIF_DIRECT || gVifcode.cmdIndex == VIF_DIRECTHL) && gVifcode.imm == 0) {
        gVifcode.imm = 65536;
    }

            // ----------------- Output basic info
    dputs("@@@ VIF - decoding VIFcode:");
    dputs((gVifcode.cmdIndex==-1)?ERRORCOL"*UNKNOWN VIF COMMAND*"NORM:gVifCodeNames[gVifcode.cmdIndex]);

    DEBUG_addField(ENTRY_TITLE, s, VIFTITLE "VIF %-9s" NORM " " DATASOURCEADDRESS,
                (gVifcode.cmdIndex==-1)?ERRORCOL"*UNKNOWN VIF COMMAND*"NORM:gVifCodeNames[gVifcode.cmdIndex],
                pCode);
    DEBUG_addField(ENTRY_FIELD, s, "["MEMCONTENTS_32"]", code);

        // ----------------------- Error checking

            // ---------- Command name
    if(gVifcode.cmdIndex == -1) {
        err |= AddVifError(ERR_VIF_UNKNOWN_VIFCODE, ERROR_FATAL_HALT, "Unknown VIF code");
    } else {
        gVifcodeCount[gVifcode.cmdIndex]++;        // ------ Update the statistics
    }

            // ---------- MPG alignment check
    if(gVifcode.cmdIndex == VIF_MPG && ((u_int)gVifcode.addr & 0x7) != 0x4) {
        err |= AddVifError(ERR_VIF_MPG_ALIGNMENT, ERROR_FATAL_CONT, "MPG data is not on a 64 bit aligned address.");
    }

            // ----------- VIF1-only codes check
    if(gChan != SCE_DMA_VIF1) {
        switch(gVifcode.cmdIndex) {
            case VIF_DIRECT:
            case VIF_DIRECTHL:
            case VIF_FLUSHA:
            case VIF_FLUSH:
            case VIF_MSKPATH3:
            case VIF_BASE:
            case VIF_OFFSET:
                sprintf(gTempString, "A VIF code was found (%s) that is not valid for this DMA channel.",
                    gVifCodeNames[gVifcode.cmdIndex]);
                err |= AddVifError(ERR_VIF_INVALID_VIFCODE, ERROR_FATAL_CONT, gTempString);
                break;
        }
    }

    if(FATAL(err)) {
        return err;
    }
            // ------------ Calculate length

    err |= getVifPacketLength(v);
    if(FATAL(err)) {
        return err;
    }


        // ===== Print out any flags (like interrupt, mask, etc) if any are set.
    strcpy(bits,"[");
    if(gVifcode.interruptBit) strcat(bits,"i");
    if(gVifcode.cmdIndex == VIF_UNPACK) {
        if(gVifcode.rawCmd & 0x10) strcat(bits,"m");
        if(gVifcode.imm & 0x8000) strcat(bits,"r");
        if(gVifcode.imm & 0x4000) strcat(bits,"u");
    }
    strcat(bits,"]");
    if(strlen(bits) != 2) {
        DEBUG_addField(ENTRY_FIELD, s, "Status bits="DATA_STR, bits);
    }


        // ===== Disassemble the command and arguments.
    switch(gVifcode.cmdIndex) {
        case VIF_NOP:
            break;

        case VIF_STCYCL:
            v->cycle = gVifcode.imm & 0xffff;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, "WL", (gVifcode.imm >> 8) & 0xff);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, "CL", gVifcode.imm & 0xff);
            break;

        case VIF_OFFSET:
            v1_ofst = gVifcode.imm & 0x1ff;
            v1_stat = v1_stat & ~(1 << 7);    // Clear DBF flag
            v1_tops = v1_base;

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, "OFFSET", gVifcode.imm & 0x1ff);
            break;

        case VIF_BASE:
            v1_base = gVifcode.imm & 0x1ff;

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, "BASE", gVifcode.imm & 0x1ff);

            v1_tops = v1_base;
            if(v1_stat & (1 << 7)) {
                v1_tops += v1_ofst;
            }
            break;

        case VIF_ITOP:
            v->itops = gVifcode.imm & 0x1ff;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, "ITOPS", gVifcode.imm & 0x1ff);
            break;

        case VIF_STMOD:
            {
            char *modeNames[4] = {
                "No addition processing",
                "Offset Mode (Row+dV->VUMem)",
                "Difference Mode (Row+dV->Row->VUMem)",
                ERRORCOL "*UNDEFINED*" NORM
                };

            v->mode = gVifcode.imm & 0x3;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, "MODE", modeNames[gVifcode.imm & 0x3]);
            }
            break;

        case VIF_MSKPATH3:
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, "Masked", ((gVifcode.imm >> 15) & 1) ? "DISABLE" : "ENABLE");
            break;

        case VIF_MARK:
            v->mark = gVifcode.imm & 0xffff;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, "MARK", gVifcode.imm & 0xffff);
            break;

        case VIF_FLUSHE:
        case VIF_FLUSH:
        case VIF_FLUSHA:
            break;

        case VIF_MSCAL:
        case VIF_MSCALF:
        case VIF_MSCNT:
            v1_stat ^= 1 << 7;        // Flip DBF field
            if(gVifcode.cmdIndex != VIF_MSCNT) {
                DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, "VU PC", gVifcode.imm & 0xffff);
            }
            break;

        case VIF_STMASK:        // The output of args for this and the STROW/STCOL codes are handled elsewhere
            break;

        case VIF_STROW:
        case VIF_STCOL:
            break;

        case VIF_MPG:
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX" instructions", "Len", gVifcode.num);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, "Addr", gVifcode.imm & 0xffff);
            break;

        case VIF_DIRECT:
        case VIF_DIRECTHL:
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_6HEX" qwords", "Len", gVifcode.imm);
            break;

        case VIF_UNPACK:
            {
            int flg =  (gVifcode.imm >> 15) & 0x1;
            int usn = (gVifcode.imm >> 14) & 0x1;
            int addr = (gVifcode.imm & 0x1ff);

            DEBUG_addField(ENTRY_FIELD, s, DATA_STR, gUnpackFormatNames[gVifcode.unpackFormatIndex]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, "Addr", addr);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, "Len", gVifcode.num);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, "USN", usn);

            if(gChanIdx == 1) {
                DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, "FLG", flg);
            }
            if(gVerbose) {
                if(flg) {
                    DEBUG_addField(ENTRY_FIELD_NL, s, FIELD_NAME"VUMem addr" NORM ":V1_TOPS(" DATA_4HEX
                            ")+ADDR(" DATA_4HEX ")=" DATA_4HEX, v1_tops, addr, v1_tops + addr);
                } else {
                    DEBUG_addField(ENTRY_FIELD_NL, s, FIELD_NAME"VUMem addr" NORM ":" DATA_4HEX, addr);
                }
                DEBUG_addField(ENTRY_FIELD, s, "Len:"DATA_4HEX" qwords" , gVifcode.num);
            }
            }
            break;

        default:
            ASSERT((0), "Logic error, this VIFcode should be caught.");
    }

    if(gChanIdx == 1) {
        v1_tops = v1_base;
        if(v1_stat & (1<<7)) {        // if dbf flag set
            v1_tops += v1_ofst;
        }
    }

        // ===== Print out the length of the VIFcode + its data.

    if(gVerbose) {
        DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC" word%s", "Code+data", gVifcode.length, (gVifcode.length>1)?"s":"");
    }

    return err;
}







    // ===============================================================================

static u_int gUnpackedQWord[4];
static BOOL gUnpackedQWord_write[4];        // whether or not this element has been written to

    // ========================

static int gUnpackWordOffset; // This is the field offset within the current word within the
                                // current DMA transfer word.

        // Grabs 1 element (which may be a subset of a word) for an UNPACK. All UNPACKS require
        // at least 1 element, at most 4. Each element can be 8/16/32 bits depending on format
static int grabUnpackElement(int vl, int usn, u_int *result) {
    int elementsPerWord = (1 << vl);
    int err = NO_ERROR;

    dputs("-->Entering grabUnpackElement");
        // gUnpackWordOffset is in units of elements
        // It should be reset to 0 at the start of every UNPACK.

        // First, guarantee that we are reading from a valid DMA qword
    if(gDmaWordOffset >= 4) {                    // grab another qword if necessary
        dputs("-->Need new DMA word to get element");

        err |= DMA_emulateDMACycle();
        if(FATAL(err) || gDmaTransferQWord == NULL) {
            err |= AddVifError(ERR_VIF_CURSOR_AT_END, ERROR_FATAL_HALT,
                "DMA prematurely ended when UNPACKing data.");
        }
        gDmaWordOffset = (gDmaTransferQWordIsTag) ? 2 : 0;
    }

    if(FATAL(err)) {
        return err;
    }
    *result = gDmaTransferQWord[gDmaWordOffset];
//printf("source data is %08x\n", *result);
    switch(vl) {
        case 0:    // 32 bit;
                    // do nothing
            break;
        case 1: // 16 bit
            *result >>= (16 * gUnpackWordOffset);
            *result &= 0x0000ffff;
            if(usn == 0 && (*result & 0x8000)) {    // sign extend
                *result |= 0xffff0000;
            }
            break;
        case 2: // 8 bit
            *result >>= (8 * gUnpackWordOffset);
            *result &= 0x000000ff;
            if(usn == 0 && (*result & 0x80)) {    // sign extend
                *result |= 0xffffff00;
            }
            break;
        default:
            ASSERT((0), "LOGIC ERROR - This case should never be reached (grabUnpackElement)\n");
            break;
    }

    gUnpackWordOffset++;

    if(gUnpackWordOffset >= elementsPerWord) {        // if we need to grab a new word.
        dputs("-->Need new word to get next element");

        gVifcode.length--;

        gUnpackWordOffset = 0;
        gDmaWordOffset++;
    }

    dputs("<--Leaving grabUnpackElement");
    
    return err;
}



        // Unpacks a single quadword for output. Will gather the elements from the DMA stream
        // that it requires for the unpack

static int unpackSingleQWord(void) {
    int err = NO_ERROR;
    int usn = (gVifcode.imm >> 14) & 1;
    int i;
    int vl = gVifcode.rawCmd & 0x3;
    int vn = (gVifcode.rawCmd >> 2) & 0x3;

    u_int elements[4];            // there can only ever be min 1, max 4 elements in a word.

        // Retrieve all the elements required to unpack this VIF code.
    if(gVifcode.unpackFormatIndex == UNPACK_V4_5) {    // RGB format - special case
        vn = 0;        // this is a special case hack to get the 16 bits reqd for the RGBA
        vl = 1;
    }
    for(i = 0; i < vn + 1; i++) {
        err |= grabUnpackElement(vl, usn, &elements[i]);
        if(FATAL(err)) {
            err |= AddVifError(ERR_VIF_CURSOR_AT_END, ERROR_FATAL_HALT,
                "Error obtaining next field for UNPACK");
            return err;
        }
    }

    gUnpackedQWord_write[0] =            // flags set if we wrote to this part of the qword or not.
    gUnpackedQWord_write[1] =
    gUnpackedQWord_write[2] =
    gUnpackedQWord_write[3] = TRUE;

    if(gVifcode.unpackFormatIndex == UNPACK_V4_5) {    // RGB format
        gUnpackedQWord[0] = ((elements[0]) & 0x1f) << 3;
        gUnpackedQWord[1] = ((elements[0] >> 5) & 0x1f) << 3;
        gUnpackedQWord[2] = ((elements[0] >> 10) & 0x1f) << 3;
        gUnpackedQWord[3] = ((elements[0] >> 15) & 0x1) << 7;
    } else if (vn == 0) {        // S formats
        gUnpackedQWord[0] =
        gUnpackedQWord[1] =
        gUnpackedQWord[2] =
        gUnpackedQWord[3] = elements[0];
    } else {        // All other formats
        for(i = 0; i < 4; i++) {
            if(i < vn + 1) {
                gUnpackedQWord[i] = elements[i];
            } else {
                gUnpackedQWord_write[i] = FALSE;
            }
        }
    }
    return err;
}


// ----------------------------------------------------------
// Emulates writing a quadword to memory.

static int writeQuadword(u_int addr, u_int maskbits, BOOL flg, int writeCycle) {
    int err = NO_ERROR;
    int i;
    int mode = vr[gChanIdx].mode & 0x3;
    char *s;
    u_int val;
    int address_mask;

    if(flg && gChanIdx != 1) {
        err |= AddVifError(ERR_VIF_INVALID_CHANNEL, ERROR_FATAL_HALT, "FLG flag is set on a VIF0 channel!");
        return err;
    }

    address_mask = (gChan == SCE_DMA_VIF0) ? 0x0ff : 0x3ff;

    if(addr > address_mask) {
        err |= AddVifError(WARN_VIF_INVALID_ADDRESS, ERROR_WARNING,
                "Attempting to write to invalid VU address! (will wrap around)");

        addr &= address_mask;
    }

    if(writeCycle > 3) {                // Note to self - CHECK THIS actually happens
        writeCycle = 3;
    }

    s = gTempString;
    if(flg) {
        int wrapped_addr = (v1_tops + addr) & address_mask;
        s += sprintf(s, INDENT " TOPS("ADDRESS"%04x"NORM")+"ADDRESS"%04x"NORM"=%04x : [",
                v1_tops, addr, wrapped_addr );
        addr = wrapped_addr;
    } else {
        s += sprintf(s, INDENT ADDRESS" %04x"NORM " : [", addr);
    }

    for(i = 0; i < 4; i++) {
        s += sprintf(s, FIELD_NAME"%c"NORM"=", "XYZW"[i]);
        switch(maskbits & 0x3) {
            case 0:        // Nothing is done
                if(gVifcode.unpackFormatIndex == UNPACK_V4_5) { // RGB format, ignores MODE.
                    mode = 0;
                }
                switch(mode) {            // normal, addition decompression, etc
                    case 0:            // nothing changes the input
                        if(gUnpackedQWord_write[i] == FALSE) {
                            err |= AddVifError(WARN_VIF_INDETERMINATE_WRITE, ERROR_WARNING,
                                "You are writing an indeterminant value to an unmasked field!");
                            val = 0;
                            s += sprintf(s, ERRORCOL"INDETERMINATE"NORM);
                        } else {
                            val = gUnpackedQWord[i];
                            s += sprintf(s, DATA_8HEX, val);
                        }
                        break;

                    case 1:                // offset mode (Row + dV -> VU Mem)
                        val = gUnpackedQWord[i] + vr[gChanIdx].r[i];
                        s += sprintf(s, "[+R%d]="DATA_8HEX, i, val);
                        break;

                    case 2:                // Difference mode (Row + dV -> Row -> VU Mem)
                        vr[gChanIdx].r[i] = gUnpackedQWord[i] + vr[gChanIdx].r[i];
                        val = vr[gChanIdx].r[i];
                        s += sprintf(s, "[+=R%d]="DATA_8HEX, i, val);
                        break;

                    default:
                        err |=  AddVifError(ERR_VIF_INVALID_MODE, ERROR_FATAL_HALT,
                            "MODE register is set to 3, which is 'undefined'");
                        s += sprintf(s, "INVALID - MODE INCORRECT");
                        break;
                }
                break;

            case 1:        // write row register
                val = vr[gChanIdx].r[i];
                s += sprintf(s, "R%d:"DATA_8HEX, i, val);
                break;

            case 2:        // Write column register
                val = vr[gChanIdx].c[writeCycle];
                s += sprintf(s, "C%d:"DATA_8HEX, writeCycle, val);
                break;

            case 3:        // Write is masked
                s += sprintf(s, COLOUR_BG_RED COLOUR_BLACK "**MASKED** "NORM);
                break;
        }
        if(i != 3) {
            s += sprintf(s, ".");
        }
        maskbits >>= 2;
    }
    strcat(s, "]");
    err |= DEBUG_addToOutputBuffer(gTempString);
    return err;
}



// -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // This would normally be part of VIF_disassemble, but it's too big and bulky to fit into
    // that function, so it's on its own.
    //
    // It disassembles an UNPACK, assuming that the VIFcode structure has already been parsed

static int handleUnpack(char *s) {
    u_int wl = (vr[gChanIdx].cycle >> 8) & 0xff;
    u_int cl = (vr[gChanIdx].cycle) & 0xff;
    u_int clCounter, wlCounter;
    u_int writeAddr;
    u_int maskbits;
    BOOL flg = (gVifcode.imm >> 15) & 1;
    int err = NO_ERROR;

            // This is the offset into the current word of the data to extract. (measured in units, so for X_32 it will
            // always be 0, for X_16 it will be 0 or 1, and for X_8 it will be 0, 1, 2, or 3
    gUnpackWordOffset = 0;

    wlCounter = 0;                        // Note to self - does doing an unpack necessarily reset these values? Check.
    clCounter = 0;
    writeAddr = gVifcode.imm & 0x1ff;        // This value is in VU address unit (i.e 0 is first qword, 1 is 2nd qword, etc)

    if(cl >= wl && wl == 0) {
        err |= AddVifError(ERR_VIF_INVALID_CYCLE, ERROR_FATAL_HALT,
            "CL >= WL (Skipping write), but WL == 0! WL must be > 0");
    }

    DEBUG_addField(ENTRY_FIELD_NL, s, "Using: "NAME_DATA_2HEX, "WL", wl);
    DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, "CL", cl);
    DEBUG_addField(ENTRY_FIELD, s, FIELD_NAME "Mask is" NORM " "DATA_STR, (gVifcode.rawCmd & 0x10) ? "Enabled":"Disabled");
    if(gVifcode.rawCmd & 0x10) {        // Only display current value of MASK if it's enabled
        DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_8HEX, "MASK", vr[gChanIdx].mask);
    }
    DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, "MODE", vr[gChanIdx].mode & 0x3);

    DEBUG_addToOutputBuffer(s);
    s[0] = 0;

            // Now begin actually disassembling the UNPACK

    while(!FATAL(err) && gVifcode.num > 0) {
        gUnpackedQWord_write[0] =            // flags set if we wrote to this part of the qword or not.
        gUnpackedQWord_write[1] =            // start off as all false
        gUnpackedQWord_write[2] =
        gUnpackedQWord_write[3] = FALSE;

        if(gVifcode.rawCmd & 0x10) {    // If 'm' bit is set
                // Note to self - another thing to test - what happens to wlcounter when it goes above 3, considering
                // WL and CL are both 8 bit fields? Does it wrap around?
            maskbits = vr[gChanIdx].mask >> (8 * ((wlCounter > 3) ? 3 : wlCounter));
        } else {
            maskbits = 0;
        }

        if(cl >= wl) {        // Skipping write
            if(wlCounter < wl) {
                err |= unpackSingleQWord();        // Retrieve and unpack a word
                if(FATAL(err)) break;
                err |= writeQuadword(writeAddr, maskbits, flg, wlCounter);
                gVifcode.num--;
            }

        } else {        // cl < wl - Filling write
            if(clCounter < cl) {
                err |= unpackSingleQWord();
                if(FATAL(err)) break;
            }
            err |= writeQuadword(writeAddr, maskbits, flg, wlCounter);
            gVifcode.num--;

        }
        writeAddr++;
        wlCounter++;
        clCounter++;

        if((cl >= wl && clCounter >= cl) // skipping write
                || (cl < wl && wlCounter >= wl)) {        // filling write
            clCounter = 0;
            wlCounter = 0;
        }
    }

    if(gUnpackWordOffset != 0 && gVifcode.length == 1) {
            // Skips past any padding
        gVifcode.length--;
        gDmaWordOffset++;
    }
    return err;
}


    // ===============================================================================

            // ====================================
            // This function assumes that the DMA emulator has been set up with DMA_startTransfer.
            // It will pull words from the DMA as long as the DMA has the ability to supply them,
            // and disassemble them.

int VIF_disassemble(void) {
    int err = NO_ERROR, i;
    char s[1024];
    u_long opcode;
    u_long mask;

    int getNewDmaWord(void) {
        int err = NO_ERROR;

        err |= DMA_emulateDMACycle();
        if(gDmaTransferQWord == NULL) {
            if(gVifcode.length > 0) {
                err |= AddVifError(ERR_VIF_CURSOR_AT_END, ERROR_FATAL_HALT,
                    "VIF tried to obtain more DMA data for decoding, but DMA has ended!");
            }
        }
        gDmaWordOffset = (gDmaTransferQWordIsTag) ? 2 : 0;
        return err;
    }

            // ====================================
            // This function assumes that the DMA emulator has been set up with DMA_startTransfer.
            // It will pull words from the DMA as long as the DMA has the ability to supply them,
            // and disassemble them.

    dputs("--> Entering VIF_disassemble");
    gVifcode.length = 0;
    gDmaWordOffset = 4;        // Implies that we haven't transferred any DMA words yet (valid vals are 0-3)

    for(i = 0; i < NUMVIFCODES; i++) {        // Reset statistics counters
        gVifcodeCount[i] = 0;
    }

    if(gChan != SCE_DMA_VIF0  &&  gChan != SCE_DMA_VIF1) {
        err |= AddVifError(ERR_VIF_INVALID_CHANNEL, ERROR_FATAL_HALT,
            "Cannot examine VIF packets on a non VIF DMA channel (this is not SCE_DMA_VIF0 or SCE_DMA_VIF1!!)");
        return err;
    }

    gChanIdx = (gChan == SCE_DMA_VIF0)? 0 : 1;

    do {
        if(gDmaWordOffset >= 4) {        // i.e., if we need to poll the DMA for a new qword
            dputs("Getting new Quad word for disassemble");
            err |= getNewDmaWord();
            if(FATAL(err)) {
                dputs("new Quad word for disassemble failed!");
                break;
            }
            dprintf(("New QWord is at %08x\n", (u_int)gDmaTransferQWord));
            if(gDmaTransferQWord == NULL) {            // DMA transfer is complete/terminated
                break;
            }
        }

        s[0] = 0;        // clear output string

                    // Disassemble VIF code
        err |= parseVifCode(&gDmaTransferQWord[gDmaWordOffset], s);
        if(FATAL(err)) {
            dputs("error in new Vif code parsed");
            DEBUG_addToOutputBuffer(s);
            break;
        }

        gDmaWordOffset++;
        gVifcode.length--;
                // These are all the codes that may have data following them (MPG, UNPACK, STROW/COL etc)
        switch(gVifcode.cmdIndex) {
            case VIF_MPG:
                dputs("decoding MPG packet");
                if((gDmaWordOffset & 1) != 0) {
                    err |= AddVifError(ERR_VIF_MPG_ALIGNMENT, ERROR_FATAL_CONT,
                            "MPG data is not on a 64 bit aligned address.");
                    break;
                }

                DEBUG_addField(ENTRY_FIELD_NL, s, "[Skipping " DATA_DEC " words]", gVifcode.length);

                while(gVifcode.length > 0) {
                    if(gDmaWordOffset == 4) {
                        err |= getNewDmaWord();
                        if(FATAL(err) || gDmaTransferQWord == NULL) {
                            err |= AddVifError(ERR_VIF_MPG_INCOMPLETE, ERROR_FATAL_HALT,
                                    "Error obtaining more data for MPG VIFcode. Premature DMA termination?");
                            break;
                        }
                    }
                    opcode = gDmaTransferQWord[gDmaWordOffset];
                    opcode = (opcode << 32) | gDmaTransferQWord[gDmaWordOffset+1];
                    gDmaWordOffset += 2;
                    gVifcode.length -=2;
                }
                break;

            case VIF_UNPACK:
                dputs("decoding UNPACK packet");

                if(gDisassembleUnpack) {
                    err |= handleUnpack(s);
                    if(gVifcode.length > 0) {
                        err |= AddVifError(ERR_VIF_UNPACK_TOO_SHORT, ERROR_FATAL_HALT,
                            "UNPACK Error - unpack did not complete. Premature DMA termination?");
                    }
                } else {
                    DEBUG_addToOutputBuffer(s);
                    s[0] = 0;
                    dputs("Skipping UNPACK data (not disassembling)");
                    while(gVifcode.length > 0) {
                        if(gDmaWordOffset == 4) {
                            err |= getNewDmaWord();
                            if(FATAL(err) || gDmaTransferQWord == NULL) {
                                break;
                            }
                        }
                        gVifcode.length--;
                        gDmaWordOffset++;
                    } while(gVifcode.length > 0);
                }
                if(FATAL(err)) {
                    break;
                }
                break;

            case VIF_STROW:
            case VIF_STCOL:
                dputs("decoding STROW/COL packet");
                for(i = 0; i < 4; i++) {
                    if(gDmaWordOffset == 4) {
                        err |= getNewDmaWord();
                        if(FATAL(err) || gDmaTransferQWord == NULL) {
                            err |= AddVifError(ERR_VIF_STROWCOL_INCOMPLETE, ERROR_FATAL_HALT,
                                    (gVifcode.cmdIndex == VIF_STROW) ? 
                                        "Error obtaining more data for STROW VIFcode. Premature DMA termination?" :
                                        "Error obtaining more data for STCOL VIFcode. Premature DMA termination?");
                        }
                    }
                    if(!FATAL(err)) {
                            // Set the row/column registers accordingly
                        if(gVifcode.cmdIndex == VIF_STROW) {
                            vr[gChanIdx].r[i] = gDmaTransferQWord[gDmaWordOffset];
                        } else {
                            vr[gChanIdx].c[i] = gDmaTransferQWord[gDmaWordOffset];
                        }

                        sprintf(gTempString, "%f", *(float*)&gDmaTransferQWord[gDmaWordOffset]);
                        DEBUG_addField(ENTRY_FIELD_NL, s, FIELD_NAME "%c%d" NORM " :"DATA_8HEX" ("DATA_FLOAT")",
                                        (gVifcode.cmdIndex == VIF_STROW) ? 'R' : 'C',
                                        i,
                                        gDmaTransferQWord[gDmaWordOffset],
                                        gTempString);
                        gDmaWordOffset++;
                        gVifcode.length--;
                    }
                }
                break;

            case VIF_DIRECT:
            case VIF_DIRECTHL:
                dputs("decoding DIRECT/DIRECTHL packet");
                DEBUG_addToOutputBuffer(s);
                s[0] = 0;

                if(gDmaWordOffset != 4) {
                    err |= AddVifError(ERR_GIF_LIST_ALIGNMENT, ERROR_FATAL_HALT,
                            "GIF tag is not aligned to a quadword boundary!");
                }
                ASSERT(((gVifcode.length & 0x3) == 0), "Logic error! length for DIRECT/HL should be a multiple of 4!!\n");

                while(gVifcode.length > 0 && !FATAL(err)) {
                    err |= getNewDmaWord();
                    if(FATAL(err) || gDmaTransferQWord == NULL) {
                        break;
                    }
                    if(gDisassembleDirect) {
                        gGifInput = gDmaTransferQWord;
                        err |= GIF_emulateGifCycle();
                    }
                    gDmaWordOffset = 4;        // will force getting a new DMA transfer word.
                    gVifcode.length -=4;
                }
                if(gDisassembleDirect && !FATAL(err) && !GIF_isIdle()) {
                    err |= AddVifError(WARN_VIF_DIRECT_INCOMPLETE, ERROR_WARNING,
                            "DIRECT/DIRECTHL ended, but GIF is expecting more data.");
                }
                break;

            case VIF_STMASK:
                dputs("decoding STMASK packet");
                if(gDmaWordOffset == 4) {
                    err |= getNewDmaWord();
                    if(FATAL(err) || gDmaTransferQWord == NULL) {
                        err |= AddVifError(ERR_VIF_STMASK_INCOMPLETE, ERROR_FATAL_HALT,
                                "Error obtaining more data for STMASK VIFcode. Premature DMA termination?");
                    }
                }
                if(!FATAL(err)) {
                    mask = gDmaTransferQWord[gDmaWordOffset];
                    vr[gChanIdx].mask = mask;
                    DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_8HEX, "MASK", mask);

                    gDmaWordOffset++;
                    gVifcode.length--;
                }
                break;
        }

        if(gDumpVifCodes || FATAL(err)) {
            if(strlen(s) > 0) {
                DEBUG_addToOutputBuffer(s);
            }
        }

        if(err == NO_ERROR) {
            ASSERT((gVifcode.length == 0), "Logic error, length should be zero when exiting this switch statement.\n");
        }
    } while(!FATAL(err));
    
    if(gDumpVifRegs) {
        err |= VIF_outputVifRegisters();
    }

    if(gDumpVifStats) {
        err |= VIF_outputVifStatistics();
    }

    dputs("<---Leaving VIF_disassemble");
    return err;
}



            // This function is the same as the one above (it disassembles a VIF list, pulling data from DMA)
            // but sets up the transfer using the same args as used for sceDmaSend()

int VIF_disassembleDmaList(sceDmaChan *d, void *tag) {
    int err = NO_ERROR;
    dputs("--->Entering VIF_disassemble");

    err = DMA_sceDmaSend(d, tag);
    
    if(FATAL(err)) {
        puts("Problem opening DMA for VIF Disassemble.");
        Exit(1);
    }

    err = VIF_disassemble();

    dputs("<---Leaving VIF_disassemble");
    return err;
}

            // As above, but for sceDmaSendN.

int VIF_disassembleDmaListN(sceDmaChan *d, void *tag, int numqwords) {
    int err = NO_ERROR;

    dputs("--->Entering VIF_disassembleN");
    err |= DMA_sceDmaSendN(d, tag, numqwords);

    if(FATAL(err)) {
        puts("Problem opening DMA for VIF Disassemble.");
        Exit(1);
    }

    err = VIF_disassemble();

    dputs("<---Leaving VIF_disassembleN");
    return err;
}

