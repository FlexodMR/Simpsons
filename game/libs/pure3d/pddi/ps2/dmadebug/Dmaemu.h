#define MEM_MAX_32 (0x01ffffff)
#define MEM_MAX_128 (0x07ffffff)

typedef enum {
    DMA_REFE = 0,
    DMA_CNT,
    DMA_NEXT,
    DMA_REF,
    DMA_REFS,
    DMA_CALL,
    DMA_RET,
    DMA_END
} DMAID;

// ============================================================
// ============================================================

// =====================================================
#if defined(__LANGUAGE_C_PLUS_PLUS)||defined(__cplusplus)||defined(c_plusplus)
extern "C" {
#endif

    // Globally accessible QWord which is what the DMA emulator puts onto the 'bus'.
extern int gChan;
extern u_int *gDmaTransferQWord;
extern BOOL gDmaTransferQWordIsTag;        // Is this word a DMA tag?

        // Upper limit on memory size, used for bounds checking
extern u_int gUpperMainMemLimit;

int DMA_getCRC(u_int *result);

BOOL DMA_isValidAddress(void *addr);
void *DMA_convertToMainMemAddress(void *addr);
void DMA_parseConfig(char *cs);
int DMA_getDmaChannelNumber(sceDmaChan *d);
int DMA_emulateDMACycle(void);
int DMA_startDmaTransfer(int channelNum, u_int chcr);
int DMA_sceDmaSend(sceDmaChan *dc, void *tag);
int DMA_sceDmaSendN(sceDmaChan *dc, void *addr, int size);

#if defined(__LANGUAGE_C_PLUS_PLUS)||defined(__cplusplus)||defined(c_plusplus)
}
#endif


