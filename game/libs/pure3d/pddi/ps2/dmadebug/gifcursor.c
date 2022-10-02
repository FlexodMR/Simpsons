/*
    GIF cursor and validator
    James Russell - SCEE Technology Group

    ===================================================
    *Please* send bug reports to James_Russell@scee.net
    If you fix it yourself but don't tell me, your fix
    may be wiped out when you d/l the next release!
    ===================================================

    These functions can be used to examine GIF lists. It uses
    the DMA source chain walking library, so it can be used to
    examine GIF lists embedded in complex DMA lists.


    Version history:

    Ver        Author        Comments
    ===        ======        ========

    0.95    J Russell    11/7/2000 - Major overhaul on the main disassembly
                        function. Now handles colour and DEBUG_addField() support.
    0.9        J Russell    8/7/2000 - First release.

*/


// #define DEBUG

#include <stdio.h>
#include <stdarg.h>
#include <sys/types.h>
#include <string.h>
#include <eestruct.h>
#include <libdma.h>

#include <pddi/ps2/dmadebug/Debug.h>
#include <pddi/ps2/dmadebug/Dmaemu.h>
#include <pddi/ps2/dmadebug/Gifcursor.h>

#include <pddi/ps2/dmadebug/gsregs.c>

// =======================================
// GLOBALS
// =======================================

    // -------------
    // GIF REGISTERS
    // -------------
// u_int g_ctrl;        // Writable only
// u_int g_mode;        // Writable only
static tGIF_STAT g_stat;
static u_int g_tag0;
static u_int g_tag1;
static u_int g_tag2;
static u_int g_tag3;
static tGIF_CNT g_cnt;
static u_int g_p3cnt;
static u_int g_p3tag;

GIFTAG gt;
u_int gGifQ = 0;
BOOL gVerbose = TRUE;

        // other apps insert the address of the 128 bit data for the GS register / GIFTAG in here
        // this is used by this module to disassemble and change state
u_int *gGifInput;

// =================================================================

static char *gPrimFields[] = {
    "IIP", "TME", "FGE", "ABE", "AA1", "FST", "CTXT", "FIX"
};
static char *gPrimFieldsVerbose[] = {
    "Gouraud", "Textured", "Fog", "Alpha Blending", "AntiAliasing", "UV is used",
    "Context 2", "Fragment control fixed"
};

static char *gGTRegisterNames[] = {
    "PRIM", "RGBAQ", "ST", "UV", "XYZF2", "XYZ2", "TEX0_1", "TEX0_2",
    "CLAMP_1", "CLAMP_2", "FOG", ERRORCOL "*RESERVED*" NORM, "XYZF3", "XYZ3", "A+D", "NOP"
};

// ========================================================================
// FUNCTIONS
// ========================================================================

void GIF_parseConfig(char *cs) {
            // Parse config string
    gVerbose = TRUE;
    g_cnt.LOOPCNT = 0;
    if(cs != NULL) {
        if(strstr(cs, "-nogifverbose") != NULL) {
            gVerbose = FALSE;
        }
    }
}


void GIF_saveGifRegisters(void) {
    u_int i;

    i = DGET_GIF_STAT();
    memcpy(&g_stat, &i, sizeof(tGIF_STAT));
    g_tag0 = DGET_GIF_TAG0();
    g_tag1 = DGET_GIF_TAG1();
    g_tag2 = DGET_GIF_TAG2();
    g_tag3 = DGET_GIF_TAG3();
    i = DGET_GIF_CNT();
    memcpy(&g_cnt, &i, sizeof(tGIF_CNT));
    g_p3cnt = DGET_GIF_P3CNT();
    g_p3tag = DGET_GIF_P3TAG();
}


// Used for converting integer x:y:z format numbers into a floating point representation.
// It's not that great, but It Was Late And I Was Tired.

        // fpr is the source integer, sign/integer/fractional are the number of bits of each part.
static float convertFixedPointToFloat(u_int fpr, u_int sign, u_int integer, u_int fractional) {
    float val;

    val = (float)(fpr & ((1<< (integer + fractional)) - 1));    // obtain the value (without the sign)
    val /= (float)(1 << fractional);

    if(sign > 0 && (fpr >> (integer + fractional)) & 1) {    // if sign matters, and if sign was set...
        val = -val;
    }
    return val;
}



BOOL GIF_isIdle(void) {
    return g_cnt.LOOPCNT == 0;
}





// ========================
// Adds a string to the error string.
// This is a wrapper for the DEBUG_addError calls, as
// it also adds in extra information about the tag.

static int AddGifError(int errnum, int severity, char *error) {
    return DEBUG_addError(errnum, severity, error);
}










// Creates a dissassembly of the PRIM field for either the PRIM or PRMODE register.
// The 'outputPrimType' parameter is TRUE if you are disassembling a PRIM register,
// since in the PRMODE register the bottom 3 bits are not used.
static char *disassemblePrim(u_int p, BOOL outputPrimType, BOOL verbose) {
    static char o[200];
    int i;

    o[0] = 0;
    if(outputPrimType) {
        strcat(o, DATA);
        switch(p & 0x7) {
            case 0: strcat(o,"Point"); break;
            case 1: strcat(o,"Line"); break;
            case 2: strcat(o,"Line Strip"); break;
            case 3: strcat(o,"Tri"); break;
            case 4: strcat(o,"Tri Strip"); break;
            case 5: strcat(o,"Tri Fan"); break;
            case 6: strcat(o,"Sprite"); break;
            case 7: strcat(o,ERRORCOL"*ILLEGAL*"NORM); break;
        }
        strcat(o, NORM ": ");
    }

    for(i = 0; i < 9; i++) {
        if((p >> 3) & (1 << i)) {
            if(verbose) {
                DEBUG_addField(ENTRY_FIELD, o, DATA_STR"("VERBOSE"%s"NORM")", gPrimFields[i], gPrimFieldsVerbose[i]);
            } else {
                DEBUG_addField(ENTRY_FIELD, o, DATA_STR, gPrimFields[i]);
            }
        }
    }
    return o;
}









// Returns the pixel storage format based on the 5 bit code passed in.
// Returns NULL if it does not exist.
static char *getPixelStorageFormatString(int p) {
    switch(p) {
        case 0x0: return "PSMCT32";
        case 0x1: return "PSMCT24";
        case 0x2: return "PSMCT16";
        case 0xa: return "PCMCT16S";
        case 0x12: return "PS-GPU24";
        case 0x13: return "PSMT8";
        case 0x14: return "PSMT4";
        case 0x1b: return "PSMT8H";
        case 0x24: return "PSMT4HL";
        case 0x2c: return "PSMT4HH";
        case 0x30: return "PSMZ32";
        case 0x31: return "PSMZ24";
        case 0x32: return "PSMZ16";
        case 0x3a: return "PSMZ16S";
        default: return NULL;
    }
};


    // Extracts bit fields
static u_int extract(u_int *v, int start, int numbits) {
    u_int d;
    if(start >= 32 || (start + numbits <= 32)) {    // if entirely within one word
        if(start >= 32) {
            d = v[1]; 
            start -= 32;
        } else {
            d = v[0];
        }
        d >>= start;
    } else {         // Crosses the boundary
        d = v[0] >> start;
        d &= (1 << (32 - start)) - 1;
        d |= v[1] << (32 - start);
    }

    if(numbits < 32) {
        d &= (1 << numbits) - 1;
    }
    return d;
}








    // This macro is used to extract fields from the data registers
