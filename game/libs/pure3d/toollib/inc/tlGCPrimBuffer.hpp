/*===========================================================================
    File:: tlGCPrimBuffer.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _tlGCPrimBuffer_HPP
#define _tlGCPrimBuffer_HPP

#include "tlPrimBuffer.hpp"
#include "tlGCComponentQuantizer.hpp"

class pddiPrimBufferStream;

const int MaxPrimComponents = 12;
const int GCMaxUV = 8;

//--------------------------------------------------------------------------
class tlGCPrimBuffer : public tlPrimBuffer
{
public:
    tlGCPrimBuffer();
    virtual ~tlGCPrimBuffer();

    void SetComponentStyle(PrimComponent item, int size, PrimComponentStyle style, int fraction = FractionAuto);

    virtual void Create(pddiPrimType type, unsigned vertexFormat, int nVertex, int nIndex, int nMatrix);
    virtual void Lock(void);
    virtual void Unlock(void);

    virtual void Coord(const  tlPoint &p);
    virtual void Normal(const tlPoint &p);
    virtual void SetNumColours(int numColours);
    virtual void Colour(const tlColour &colour, int channel = 0);
    virtual void UV(const tlUV &uv, int channel = 0);
    virtual void SkinIndices (int a, int b, int c, int d);
    virtual void SkinWeights (float a, float b, float c);
    virtual void Next(void);

    virtual void Index(const short &index);

    virtual unsigned int   VertexDescriptionSize(void);
    virtual char          *VertexDescriptionData(void);
    virtual unsigned int   VertexSize(void);
    virtual char          *VertexData(void);
    virtual unsigned int   IndexSize(void);
    virtual short         *IndexData(void);
    virtual unsigned int   VertexDescriptionParameter(void);
    virtual unsigned int   VertexParameter(void);
    virtual unsigned int   IndexParameter(void);
    virtual unsigned       Version(void);

    void SetVerbosity(int v) { mVerbosity = v; }

    virtual void DumpMemoryImage(unsigned int version, 
                                          unsigned int vertexdescriptionparam, 
                                          unsigned int vertexdescriptionsize, 
                                          char*        vertexdescription,
                                          unsigned int vertexparam, 
                                          unsigned int vertexsize, 
                                          char*        vertex,
                                          unsigned int indexparam, 
                                          unsigned int indexsize, 
                                          short*       index);


private:
    
    struct RuntimeDescription
    {
        unsigned int   offset;    // offset into index data for the start of the componets data
        unsigned char  item;      // GX_VA_POS etc.
        unsigned char  indextype; // GX_INDEX8, GX_INDEX18 or GX_DIRECT
        unsigned char  count;     // GX_POS_XYZ, etc.
        unsigned char  style;     // GX_F32, GX_U16, GX_S16, GX_U9, GX_S8, GX_RGBA8
        unsigned char  fraction;  // 5.3 would be a fraction of 3
        unsigned char  stride;    // byte count between index list items
        unsigned short itemcount; // used as pad & reference
    };

    void MemImage(void);   

    char *NameOfComponent(RuntimeDescription *desc);
    char *NameOfStyle(RuntimeDescription *desc);
    char *NameOfPrimitive(unsigned char gcDLCommand);
    int   DisplaylistSize(RuntimeDescription *desc);

    void  PrintVertexData(int componentcount, RuntimeDescription *comps, void *itemdata[]);

    float ConvertToFloat(RuntimeDescription *desc, void *&ptr);

    tlGCComponentQuantizer *mComponents[MaxPrimComponents];

    void BuildVertexDescription(void);
    void BuildVertexList(void);
    void BuildIndexList(void);


    bool  mLocked;
    char *mVertexDescription;
    int   mVertexDescriptionSize;   
    char *mVertexList;
    int   mVertexSize;
    char *mIndexList;
    int   mIndexSize;

    int   mCurrentVertex;
    int   mVertexCount;
    int   mUVCount;

    int   mVerbosity;

    pddiPrimType mPrimType;
    unsigned     mInputFormat;

};

#endif

