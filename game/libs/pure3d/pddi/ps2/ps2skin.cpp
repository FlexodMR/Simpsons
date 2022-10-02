//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/ps2/ps2skin.hpp>
#include <pddi/ps2/ps2prim.hpp>
#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2memalign.hpp>
#include <pddi/base/debug.hpp>


//-----------------------------------------------------------------------------
unsigned ps2MatrixPalette::BuildPacket(unsigned *&dma)
{
    unsigned qwordCount = 0;

    // Setup data packet
    *dma++ = DMA::SetSourceChainTag(PacketSize(), 0, DMA::cnt, 0);
    *dma++ = 0;
    *dma++ = 0;
    *dma++ = 0;
    qwordCount++;

    // put matrices and matrix unpack into dam packet
    EE::QwordCopy(dma, &pad0, DataSize());
    dma += (DataSize() * 4);
    qwordCount += DataSize();

    // Put the program info at the end
    EE::QwordCopy(dma, &programAddress, 1);
    dma += 4;
    ++qwordCount;

    return qwordCount;
}


//-----------------------------------------------------------------------------
void ps2MatrixPalette::Init(unsigned count)
{
    pad0 = pad1 = 0;
    matrixCount = count;
    flusha = VIF1_SET_FLUSHA(0);
    unpack = VIF1_SET_UNPACK(Address(), DataSize(), VIF::V4_32, 0);
//    printf("Address: %d  Size: %d  Count: %d\n", Address(), DataSize(), matrixCount);
}


//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
ps2ExtHardwareSkinning::ps2ExtHardwareSkinning(ps2Context *context) :
    context(context),
    palette(NULL)
{
    palette = new ps2MatrixPalette;
    palette->Init(NUM_SKINNING_MATRICES);
}


//-----------------------------------------------------------------------------
void ps2ExtHardwareSkinning::SetMatrixCount(unsigned count)
{
    PDDIASSERT( ((int)count) <= NUM_SKINNING_MATRICES && "Bones in primgroup must be fewer than or equal to 32!" );
    palette->Init(count);
}

//-----------------------------------------------------------------------------
void ps2ExtHardwareSkinning::SetMatrix(unsigned index, pddiMatrix *m)
{
    PDDIASSERT( ((int)index) <= NUM_SKINNING_MATRICES && "Bones in primgroup must be fewer than or equal to 32!" );

    EE::QwordCopy(&palette->m[index], m, 4);
}

//-----------------------------------------------------------------------------
void ps2ExtHardwareSkinning::Begin(void)
{
}

//-----------------------------------------------------------------------------
void ps2ExtHardwareSkinning::End(void)
{
    if(context->GetVUContext()->transform.clipper & 1)
    {
        context->GetVUContext()->SetDirty(true);  // the skinning vu code disables the clipper
    }
}

//-----------------------------------------------------------------------------
void ps2ExtHardwareSkinning::DrawSkin(pddiShader *shader, pddiPrimBuffer *skin)
{
    palette->programAddress = ((ps2PrimBuffer *)skin)->GetSkinningCodeAddress();
    context->DrawPrimBuffer(shader, skin);
}

