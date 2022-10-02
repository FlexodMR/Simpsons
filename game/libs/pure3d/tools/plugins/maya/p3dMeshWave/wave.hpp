//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "procedural.hpp"

#include <maya/MTime.h>
#include <maya/MPoint.h>
#include <maya/MVector.h>

class CProceduralWave : public CProcedural
{
public:
    CProceduralWave( const CWaveInfo& info );
    CProceduralWave( const CProceduralWave& other );
    virtual ~CProceduralWave();

    virtual void                ComputeUV( double now, double factor, MFloatArray& u, MFloatArray& v );
    
    void                        MakeSeamless( double startTime, double endTime, double timeAmplitude );

    CProceduralWave&            operator = ( const CProceduralWave& other );

public:
};
