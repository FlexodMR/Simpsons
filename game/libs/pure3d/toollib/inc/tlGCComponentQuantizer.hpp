//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef _TLGCCOMPONENTQUANTIZER_HPP
#define _TLGCCOMPONENTQUANTIZER_HPP

#include <tlPoint.hpp>
#include <tlUV.hpp>
#include <tlColour.hpp>

enum PrimComponent { SkinInfo = 0, Coords, Normals, Colours, UV0, UV1, UV2, UV3, UV4, UV5, UV6, UV7 };
enum PrimComponentStyle { Auto, Float, SignedFixed, UnsignedFixed };
const int FractionAuto = 0xFF;

const int gcMaxSkinWeights  = 4;
const int gcSkinIndex0Axis  = 0;
const int gcSkinIndex1Axis  = 1;
const int gcSkinIndex2Axis  = 2;
const int gcSkinIndex3Axis  = 3;
const int gcSkinWeight0Axis = 4;
const int gcSkinWeight1Axis = 5;
const int gcSkinWeight2Axis = 6;
const int gcSkinWeight3Axis = 7;

//------------------------------------------------------------------------
class tlGCComponentQuantizer
{
 public:

    tlGCComponentQuantizer(int axiscount, PrimComponent type);
    virtual ~tlGCComponentQuantizer();

    void SetInputDataCount(int count);
    void SetInputData(int index, int axis, const float data);
    void SetInputData(int index, const tlPoint &p);
    void SetInputData(int index, const tlUV &p);
    void SetInputData(int index, const tlColour &colour);

    void SetStyle(PrimComponentStyle style);
    void SetBitsPerComponent(int bitcount);
    void SetFraction(int fraction);           // fraction of 3 for 8 bit would be 5.3

    int  BitsPerComponent(void)    { return mBitCount; }
    int  Fraction(void)            { return mFraction; }
    PrimComponentStyle Style(void) { return mComponentStyle; }

    unsigned char RuntimeStyle(void);
    unsigned char RuntimeStride(void);
    unsigned char IndexType(void); 

    void ForceIndexed(void);
    void ForceDeindexed(void);

    void BuildOutputData(tlGCComponentQuantizer *pairing);

    void DisplayListDataSize(int &numitems, int &itemsize, bool isforskin);
    void IndexDataSize(int &numitems, int &itemsize, bool isforskin);

    // Updates the data pointer, returns amount of data written
    int  GetDisplayListDataItem(int index, unsigned char *&data, bool isforskin);

    // Updates the data pointer, returns amount of data written
    int  GetIndexedData(unsigned char *&data, tlGCComponentQuantizer *pairing);

    int   AxisCount(void) { return mAxisCount; }

    int   InputDataCount(void) { return mInputDataCount; }
    float InputData(int index, int axis);
    float QuantizedInputData(int index, int axis);
    
    int   UniqueDataCount(bool isforskininfo = false);
    float UniqueData(int index, int axis);

    float MinValue(void) { return mMinValue; }
    float MaxValue(void) { return mMaxValue; }

    bool  Indexed(void)  { return mIsIndexed; }
    
    bool  IsEqual(int indexa, int indexb, float epsilon = 0.00001F);

    struct SkinWeight
    {
        unsigned char  weightcount;
        unsigned char  matrixindex[3];
        unsigned short weights[2];

//      bool operator==(const SkinWeight &b);   
    };

 private:

    void Quantize(void);
    void QuantizeSkinInfo(void);
    void ComputeFraction(void);

    void Unique(tlGCComponentQuantizer *pairing);
    
    void AddToUniqueList(int index);

    int  GetIndexedSkinData(unsigned char *&data, tlGCComponentQuantizer *pairing);
    


    PrimComponent      mComponent;
    PrimComponentStyle mComponentStyle;

    int     mAxisCount;
    float **mInputAxis;
    float **mQuantizedInputAxis;
    float **mQuantizedUniqueAxis;
    int    *mInputToUniqueIndex;
    int    *mUniqueToInputIndex;
    
    int     mInputDataCount;
    int     mUniqueDataCount;

    float mMinValue;
    float mMaxValue;
    
    int   mMinClamp;
    int   mMaxClamp;

    bool  mIsIndexed;
    bool  mForceIndexed;
    bool  mForceDeindexed;

    int   mBitCount;
    int   mFraction;
    bool  mNeedRebuild;
    bool  mNeedQuantizing;
    bool  mNeedUnique;

};


#endif // _TLGCCOMPONENTQUANTIZER_HPP


