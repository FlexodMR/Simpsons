//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     23 August, 2002
// Modified:    23 August, 2002
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
#ifndef __TLSHADERANIM_HPP_
#define __TLSHADERANIM_HPP_

//===========================================================================
// Nested Includes
//===========================================================================

#include "tlChannel.hpp"
#include "tlAnimation.hpp"

//===========================================================================
// Forward References
//===========================================================================

class tlKey;
class tlKeyColour;
class tlKey3DOF;
class tlKey1DOF;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class tlShaderAnim : public tlAnimation
{
// Constructor / Destructor
public:
    tlShaderAnim();
    tlShaderAnim(tlDataChunk *ch);
    ~tlShaderAnim();

public:

    tlAnimation*                Clone( void ) const;

    void                        CreateColourChannel( const tlFourCC& fourCC, int numKeys, bool bInterpolate = true );
    void                        CreateVectorChannel( const tlFourCC& fourCC, int numKeys, bool bInterpolate = true );
    void                        CreateBoolChannel( const tlFourCC& fourCC, int numKeys, bool bInterpolate = true );
    void                        CreateIntChannel( const tlFourCC& fourCC, int numKeys, bool bInterpolate = true );
    void                        CreateFloatChannel( const tlFourCC& fourCC, int numKeys, bool bInterpolate = true );

    tlColourChannel*            GetColourChannel( const tlFourCC& fourCC );
    tlVectorChannel*            GetVectorChannel( const tlFourCC& fourCC );
    tlBoolChannel*              GetBoolChannel( const tlFourCC& fourCC );
    tlIntChannel*               GetIntChannel( const tlFourCC& fourCC );
    tlFloat1Channel*            GetFloatChannel( const tlFourCC& fourCC );

    bool                        DeleteColourChannel( const tlFourCC& fourCC );
    bool                        DeleteVectorChannel( const tlFourCC& fourCC );
    bool                        DeleteBoolChannel( const tlFourCC& fourCC );
    bool                        DeleteIntChannel( const tlFourCC& fourCC );
    bool                        DeleteFloatChannel( const tlFourCC& fourCC );

    void                        SetColourKey( const tlFourCC& fourCC, int keynum, const tlColour& key );
    void                        SetVectorKey( const tlFourCC& fourCC, int keynum, const tlPoint& key );
    void                        SetBoolKey( const tlFourCC& fourCC, int keynum, bool value );
    void                        SetIntKey( const tlFourCC& fourCC, int keynum, int key );
    void                        SetFloatKey( const tlFourCC& fourCC, int keynum, float key );

    void                        RemoveStaticChannels( void );

protected:
    // No protected members.
    tlAnimationGroup*           GetAnimationGroup( void );

private:

    enum ShaderAnimTypeEnum
    {
        kShaderTypeColour = 0,
        kShaderTypeVector,
        kShaderTypeBool
    };

};

//===========================================================================
// Inlines
//===========================================================================

#endif      // __TLSHADERANIM_HPP_