#define EXTRACT(val, start, numbits) ( ((val) >> (start)) & ((1<<(numbits))-1) )

    // This function will parse & disassemble the register (passed in as two ints, at d[0] and d[1]).
    // s is the buffer to disassemble to, and should be large enough to accomodate
    // a few lines of disassembly.

static int disassembleRegister(int regnum, u_int *d, char *s) {
    int i,j;
    int err = NO_ERROR;
    u_int f[12];    // 12 because there are max 12 fields in a GS register
    char fname[12][96];
    
    i = 0;
    while(gRegs[i].address != regnum && i < NUMGIFREGS) {
        i++;
    }
    if(i == NUMGIFREGS) {
        sprintf(gTempString, ERRORCOL "Invalid GS register encountered : %02x" NORM, regnum);
        err |= AddGifError(ERR_GIF_INVALID_REGISTER, ERROR_FATAL_CONT, gTempString);
        return err;
    }

            // Print title of GS register
    DEBUG_addField(ENTRY_TITLE, s, GSREGISTERTITLE "GS %-10s" NORM" " DATASOURCEADDRESS, gRegs[i].regname, (int)gGifInput);

    if(gVerbose) {
        DEBUG_addField(ENTRY_FIELD, s, "["MEMCONTENTS_64"]", d[1],d[0]);
    }

    DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, "Reg", gRegs[i].address);

    if(gVerbose) {
        DEBUG_addField(ENTRY_FIELD, s, VERBOSE "%s" NORM, gRegs[i].description);
    }

        // Extract fields and build names
    for(j = 0; j < gRegs[i].numfields; j++) {
        f[j] = extract(d, gRegs[i].fields[j].startbit, gRegs[i].fields[j].length);
        if(gVerbose) {
            sprintf(fname[j], FIELD_NAME"%s" NORM":" VERBOSE"%s"NORM,
                    gRegs[i].fields[j].name, gRegs[i].fields[j].longname);
        } else {
            sprintf(fname[j], FIELD_NAME"%s" NORM, gRegs[i].fields[j].name);
        }
    }

    switch(gRegs[i].address) {
        case 0x00:        // PRIM
        case 0x1b:        // PRMODE
            {
            DEBUG_addField(ENTRY_FIELD, s, "%s=%s", (gRegs[i].address == 0)?"PRIM":"PRMODE",
                disassemblePrim(d[0], (gRegs[i].address == 0x00), gVerbose));
            }
            break;

        case 0x01:        // RGBAQ
            {
            typedef enum { R, G, B, A } RGBAQ;
            float q =  *(float*)&d[1];
            DEBUG_addField(ENTRY_FIELD, s, "RGBA=("DATA_2HEX ", " DATA_2HEX ", "DATA_2HEX ", "DATA_2HEX")",
                f[R], f[G], f[B], f[A]);
            DEBUG_addField(ENTRY_FIELD, s, "=("DATA_DEC ", "DATA_DEC ", "DATA_DEC ", "DATA_DEC")",
                f[R], f[G], f[B], f[A]);

            sprintf(gTempString,"%f", q);
            DEBUG_addField(ENTRY_FIELD, s, "Q=" DATA_FLOAT " ["DATA_8HEX"]", gTempString, d[1]);
            }
            break;

        case 0x02:        // ST
            {
            typedef enum { S, T } ST;
            float sf, tf;
            sf = *(float*)&f[S];
            tf = *(float*)&f[T];
            sprintf(gTempString, DATA"%f"NORM", "DATA"%f"NORM, sf, tf);
            DEBUG_addField(ENTRY_FIELD, s, "ST=(%s)", gTempString);
            DEBUG_addField(ENTRY_FIELD, s, "=["DATA_8HEX", "DATA_8HEX"]", d[0], d[1]);
            }
            break;

        case 0x03:        // UV
            {
            typedef enum { U, V } UV;
            float uf, vf;
            uf = convertFixedPointToFloat(f[U], 0, 12, 4);
            vf = convertFixedPointToFloat(f[V], 0, 12, 4);
            sprintf(gTempString, DATA"%f"NORM","DATA"%f"NORM, uf, vf);
            DEBUG_addField(ENTRY_FIELD, s, "UV=(%s)", gTempString);
            DEBUG_addField(ENTRY_FIELD, s, "=("DATA_4HEX","DATA_4HEX")", f[U], f[V]);
            }
            break;

        case 0x04:        // XYZF2
        case 0x0c:        // XYZF3 (no Kick)
            {
            typedef enum { X, Y, Z, F } XYZF;
            float xf, yf;
            xf = convertFixedPointToFloat(f[X], 0, 12, 4);
            yf = convertFixedPointToFloat(f[Y], 0, 12, 4);
            sprintf(gTempString, DATA"%f"NORM","DATA"%f"NORM, xf, yf);

            if(gRegs[i].address == 0x0c) {
                DEBUG_addField(ENTRY_FIELD, s, COLOUR_BOLD"(No Kick) "NORM);
            }

            DEBUG_addField(ENTRY_FIELD, s, "XYZF=(%s, "DATA_HEX", "DATA_HEX")",
                gTempString, f[Z], f[F]);
            DEBUG_addField(ENTRY_FIELD, s, "=("DATA_4HEX", "DATA_4HEX", "DATA_6HEX", "DATA_2HEX")",
                f[X], f[Y], f[Z], f[F]);
            }
            break;

        case 0x05:        // XYZ2
        case 0x0d:        // XYZ3 (no Kick)
            {
            typedef enum { X, Y, Z, F } XYZ;
            float xf, yf;
            xf = convertFixedPointToFloat(f[X], 0, 12, 4);
            yf = convertFixedPointToFloat(f[Y], 0, 12, 4);
            sprintf(gTempString, DATA"%f"NORM","DATA"%f"NORM, xf, yf);

            if(gRegs[i].address == 0x0d) {
                DEBUG_addField(ENTRY_FIELD, s, COLOUR_BOLD"(No Kick) "NORM);
            }

            DEBUG_addField(ENTRY_FIELD, s, "XYZ=(%s, "DATA_HEX")", gTempString);
            DEBUG_addField(ENTRY_FIELD, s, "=("DATA_4HEX", "DATA_4HEX", "DATA_8HEX")",
                f[X], f[Y], f[Z]);
            }
            break;

        case 0x06:        // TEX0
        case 0x07:
            {
            typedef enum { TBP0, TBW, PSM, TW, TH, TCC, TFX, CBP, CPSM, CSM, CSA, CLD } TEX;
            char *texturefunction[] = { "MODULATE", "DECAL", "HIGHLIGHT", "HIGHLIGHT2" };
            char *loadcontrol[] = {
                "Temp buff not changed",
                "Load to CSA position",
                "Load to CSA position, CBP0<-CBP",
                "Load to CSA position, CBP1<-CBP",
                "If CBP0<>CBP, then load and CBP0<-CBP",
                "If CBP1<>CBP, then load and CBP1<-CBP",
                "*RESERVED*",
                "*RESERVED*" };

            char *cpsmstr = getPixelStorageFormatString(f[CPSM]);
            char *psmstr = getPixelStorageFormatString(f[PSM]);

            if(psmstr == NULL) psmstr = ERRORCOL"*UNKNOWN*"NORM;
            if(cpsmstr == NULL) cpsmstr = ERRORCOL"*UNKNOWN*"NORM;

            if((gRegs[i].address & 0x10) == 0) {
                DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX" [TBP*64="DATA_6HEX"]", fname[TBP0], f[TBP0], f[TBP0] * 64);
                DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[TBW], f[TBW]);
            }

            DEBUG_addField(ENTRY_FIELD_NL, s, NAME_DATA_HEX VERBOSEA, fname[PSM], f[PSM], psmstr);

            if((gRegs[i].address & 0x10) == 0) {
                DEBUG_addField(ENTRY_FIELD_NL, s, NAME_DATA_STR, fname[TCC], f[TCC]?"RGBA":"RGB+TEXA");
                DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[TFX], texturefunction[f[TFX]]);
                DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX" (="DATA_DEC" txls)", fname[TW], f[TW], 1 << f[TW]);
                DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX" (="DATA_DEC" txls)", fname[TH], f[TH], 1 << f[TH]);
            }

            DEBUG_addField(ENTRY_FIELD_NL, s, NAME_DATA_4HEX" [CBP*64="DATA_6HEX"]", fname[CBP], f[CBP], f[CBP]*64);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX VERBOSEA, fname[CPSM], f[CPSM], cpsmstr);
            DEBUG_addField(ENTRY_FIELD, s, "%s="DATA"CSM%d"NORM, fname[CSM], f[CSM]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX" [CSA*16="DATA_4HEX"]", fname[CSA], f[CSA], f[CSA]*16);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX VERBOSEA, fname[CLD], f[CLD], loadcontrol[f[CLD]]);

            if(f[CLD] == 0x6 || f[CLD] == 0x7) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Invalid load control parameter");
            }
            if(f[CSA] == 0x1 && f[CSA] != 0) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "CSM is 1, but CSA is not zero!!");
            }
            if(getPixelStorageFormatString(f[PSM]) == NULL || f[PSM] == 0x12) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Invalid pixel storage format");
            }
            if(f[CPSM] != 0 && f[CPSM] != 2 && f[CPSM] != 0xa) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Invalid clut storage format");
            }
            }
            break;

        case 0x08:        // CLAMP
        case 0x09:
            {
            typedef enum { WMS, WMT, MINU, MAXU, MINV, MAXV } CLAMP;
            char *fieldu[] = { "REPEAT", "CLAMP", "REGION_CLAMP", "REGION_REPEAT" };

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX VERBOSEA, fname[WMS], f[WMS], fieldu[f[WMS]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX VERBOSEA, fname[WMT], f[WMT], fieldu[f[WMT]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[MINU], f[MINU]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[MAXU], f[MAXU]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[MINV], f[MINV]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[MAXV], f[MAXV]);
            }
            break;

        case 0x0a:        // FOG
            {
            typedef enum { F } FOG;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[F], f[F]);
            }
            break;

        case 0x14:        // TEX1
        case 0x15:
            {
            typedef enum { LCM, MXL, MMAG, MMIN, MTBA, L, K } TEX1;
            char *mminfields[] = { "NEAREST", "LINEAR", "NEAREST_MIPMAP_NEAREST", "NEAREST_MIPMAP_LINEAR",
                    "LINEAR_MIPMAP_NEAREST", "LINEAR_MIPMAP_LINEAR",
                    ERRORCOL"*RESERVED*"NORM, ERRORCOL"*RESERVED*"NORM };
            char *mtbafields[] = { "Value specified by TBP1 & TBP2 used", "Base address of TBP1-3 automatically set" };
            float k = convertFixedPointToFloat(f[K], 1, 7, 4);

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[LCM], f[LCM]?"K":"(log2(1/|Q|)<<L)+K");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[MXL], f[MXL]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[MMAG], f[MMAG]?"LINEAR":"NEAREST");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[MMIN], mminfields[f[MMIN]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[MTBA], f[MTBA], mtbafields[f[MTBA]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX, fname[L], f[L]);
            sprintf(gTempString, DATA"%f"NORM, k);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_FLOAT, fname[K], gTempString);

            if(f[MXL] > 6) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "MXL is > 6");
            }
            if(f[MMIN] > 5) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "MMIN is set to a reserved value");
            }
            }
            break;

        case 0x16:        // TEX2 (subsets of TEX0)
        case 0x17:
            {
            typedef enum { PSM, CBP, CPSM, CSM, CSA, CLD } TEX2;
            char *loadcontrol[] = { "Temp buff not changed", "Load to CSA position", "Load to CSA position, CBP0<-CBP",
                            "Load to CSA position, CBP1<-CBP",
                            "If CBP0<>CBP, then load and CBP0<-CBP",
                            "If CBP1<>CBP, then load and CBP1<-CBP",
                            ERRORCOL"*RESERVED*"NORM, ERRORCOL"*RESERVED*"NORM };

            char *cpsmstr = getPixelStorageFormatString(f[CPSM]);
            char *psmstr = getPixelStorageFormatString(f[PSM]);

            if(psmstr == NULL) psmstr = ERRORCOL"*UNKNOWN*"NORM;
            if(cpsmstr == NULL) cpsmstr = ERRORCOL"*UNKNOWN*"NORM;

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX VERBOSEA, fname[PSM], f[PSM], psmstr);

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX" [CBP*64="DATA_6HEX"]", fname[CBP], f[CBP], f[CBP]*64);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX VERBOSEA, fname[CPSM], f[CPSM], cpsmstr);
            DEBUG_addField(ENTRY_FIELD, s, "%s="DATA"CSM%d"NORM, fname[CSM], f[CSM]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX" [CSA*16="DATA_4HEX"]", fname[CSA], f[CSA], f[CSA]*16);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX VERBOSEA, fname[CLD], f[CLD], loadcontrol[f[CLD]]);

            if(f[CLD] == 0x6 || f[CLD] == 0x7) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Invalid load control parameter");
            }
            if(f[CSA] == 0x1 && f[CSA] != 0) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "CSM is 1, but CSA is not zero!!");
            }
            if(getPixelStorageFormatString(f[PSM]) == NULL || f[PSM] == 0x12) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Invalid pixel storage format");
            }
            if(f[CPSM] != 0 && f[CPSM] != 2 && f[CPSM] != 0xa) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Invalid clut storage format");
            }
            }
            break;

        case 0x18:        // XYOFFSET
        case 0x19:
            {
            typedef enum { X, Y } XYOFFSET;
            float xf = convertFixedPointToFloat(f[X], 0, 12, 4);
            float yf = convertFixedPointToFloat(f[Y], 0, 12, 4);
            sprintf(gTempString, DATA"%f"NORM", "DATA"%f"NORM, xf, yf);
            DEBUG_addField(ENTRY_FIELD, s, "OFX/Y=(%s)", gTempString);
            DEBUG_addField(ENTRY_FIELD, s, "=("DATA_4HEX", "DATA_4HEX")", f[X], f[Y]);
            }
            break;

        case 0x1a:        // PRMODECONT
            {
            typedef enum { AC } PRMODECONT;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[AC], f[AC]);
            if(gVerbose) {
                DEBUG_addField(ENTRY_FIELD, s, VERBOSE"%s used"NORM, f[AC] ? "Enabled - PRIM" : "Disabled - PRMODE");
            }
            }
            break;

        case 0x1c:        // TEXCLUT
            {
            typedef enum { CBW, COU, COV } TEXCLUT;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX" [*64="DATA_4HEX"]", fname[CBW], f[CBW], f[CBW]*64);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX" [*16="DATA_4HEX"]", fname[COU], f[COU], f[COU]*16);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[COV], f[COV]);
            }
            break;

        case 0x22:        // SCANMSK
            {
            typedef enum { MSK } SCANMSK;
            char *fieldmsk[] = { "Not masked", "*RESERVED*", "Drawing with even Y coord is prohibited",
                "Drawing with odd Y coord is prohibited" };

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[MSK], f[MSK]);
            if(gVerbose) {
                DEBUG_addField(ENTRY_FIELD, s, VERBOSEA, fieldmsk[f[MSK]]);
            }

            if(f[MSK] == 1) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Invalid Field Mask value");
            }
            }
            break;

        case 0x34:        // MIPTBP1
        case 0x35:
        case 0x36:
        case 0x37:
            {
            typedef enum { TBP1, TBW1, TBP2, TBW2, TBP3, TBW3 } MIPTBP1;
            int startReg = (gRegs[i].address == 0x36 || gRegs[i].address == 0x37) ? 4 : 1;

            DEBUG_addField(ENTRY_FIELD, s, "TBP%d=" DATA_4HEX, startReg, f[TBP1]);
            DEBUG_addField(ENTRY_FIELD, s, "TBW%d=" DATA_4HEX, startReg, f[TBW1]);
            startReg++;
            DEBUG_addField(ENTRY_FIELD, s, "TBP%d=" DATA_4HEX, startReg, f[TBP2]);
            DEBUG_addField(ENTRY_FIELD, s, "TBW%d=" DATA_4HEX, startReg, f[TBW2]);
            startReg++;
            DEBUG_addField(ENTRY_FIELD, s, "TBP%d=" DATA_4HEX, startReg, f[TBP3]);
            DEBUG_addField(ENTRY_FIELD, s, "TBW%d=" DATA_4HEX, startReg, f[TBW3]);
            }
            break;

        case 0x3b:        // TEXA
            {
            typedef enum { TA0, TA1, AEM } TEXA;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[TA0], f[TA0]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[TA1], f[TA1]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[AEM], f[AEM]);
            if(gVerbose) {
                DEBUG_addField(ENTRY_FIELD, s, VERBOSEA, f[AEM]?"A=0 when R=G=B=0":"Processed normally when R=G=B=0");
            }
            }
            break;

        case 0x3d:        // FOGCOL
            {
            typedef enum { R, G, B } FOGCOL;
            DEBUG_addField(ENTRY_FIELD, s, "RGB=("DATA_2HEX", "DATA_2HEX", "DATA_2HEX")", f[R], f[G], f[B]);
            DEBUG_addField(ENTRY_FIELD, s, "=("DATA_DEC", "DATA_DEC", "DATA_DEC")", f[R], f[G], f[B]);
            }
            break;

        case 0x3f:        // TEXFLUSH
            break;

        case 0x40:        // SCISSOR
        case 0x41:
            {
            typedef enum { SCAX0, SCAX1, SCAY0, SCAY1 } SCISSOR;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[SCAX0], f[SCAX0]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[SCAX1], f[SCAX1]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[SCAY0], f[SCAY0]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[SCAY1], f[SCAY1]);
            }
            break;

        case 0x42:        // ALPHA
        case 0x43:
            {
            typedef enum { A, B, C, D, FIX } ALPHA;
            char *fieldnames[] = { "Cs", "Cd", "0", ERRORCOL"*RESERVED*"NORM };
            char *fieldnames2[] = { "Cs", "Cd", "FIX", ERRORCOL"*RESERVED*"NORM };
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[A], fieldnames[f[A]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[B], fieldnames[f[B]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[C], fieldnames2[f[C]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[D], fieldnames[f[D]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[FIX], f[FIX]);
            DEBUG_addField(ENTRY_FIELD, s, "Cv=(%s-%s)*%s>>7+%s",
                fieldnames[f[A]], fieldnames[f[B]],
                fieldnames2[f[C]], fieldnames[f[D]]);

            if(f[A] == 3 || f[B] == 3 || f[C] == 3 || f[D] == 3) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Reserved value used in alpha formula!");
            }
            }
            break;    

        case 0x44:        // DIMX
            {
            u_int i,j;
            int val;
            float fval;
            for(i = 0; i < 4; i++) {
                for(j = 0; j < 4; j++) {
                    val = (i >= 2)?d[1]:d[0];
                    if(i & 1) val >>= 16;
                    val = (val >> (j*4)) & 0x7;
                    if(val & 4) {        // sign extend if negative
                        val |= 0xfffffff8;
                    }
                    fval = val;
                    sprintf(gTempString, DATA"%2.3f"NORM, fval);
                    DEBUG_addField(ENTRY_FIELD, s, gTempString);
                }
            }
            }
            break;

        case 0x45:        // DTHE
            {
            typedef enum { DITHER } DTHE;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[DITHER], f[DITHER]?"ON":"OFF");
            }
            break;

        case 0x46:        // COLCLAMP
            {
            typedef enum { CLAMP } COLCLAMP;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[CLAMP], f[CLAMP]?"CLAMP":"MASK");
            }
            break;

        case 0x47:        // TEST
        case 0x48:
            {
            typedef enum { ATE, ATST, AREF, AFAIL, DATE, DATM, ZTE, ZTST } TEST;
            char *alphatestmethod[] = { "NEVER: all fail", "ALWAYS: all pass", "LESS: A < AREF pass",
                                        "LEQUAL: A <= AREF pass", "EQUAL: A == AREF pass",
                                        "GEQUAL: A >= AREF pass", "GREATER: A > AREF pass",
                                        "NOTEQUAL: A <> AREF pass" };
            char *alphafailmethod[] = { "KEEP: FB & Z-Buff NOT updated",
                                        "FB_ONLY: Only F-Buff updated",
                                        "ZB_ONLY: Only Z-Buff updated",
                                        "RGB_ONLY: Only F-Buff RGB updated" };
            char *ztestfields[] = { "NEVER: All fail", "ALWAYS: all pass",
                                    "GEQUAL: Z >= Z-Buff pass", "GREATER: Z > Z-Buff pass" };

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[ATE], f[ATE]?"ON":"OFF");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[ATST], f[ATST], alphatestmethod[f[ATST]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[AREF], f[AREF]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[AFAIL], f[AFAIL], alphafailmethod[f[AFAIL]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[DATE], f[DATE]?"ON":"OFF");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC" ("VERBOSE"pixels w/dest A=%d pass"NORM")", fname[DATM], f[DATM], f[DATM]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[ZTE], f[ZTE]?"ON":"OFF");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[ZTST], f[ZTST], ztestfields[f[ZTST]]);
            }
            break;

        case 0x49:        // PABE
            {
            typedef enum { PABE } PABEf;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[PABE], f[PABE]);
            }
            break;

        case 0x4a:        // FBA
        case 0x4b:
            {
            typedef enum { FBA } FBAe;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[FBA], f[FBA]);
            }
            break;

        case 0x4c:        // FRAME
        case 0x4d:
            {
            typedef enum { FBP, FBW, PSM, FBMSK } FRAME;
            char *psmstr = getPixelStorageFormatString(f[PSM]);

            if(psmstr == NULL) psmstr = ERRORCOL"*UNKNOWN*"NORM;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX" [*2048="DATA_8HEX"]", fname[FBP], f[FBP], f[FBP] * 2048);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX" (="DATA_DEC" pixels)", fname[FBW], f[FBW], f[FBW] * 64);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[PSM], f[PSM], psmstr);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_8HEX, fname[FBMSK], f[FBMSK]);

            if(f[PSM] != 0 && f[PSM] != 1 && f[PSM] != 2 && f[PSM] != 6 &&
                    f[PSM] != 0x30 && f[PSM] != 0x31 && f[PSM] != 0x32 && f[PSM] != 0x3a) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Unknown pixel storage format");
            }
            }
            break;

        case 0x4e:        // ZBUF
        case 0x4f:
            {
            typedef enum { ZBP, PSM, ZMSK } ZBUF;
            char *psmstr = getPixelStorageFormatString(0x30 | f[PSM]);

            if(psmstr == NULL) psmstr = ERRORCOL"*UNKNOWN*"NORM;
            DEBUG_addField(ENTRY_FIELD, s, "%s="DATA_4HEX" [*2048="DATA_6HEX"]", fname[ZBP], f[ZBP], f[ZBP] * 2048);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX VERBOSEA, fname[PSM], f[PSM], psmstr);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[ZMSK], f[ZMSK]);
            if(gVerbose) {
                DEBUG_addField(ENTRY_FIELD, s, VERBOSEA, (f[ZMSK]) ? "ZBuffer is NOT updated":"ZBuffer is updated");
            }

            if(getPixelStorageFormatString(0x30 | f[PSM]) == NULL) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Invalid Z pixel storage format");
            }
            }
            break;

        case 0x50:        // BITBLTBUF
            {
            typedef enum { SBP, SBW, SPSM, DBP, DBW, DPSM } BITBLTBUF;

            char *spsmstr = getPixelStorageFormatString(f[SPSM]);
            char *dpsmstr = getPixelStorageFormatString(f[DPSM]);
            if(spsmstr == NULL) spsmstr = ERRORCOL"*UNKNOWN*"NORM;
            if(dpsmstr == NULL) dpsmstr = ERRORCOL"*UNKNOWN*"NORM;

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[SBP], f[SBP]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[SBW], f[SBW]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX VERBOSEA, fname[SPSM], f[SPSM], spsmstr);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[DBP], f[DBP]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[DBW], f[DBW]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX VERBOSEA, fname[DPSM], f[DPSM], dpsmstr);

            if(getPixelStorageFormatString(f[SPSM]) == NULL || f[SPSM] == 0x12) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Invalid source pixel storage format");
            }
            if(getPixelStorageFormatString(f[DPSM]) == NULL || f[DPSM]== 0x12) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Invalid dest pixel storage format");
            }
            }
            break;

        case 0x51:        // TRXPOS
            {
            typedef enum { SSAX, SSAY, DSAX, DSAY, DIR } TRXPOS;
            char *dirfields[] = { "Upper Left -> Lower Right", "Lower Left -> Upper Right",
                    "Upper Right -> Lower Left", "Lower Right -> Upper Left" };
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[SSAX], f[SSAX]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[SSAY], f[SSAX]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[DSAX], f[SSAX]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[DSAY], f[SSAX]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, fname[DIR], dirfields[f[DIR]]);
            }
            break;

        case 0x52:        // TRXREG
            {
            typedef enum { RRW, RRH } TRXREG;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[RRW], f[RRW]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[RRH], f[RRH]);
            }
            break;

        case 0x53:        // TRXDIR
            {
            typedef enum { XDIR } TRXDIR;
            char *xdirfields[] = { "Host -> Local", "Local -> Host", "Local -> Local", "Trasnmission disabled" };

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[XDIR], f[XDIR], xdirfields[f[XDIR]]);
            }
            break;

        case 0x54:        // HWREG
            {
            DEBUG_addField(ENTRY_FIELD, s, "DATA="DATA"%08x.%08x"NORM, d[1],d[0]);
            }
            break;

        case 0x60:        // SIGNAL
        case 0x62:        // LABEL
            {
            typedef enum { ID, IDMSK } SIGLAB;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_8HEX, fname[ID], f[ID]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_8HEX, fname[IDMSK], f[IDMSK]);
            DEBUG_addField(ENTRY_FIELD, s, "(ID & IDMSK)="DATA_8HEX, f[ID] & f[IDMSK]);
            }
            break;

        case 0x61:        // FINISH
            break;


        // --------------------- Privileged registers

        // Actually, these can never be called, so they're a little pointless. Maybe in the future I'll
        // put in a function to verbosely disassmble the contents of a priviledged register or something

        case 0x80:        // PMODE
            {
            typedef enum { EN1, EN2, CRTMD, MMOD, AMOD, SLBG, ALP } PMODE;

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[EN1], f[EN1], f[EN1]?"ON":"OFF");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[EN2], f[EN2], f[EN2]?"ON":"OFF");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX, fname[CRTMD], f[CRTMD]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[MMOD], f[MMOD],
                    f[MMOD]?"ALP Register value":"Alpha Value of Rd Circuit1");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[AMOD], f[AMOD],
                    f[AMOD]?"Alpha Value of Read Circuit 2":"Alpha Value of Read Circuit 2");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[SLBG], f[SLBG],
                    f[SLBG]?"Blended with backgrnd col":"Blended with output of Rd Circuit 2");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[ALP], f[ALP]);

            if(f[CRTMD] != 0) {
                err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Invalid CRTMD value (should be 0)");
            }
            }
            break;

        case 0x82:        // SMODE2
            {
            typedef enum { INTT, FFMD, DPMS } SMODE2;
            char *dpmsnames[] = { "ON", "STAND-BY", "SUSPEND", "OFF" };

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[INTT], f[INTT], f[INTT]?"INTERLACE":"NON-INTERLACE");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[FFMD], f[FFMD], f[FFMD]?"FRAME":"FIELD");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[DPMS], f[DPMS], dpmsnames[f[DPMS]]);
            }
            break;

        case 0x87:        // DISPFB
        case 0x89:
            {
            typedef enum { FBP, FBW, PSM, DBX, DBY } DISPFB;
            char *psmstr = getPixelStorageFormatString(f[PSM]);

            if(psmstr == NULL) psmstr = ERRORCOL"*UNKNOWN*"NORM;
            DEBUG_addField(ENTRY_FIELD, s, "%s="DATA_4HEX" [*2048="DATA_6HEX"]", fname[FBP], f[FBP], f[FBP] * 2048);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[FBW], f[FBW]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX VERBOSEA, fname[PSM], f[PSM], psmstr);
            DEBUG_addField(ENTRY_FIELD, s, "DBX/Y=("DATA_4HEX", "DATA_4HEX") = ("DATA_DEC", "DATA_DEC")",
                f[DBX], f[DBY], f[DBX], f[DBY]);

            if(f[PSM] != 0 && f[PSM] != 1 && f[PSM] != 2 && f[PSM] != 0xa) {
                if(!(gRegs[i].address == 0x7 && f[PSM] == 0x12)) {
                    err |= AddGifError(WARN_GIF_INV_FIELD, ERROR_FATAL_CONT, "Invalid dest pixel storage format");
                }
            }
            }
            break;

        case 0x88:        // DISPLAY
        case 0x8a:
            {
            typedef enum { DX, DY, DW, DH, MAGH, MAGV } DISPLAY;

            DEBUG_addField(ENTRY_FIELD, s, "DX/Y=("DATA_4HEX", "DATA_4HEX")", f[DX], f[DY]);
            DEBUG_addField(ENTRY_FIELD, s, "DW/H=("DATA_4HEX", "DATA_4HEX")", f[DW], f[DH]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[MAGH], f[MAGH]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[MAGV], f[MAGV]);
            }
            break;

        case 0x8b:        // EXTBUF
            {
            typedef enum { EXBP, EXBW, FBIN, WFFMD, EMODA, EMODC, WDX, WDY } EXTBUF;
            char *emodafield[] = { "Input alpha written as is", "Value from RGB->LumY written",
                     "Value from RGB->LumY/2 written", "Always 0" };
            char *emodcfield[] = { "Input alpha written as is", "Value from RGB->LumY written to RGB",
                     "Value from RGB->YCbCr written", "Input Alpha written to RGB resp." };

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_4HEX, fname[EXBP], f[EXBP]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_2HEX, fname[EXBW], f[EXBW]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[FBIN], f[FBIN], f[FBIN]?"OUT2":"OUT1");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[WFFMD], f[WFFMD], f[WFFMD]?"FRAME":"FIELD");
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[EMODA], f[EMODA], emodafield[f[EMODA]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[EMODC], f[EMODC], emodcfield[f[EMODC]]);
            DEBUG_addField(ENTRY_FIELD, s, "WDX/Y=("DATA_4HEX", "DATA_4HEX")", f[WDX], f[WDY]);
            }
            break;

        case 0x8c:        // EXTDATA
            {
            typedef enum { SX, SY, SMPH, SMPV, WW, WH } EXTDATA;
            DEBUG_addField(ENTRY_FIELD, s, "SX/Y=("DATA_4HEX", "DATA_4HEX")", f[SX], f[SY]);
            DEBUG_addField(ENTRY_FIELD, s, "WW/H=("DATA_4HEX", "DATA_4HEX")", f[WW], f[WH]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX, fname[SMPH], f[SMPH]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_HEX, fname[SMPV], f[SMPV]);
            }
            break;

        case 0x8d:        // EXTWRITE
            {
            typedef enum { WRITE } EXTWRITE;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[WRITE], f[WRITE],
                        f[WRITE]?"Write to mem is started from next frame":
                        "Write to mem is completed in the current frame");
            }
            break;

        case 0x8e:        // BGCOLOR
            {
            typedef enum { R, G, B } BGCOLOR;
            DEBUG_addField(ENTRY_FIELD, s, "RGB = ("DATA_2HEX", "DATA_2HEX", "DATA_2HEX") = ("DATA_DEC", "DATA_DEC", "DATA_DEC")",
                f[R], f[G], f[B],
                f[R], f[G], f[B]);
            }
            break;

        case 0xc0:        // CSR
            {        // We don't disassemble any field beyond NFIELD, since these are read only
            typedef enum { SIGNAL, FINISH, HSINT, VSINT, FLUSH, RESET } CSR;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[SIGNAL], f[SIGNAL]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[FINISH], f[FINISH]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[HSINT], f[HSINT]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[VSINT], f[VSINT]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[FLUSH], f[FLUSH]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, fname[RESET], f[RESET]);
            }
            break;

        case 0xc1:        // IMR
            {
            typedef enum { SIGMSK, FINISHMSK, HSMSK, VSMSK } IMR;
            char *mskfield[] = { "Not masked", "Masked" };

            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR,  mskfield[f[SIGMSK]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR,  mskfield[f[FINISHMSK]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR,  mskfield[f[HSMSK]]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR,  mskfield[f[VSMSK]]);
            }
            break;

        case 0xc4:        // BUSDIR
            {
            typedef enum { DIR } BUSDIR;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC VERBOSEA, fname[DIR], f[DIR], f[DIR]?"Local -> Host":"Host->Local");
            }
            break;

        case 0xc8:        // SIGLIB
            {
            typedef enum { ID, IDMSK } SIGLAB;
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_8HEX, fname[ID], f[ID]);
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_8HEX, fname[IDMSK], f[IDMSK]);
            DEBUG_addField(ENTRY_FIELD, s, "(ID & IDMSK)="DATA_8HEX, f[ID] & f[IDMSK]);
            }
            break;


        // --------------------- Dummy NOP register

        case 0xfd:        // NOP  Used when we get to the end of a REGLIST, but there's a spare 64 bits left
            {
            DEBUG_addField(ENTRY_FIELD, s, "(This field of data was skipped by the GIF)");
            }
            break;

        case 0xfe:        // NOP  Used when we encounter the RESERVED register
            {
            DEBUG_addField(ENTRY_FIELD, s, "*GIFTAG* REGS field = 0xb ("ERRORCOL"*RESERVED*"NORM"). Skipping this field.");
            }
            break;

        case 0xff:        // NOP 
            {
            }
            break;

        default:
            printf("Logic error, this case (0x%x) in disassembleRegister() should be caught.\n", gRegs[i].address);
            ASSERT((0), "Invalid GS register\n");
    }

    return err;
}







