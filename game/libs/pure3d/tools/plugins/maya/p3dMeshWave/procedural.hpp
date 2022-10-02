//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     27 May, 2002
// Modified:    27 May, 2002
// Version:     
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PROCEDURAL_H  
#define __PROCEDURAL_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MFloatArray.h>

#include "waveInfo.hpp"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class CProcedural
{
public:
    CProcedural( const CWaveInfo& info );
    CProcedural( const CProcedural& other );
    virtual ~CProcedural();

    virtual void                ComputeUV( double now, double factor, MFloatArray& u, MFloatArray& v ) = 0;
    virtual bool                IsAlive( double now ) const;

    static void                 NormalizeUVs( MFloatArray& u, MFloatArray& v );

    CProcedural&                operator = ( const CProcedural& other );

public:
    CWaveInfo                   mInfo;

};

//===========================================================================
// Inlines
//===========================================================================

#endif // __PROCEDURAL_H  
