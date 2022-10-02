//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     28 June, 2002
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
#ifndef __GANGCHANNELS_H  
#define __GANGCHANNELS_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MString.h>
#include <maya/MPlug.h>
#include <maya/MDGModifier.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class CGangChannels
{
public:
   
    enum Channel
    {
        kRed = 0,
        kGreen,
        kBlue,
        kAlpha
    };

    bool                        SetVertexColor( MPlug& vcR, CGangChannels::Channel channel );
    void                        GetVertexColor( MString& vertexColor, CGangChannels::Channel channel );

    bool                        Has( Channel channel );

    MStatus                     DisconnectVertexColor( MPlug& vc, MDGModifier* pModifier, bool bDoIt = true );
    bool                        ConnectVertexColor( MPlug& vc, CGangChannels::Channel channel, MDGModifier* pModifier, bool bDoIt = true );

    MObject                     GetMObject( CGangChannels::Channel channel, MStatus* pStatus = NULL );

    friend ostream&             operator << ( ostream& os, const CGangChannels& gang );

private:
    MString                     mVertexColor[4];
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __GANGCHANNELS_H 
