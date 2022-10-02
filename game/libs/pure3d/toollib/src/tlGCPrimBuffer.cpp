/*===========================================================================
    File:: tlGCPrimBuffer.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

-m -i -l 1 -o serr_021mi.p3d serr_021.p3d -vvv
===========================================================================*/

#include "tlGCPrimBuffer.hpp"
#include "tlPoint.hpp"
#include "tlColour.hpp"
#include "tlUV.hpp"
#include "tlFile.hpp"
#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <memory.h>
#include <malloc.h>
#include "porc.hpp"
#include "greyscale.hpp"

#include "GXEnum.h"

const unsigned int ps2Platform  = (0x0001 << 16);
const unsigned int xboxPlatform = (0x0002 << 16);
const unsigned int gcPlatform   = (0x0003 << 16);
const unsigned int PlatformMask = (0xFFFF << 16);

const unsigned int gcBuild      = (0x0003 << 0);
const unsigned int BuildMask =    (0xFFFF << 0);

const unsigned int gcMemoryImageVersion = gcPlatform | gcBuild;

unsigned char gcDisplayListPrimTypes[5] =
{                       
    0x90 /*GX_DRAW_TRIANGLES*/,      // PDDI_PRIM_TRIANGLES,
    0x98 /*GX_DRAW_TRIANGLE_STRIP*/, // PDDI_PRIM_TRISTRIP,
    0xA8 /*GX_DRAW_LINES*/,          // PDDI_PRIM_LINES,
    0xB0 /*GX_DRAW_LINE_STRIP*/,     // PDDI_PRIM_LINESTRIP,
    0xB8 /*GX_DRAW_POINTS*/          // PDDI_PRIM_POINTS
};



bool gWeightWarning = false;

extern int Log2(int i);


//*************************************************************
//
// Class tlGCPrimBuffer
//
//
//
tlGCPrimBuffer::tlGCPrimBuffer(void) : 
    mLocked(false),
    mVertexDescription(NULL),
    mVertexDescriptionSize(0),   
    mVertexList(NULL),
    mVertexSize(0),
    mIndexList(NULL),
    mIndexSize(0),
    mCurrentVertex(-1),
    mVertexCount(0),
    mUVCount(0),
    mVerbosity(0)
{
    int axis[] = { 8, 3, 3, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2 }; 
    int a;
    for (a = 0; a < MaxPrimComponents; a++) 
    {
        mComponents[a] = new tlGCComponentQuantizer(axis[a], (PrimComponent) a);
    }
}


