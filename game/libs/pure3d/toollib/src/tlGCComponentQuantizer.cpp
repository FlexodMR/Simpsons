//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================




#include "tlGCComponentQuantizer.hpp"
#include "tlFile.hpp"

#include <float.h>
#include <string.h>
#include <assert.h>

#include "GXEnum.h"

//enum PrimComponent { SkinInfo = 0, Coords, Normals, Colours, UV0, UV1, UV2, UV3, UV4, UV5, UV6, UV7 };
//enum PrimComponentStyle { Auto, Float, SignedFixed, UnsignedFixed };
//const int FractionAuto = 0xFF;

const float MinPosValue = -1.0F / 65536.0F;

// return next power of two (i.e. smallest power of two greater than than or equal to i)
// taken from radmath util.hpp
int Log2(int i)
{
    if (i <= 0) return 0;

    int  result = 1;
    --i;
    while (i > 0)
    {
        result <<= 1;
        i >>= 1;
    }

    switch (result)
    {                      
        case     1: return  1;
        case     2: return  2;
        case     4: return  3;
        case     8: return  4;
        case    16: return  5;
        case    32: return  6;
        case    64: return  7;
        case   128: return  8;
        case   256: return  9;
        case   512: return 10;
        case  1024: return 11;
        case  2048: return 12;
        case  4096: return 13;
        case  8192: return 14;
        case 16384: return 15;
        case 32768: return 16;
        case 65536: return 17;
        default   : return  0;
    }
    return 0;
}


//**********************************************
//
// class tlGCComponentQuantizer
// Public constructor
//
//
tlGCComponentQuantizer::tlGCComponentQuantizer(int axiscount, PrimComponent type) :
    mComponent(type),
    mComponentStyle(Auto),
    mAxisCount(axiscount),
    mInputAxis(NULL),
    mQuantizedInputAxis(NULL),
    mQuantizedUniqueAxis(NULL),
    mInputToUniqueIndex(NULL),
    mUniqueToInputIndex(NULL),
    mInputDataCount(0),
    mUniqueDataCount(0),
    mMinValue(FLT_MAX),
    mMaxValue(FLT_MIN),
    mMinClamp(-32768),
    mMaxClamp(32767),
    mIsIndexed(false),
    mForceIndexed(false),
    mForceDeindexed(false),
    mBitCount(32),
    mFraction(0),
    mNeedRebuild(true),
    mNeedQuantizing(true),
    mNeedUnique(true)
{
    // Need at least 8 axis for skin stuff (4 weights, four indices
    if ((mComponent == SkinInfo) && (mAxisCount < 8)) mAxisCount = 8;

    mInputAxis           = new float*[mAxisCount];
    mQuantizedInputAxis  = new float*[mAxisCount];
    mQuantizedUniqueAxis = new float*[mAxisCount];

    int a;
    for (a = 0; a < mAxisCount; a++)
    {
        mInputAxis[a]           = NULL;
        mQuantizedInputAxis[a]  = NULL;
        mQuantizedUniqueAxis[a] = NULL;
    }

}


//**********************************************
//
// class tlGCComponentQuantizer
// Destructor
//
//
tlGCComponentQuantizer::~tlGCComponentQuantizer()
{
    int a;
    for (a = 0; a < mAxisCount; a++)
    {
        delete[] mInputAxis[a];
        delete[] mQuantizedInputAxis[a];
        delete[] mQuantizedUniqueAxis[a];
    }

    delete[] mInputAxis;
    delete[] mQuantizedInputAxis;
    delete[] mQuantizedUniqueAxis;

    delete[] mInputToUniqueIndex;
    delete[] mUniqueToInputIndex;

    mNeedRebuild = false;
    mNeedQuantizing = false;
    mNeedUnique = false;
}