// Returns the GS address actually written to when passed a
// PACKED or REGLIST register (from the top 64 bits of the GIFTAG).
// 'd' is the address of the data (only used if it needs to check the ADC bit), and 'packedMode'
// should be TRUE in PACKED mode.
static int RegDesc2GSRegister(int regDesc, u_int *d, BOOL packedMode) {
    if(regDesc <= REGDESC_FOG || regDesc == REGDESC_XYZF3 || regDesc == REGDESC_XYZ3) {
        
        if(packedMode && (regDesc == REGDESC_XYZF2 || regDesc == REGDESC_XYZ2) && (d[3] & 0x8000)) {
                return regDesc + 0x08;
        }
        return regDesc;
    }
    if(regDesc == REGDESC_A_D) {
        if(packedMode) {
            return d[2] & 0x7f;
        } else {
            return 0xff;        // A+D mode not valid in anything but packed mode, so return NOP
        }
    }
    if(regDesc == REGDESC_NOP) {
        return 0xff;            // 0xff is the internal code for NOP
    }
        // This is a reserved register!
    return 0x0b;
}







static int disassembleReglist(int regidx, u_int *d, char *s) {
    // regidx is the entry from the REGS field
    int err = NO_ERROR;
    int gsReg;

    if(regidx == REGDESC_A_D) {
        err |= AddGifError(WARN_GIF_REGLIST_A_D, ERROR_WARNING,
            "REGLIST mode GIF tag has a A+D setting in the REGS field. Treating as a NOP.");
    }
        
    gsReg = RegDesc2GSRegister(regidx, d, FALSE);
    if(regidx == 0xb) {
        err |= AddGifError(ERR_GIF_INVALID_REG, ERROR_FATAL_CONT,
            "Encountered *Reserved* (0xb) in GIFTAG REGS field. Treating as a NOP.");
    }
            
    err |= disassembleRegister(gsReg, d, s);
    return err;
}






