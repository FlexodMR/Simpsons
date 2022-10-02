typedef enum {
    VIF_NOPc =        0x00,
    VIF_STCYCLc =    0x01,
    VIF_OFFSETc =    0x02,
    VIF_BASEc =     0x03,
    VIF_ITOPc =     0x04,
    VIF_STMODc =     0x05,
    VIF_MSKPATH3c = 0x06,
    VIF_MARKc =        0x07,
    VIF_FLUSHEc =    0x10,
    VIF_FLUSHc =    0x11,
    VIF_FLUSHAc =     0x13,
    VIF_MSCALc =    0x14,
    VIF_MSCNTc =    0x17,
    VIF_MSCALFc =    0x15,
    VIF_STMASKc =    0x20,
    VIF_STROWc =    0x30,
    VIF_STCOLc =    0x31,
    VIF_MPGc =        0x4A,
    VIF_DIRECTc =    0x50,
    VIF_DIRECTHLc = 0x51,
    VIF_UNPACKc =    0x60
} VIFCODESc;

typedef enum {
    VIF_NOP = 0,
    VIF_STCYCL,
    VIF_OFFSET,
    VIF_BASE,
    VIF_ITOP,
    VIF_STMOD,
    VIF_MSKPATH3,
    VIF_MARK,
    VIF_FLUSHE,
    VIF_FLUSH,
    VIF_FLUSHA,
    VIF_MSCAL,
    VIF_MSCNT,
    VIF_MSCALF,
    VIF_STMASK,
    VIF_STROW,
    VIF_STCOL,
    VIF_MPG,
    VIF_DIRECT,
    VIF_DIRECTHL,
    VIF_UNPACK,
    NUMVIFCODES
} VIFCODESi;

typedef enum {
    UNPACK_S_32c    = 0x0,
    UNPACK_S_16c    = 0x1,
    UNPACK_S_8c        = 0x2,
    UNPACK_V2_32c    = 0x4,
    UNPACK_V2_16c    = 0x5,
    UNPACK_V2_8c    = 0x6,
    UNPACK_V3_32c    = 0x8,
    UNPACK_V3_16c    = 0x9,
    UNPACK_V3_8c    = 0xA,
    UNPACK_V4_32c    = 0xC,
    UNPACK_V4_16c    = 0xD,
    UNPACK_V4_8c    = 0xE,
    UNPACK_V4_5c    = 0xF
} UNPACKCODESc;

typedef enum {
    UNPACK_S_32 = 0,
    UNPACK_S_16,
    UNPACK_S_8,
    UNPACK_V2_32,
    UNPACK_V2_16,
    UNPACK_V2_8,
    UNPACK_V3_32,
    UNPACK_V3_16,
    UNPACK_V3_8,
    UNPACK_V4_32,
    UNPACK_V4_16,
    UNPACK_V4_8,
    UNPACK_V4_5,
} UNPACKCODESi;


    // -------------------------------------

typedef struct {
    u_int *addr;            // RAM address of this code

    u_char rawCmd;            // The full CMD field
//    u_char cmd;                // The processed CMD field (ie with UNPACK format + IRQ masked)
    int cmdIndex;            // The index of the command

    char interruptBit;        // Status of the interrupt bit
    int unpackFormatIndex;    // If an UNPACK command, this is the UNPACK format.

    int num;                // The num field
    u_int imm;                // The imm field

    int length;                // The number of words in this VIF packet.
} VIFCODE;

// ============================================================
// ============================================================
#if defined(__LANGUAGE_C_PLUS_PLUS)||defined(__cplusplus)||defined(c_plusplus)
extern "C" {
#endif

void VIF_saveVifRegisters(void);
void VIF_parseConfig(char *cs);
int VIF_disassemble(void);
int VIF_disassembleDmaList(sceDmaChan *d, void *tag);
int VIF_disassembleDmaListN(sceDmaChan *d, void *tag, int numqwords);

#if defined(__LANGUAGE_C_PLUS_PLUS)||defined(__cplusplus)||defined(c_plusplus)
}
#endif
