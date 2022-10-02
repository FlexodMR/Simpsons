//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PS2SKIN_HPP
#define _PS2SKIN_HPP

#include <pddi/pddiext.hpp>
#include <pddi/ps2/ps2prim.hpp>

//-----------------------------------------------------------------------------
class ps2MatrixPalette
{
public:
    void Init(unsigned count);
    unsigned DataSize(void)   { return (matrixCount * 4 + 1); } // +1 for info at end 
    unsigned PacketSize(void) { return DataSize() + 1; }
    unsigned Address(void)    { return 1024 - DataSize(); }
    unsigned BuildPacket(unsigned *&dma);

    unsigned pad0;
    unsigned pad1;
    unsigned flusha;
    unsigned unpack;
    pddiMatrix m[NUM_SKINNING_MATRICES];
    unsigned programAddress;
    unsigned matrixCount;
    unsigned info2;
    unsigned info3;
} __attribute__((aligned(16)));


class ps2ExtHardwareSkinning : public pddiExtHardwareSkinning
{
public:
    ps2ExtHardwareSkinning(ps2Context* c);
    int MaxMatrixPaletteSize(unsigned) { return 16; }

    pddiPrimBuffer* NewPrimBuffer(unsigned, pddiPrimBufferDesc* desc);

    void Begin(void);
    void End(void);

    void SetMatrixCount(unsigned count);
    void SetMatrix(unsigned index, pddiMatrix *m);
    void DrawSkin(pddiShader *shader, pddiPrimBuffer *skin);

    ps2MatrixPalette* MatrixPalette(void) { return palette; }

protected:
    ps2Context* context;
    ps2MatrixPalette* palette;
    unsigned matrixCount;
};


#endif 