static int disassemblePacked(int regidx, u_int *d, char *s) {
    // regidx is the entry from the REGS field
    int foundError = NO_ERROR;
    float q;
    int i;
    u_int out[2];
    int gsReg;

    gsReg = RegDesc2GSRegister(regidx, d, TRUE);

                // This will duplicate the same functions as the packing circuits in the GIF

    switch(regidx) {
        case REGDESC_PRIM:
        case REGDESC_TEX0_1:
        case REGDESC_TEX0_2:
        case REGDESC_CLAMP_1:
        case REGDESC_CLAMP_2:
        case REGDESC_XYZF3:
        case REGDESC_XYZ3:
        case REGDESC_NOP:
            foundError |= disassembleRegister(gsReg, d, s) ;
            break;

        case REGDESC_RGBAQ:
            for(out[0] = 0,i = 0; i < 4; i++) {
                out[0] |= (d[i] & 0xff) << (i*8);
            }
            out[1] = gGifQ;
            foundError |= disassembleRegister(gsReg, out, s);
            break;

        case REGDESC_ST:
            gGifQ = d[2];        // Save 'q' for subsequent 'RGBAQ' setting
            q = *(float*)&d[2];
            s += sprintf(s, "  STQ encountered - setting internal GIF Q to "DATA"%f"NORM"\n", q);
            foundError |= disassembleRegister(gsReg, d, s);
            break;

        case REGDESC_UV:
            out[0] = (d[0] & 0xffff) | ((d[1] & 0xffff) << 16);
            out[1] = 0;
            foundError |= disassembleRegister(gsReg, out, s);
            break;

        case REGDESC_XYZF2:
        case REGDESC_XYZ2:
            out[0] = (d[0] & 0xffff) | ((d[1] & 0xffff) << 16);
            if(regidx == REGDESC_XYZF2) {
                out[1] = ((d[2] >> 4) & 0xffffff) | ((d[3] >> 4) & 0xff);
            } else {
                out[1] = d[2];
            }
            foundError |= disassembleRegister(gsReg, out, s);
            break;

        case REGDESC_FOG:
            out[0] = 0;
            out[1] = (d[3] & 0xff0) << 20;
            foundError |= disassembleRegister(gsReg, out, s);
            break;

        case REGDESC_A_D:
            gsReg = d[2] & 0x7f;
            foundError |= disassembleRegister(gsReg, d, s);
            break;

        case REGDESC_RESERVED:
            foundError |= AddGifError(ERR_GIF_INVALID_REG, ERROR_FATAL_CONT,
                "Encountered *Reserved* (0xb) in GIFTAG REGS field. Treating as a NOP.");
            foundError |= disassembleRegister(gsReg, d, s);
    }
    return foundError;
}















