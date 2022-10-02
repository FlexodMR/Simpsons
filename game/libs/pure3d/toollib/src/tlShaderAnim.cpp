//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     23 August, 2002
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
//===========================================================================
// Includes
//===========================================================================

#include "tlShaderAnim.hpp"
#include "tlTranAnimKeys.hpp"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

tlShaderAnim::tlShaderAnim()
{
    SetAnimationType( Pure3DAnimationTypes::SHADER_SHAD );
}

tlShaderAnim::tlShaderAnim( tlDataChunk* pChunk )
{
    switch ( pChunk->ID())
    {
        case Pure3D::Animation::AnimationData::ANIMATION:
        {
            LoadFromChunk( pChunk);
            assert( GetAnimationType()==Pure3DAnimationTypes::SHADER_SHAD );
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }

    SetAnimationType( Pure3DAnimationTypes::SHADER_SHAD );
}

tlShaderAnim::~tlShaderAnim()
{
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

tlAnimation* tlShaderAnim::Clone( void ) const
{
    return new tlShaderAnim(*this);
}

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

tlAnimationGroup* tlShaderAnim::GetAnimationGroup( void )
{
    tlAnimationGroup* pGrp = tlAnimation::GetAnimationGroup(0);
    if (!pGrp)
    {
        pGrp = AddAnimationGroup(0,GetName());
    }
    return pGrp;
}

void tlShaderAnim::CreateColourChannel( const tlFourCC& fourCC, int numKeys, bool bInterpolate )
{
    GetAnimationGroup()->CreateColourChannel(fourCC, numKeys);
    GetAnimationGroup()->GetColourChannel( fourCC )->EnableInterpolation( bInterpolate );
}

void tlShaderAnim::CreateVectorChannel( const tlFourCC& fourCC, int numKeys, bool bInterpolate )
{
    GetAnimationGroup()->CreateVectorChannel(fourCC, numKeys);
    GetAnimationGroup()->GetVectorChannel( fourCC )->EnableInterpolation( bInterpolate );
}

void tlShaderAnim::CreateBoolChannel( const tlFourCC& fourCC, int numKeys, bool bInterpolate )
{
    GetAnimationGroup()->CreateBoolChannel(fourCC, numKeys);
    GetAnimationGroup()->GetBoolChannel( fourCC )->EnableInterpolation( bInterpolate );
}

void tlShaderAnim::CreateIntChannel( const tlFourCC& fourCC, int numKeys, bool bInterpolate )
{
    GetAnimationGroup()->CreateIntChannel(fourCC, numKeys);
    GetAnimationGroup()->GetIntChannel( fourCC )->EnableInterpolation( bInterpolate );
}

void tlShaderAnim::CreateFloatChannel( const tlFourCC& fourCC, int numKeys, bool bInterpolate )
{
    GetAnimationGroup()->CreateFloat1Channel(fourCC, numKeys);
    GetAnimationGroup()->GetFloat1Channel( fourCC )->EnableInterpolation( bInterpolate );
}

tlColourChannel* tlShaderAnim::GetColourChannel( const tlFourCC& fourCC )
{
    if ( !GetAnimationGroup() ) return NULL;
    return GetAnimationGroup()->GetColourChannel( fourCC );
}

tlVectorChannel* tlShaderAnim::GetVectorChannel( const tlFourCC& fourCC )
{
    if ( !GetAnimationGroup() ) return NULL;
    return GetAnimationGroup()->GetVectorChannel( fourCC );
}

tlBoolChannel*   tlShaderAnim::GetBoolChannel( const tlFourCC& fourCC )
{
    if ( !GetAnimationGroup() ) return NULL;
    return GetAnimationGroup()->GetBoolChannel( fourCC );
}

tlIntChannel*   tlShaderAnim::GetIntChannel( const tlFourCC& fourCC )
{
    if ( !GetAnimationGroup() ) return NULL;
    return GetAnimationGroup()->GetIntChannel( fourCC );
}

tlFloat1Channel*   tlShaderAnim::GetFloatChannel( const tlFourCC& fourCC )
{
    if ( !GetAnimationGroup() ) return NULL;
    return GetAnimationGroup()->GetFloat1Channel( fourCC );
}

bool tlShaderAnim::DeleteColourChannel( const tlFourCC& fourCC )
{
    if ( !GetAnimationGroup() ) return false;
    GetAnimationGroup()->DeleteColourChannel( fourCC );
    return true;
}

bool tlShaderAnim::DeleteVectorChannel( const tlFourCC& fourCC )
{
    if ( !GetAnimationGroup() ) return false;
    GetAnimationGroup()->DeleteVectorChannel( fourCC );
    return true;
}

bool tlShaderAnim::DeleteBoolChannel( const tlFourCC& fourCC )
{
    if ( !GetAnimationGroup() ) return false;
    GetAnimationGroup()->DeleteBoolChannel( fourCC );
    return true;
}

bool tlShaderAnim::DeleteIntChannel( const tlFourCC& fourCC )
{
    if ( !GetAnimationGroup() ) return false;
    GetAnimationGroup()->DeleteIntChannel( fourCC );
    return true;
}

bool tlShaderAnim::DeleteFloatChannel( const tlFourCC& fourCC )
{
    if ( !GetAnimationGroup() ) return false;
    GetAnimationGroup()->DeleteFloat1Channel( fourCC );
    return true;
}

void tlShaderAnim::SetColourKey( const tlFourCC& fourCC, int keynum, const tlColour& key )
{
    tlColourChannel* pColour = GetColourChannel( fourCC );
    if ( pColour )
    {
        pColour->SetKey( keynum, keynum, key );
    }

}

void tlShaderAnim::SetVectorKey( const tlFourCC& fourCC, int keynum, const tlPoint& key )
{
    tlVectorChannel* pVector = GetVectorChannel( fourCC );
    if ( pVector)
    {
        pVector->SetKey( keynum, keynum, key );
    }

}

void tlShaderAnim::SetBoolKey( const tlFourCC& fourCC, int keynum, bool value )
{
    tlBoolChannel* pChannel = GetBoolChannel( fourCC );
    if ( pChannel )
    {
        pChannel->SetKey( keynum, keynum, value );
    }

}

void tlShaderAnim::SetIntKey( const tlFourCC& fourCC, int keynum, int value )
{
    tlIntChannel* pChannel = GetIntChannel( fourCC );
    if ( pChannel )
    {
        pChannel->SetKey( keynum, keynum, value );
    }

}

void tlShaderAnim::SetFloatKey( const tlFourCC& fourCC, int keynum, float value )
{
    tlFloat1Channel* pChannel = GetFloatChannel( fourCC );
    if ( pChannel )
    {
        pChannel->SetKey( keynum, keynum, value );
    }

}

void tlShaderAnim::RemoveStaticChannels( void )
{
    if ( !GetAnimationGroup() ) return;
    GetAnimationGroup()->RemoveStaticChannels();
}