//*************************************************************
//
// Class tlGCPrimBuffer
//
//
//
tlGCPrimBuffer::~tlGCPrimBuffer(void)
{
    delete[] mVertexList;
    delete[] mIndexList;
    delete[] mVertexDescription;

    int a;
    for (a = 0; a < MaxPrimComponents; a++) 
    {
        if (mComponents[a] != NULL) delete mComponents[a];
        mComponents[a] = NULL;
    }
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Create
//
//
void tlGCPrimBuffer::Create(pddiPrimType type, unsigned format, int nV, int nI, int nMatrix)
{
    gWeightWarning = false;

    mPrimType = type;
    mInputFormat = format;

    mUVCount = format & 0x0F;
    mVertexCount = nV;

    // Gamecube memory imager needs deindexed prim groups to start with
    assert(nI == 0);

    // Detect skins
    if (mInputFormat & PDDI_V_INDICES) mInputFormat |= PDDI_V_WEIGHTS;

    // hardcode special skin settings for GC
    if (mInputFormat & PDDI_V_WEIGHTS)
    {
        mComponents[Coords]->SetBitsPerComponent(16);
        mComponents[Normals]->SetBitsPerComponent(8);
        mComponents[Coords]->ForceIndexed();
        mComponents[Normals]->ForceIndexed();
    }
    else
    {
        delete mComponents[SkinInfo];
        mComponents[SkinInfo] = NULL;
    }

    // Delete unused prim components
    if ((mInputFormat & PDDI_V_NORMAL) == 0)
    {
        delete mComponents[Normals];
        mComponents[Normals] = NULL;
    }

    if ((mInputFormat & PDDI_V_COLOUR) == 0)
    {
        delete mComponents[Colours];
        mComponents[Colours] = NULL;
    }
    
    int a;
    for (a = mUVCount; a < GCMaxUV; a++)
    {
        delete mComponents[UV0 + a];
        mComponents[UV0 + a] = NULL;
    }

    for (a = 0; a < MaxPrimComponents; a++) 
    {
        if (mComponents[a] != NULL) mComponents[a]->SetInputDataCount(mVertexCount);
    }


    // Set all weights & indices to OK values for primgroups without weights
    if (mInputFormat & PDDI_V_WEIGHTS)
    {
        int a;
        for (a = 0; a < mVertexCount; a++)
        {
            mComponents[SkinInfo]->SetInputData(a, gcSkinIndex0Axis,  0.0F);
            mComponents[SkinInfo]->SetInputData(a, gcSkinIndex1Axis,  0.0F);
            mComponents[SkinInfo]->SetInputData(a, gcSkinIndex2Axis,  0.0F);
            mComponents[SkinInfo]->SetInputData(a, gcSkinIndex3Axis,  0.0F);
            mComponents[SkinInfo]->SetInputData(a, gcSkinWeight0Axis, 1.0F);
            mComponents[SkinInfo]->SetInputData(a, gcSkinWeight1Axis, 0.0F);
            mComponents[SkinInfo]->SetInputData(a, gcSkinWeight2Axis, 0.0F);
            mComponents[SkinInfo]->SetInputData(a, gcSkinWeight3Axis, 0.0F);
        }
    }
}



//*************************************************************
//
// Class tlGCPrimBuffer
// Set Component Style
//
//
void tlGCPrimBuffer::SetComponentStyle(PrimComponent item, int size, PrimComponentStyle style, int fraction)
{
    if (mComponents[item] != NULL)
    {
        mComponents[item]->SetStyle(style);
        mComponents[item]->SetBitsPerComponent(size);
        mComponents[item]->SetFraction(fraction);
    }

}



//*************************************************************
//
// Class tlGCPrimBuffer
// Lock
//
//
void tlGCPrimBuffer::Lock(void)
{
    assert(!mLocked);
    mLocked = true;
    mCurrentVertex = 0;
}

//*************************************************************
//
// Class tlGCPrimBuffer
// Unlock
//
void tlGCPrimBuffer::Unlock(void)
{
    assert(mLocked);
    mLocked = false;
    mCurrentVertex = -1;

    MemImage();
}



//*************************************************************
//
// Class tlGCPrimBuffer
// MemImage
//
void tlGCPrimBuffer::MemImage(void)
{

    // Do the memory image work on the vertex data

    // Skip skin info, will be done as pairing
    int a;
    for (a = 1; a < MaxPrimComponents; a++) 
    {
        if (mComponents[a] == NULL) continue;

        if ((a == Coords) || (a == Normals)) mComponents[a]->BuildOutputData(mComponents[SkinInfo]);
        else                                 mComponents[a]->BuildOutputData(NULL);
    }


    // Build the memory image output data sets
    BuildVertexDescription();
    BuildVertexList();
    BuildIndexList();
}



//*************************************************************
//
// Class tlGCPrimBuffer
// Build Vertex Description
//
//
void tlGCPrimBuffer::BuildVertexDescription(void)
{

    // Compute the size of the vertex description buffer
    int componentcount = 1 + mUVCount;
    if (mInputFormat & PDDI_V_NORMAL)  ++componentcount;
    if (mInputFormat & PDDI_V_COLOUR)  ++componentcount;
    if (mInputFormat & PDDI_V_WEIGHTS) ++componentcount;

    mVertexDescriptionSize = sizeof(RuntimeDescription) * componentcount;

    // Allocate the vertex description buffer
    mVertexDescription = new char[mVertexDescriptionSize];
    memset(mVertexDescription, 0, mVertexDescriptionSize);

    // Fill in the vertex description buffer   
    RuntimeDescription *rda = (RuntimeDescription *) mVertexDescription;
    
    // Weights
    if (mInputFormat & PDDI_V_WEIGHTS)
    {
        rda->offset     = 0; // Stuffed later
        rda->item       = GX_VA_NULL;
        rda->count      = 0;
        rda->style      = 0;
        rda->fraction   = 0;
        rda->stride     = 0;
        rda->itemcount  = 0; // Stuffed Later
        rda->indextype  = 0;
        ++rda;
    }

    // Vertex Coordinate
    rda->offset     = 0; // Stuffed Later
    rda->item       = GX_VA_POS;
    rda->count      = GX_POS_XYZ;
    rda->fraction   = mComponents[Coords]->Fraction();
    rda->itemcount  = 0; // Stuffed Later
    rda->style      = mComponents[Coords]->RuntimeStyle();
    rda->stride     = mComponents[Coords]->RuntimeStride();
    rda->indextype  = mComponents[Coords]->IndexType();
    if (mVerbosity > 1)
    {
        if (rda->indextype != GX_DIRECT) printf("Coordinates are indexed.  (%d indices, %d items)\n", mVertexCount, mComponents[Coords]->UniqueDataCount());
        else                             printf("Coordinates are embedded in the display list.  (%d items)\n", mVertexCount);
    }
    ++rda;

 
    if (mInputFormat & PDDI_V_NORMAL)
    {
        rda->offset     = 0; // Stuffed Later
        rda->item       = GX_VA_NRM;
        rda->count      = GX_NRM_XYZ;
        rda->fraction   = mComponents[Normals]->Fraction();
        rda->itemcount  = 0; // Stuffed Later
        rda->style      = mComponents[Normals]->RuntimeStyle();
        rda->stride     = mComponents[Normals]->RuntimeStride();
        rda->indextype  = mComponents[Normals]->IndexType();
  
        if (mVerbosity > 1)
        {
            if (rda->indextype != GX_DIRECT) printf("Normals are indexed.  (%d indices, %d items)\n", mVertexCount, mComponents[Normals]->UniqueDataCount());
            else                             printf("Normals are embedded in the display list.  (%d items)\n", mVertexCount);
        }
        ++rda;
    }   

    if (mInputFormat & PDDI_V_COLOUR)
    {
        rda->offset     = 0; // Stuffed Later
        rda->item       = GX_VA_CLR0;
        rda->count      = GX_CLR_RGBA;
        rda->fraction   = mComponents[Colours]->Fraction();
        rda->itemcount  = 0; // Stuffed Later
        rda->style      = mComponents[Colours]->RuntimeStyle();
        rda->stride     = mComponents[Colours]->RuntimeStride();
        rda->indextype  = mComponents[Colours]->IndexType();
//      if (rda->fraction == 255) rda->indextype = GX_INDEX8; // greyscale index size

        if (mVerbosity > 1)
        {
            if (rda->indextype != GX_DIRECT) printf("Colours are indexed.  (%d indices, %d items)\n", mVertexCount, mComponents[Colours]->UniqueDataCount());
            else                             printf("Colours are embedded in the display list.  (%d items)\n", mVertexCount);
        }
        ++rda;
    }   

    int a;
    for (a = 0; a < mUVCount; a++)
    {
        rda->offset     = 0; // Stuffed Later
        rda->item       = GX_VA_TEX0 + a;
        rda->count      = GX_TEX_ST;
        rda->fraction   = mComponents[UV0 + a]->Fraction();
        rda->itemcount  = 0; // Stuffed Later
        rda->style      = mComponents[UV0 + a]->RuntimeStyle();
        rda->stride     = mComponents[UV0 + a]->RuntimeStride();
        rda->indextype  = mComponents[UV0 + a]->IndexType();

        if (mVerbosity > 1)
        {
            if (rda->indextype != GX_DIRECT) printf("UV%d are indexed.  (%d indices, %d items).\n", a, mVertexCount, mComponents[UV0 + a]->UniqueDataCount());
            else                             printf("UV%d are embedded in the display list.  (%d items).\n", a, mVertexCount);
        }
        ++rda;
    }

    //---------------------------------------------------------------------------
    // Compute the size of the vertex buffer
    mVertexSize = 0;

    // Reset the runtime vetex descriptor pointer for offset stufing
    rda = (RuntimeDescription *) mVertexDescription;

    // Deal with the weight info stuff
    bool isskin = false;
    if (mInputFormat & PDDI_V_WEIGHTS)
    {
        isskin = true;
        int weightcount = mComponents[Coords]->UniqueDataCount(true);
        if (mInputFormat & PDDI_V_NORMAL) weightcount += mComponents[Normals]->UniqueDataCount(true);

        rda->itemcount = SwapWord((unsigned short)weightcount);
        rda->offset = SwapLong(mVertexSize);
        ++rda;
        mVertexSize += (sizeof(tlGCComponentQuantizer::SkinWeight) * weightcount);

        if (mVerbosity > 1)
        {
            printf("Weights are indexed.  (%d indices, %d items)\n", mVertexCount, weightcount);
        }
    }


    // All of the other components can be handled in a generic way

    for (a = 1; a < MaxPrimComponents; a++)
    {
        if (mComponents[a] == NULL) continue;

        int numitems, itemsize;
        mComponents[a]->IndexDataSize(numitems, itemsize, isskin);

        rda->offset = SwapLong(mVertexSize);
        mVertexSize += (numitems * itemsize);
        if (mComponents[a]->Indexed())
        {
            rda->itemcount = SwapWord((unsigned short)mComponents[a]->UniqueDataCount(isskin));
        }
        else
        {
            rda->itemcount = 0;
            rda->stride    = 0;
        }

        ++rda;
    }
}




//*************************************************************
//
// Class tlGCPrimBuffer
// Build Vertex List
// Need to call BuildVertexDescription before calling
//
void tlGCPrimBuffer::BuildVertexList(void)
{

    if (mVertexSize == 0) return;

    // Allocate the vertex buffer if necessary and stuff it
    mVertexList = new char[mVertexSize];
    unsigned char *buffer = (unsigned char *)mVertexList;

    int a;

    tlGCComponentQuantizer *skininfo = NULL;

    // Once again the weights are handled a little differently
    if (mInputFormat & PDDI_V_WEIGHTS)
    {
        skininfo = mComponents[SkinInfo];
        mComponents[SkinInfo]->GetIndexedData(buffer, mComponents[Coords]);
        if (mInputFormat & PDDI_V_NORMAL)
        {
            mComponents[SkinInfo]->GetIndexedData(buffer, mComponents[Normals]);
        }
    }

    // The rest of the compoent data is generic
    for (a = 1; a < MaxPrimComponents; a++)
    {
        if (mComponents[a] == NULL) continue;
        mComponents[a]->GetIndexedData(buffer, skininfo);
    }
}





//*************************************************************
//
// Class tlGCPrimBuffer
// Build Index List
//
//
void tlGCPrimBuffer::BuildIndexList(void)
{

    // Compute the size of the index buffer
    mIndexSize = 3; // room for the prim command & count at the head

    bool isforskin = false;
    if (mComponents[SkinInfo] != NULL) isforskin = true;

    int a;
    for (a = 1; a < MaxPrimComponents; a++)
    {
        if (mComponents[a] == NULL) continue;

        int numitems, itemsize;
        mComponents[a]->DisplayListDataSize(numitems, itemsize, isforskin);

        mIndexSize += (numitems * itemsize);
    }


    // Align the length of the index list to 32 bytes
    mIndexSize = (mIndexSize + 31) & ~31;

    // Allocate the index buffer
    mIndexList = new char[mIndexSize];

    // Fill the index list with GX_NOP
    memset(mIndexList, 0, mIndexSize);

    // Build display list header: 
    mIndexList[0] = gcDisplayListPrimTypes[mPrimType];
    mIndexList[1] = (mVertexCount & 0xFF00) >> 8;
    mIndexList[2] = (mVertexCount & 0x00FF);
    
    unsigned char *dlbuffer = (unsigned char *)&mIndexList[3];

    int index;
    for (index = 0; index < mVertexCount; index++)
    {
        // Skin info isn't in the display list
        for (a = 1; a < MaxPrimComponents; a++)
        {
            if (mComponents[a] == NULL) continue;
            mComponents[a]->GetDisplayListDataItem(index, dlbuffer, isforskin);
        }
    }
}





//*************************************************************
//
// Class tlGCPrimBuffer
// Coord
//
//
void tlGCPrimBuffer::Coord(const tlPoint &p)
{
    mComponents[Coords]->SetInputData(mCurrentVertex, p);
    Next();
}

//*************************************************************
//
// Class tlGCPrimBuffer
// Normal
//
//
void tlGCPrimBuffer::Normal(const tlPoint &p)
{
    mComponents[Normals]->SetInputData(mCurrentVertex, p);
}

//*************************************************************
//
// Class tlGCPrimBuffer
// SetNumColours
//
//
void tlGCPrimBuffer::SetNumColours(int numColours)
{
    assert(0 && "GC primbuffer code not updated with 2 cbv changes");
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Colour
//
//
void tlGCPrimBuffer::Colour(const tlColour &c, int channel)
{
    assert(0 && "GC primbuffer code not updated with 2 cbv changes");
    mComponents[Colours]->SetInputData(mCurrentVertex, c);
}


//*************************************************************
//
// Class tlGCPrimBuffer
// UV
//
//
void tlGCPrimBuffer::UV(const tlUV &tex, int channel)
{
    assert(channel < mUVCount);
    mComponents[UV0 + channel]->SetInputData(mCurrentVertex, tex);
}



//*************************************************************
//
// Class tlGCPrimBuffer
// Skin Indices
//
//
void tlGCPrimBuffer::SkinIndices(int a, int b, int c, int d)
{
    mComponents[SkinInfo]->SetInputData(mCurrentVertex, gcSkinIndex0Axis, (float)a);
    mComponents[SkinInfo]->SetInputData(mCurrentVertex, gcSkinIndex1Axis, (float)b);
    mComponents[SkinInfo]->SetInputData(mCurrentVertex, gcSkinIndex2Axis, (float)c);
    mComponents[SkinInfo]->SetInputData(mCurrentVertex, gcSkinIndex3Axis, (float)d);
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Skin Weights
//
//
void tlGCPrimBuffer::SkinWeights(float a, float b, float c)
{
    
    float total = a + b + c;
    if ((total < 0.95F) && !gWeightWarning)
    {
        gWeightWarning = true;
        printf("Warinig:  Skin uses four weights but mem imaged skins use only three.\n");
    }

    mComponents[SkinInfo]->SetInputData(mCurrentVertex, gcSkinWeight0Axis, a);
    mComponents[SkinInfo]->SetInputData(mCurrentVertex, gcSkinWeight1Axis, b);
    mComponents[SkinInfo]->SetInputData(mCurrentVertex, gcSkinWeight2Axis, c);
    mComponents[SkinInfo]->SetInputData(mCurrentVertex, gcSkinWeight3Axis, 1.0F - total);
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Next
//
//
void tlGCPrimBuffer::Next(void)
{
    assert(mCurrentVertex < mVertexCount);
    ++mCurrentVertex;
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Index
//
//
void tlGCPrimBuffer::Index(const short &idx)
{
    // GC Memimage MUST start with deindexed data
    assert(0);
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Vertex Description Size
//
//
unsigned int tlGCPrimBuffer::VertexDescriptionSize(void)
{
    return mVertexDescriptionSize;
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Vertex Size
//
//
unsigned int tlGCPrimBuffer::VertexSize(void)
{
    return mVertexSize;
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Index Size
//
//
unsigned int tlGCPrimBuffer::IndexSize(void)
{
    return mIndexSize;
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Vertex Description Data
//
//
char *tlGCPrimBuffer::VertexDescriptionData(void)
{   
    return mVertexDescription;
}

//*************************************************************
//
// Class tlGCPrimBuffer
// Vertex Data
//
//
char *tlGCPrimBuffer::VertexData(void)
{   
    return mVertexList;
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Index Data
//
//
short *tlGCPrimBuffer::IndexData(void)
{   
    return (short *)mIndexList;
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Version
//
//
unsigned int tlGCPrimBuffer::Version(void)
{
    return gcMemoryImageVersion;
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Parameter
//
//
unsigned int tlGCPrimBuffer::VertexDescriptionParameter(void)
{
    return VertexDescriptionSize();
}

//*************************************************************
//
// Class tlGCPrimBuffer
// Parameter
//
//
unsigned int tlGCPrimBuffer::VertexParameter(void)
{
    return VertexSize();
}


//*************************************************************
//
// Class tlGCPrimBuffer
// Parameter
//
//
unsigned int tlGCPrimBuffer::IndexParameter(void)
{
    return IndexSize();
}





//*************************************************************
//
// Class tlGCPrimBuffer
// Name of component
//
char *tlGCPrimBuffer::NameOfComponent(RuntimeDescription *desc)
{
    switch (desc->item)
    {
        case GX_VA_NULL: return "SkinWeights";
        case GX_VA_POS:  return "Coordinate";
        case GX_VA_NRM:  return "Normal";
        case GX_VA_CLR0: return "Colour";
        case GX_VA_TEX0: return "UV0";
        case GX_VA_TEX1: return "UV1";
        case GX_VA_TEX2: return "UV2";
        case GX_VA_TEX3: return "UV3";
        case GX_VA_TEX4: return "UV4";
        case GX_VA_TEX5: return "UV5";
        case GX_VA_TEX6: return "UV6";
        case GX_VA_TEX7: return "UV7";
    }         

    return "Unknown";
}



//*************************************************************
//
// Class tlGCPrimBuffer
// Name of component
//
int tlGCPrimBuffer::DisplaylistSize(RuntimeDescription *desc)
{

    if (desc->indextype == GX_INDEX8)  return 1;
    if (desc->indextype == GX_INDEX16) return 2;

    int compsize = 0;

    switch (desc->style)
    {
        case GX_F32:   compsize = 4; break;
        case GX_S16:   compsize = 2; break;
        case GX_U16:   compsize = 2; break;
        case GX_S8:    compsize = 1; break;
        case GX_U8:    compsize = 1; break;
        case GX_RGBA8: compsize = 1; break;
    }


    switch (desc->item)
    {
        case GX_VA_NULL:
            compsize = 0;
            break;

        case GX_VA_POS:
        case GX_VA_NRM:
            compsize *= 3;
            break;

        case GX_VA_CLR0:
            compsize *= 4;
            break;

        case GX_VA_TEX0:
        case GX_VA_TEX1:
        case GX_VA_TEX2:
        case GX_VA_TEX3:
        case GX_VA_TEX4:
        case GX_VA_TEX5:
        case GX_VA_TEX6:
        case GX_VA_TEX7:
            compsize *= 2;
            break;

        default:
            compsize = 0;      
    }         

    return compsize;
}



//*************************************************************
//
// Class tlGCPrimBuffer
// Name of style
//
//
char *tlGCPrimBuffer::NameOfStyle(RuntimeDescription *desc)
{

    if (desc->item != GX_VA_CLR0)
    {
        switch (desc->style)
        {
            case GX_U8:  return "8 Bit Unsigned Fixed Point";  
            case GX_S8:  return "8 Bit Signed Fixed Point";    
            case GX_U16: return "16 Bit Unsigned Fixed Point";  
            case GX_S16: return "16 Bit Signed Fixed Point";  
            case GX_F32: return "32 Bit Float";
        }
    }
    else
    {
        switch (desc->style)
        {
            case GX_RGB565:  return "RGB565";  
            case GX_RGB8:    return "RGB8";    
            case GX_RGBX8:   return "RGBX8";  
            case GX_RGBA4:   return "RGBA4";  
            case GX_RGBA6:   return "RGBA6";
            case GX_RGBA8:   return "RGBA8";
        }
    }
    return "Unknown";
}



//*************************************************************
//
// Class tlGCPrimBuffer
// Name of primitive
//
//
char *tlGCPrimBuffer::NameOfPrimitive(unsigned char gcDLCommand)
{
    switch (gcDLCommand)
    {
        case 0x90: return "Triangles";
        case 0x98: return "TriStrips";
        case 0xA8: return "Lines";
        case 0xB0: return "LineStrips";
        case 0xB8: return "Points";
    }

    return "Unknown";
}





//*************************************************************
//
// Class tlGCPrimBuffer
// Dump Memory Image
//
//
void tlGCPrimBuffer::DumpMemoryImage(unsigned int version, 
                                                 unsigned int vertexdescriptionparam, 
                                                 unsigned int vertexdescriptionsize, 
                                                 char*        vertexdescription,
                                                 unsigned int vertexparam, 
                                                 unsigned int vertexsize, 
                                                 char*        vertex,
                                                 unsigned int indexparam, 
                                                 unsigned int indexsize, 
                                                 short*       index)
{

    if ((version & PlatformMask) != gcPlatform)
    {
        printf("Memory imaged geometry is not GameCube format. (%d)\n", version >> 16);
        return;
    }


    int dlvertexsize = 0;

    printf("   Memory image of this primgroup: %d bytes\n\n", vertexdescriptionsize + vertexsize + indexsize);

    int a;

    int componentcount = vertexdescriptionsize / sizeof(RuntimeDescription);

    void **itemdata = new void*[componentcount];
    RuntimeDescription *comps = new RuntimeDescription[componentcount];
    memcpy(comps, vertexdescription, vertexdescriptionsize);
    
    unsigned int address = (unsigned int) vertex;
    for (a = 0; a < componentcount; a++)
    {
        comps[a].offset    = SwapLong(comps[a].offset);
        comps[a].itemcount = SwapWord(comps[a].itemcount);
        itemdata[a] = NULL;

        dlvertexsize += DisplaylistSize(&comps[a]);

        if (comps[a].indextype != GX_DIRECT)
        {
            if (comps[a].fraction == 255)
            {
                comps[a].fraction = 0;
                if (comps[a].item == GX_VA_NRM)  itemdata[a] = (void *)porcupinef;
                if (comps[a].item == GX_VA_CLR0) itemdata[a] = (void *)greyscale;
            }
            else
            {
                itemdata[a] = (void *)(address + comps[a].offset);
            }
        }
    }


    printf("   There are %d components to the vertices.\n", componentcount);
    
    for (a = 0; a < componentcount; a++)
    {
        printf("   Component %d:\n", a + 1);
        printf("       %ss are %ss with a fraction of %d\n", NameOfComponent(&comps[a]), NameOfStyle(&comps[a]), comps[a].fraction);
    
        if (comps[a].indextype != GX_DIRECT) 
        {
            printf("       They are indexed with %d unique indices.\n", comps[a].itemcount);
            printf("       Data is offset by %d bytes.\n", comps[a].offset);
        }
        else
        {
            printf("       They are deindexed in the display list.\n");
        }

        printf("\n");
    }

    unsigned char *displaylist = (unsigned char *)index;
    int vertexcount = SwapWord(*((short *)&displaylist[1]));

    printf("   Primitives are %s (Command: %X) with %d vertices.\n", NameOfPrimitive(*displaylist), (int) *displaylist, vertexcount);

    printf("\n   Indexed Vertex Data:\n");
    PrintVertexData(componentcount, comps, itemdata);

    printf("\n   Displaylist index data:\n");

    int vertcount = (((int) displaylist[1]) << 8) + ((int) displaylist[2]);
    printf("\n    There are %d vertices in this display list.\n", vertcount);

    displaylist += 3;
    int dlusedsize = 3;

    for (a = 0; a < vertcount; a++)
    {
        printf("      Vertex %4d: ", a);

        int comp;
        for (comp = 0; comp < componentcount; comp++)
        {
            if (comps[comp].item == GX_VA_NULL) continue;
            
            printf("  %s: ", NameOfComponent(&comps[comp]));

            switch (comps[comp].indextype)
            {
                case GX_INDEX8:
                    printf("index %3d   ", (int) *displaylist);
                    break;

                case GX_INDEX16:
                    printf("index %5d   ", (int) SwapWord(*((unsigned short *)displaylist)));
                    break;
                
                case GX_DIRECT:
                {
                    void *ptr = (void *) displaylist;
                    float f1 = ConvertToFloat(&comps[comp], ptr);
                    float f2 = ConvertToFloat(&comps[comp], ptr);
                    float f3 = ConvertToFloat(&comps[comp], ptr);
                    float f4 = ConvertToFloat(&comps[comp], ptr);
                    switch (comps[comp].item)
                    {
                        case GX_VA_POS:
                        case GX_VA_NRM:
                            printf("X:% 2.4f Y:% 2.4f Z:% 2.4f", f1, f2, f3);
                            break;

                        case GX_VA_CLR0:
                            printf("R:%1.3f G:% 1.3f B:% 1.3f A:% 1.3f", f1, f2, f3, f4);
                            break;

                        case GX_VA_TEX0:
                        case GX_VA_TEX1:
                        case GX_VA_TEX2:
                        case GX_VA_TEX3:
                        case GX_VA_TEX4:
                        case GX_VA_TEX5:
                        case GX_VA_TEX6:
                        case GX_VA_TEX7:
                            printf("U: % 2.4f  V:% 2.4f", f1, f2);
                            break;
                    }
                }
            }
            displaylist += DisplaylistSize(&comps[comp]);
            dlusedsize += DisplaylistSize(&comps[comp]);
        }
        printf("\n");
    }

    if (dlusedsize < (int)indexsize)
    {
        printf("\n    Display list padding (%d bytes): ", ((int)indexsize) - dlusedsize);

        while (dlusedsize < (int)indexsize)
        {
            printf("%02X", (int)*displaylist);
            ++displaylist;
            ++dlusedsize;
            if (dlusedsize < (int)indexsize) printf(", ");
        }
    }

    printf("\n\n");
}





//*************************************************************
//
// Class tlGCPrimBuffer
// Print Vertex Data
//
//
void tlGCPrimBuffer::PrintVertexData(int componentcount, RuntimeDescription *comps, void *itemdata[])
{
    int a;
    for (a = 0; a < componentcount; a++)
    {
        if (comps[a].item == GX_VA_NULL)
        {
            if (a == 0) // Probably a skin info
            {
                tlGCComponentQuantizer::SkinWeight *weights = (tlGCComponentQuantizer::SkinWeight *)itemdata[0];
                tlGCComponentQuantizer::SkinWeight weight;

                int v;
                for (v = 0; v < comps[a].itemcount; v++)
                {
                    printf("   Skin Weight %4d: ", v);
                    weight = weights[v];
                    float w1 = (float)((unsigned short)SwapWord(weight.weights[0])) / 32768.0F;
                    float w2 = (float)((unsigned short)SwapWord(weight.weights[1])) / 32768.0F;

                    printf ("%3d   %3d %3d %3d  % 2.3f % 2.3f % 2.3f\n", 
                                (int)weight.weightcount,
                                (int)weight.matrixindex[0],
                                (int)weight.matrixindex[1],
                                (int)weight.matrixindex[2],
                                w1, w2, 1.0F - (w1 + w2));
                }
            }
            continue;
        }

        if (comps[a].indextype == GX_DIRECT)
        {
            printf("     %s is deindexed in the display list.\n", NameOfComponent(&comps[a]));
            continue;
        }

        if (itemdata == 0)
        {
            printf("     %s has no indexed vertex data.\n", NameOfComponent(&comps[a]));
            continue;
        }

        if (comps[a].itemcount == 0) 
        {
            printf("     %s has a special static list.\n", NameOfComponent(&comps[a]));
        }

        int v;
        for (v = 0; v < comps[a].itemcount; v++)
        {
            printf("     %s %4d: ", NameOfComponent(&comps[a]), v);

            int count = 0;
            switch (comps[a].item)
            {
                case GX_VA_POS:  count = 3; break;
                case GX_VA_NRM:  count = 3; break;
                case GX_VA_CLR0: count = 4; break;
                case GX_VA_TEX0: count = 2; break;
                case GX_VA_TEX1: count = 2; break;
                case GX_VA_TEX2: count = 2; break;
                case GX_VA_TEX3: count = 2; break;
                case GX_VA_TEX4: count = 2; break;
                case GX_VA_TEX5: count = 2; break;
                case GX_VA_TEX6: count = 2; break;
                case GX_VA_TEX7: count = 2; break;
            }         

            int b;
            for (b = 0; b < count; b++)
            {
                float val = ConvertToFloat(&comps[a], itemdata[a]);
                printf("% 2.4f ", val);
            }
            printf("\n");
        }
      printf("\n");
    }
}



//--------------------------------
float tlGCPrimBuffer::ConvertToFloat(RuntimeDescription *desc, void *&ptr)
{
    char *cp = (char *)ptr;

    float val = -666.0F;

    switch (desc->style)
    {
        case GX_U8:
            val = (float) ((unsigned char) *cp);
            val /= ((float) (1 << desc->fraction));
            cp++; 
            break;

        case GX_S8: 
            val = (float) ((signed char) *cp);
            val /= ((float) (1 << desc->fraction));
            cp++; 
            break;

        case GX_U16:
            val = (float) ((unsigned short)SwapWord(*((unsigned short *)cp)));
            val /= ((float) (1 << desc->fraction));
            cp += 2; 
            break;

        case GX_S16:
            val = (float) SwapWord(*((short *)cp));
            val /= ((float) (1 << desc->fraction));
            cp += 2; 
            break;

        case GX_F32:
            val = SwapFloat(*((float *)cp));
            cp += 4; 
            break;

        case GX_RGBA8:
            val = (float) ((unsigned char) *cp);
            val /= 255.0;
            cp++; 
            break;

    }

    ptr = (void *) cp;
    return val;
}





/*****
bool tlGCPrimBuffer::SkinWeight::operator==(const SkinWeight &b)
{
    if (weightcount != b.weightcount) return false;

    if (matrixindex[0] != b.matrixindex[0]) return false;
    if (matrixindex[1] != b.matrixindex[1]) return false;
    if (matrixindex[2] != b.matrixindex[2]) return false;

    // one percent weight tolerance
    int tolerance = (int) (65536.0F * 0.01F);

    int aw = (int) weights[0];
    int bw = (int) b.weights[0];
    assert(aw >= 0);
    assert(bw >= 0);
    if (abs(aw - bw) > tolerance) return false;

    aw = (int) weights[1];
    bw = (int) b.weights[1];
    assert(aw >= 0);
    assert(bw >= 0);
    if (abs(aw - bw) > tolerance) return false;

    return true;
}
*****/