// This function moves the cursor to the next GIFTAG.
static int disassembleGiftagData(char *s) {
    int err = NO_ERROR;
    u_int regindex;
    int offset;

    s[0] = 0;

    switch(gt.flg) {

        case GIFTAG_IMAGE:
        case GIFTAG_DISABLE:
            g_cnt.LOOPCNT--;
            break;

        case GIFTAG_PACKED:
            s[0] = 0;
            regindex = (((int)g_cnt.REGCNT) - 1) & 0xf;
//    printf("reg count = %d, regindex = %d, loopcnt = %d\n", g_cnt.REGCNT, regindex, g_cnt.LOOPCNT);
    
            err |= disassemblePacked(gt.regidx[regindex], gGifInput, s);
            err |= DEBUG_addToOutputBuffer(s);

            if(g_cnt.LOOPCNT != 0) {
                if((u_int)g_cnt.REGCNT == (gt.nreg & 0xf)) {
                    g_cnt.REGCNT = 1;
                    g_cnt.LOOPCNT--;
                } else {
                    g_cnt.REGCNT++;
                }
            }
            break;

        case GIFTAG_REGLIST:
            for(offset = 0; offset <= 2; offset += 2) {
                s[0] = 0;
                regindex = (((int)g_cnt.REGCNT) - 1) & 0xf;
//    printf("reg count = %d, regindex = %d, loopcnt = %d\n", g_cnt.REGCNT, regindex, g_cnt.LOOPCNT);
    
                if(g_cnt.LOOPCNT != 0) {
                    err |= disassembleReglist(gt.regidx[regindex], &gGifInput[offset], s);
                } else {

                        // if we have nothing to do and we're still analysing the first half of the
                        // qword, then something went wrong because we should never be called.
                    ASSERT((offset != 0), "Logic error - came across a NOP in the first half of a quadword.\n");

                        // dummy code to explain that this 64 bit section is skipped
                    err |= disassembleRegister(0xfd, &gGifInput[2], s);
                }
                err |= DEBUG_addToOutputBuffer(s);

                if(g_cnt.LOOPCNT != 0) {
                    if((u_int)g_cnt.REGCNT == (gt.nreg & 0xf)) {
                        g_cnt.REGCNT = 1;
                        g_cnt.LOOPCNT--;
                    } else {
                        g_cnt.REGCNT++;
                    }
                }
            }
            break;
    }

    return err;
}