//**********************************************
//
// class tlGCComponentQuantizer
// SetInputDataCount
//
//
void tlGCComponentQuantizer::SetInputDataCount(int count)
{
    mInputDataCount = count;

    int a;

    // delete the old data
    for (a = 0; a < mAxisCount; a++)
    {
        delete[] mInputAxis[a];
        delete[] mQuantizedInputAxis[a];
        delete[] mQuantizedUniqueAxis[a];
    }

    delete[] mInputToUniqueIndex;
    delete[] mUniqueToInputIndex;


    // alloc the new data
    for (a = 0; a < mAxisCount; a++)
    {
        mInputAxis[a]           = new float[mInputDataCount];
        mQuantizedInputAxis[a]  = new float[mInputDataCount];
        mQuantizedUniqueAxis[a] = new float[mInputDataCount];
    }

    mInputToUniqueIndex = new int[mInputDataCount];
    mUniqueToInputIndex = new int[mInputDataCount];

    // clear the data
    for (a = 0; a < mAxisCount; a++)
    {
        memset(mInputAxis[a],           0, sizeof(float) * mInputDataCount);
        memset(mQuantizedInputAxis[a],  0, sizeof(float) * mInputDataCount);
        memset(mQuantizedUniqueAxis[a], 0, sizeof(float) * mInputDataCount);
    }

    memset(mInputToUniqueIndex, 0, sizeof(int) * mInputDataCount);
    memset(mUniqueToInputIndex, 0, sizeof(int) * mInputDataCount);

    mMinValue = FLT_MAX;   
    mMaxValue = FLT_MIN;   

    mNeedRebuild = true;
    mNeedQuantizing = true;
    mNeedUnique = true;

}



//**********************************************
//
// class tlGCComponentQuantizer
// Set Input Data Float
//
//
void tlGCComponentQuantizer::SetInputData(int index, int axis, const float data)
{
    if ((index < mInputDataCount) && (axis < mAxisCount))
    {
        mInputAxis[axis][index] = data;

        if (data < mMinValue) mMinValue = data;   
        if (data > mMaxValue) mMaxValue = data;   

        mNeedRebuild    = true;
        mNeedQuantizing = true;
        mNeedUnique     = true;
    }
    else
    {
        printf("Ignoring input data %d %d %f\n", index, axis, data);
    }
}



//**********************************************
//
// class tlGCComponentQuantizer
// Set Input Data Float
//
//
void tlGCComponentQuantizer::SetInputData(int index, const tlPoint &p)
{
    if (mAxisCount > 3)
    {
        int a;
        for (a = 3; a < mAxisCount; a++) SetInputData(index, a, 0.0F);
    }

    SetInputData(index, 0, p.x);
    SetInputData(index, 1, p.y);
    SetInputData(index, 2, p.z);
}


//**********************************************
//
// class tlGCComponentQuantizer
// Set Input Data Float
//
//
void tlGCComponentQuantizer::SetInputData(int index, const tlUV &p)
{
    if (mAxisCount > 2)
    {
        int a;
        for (a = 2; a < mAxisCount; a++) SetInputData(index, a, 0.0F);
    }

    SetInputData(index, 0, p.u);
    SetInputData(index, 1, p.v);
}


//**********************************************
//
// class tlGCComponentQuantizer
// Set Input Data Float
//
//
void tlGCComponentQuantizer::SetInputData(int index, const tlColour &c)
{
    if (mAxisCount > 4)
    {
        int a;
        for (a = 4; a < mAxisCount; a++) SetInputData(index, a, 0.0F);
    }

    SetInputData(index, 0, c.red);
    SetInputData(index, 1, c.green);
    SetInputData(index, 2, c.blue);
    SetInputData(index, 3, c.alpha);
}



//**********************************************
//
// class tlGCComponentQuantizer
// Set Style
//
//
void tlGCComponentQuantizer::SetStyle(PrimComponentStyle style)
{
    mComponentStyle = style;
    mNeedRebuild = true;
    mNeedQuantizing = true;
    mNeedUnique = true;
}



//**********************************************
//
// class tlGCComponentQuantizer
// Set Bits Per Component
//
//
void tlGCComponentQuantizer::SetBitsPerComponent(int bitcount)
{
    mBitCount = bitcount;
    mNeedRebuild = true;
    mNeedQuantizing = true;
    mNeedUnique = true;
}



