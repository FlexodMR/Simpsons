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

static int debug(int chan) {
    int err = NO_ERROR;
    if(chan == SCE_DMA_VIF0 || chan == SCE_DMA_VIF1) {
        err |= VIF_disassemble();
    } else if(chan == SCE_DMA_GIF) {
        err |= GIF_disassemble();
    } else {
        do {
            err |= DMA_emulateDMACycle();
        } while(!FATAL(err) && gDmaTransferQWord != NULL);
    }

    if(err != NO_ERROR) {
        puts("\n\n===== Errors occurred ===== \n");
        puts(gOutputBuffer);
        Exit(1);
    }
    return err;
}

int DIS_dmaSend(int chan, int chcr, char *options) {
    int err = NO_ERROR;

    DEBUG_init(options);
    err |= DMA_startDmaTransfer(chan, chcr);
    if(!FATAL(err)) {
        err |= debug(chan);
    }
    return err;
}

int DIS_sceDmaSend(sceDmaChan *d, void *tag, char *options) {
    int err = NO_ERROR;
    int chan = DMA_getDmaChannelNumber(d);
    if(chan == -1) {
        printf("Error - DMA_sceDmaSendN was passed an invalid DMA Handler pointer (%p)\n", d);
        Exit(1);
    }
    DEBUG_init(options);
    err |= DMA_sceDmaSend(d, tag);
    return debug(chan);
}

int DIS_sceDmaSendN(sceDmaChan *d, void *tag, u_int numqwords, char *options) {
    int err = NO_ERROR;
    int chan = DMA_getDmaChannelNumber(d);
    if(chan == -1) {
        printf("Error - DMA_sceDmaSendN was passed an invalid DMA Handler pointer (%p)\n", d);
        Exit(1);
    }
    DEBUG_init(options);
    err |= DMA_sceDmaSendN(d, tag, numqwords);
    return debug(chan);
}