// ========================================
// Disassembles and parses a GIFTAG. Assumes the current cursor position is
// pointing to a GIFTAG. Disassembles to 's', it's up to you whether to output it.

static int parseGifTag(char *s) {
    int err = NO_ERROR;
    int i;
    u_int tsize;
    static char *gFlagTypeNames[] = { "PACKED", "REGLIST", "IMAGE  ", "Disable" };

    dputs("-->Entering parseGifTag");

    s[0] = 0;

        // ----------- Suck out all the data
    gt.tagaddr = gGifInput;
    gt.nloop = g_tag0 & 0x7fff;
    gt.eop = (g_tag0 >> 15) & 0x1;
    gt.pre = (g_tag1 >> 14) & 0x1;
    gt.prim = (g_tag1 >> 15) & 0x7ff;
    gt.flg = (g_tag1 >> 26) & 0x3;
    gt.nreg = (g_tag1 >> 28) & 0xf;
    if(gt.nreg == 0) {
        gt.nreg = 16;
    }
    gt.regs[0] = g_tag2;
    gt.regs[1] = g_tag3;

    for(i = 0; i < 16; i++) {
        if(i >= 8) {
            gt.regidx[i] = (gt.regs[1] >> ((i - 8) * 4)) & 0xf;
        } else {
            gt.regidx[i] = (gt.regs[0] >> (i * 4)) & 0xf;
        }
    }

    if(gt.flg == GIFTAG_PACKED || gt.flg == GIFTAG_REGLIST) {
        tsize = gt.nreg * gt.nloop;
    } else {
        tsize = gt.nloop;
    }

        // ------------ Disassemble what we have so far
    DEBUG_addField(ENTRY_TITLE, s, GIFTAGTITLE "GIFTAG" NORM"%7s " DATASOURCEADDRESS, "", gt.tagaddr);
    DEBUG_addField(ENTRY_FIELD, s, "["MEMCONTENTS_128"]", g_tag3, g_tag2, g_tag1, g_tag0);
    DEBUG_addField(ENTRY_FIELD, s, "Expects "DATA_HEX" regs", tsize);

    DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, "FLG", gFlagTypeNames[gt.flg]);
    DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, "EOP", gt.eop);
    DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, "NLOOP", gt.nloop);

    if(gt.flg == GIFTAG_PACKED || gt.flg == GIFTAG_REGLIST) {
        if(gt.nreg == 16) {
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC" ("DATA_DEC" regs)", "NREG", gt.nreg & 0xf, gt.nreg);
        } else {
            DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_DEC, "NREG", gt.nreg);
        }
    }

        // If Type is PACKED then disassemble the PRE and PRIM fields
    if(gt.flg == GIFTAG_PACKED) {
        DEBUG_addField(ENTRY_FIELD, s, NAME_DATA_STR, "PRE", gt.pre?"ON":"OFF");
        if(gt.pre) {
            DEBUG_addField(ENTRY_FIELD_NL, s, NAME_DATA_STR, "PRIM", disassemblePrim(gt.prim, TRUE, gVerbose));
        }
    }

        // --- Disassemble Registers
    if(gt.flg == GIFTAG_PACKED || gt.flg == GIFTAG_REGLIST) {
        DEBUG_addField(ENTRY_FIELD_NL, s, "Regs:");
        for(i = 0; i < gt.nreg; i++) {
            DEBUG_addField(ENTRY_FIELD, s, "%d:"DATA"%s"NORM"  ", i, gGTRegisterNames[(int)gt.regidx[i]]);
        }
    }

        // --------- Now check for errors and warnings
        
    if(gt.flg != GIFTAG_PACKED) {
        if(gt.pre != 0) {
            sprintf(gTempString, "Warning, PRE bit is set, but FLG is not PACKED. PRIM is ignored.");
            err |= AddGifError(WARN_GIF_PRE_DISABLED, ERROR_WARNING, gTempString);
            if(err & ERROR_FATAL_HALT) {
                return err;
            }
        }
    } else {
        if(gt.pre && (gt.prim & 0x7) == 0x7) {
            sprintf(gTempString, "Illegal primitive in GIFTAG prim field.");
            err |= AddGifError(ERR_GIF_INVALID_PRIM, ERROR_FATAL_CONT, gTempString);
            if(FATAL(err)) {
                return err;
            }
        }
            // Check REGS values
        for(i = 0; i < 16; i++) {
            if(i < gt.nreg && gt.regidx[i] == REGDESC_RESERVED) {
                sprintf(gTempString, "Illegal register in GIFTAG REGS field %d", i);
                err |= AddGifError(ERR_GIF_INVALID_REG, ERROR_FATAL_CONT, gTempString);
                if(err & ERROR_FATAL_HALT) {
                    return err;
                }
            }

            if(i >= gt.nreg && gt.regidx[i] != 0) {
                sprintf(gTempString, "Regs fields are set, but NREGS is not large enough to use them.");
                err |= AddGifError(WARN_GIF_SMALL_NREG, ERROR_WARNING, gTempString);
            }
        }
    }
    dputs("<--Leaving GIF_parseGifTag");

    return err;
}






        // resets the state of the GIF, to the 'idle' state