//**********************************************
//
// class tlGCComponentQuantizer
// Set Fraction
//
//
void tlGCComponentQuantizer::SetFraction(int fraction)
{
    mFraction = fraction;
    mNeedRebuild = true;
    mNeedQuantizing = true;
    mNeedUnique = true;
}



//**********************************************
//
// class tlGCComponentQuantizer
// Force indexed
//
//
void tlGCComponentQuantizer::ForceIndexed(void)
{
    mForceIndexed = true;
    mForceDeindexed = false;
    mNeedRebuild = true;
}



//**********************************************
//
// class tlGCComponentQuantizer
// Force Deindexed
//
//
void tlGCComponentQuantizer::ForceDeindexed(void)
{
    mForceIndexed = false;
    mForceDeindexed = true;
    mNeedRebuild = true;
}


//**********************************************
//
// class tlGCComponentQuantizer
// IndexType
//
//
unsigned char tlGCComponentQuantizer::IndexType(void)
{
    if (!mIsIndexed) return GX_DIRECT;

    if (mUniqueDataCount < 255) return GX_INDEX8;

    return GX_INDEX16;
}



//**********************************************
//
// class tlGCComponentQuantizer
// Runtime Style
//
//
unsigned char tlGCComponentQuantizer::RuntimeStyle(void)
{
    if (mComponent != Colours)
    {
        if  (mBitCount == 32)                                        return GX_F32;
        if  (mBitCount ==  1)                                        return GX_F32; // For Porcupine normals
        if ((mBitCount == 16) && (mComponentStyle == SignedFixed))   return GX_S16;
        if ((mBitCount == 16) && (mComponentStyle == UnsignedFixed)) return GX_U16;
        if ((mBitCount ==  8) && (mComponentStyle == SignedFixed))   return GX_S8;
        if ((mBitCount ==  8) && (mComponentStyle == UnsignedFixed)) return GX_U8;
        
    }
    else
    {
        if (mBitCount == 32) return GX_RGBA8;
        if (mBitCount == 24) return GX_RGBA6; // The 24 & 16 bit are invalid types
        if (mBitCount == 16) return GX_RGBA4;
        if (mBitCount ==  1) return GX_RGBA8; // For greyscale indexed colours
    }

    return GX_F32;
}


//**********************************************
//
// class tlGCComponentQuantizer
// Runtime Stride
//
//
unsigned char tlGCComponentQuantizer::RuntimeStride(void)
{
    if (!mIsIndexed) return 0;

    if (mBitCount == 1)
    {
        if (mComponent == Normals) return 12; // Porcupine stride is 12 bytes
        if (mComponent == Colours) return  4; // greyscale colours are 4 bytes each
    }

    if (mComponent == Colours) return mBitCount / 8;

    return (mAxisCount * mBitCount) / 8;
}




//**********************************************
//
// class tlGCComponentQuantizer
// IndexType
//
//
int tlGCComponentQuantizer::UniqueDataCount(bool isskininfo)
{
    // Porcupine normals/Greyscale colours have no unique data
    if (!isskininfo && (mBitCount == 1)) return 0;
    return mUniqueDataCount;
}



//**********************************************
//
// class tlGCComponentQuantizer
// Build Output data
//
//
void tlGCComponentQuantizer::BuildOutputData(tlGCComponentQuantizer *pairing)
{
    if (!mNeedRebuild) return;
    mNeedRebuild = false;

    if (pairing != NULL) pairing->Quantize();   
    Quantize();

    Unique(pairing);

    // determine if the the data should be indexed or deindexed
    if (mForceIndexed || (mBitCount == 1))
    {
        mIsIndexed = true;
    }
    else if (mForceDeindexed)
    {
        mIsIndexed = false;
    }
    else
    {
        int additional_cost = 32; // Make indexed data account for malloc overhead + some extra

        int indexsize = (mUniqueDataCount > 254) ? 2 : 1;
        int indexedsize = additional_cost + (indexsize * mInputDataCount) + (((mBitCount * mAxisCount) / 8) * mUniqueDataCount);

        int deindexedsize = ((mBitCount * mAxisCount) / 8) * mInputDataCount;

        mIsIndexed = (indexedsize <= deindexedsize) ? true : false;
    }
}



