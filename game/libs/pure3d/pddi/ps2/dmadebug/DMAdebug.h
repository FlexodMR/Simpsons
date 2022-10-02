typedef char BOOL;

#if defined(__LANGUAGE_C_PLUS_PLUS)||defined(__cplusplus)||defined(c_plusplus)
extern "C" {
#endif

extern char gErrorBuffer[];
extern char gTempString[];
extern char *gOutputBuffer;

void DEBUG_parseConfig(char *initString);
void DEBUG_reset(void);
int DEBUG_addError(int errNum, int severity, char *errString);
int DEBUG_addToOutputBuffer(char *s);
int DEBUG_strlen(char *s);
void DEBUG_addField(debug_msg_type type, char *final, char *fmt, ...);
void DEBUG_saveBuffers(char *filename, BOOL append);

void DEBUG_init(char *cs);

extern u_int *gDmaTransferQWord;
extern BOOL gDmaTransferQWordIsTag;        // Is this word a DMA tag?

int DMA_getCRC(u_int *result);
BOOL DMA_isValidAddress(void *addr);
void *DMA_convertToMainMemAddress(void *addr);
void DMA_parseConfig(char *cs);
int DMA_getDmaChannelNumber(sceDmaChan *d);
int DMA_emulateDMACycle(void);
int DMA_startDmaTransfer(int channelNum, u_int chcr);
int DMA_sceDmaSend(sceDmaChan *dc, void *tag);
int DMA_sceDmaSendN(sceDmaChan *dc, void *addr, int size);

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


void VIF_saveVifRegisters(void);
void VIF_parseConfig(char *cs);
int VIF_disassemble(void);
int VIF_disassembleDmaList(sceDmaChan *d, void *tag);
int VIF_disassembleDmaListN(sceDmaChan *d, void *tag, int numqwords);

int DIS_dmaSend(int chan, int chcr, char *options);
int DIS_sceDmaSend(sceDmaChan *d, void *tag, char *options);
int DIS_sceDmaSendN(sceDmaChan *d, void *tag, u_int numqwords, char *options);

#if defined(__LANGUAGE_C_PLUS_PLUS)||defined(__cplusplus)||defined(c_plusplus)
}
#endif