void GIF_reset(void) {
    g_cnt.LOOPCNT = 0;        // so that the next qword interpreted will be thought of as a GIFtag.
    g_cnt.REGCNT = 1;    // 1 is the first REGS field, 2, is the 2nd, 0 is the 16th.
    g_cnt.VUADDR = 0;
}







            // This function assumes that gGifInput holds a pointer to either a GIF tag or some GS data
            // It will choose between the two based on the state of LOOPCNT.
            // If it is a GIFtag, it will interpret it, output the disassembly and save the values for
            // later. If it is data, it will interpret it according to the last held GIFtag and
            // output the disassembly.

int GIF_emulateGifCycle(void) {
    int err = NO_ERROR;
    char s[2048];

    s[0] = 0;

    if(g_stat.DIR == 1) {
        err |= AddGifError(ERR_GIF_INVALID_DIR, ERROR_FATAL_HALT,
            "The DIR bit in GIF_STAT is set to GS->EE, the DMA debugger can only handle EE->GS");
        return err;
    }

    if(gGifInput == NULL) {
        sprintf(gTempString, "GIF tag/register address is not valid. (%08x)", (u_int)gGifInput);
        err |= AddGifError(ERR_GIF_INVALID_ADDR, ERROR_FATAL_HALT, gTempString);
        return err;
    }

    if(((int)gGifInput & 0xf) != 0) {
        sprintf(gTempString,
            "DMA List is not aligned on a 4 byte boundary. (Address = %08x)", (u_int)gGifInput);
        err |= AddGifError(ERR_GIF_LIST_ALIGNMENT, ERROR_FATAL_HALT, gTempString);
        return err;
    }

    if(g_cnt.LOOPCNT == 0) {
        dputs("Parsing new giftag");
            // Transfer tag
        g_tag0 = gGifInput[0];
        g_tag1 = gGifInput[1];
        g_tag2 = gGifInput[2];
        g_tag3 = gGifInput[3];
        GIF_reset();
        g_cnt.LOOPCNT = g_tag0 & 0x7fff;

        err |= parseGifTag(s);
        err |= DEBUG_addToOutputBuffer(s);
    } else {
        dputs("Parsing GS data");

        err |= disassembleGiftagData(s);
    }
    return err;

}




    



        // This function will disassemble a GIF stream
        // It assumes the DMA subsystem has already been set up, as it will call DMA_emulateCycle to receive the next
        // qword.
        // It runs until the DMA can no longer supply any more data.