//**********************************************
//
// class tlGCComponentQuantizer
// Display List Data Size
//
//
void tlGCComponentQuantizer::DisplayListDataSize(int &numitems, int &itemsize, bool isforskin)
{
    numitems = mInputDataCount;

    if (mIsIndexed)
    {
        // FIXME: Handle more than 255 normals used by skin renderer
        // Handle porcupine/greyscale stuff
        if (!isforskin && (mBitCount == 1)) itemsize = 1;
        else                                itemsize = (mUniqueDataCount > 254) ? 2 : 1;
    }
    else
    {
        if (mComponent != Colours) itemsize = (mBitCount * mAxisCount) / 8;
        else                       itemsize = mBitCount / 8;
    }
}


//**********************************************
//
// class tlGCComponentQuantizer
// Index Data Size
//
//
void tlGCComponentQuantizer::IndexDataSize(int &numitems, int &itemsize, bool isforskin)
{
    if (mIsIndexed)
    {
        // FIXME: Handle porcupine/greyscale stuff
        if (mBitCount == 1)
        {
            numitems = 0;
            itemsize = 0;
        }
        else
        {
            numitems = 1;
            itemsize = (mUniqueDataCount * mBitCount * mAxisCount) / 8;
            if (mComponent == Colours) itemsize /= mAxisCount;
        }
    }
    else
    {
        numitems = 0;
        itemsize = 0;
    }   
}




//**********************************************
//
// class tlGCComponentQuantizer
// GetDisplayListDataItem
//
//
int tlGCComponentQuantizer::GetDisplayListDataItem(int index, unsigned char *&data, bool isforskin)
{
    int numitems, itemsize;
    DisplayListDataSize(numitems, itemsize, isforskin);

    if (index >= numitems) return 0;

    if (mIsIndexed)
    {
        // Porcupine/Greyscale
        if (mBitCount == 1)
        {
            if (mComponent == Normals)
            {
                // FIXME  Check ranges of axis
                tlPoint p;
                p.x = mInputAxis[0][index];
                p.y = mInputAxis[1][index];
                p.z = mInputAxis[2][index];
                *data = p.NormalNumber();
            }
            else if (mComponent == Colours)
            {
                float avg = (mInputAxis[0][index] + mInputAxis[1][index] + mInputAxis[2][index]) / 3.0F;
                if (avg > 1.0F) avg = 1.0F;
                *data = (unsigned char) (avg * 255.0F);
            }
        }
        // Uniqued quantized data
        else
        {
            if (itemsize == 1)
            {
                *data = (unsigned char)(mInputToUniqueIndex[index] & 0xFF);
            }
            else
            {
                unsigned short *us = (unsigned short *)data;
                *us = SwapWord((unsigned short)(mInputToUniqueIndex[index] & 0xFFFF));
            }
        }
    }
    else // Deindexed
    {
        int a;

        // All float deindexed data is handled the same
        if (mBitCount == 32)
        {
            if (mComponent != Colours)
            {
                float *f = (float *) data;
                for (a = 0; a < mAxisCount; a++) f[a] = SwapFloat(mInputAxis[a][index]);
            }
            else
            {
                for (a = 0; a < mAxisCount; a++) data[a] = (unsigned char) mQuantizedInputAxis[a][index];
            }
        }
        // handle signed deindexed values
        else if (mMinValue < MinPosValue)
        {
            if (mBitCount == 16)
            {
                short *s = (short *) data;
                for (a = 0; a < mAxisCount; a++) s[a] = SwapWord((short)mQuantizedInputAxis[a][index]);
            }
            else // mBitCount == 8
            {
                char *c = (char *) data;
                for (a = 0; a < mAxisCount; a++) c[a] = (char)mQuantizedInputAxis[a][index];
            }
        }
        else  // handle unsigned deindexed values
        {
            if (mBitCount == 16)
            {
                unsigned short *s = (unsigned short *) data;
                for (a = 0; a < mAxisCount; a++) s[a] = SwapWord((unsigned short)mQuantizedInputAxis[a][index]);
            }
            else // mBitCount == 8
            {
                unsigned char *c = (unsigned char *) data;
                for (a = 0; a < mAxisCount; a++) c[a] = (unsigned char)mQuantizedInputAxis[a][index];
            }
        }
    }

    data += itemsize;
    return itemsize;
}



