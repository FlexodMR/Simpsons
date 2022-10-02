//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "procedural.hpp"
#include "uvInfo.hpp"

#include <maya/MTime.h>

#include <listarray/listArray.hpp>

extern float frand( void );

//===========================================================================
// 
//  CRaindrop
// 
//===========================================================================

class CProceduralRaindrop : public CProcedural
{
public:
    CProceduralRaindrop( const CWaveInfo& info );
    virtual ~CProceduralRaindrop();

    CProceduralRaindrop( const CProceduralRaindrop& other );
    CProceduralRaindrop&  operator = ( const CProceduralRaindrop& other );

public:
    virtual void                ComputeUV( double now, double factor, MFloatArray& u, MFloatArray& v );

    double                      Seam( double seconds ) const;
};
 
//===========================================================================
// 
//  CRaindropCollection
// 
//===========================================================================

class CRaindropCollection
{
public:
    CRaindropCollection();
    ~CRaindropCollection();

    void                        AddRaindrop( double seconds, double maxLife, const CUVInfo& uvInfo );
    unsigned int                NumRaindrops( void ) const;
    unsigned int                NumNaturalRaindrops( void ) const;
    unsigned int                NumSeamlessRaindrops( void ) const;
    CProceduralRaindrop*        Raindrop( unsigned int index ) const;

    void                        Flush( double seconds );

    void                        CreateSeamless( double inTime, double outTime, unsigned int numRaindrops, const CUVInfo& uvInfo );

    void                        Clear( void );

protected:
    void                        CreateRaindrop( double seconds, double maxLife, const CUVInfo& uvInfo );

private:
    CListArray<CProceduralRaindrop>             mRaindrops;

    unsigned int                                mNumRaindrops;   // NOT seamless
    unsigned int                                mNumSeamlessRaindrops;   // added to guarantee seamless
};
