#define GIFTAG_PACKED (0)
#define GIFTAG_REGLIST (1)
#define GIFTAG_IMAGE (2)
#define GIFTAG_DISABLE (3)

#define NUMGIFREGS (71)

typedef enum {
    REGDESC_PRIM    = 0,
    REGDESC_RGBAQ    = 1,
    REGDESC_ST        = 2,
    REGDESC_UV        = 3,
    REGDESC_XYZF2    = 4,
    REGDESC_XYZ2    = 5,
    REGDESC_TEX0_1    = 6,
    REGDESC_TEX0_2    = 7,
    REGDESC_CLAMP_1 = 8,
    REGDESC_CLAMP_2 = 9,
    REGDESC_FOG        = 0xa,
    REGDESC_RESERVED= 0xb,
    REGDESC_XYZF3    = 0xc,
    REGDESC_XYZ3    = 0xd,
    REGDESC_A_D        = 0xe,
    REGDESC_NOP        = 0xf
} REGDESC;

    // -------------------------------------

typedef struct {
    u_int *tagaddr;            // RAM address of this GIF tag

    u_int nloop;
    BOOL eop;
    BOOL pre;
    u_int prim;
    u_int flg;
    u_int nreg;
    u_int regs[2];
    char regidx[16];
} GIFTAG;

// ============================================================
// ============================================================


// ============================================================
#if defined(__LANGUAGE_C_PLUS_PLUS)||defined(__cplusplus)||defined(c_plusplus)
extern "C" {
#endif

extern u_int *gGifInput;

void GIF_parseConfig(char *cs);
void GIF_saveGifRegisters(void);
BOOL GIF_isIdle(void);
int GIF_emulateGifCycle(void);
int GIF_disassemble(void);
int GIF_disassembleDmaList(sceDmaChan *d, void *tag);
int GIF_disassembleDmaListN(sceDmaChan *d, void *tag, int numqwords);
int GIF_disassembleXGKICK(void *addr);
void GIF_reset(void);

#if defined(__LANGUAGE_C_PLUS_PLUS)||defined(__cplusplus)||defined(c_plusplus)
}
#endif