//**********************************************
//
// class tlGCComponentQuantizer
// GetIndexedData
//
//
int tlGCComponentQuantizer::GetIndexedData(unsigned char *&data, tlGCComponentQuantizer *pairing)
{
    // Easier to handle skinned data seperatly
    if (mComponent == SkinInfo)
    {
        return GetIndexedSkinData(data, pairing);
    }

    bool isforskin = false;
    if ((pairing != NULL) && (pairing->mComponent == SkinInfo)) isforskin = true;

    if (!mIsIndexed)    return 0;
    if (mBitCount == 1) return 0; // Normal porcupine & greyscale have no unique data

    int numitems, itemsize;
    IndexDataSize(numitems, itemsize, isforskin);
    
    int i, a;

    // All float data is handled the same
    // Always use unquantized data
    if (mBitCount == 32)
    {
        if (mComponent != Colours)
        {
            float *f = (float *) data;
            for (i = 0; i < mUniqueDataCount; i++)
            {
                for (a = 0; a < mAxisCount; a++) 
                {
                    *f = SwapFloat(mQuantizedUniqueAxis[a][i]);
                    ++f;
                }
            }
        }
        else // Colours
        {
            unsigned char *c = (unsigned char *) data;
            for (i = 0; i < mUniqueDataCount; i++)
            {
                for (a = 0; a < mAxisCount; a++) 
                {
                    *c = (unsigned char) mQuantizedUniqueAxis[a][i];
                    ++c;
                }
            }
        }
    }
    // handle signed values
    else if (mMinValue < MinPosValue)
    {
        if (mBitCount == 16)
        {
            short *s = (short *) data;
            for (i = 0; i < mUniqueDataCount; i++)
            {
                for (a = 0; a < mAxisCount; a++) 
                {
                    *s = SwapWord((short)mQuantizedUniqueAxis[a][i]);
                    ++s;
                }
            }
        }
        else // mBitCount == 8
        {
            char *c = (char *) data;
            for (i = 0; i < mUniqueDataCount; i++)
            {
                for (a = 0; a < mAxisCount; a++) 
                {
                    *c = (char)mQuantizedUniqueAxis[a][i];
                    ++c;
                }
            }
        }
    }
    else  // handle unsigned values
    {
        if (mBitCount == 16)
        {
            unsigned short *s = (unsigned short *) data;
            for (i = 0; i < mUniqueDataCount; i++)
            {
                for (a = 0; a < mAxisCount; a++)
                {
                    *s = SwapWord((unsigned short)mQuantizedUniqueAxis[a][i]);
                    ++s;
                }
            }
        }
        else // mBitCount == 8
        {
            unsigned char *c = (unsigned char *) data;
            for (i = 0; i < mUniqueDataCount; i++)
            {
                for (a = 0; a < mAxisCount; a++)
                {
                    *c = (unsigned char)mQuantizedUniqueAxis[a][i];
                    ++c;
                }
            }
        }
    }

    data += (numitems * itemsize);
    return numitems * itemsize;
}