int GIF_disassemble(void) {
    int err = NO_ERROR;

    dputs("--->Entering GIF_disassemble");

    GIF_reset();

    do {
        err |= DMA_emulateDMACycle();
        if(!FATAL(err) && gDmaTransferQWord != NULL) {
            gGifInput = gDmaTransferQWord;
//    printf("GIF read %08x.%08x.%08x.%08x\n", gGifInput[3], gGifInput[2], gGifInput[1], gGifInput[0]);
            err |= GIF_emulateGifCycle();
        }
    } while(!FATAL(err) && gDmaTransferQWord != NULL);

    if(g_cnt.LOOPCNT != 0) {
        err |= AddGifError(WARN_GIF_EXPECTING_DATA, ERROR_WARNING,
                "DMA has completed, but LOOPCNT != 0, GIF expecting more data.");
    }

    if((g_tag0 & 0x8000) == 0) {
        err |= AddGifError(WARN_GIF_LAST_EOP_ZERO, ERROR_WARNING,
                "Last GIF tag in DMA transfer did not have EOP = 1.");
    }

    dputs("<---Leaving GIF_Disassemble");

    return err;
}





        // This function is more 'standalone', in that it can be called in place of the normal sceDmaSend[N] functions,
        // but is only for pure EE->GIF transfers.

int GIF_disassembleDmaList(sceDmaChan *d, void *tag) {
    int err = NO_ERROR;
    dputs("--->Entering GIF_disassembleDmaList");

    GIF_reset();

    err = DMA_sceDmaSend(d, tag);            // Sets up DMA emulation
    
    if(FATAL(err)) {
        puts("Problem opening DMA for GIF Disassemble.");
        Exit(1);
    }

    err |= GIF_disassemble();

    dputs("<---Leaving GIF_DisassembleDmaList");
    return err;
}


            // This is similar to the function above, but takes N qwords instead of DMA Source Chain.

int GIF_disassembleDmaListN(sceDmaChan *d, void *tag, int numqwords) {
    int err = NO_ERROR;

    GIF_reset();

    dputs("--->Entering GIF_DisassembleDmaListN");
    err |= DMA_sceDmaSendN(d, tag, numqwords);        // Sets up DMA emulation

    if(FATAL(err)) {
        puts("Problem opening DMA for GIF Disassemble.");
        Exit(1);
    }

    err |= GIF_disassemble();

    dputs("<---Leaving GIF_DisassembleDmaListN");
    return err;
}



    // This is also a standalone function.
    // Given the address of an XGKICK GIF tag, this will disassemble until
    // it reaches the end of a GIF tag with EOP set.

    // The address specified must be in EE memory (or VU memory, with the proper EE address mappings)

int GIF_disassembleXGKICK(void *addr) {
    int err = NO_ERROR;
    u_int *reg = (u_int *)addr;

    GIF_reset();

    do {
        gGifInput = reg;
        if(!DMA_isValidAddress(gGifInput)) {
            sprintf(gTempString, "GS register is at an invalid address (%08x)!", (u_int)reg);
            err |= AddGifError(ERR_GIF_INVALID_ADDR, ERROR_FATAL_HALT, gTempString);
        }

        if(!FATAL(err)) {
            dprintf(("GIF read %08x.%08x.%08x.%08x\n", gGifInput[3], gGifInput[2], gGifInput[1], gGifInput[0]));
            err |= GIF_emulateGifCycle();
        }
        reg += 4;
    } while(!FATAL(err) && !(g_cnt.LOOPCNT == 0 && (g_tag0 & 0x8000)));

    return err;
}