//**********************************************
//
// class tlGCComponentQuantizer
// GetIndexedSkinData
//
//
int tlGCComponentQuantizer::GetIndexedSkinData(unsigned char *&data, tlGCComponentQuantizer *pairing)
{
    // Need the position or normal info for skinning info
    if (pairing == NULL) return 0;

    SkinWeight *weights = (SkinWeight *) data;

    int i;
    for (i = 0; i < pairing->mUniqueDataCount; i++)
    {
        int index = pairing->mUniqueToInputIndex[i];

        weights[i].weightcount = 1;
        if (mQuantizedInputAxis[gcSkinWeight1Axis][index] > 0.0F) weights[i].weightcount = 2;
        if (mQuantizedInputAxis[gcSkinWeight2Axis][index] > 0.0F) weights[i].weightcount = 3;

        weights[i].weights[0] = SwapWord((short)mQuantizedInputAxis[gcSkinWeight0Axis][index]);
        weights[i].weights[1] = SwapWord((short)mQuantizedInputAxis[gcSkinWeight1Axis][index]);

        weights[i].matrixindex[0] = (unsigned char)mQuantizedInputAxis[gcSkinIndex0Axis][index];
        weights[i].matrixindex[1] = (unsigned char)mQuantizedInputAxis[gcSkinIndex1Axis][index];
        weights[i].matrixindex[2] = (unsigned char)mQuantizedInputAxis[gcSkinIndex2Axis][index];
    }

    int datasize = pairing->mUniqueDataCount * sizeof(SkinWeight);
    data += datasize;
    return datasize;
}





//**********************************************
//
// class tlGCComponentQuantizer
// Quantize
//
//
void tlGCComponentQuantizer::Quantize(void)
{
    if (!mNeedQuantizing) return;
    mNeedQuantizing = false;


    // Skin info quantizing is special
    if (mComponent == SkinInfo)
    {
        QuantizeSkinInfo();
        return;
    }

    ComputeFraction();

    float scale = (float) (1 << mFraction);

    // only do the work if the output data isn't floats
    if (mBitCount == 32)
    {
        if (mComponent != Colours)
        {
            int axis;
            for (axis = 0; axis < mAxisCount; axis++)
            {
                int index;
                for (index = 0; index < mInputDataCount; index++)
                {
                    mQuantizedInputAxis[axis][index] = mInputAxis[axis][index];
                }
            }
        }
        else // Colours
        {
            int axis;
            for (axis = 0; axis < mAxisCount; axis++)
            {
                int index;
                for (index = 0; index < mInputDataCount; index++)
                {
                    int q = (int) (mInputAxis[axis][index] * 255.0F);
                    if (q < 0)   q = 0;
                    if (q > 255) q = 255;
                    mQuantizedInputAxis[axis][index] = (float) q;
                }
            }
        }
    }
    else if (mBitCount > 1)
    {
        int axis;
        for (axis = 0; axis < mAxisCount; axis++)
        {
            int index;
            for (index = 0; index < mInputDataCount; index++)
            {
                int q = (int) (mInputAxis[axis][index] * scale);
                if (mInputAxis[axis][index] < MinPosValue)
                {
                    q = (int) (-0.5F + (mInputAxis[axis][index] * scale));
                }

                mQuantizedInputAxis[axis][index] = (float) q;
            }
        }
    }
    else // (mBitCount == 1)   handle special case porcupine/greyscale
    {
        if (mComponent == Normals)
        {
            int index;
            for (index = 0; index < mInputDataCount; index++)
            {
                tlPoint a(mInputAxis[0][index], mInputAxis[1][index], mInputAxis[2][index]);
                int normalnum = a.NormalNumber();

                int axis;
                for (axis = 0; axis < mAxisCount; axis++)
                {
                    mQuantizedInputAxis[axis][index] = (float) normalnum;
                }
            }
        }
        else if (mComponent == Colours)
        {

/******
        // From original implementtion, add to code later 
        for (a = 0; a < mVertexCount; a++)
        {
            float avg = (mInputColour[a].red + mInputColour[a].green + mInputColour[a].blue) / 3.0F;
            float rdiff = fabsf(avg - mInputColour[a].red);
            float gdiff = fabsf(avg - mInputColour[a].green);
            float bdiff = fabsf(avg - mInputColour[a].blue);

            if (rdiff > 0.05F) colourhashue = true;
            if (gdiff > 0.05F) colourhashue = true;
            if (bdiff > 0.05F) colourhashue = true;

            if (mInputColour[a].alpha < 0.95F)
            {
                colourhasalpha = true;
            }

            if (colourhasalpha && colourhashue) break;
        }   

    // If colour has alpha, you can't have the greyscale compression.
    if ((mComponentDescription[Colours].size == 1) && colourhasalpha)
    {
        printf("Warning:  Vertex colour has alpha and greyscale was requested, using 32 bit colours.\n");
        mComponentDescription[Colours].size = 32;
    }

    // If colour has alpha, you can't have the greyscale compression.
    if ((mComponentDescription[Colours].size == 1) && colourhashue)
    {
        printf("Warning:  Vertex colour has hue and greyscale was requested, using 32 bit colours.\n");
        mComponentDescription[Colours].size = 32;
    }


********/
            int index;
            for (index = 0; index < mInputDataCount; index++)
            {
                float avg = (mInputAxis[0][index] + mInputAxis[1][index] + mInputAxis[2][index]) / 3.0F;
                
                int iavg = (int) (avg * 255.0F);

                int axis;
                for (axis = 0; axis < mAxisCount; axis++)
                {
                    mQuantizedInputAxis[axis][index] = ((float)iavg) / 255.0F;
                }
            }
        }
    }
}



//**********************************************
//
// class tlGCComponentQuantizer
// QuantizeSkinInfo
//
//
void tlGCComponentQuantizer::QuantizeSkinInfo(void)
{

    const float WeightTotal = 32768.0F;

    int index;
    for (index = 0; index < mInputDataCount; index++)
    {
        float total;
        total  = mInputAxis[gcSkinWeight0Axis][index];
        total += mInputAxis[gcSkinWeight1Axis][index];
        total += mInputAxis[gcSkinWeight2Axis][index];
        float scale = WeightTotal / total;


        int axis;
        int itotal = 0;
        for (axis = gcSkinWeight0Axis; axis < gcSkinWeight3Axis; axis++)
        {
            int q = (int) (0.5F + (mInputAxis[axis][index] * scale));
            itotal += q;
            mQuantizedInputAxis[axis][index] = (float) q;
        }

        // Mkae sure nothing really bad happened
        assert(total <= (int)WeightTotal);

        // make total equal to unity by adding to weight zero
        float adjust = (float)(((int) WeightTotal) - itotal);
        mQuantizedInputAxis[gcSkinWeight0Axis][index] += adjust;
        assert(mQuantizedInputAxis[gcSkinWeight0Axis][index] <= WeightTotal);

        // Currently skins have only 3 weights
        mInputAxis[gcSkinWeight3Axis][index] = 0.0F;
        mQuantizedInputAxis[gcSkinWeight3Axis][index] = 0.0F;
        // Don't forget to blank out the index as well
        mInputAxis[gcSkinIndex3Axis][index] = 0.0F;

        // copy over the indices to the quantized array
        mQuantizedInputAxis[gcSkinIndex0Axis][index] = mInputAxis[gcSkinIndex0Axis][index];
        mQuantizedInputAxis[gcSkinIndex1Axis][index] = mInputAxis[gcSkinIndex1Axis][index];
        mQuantizedInputAxis[gcSkinIndex2Axis][index] = mInputAxis[gcSkinIndex2Axis][index];
        mQuantizedInputAxis[gcSkinIndex3Axis][index] = mInputAxis[gcSkinIndex3Axis][index];
    }
}



//*************************************************************
//
// Class tlGCPrimBuffer
// Compute Fraction
//
//
void tlGCComponentQuantizer::ComputeFraction(void)
{

    // Map fixed style into description if type is auto 
    if (mComponentStyle == Auto) 
    {
        mComponentStyle = UnsignedFixed;
        if ((mMinValue < MinPosValue) || (mComponent == Normals)) 
        {
            mComponentStyle = SignedFixed;
        }
    }

    float range = mMaxValue;
    if (fabs(mMinValue) > range) range = fabsf(mMinValue);

    int log2 = Log2((int) ceilf(range));
    if (mComponentStyle == SignedFixed) ++log2;

    while ((log2 > mBitCount) && (mComponentStyle != Float) && (mBitCount != 1))
    {
        // at this point log2 is greater then the number of bits for the size,
        // bump it up and try again

        //printf("Warning: %ss do not fit in a %d bit %s number, bumping up size to", NameOfComponent(desc), desc->size, NameOfStyle(desc));

        if (mBitCount == 16)
        {
            mBitCount = 32;
            mComponentStyle = Float;
            //printf(" 32 bit %s.\n", NameOfStyle(desc));
        }
        else if (mBitCount == 8) 
        {
            mBitCount = 16;
            //printf(" 16 bit %s.\n", NameOfStyle(desc));
        }
    }

    switch (mBitCount)
    {
        case 32:
            mComponentStyle = Float;
            mFraction = 0;
            break;

        case 16:
            if (mComponent == Normals) mFraction = 14;
            else                       mFraction = 16 - log2;
            break;

        case 8:
            if (mComponent == Normals) mFraction = 6;
            else                       mFraction = 8 - log2;
            break;

        // Special case for normal porcupine
        case 1:
            mComponentStyle = Float;
            mFraction = 0xFF;
            break;
    }         

}



//**********************************************
//
// class tlGCComponentQuantizer
// Unique
//
//
void tlGCComponentQuantizer::Unique(tlGCComponentQuantizer *pairing)
{
    if (!mNeedUnique) return;

    mNeedUnique = false;
    mUniqueDataCount = 0;

    if (pairing != NULL) 
    {
        pairing->mNeedUnique = false;
        pairing->mUniqueDataCount = 0;
    }

    int index;
    bool unique = true;
    for (index = 0; index < mInputDataCount; index++)
    {
//      printf("%d  ", index);
//      int a;
//      for (a = 0; a < mAxisCount; a++) printf("%.3f  ", mQuantizedInputAxis[a][index]);
//      printf("\n");

        unique = true;
        int b;

        if (pairing == NULL)
        {
            for (b = 0; b < mUniqueDataCount; b++)
            {
                if (IsEqual(index, b))
                {
                    unique = false;
                    break;
                }
            }
        }
        else
        {
            for (b = 0; b < mUniqueDataCount; b++)
            {
                if (IsEqual(index, b) && pairing->IsEqual(index, b))
                {
                    unique = false;
                    break;
                }
            }
        }

        if (unique)
        {
            //printf("Index %d is unique\n", index);

            AddToUniqueList(index);
            if (pairing != NULL) pairing->AddToUniqueList(index);
        }
        else
        {
            //printf("Index %d is shared with %d\n", index, b);
            mInputToUniqueIndex[index] = b;
            if (pairing != NULL) pairing->mInputToUniqueIndex[index] = b;
        }
    }
}


//**********************************************
//
// class tlGCComponentQuantizer
// Add to Unique List
//
//
void tlGCComponentQuantizer::AddToUniqueList(int index)
{
    int axis;
    for (axis = 0; axis < mAxisCount; axis++)
    {
        mQuantizedUniqueAxis[axis][mUniqueDataCount] = mQuantizedInputAxis[axis][index];
    }

    mInputToUniqueIndex[index] = mUniqueDataCount;
    mUniqueToInputIndex[mUniqueDataCount] = index;
    ++mUniqueDataCount;
}



//**********************************************
//
// class tlGCComponentQuantizer
// IsEqual
//
//
bool tlGCComponentQuantizer::IsEqual(int indexa, int indexb, float epsilon)
{
    //if (indexa == indexb) return true;
    //if (indexa < 0) return false;
    //if (indexb < 0) return false;

    //if (indexa >= mInputDataCount) return false;
    //if (indexb >= mInputDataCount) return false;

    //if (mNeedQuantizing) Quantize();

//   return false;

    int axis;
    for (axis = 0; axis < mAxisCount; axis++)
    {
        float diff = fabsf(mQuantizedInputAxis[axis][indexa] - mQuantizedUniqueAxis[axis][indexb]);
        if (diff > epsilon) return false;
    }

    return true;
}




