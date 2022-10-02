//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     16 August, 2002
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
#ifndef __MANIMCURVEKEY_HPP_  
#define __MANIMCURVEKEY_HPP_

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MFnAnimCurve.h>
#include <maya/MTime.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class MAnimCurveKey
{
public:
    MAnimCurveKey();
    ~MAnimCurveKey();

    void                        SetTime( const MTime& time );
    MTime                       Time( void ) const;

    void                        SetTimeValue( const MTime& time );
    MTime                       TimeValue( void ) const;

    void                        SetValue( double value );
    double                      Value( void ) const;

    void                        SetInTangentType( MFnAnimCurve::TangentType type );
    MFnAnimCurve::TangentType   InTangentType( void ) const;

    void                        SetOutTangentType( MFnAnimCurve::TangentType type );
    MFnAnimCurve::TangentType   OutTangentType( void ) const;

    void                        SetInAngle( const MAngle& angle );
    void                        GetInAngle( MAngle& angle ) const;

    void                        SetOutAngle( const MAngle& angle );
    void                        GetOutAngle( MAngle& angle ) const;

    void                        SetInWeight( double weight );
    double                      GetInWeight( void ) const;

    void                        SetOutWeight( double weight );
    double                      GetOutWeight( void ) const;

    void                        SetTangentsLocked( bool bLocked );
    bool                        IsTangentsLocked( void ) const;

    void                        SetWeightsLocked( bool bLocked );
    bool                        IsWeightsLocked( void ) const;

    void                        SetIsBreakdown( bool bBreakdown );
    bool                        IsBreakdown( void ) const;

public:

private:
    MTime                       mTime;
    MTime                       mTimeValue;
    double                      mValue;
    MFnAnimCurve::TangentType   mTangentType[2];
    MAngle                      mTangentAngle[2];
    double                      mTangentWeight[2];
    bool                        mbTangentsLocked;
    bool                        mbWeightsLocked;
    bool                        mbIsBreakdown;
};

//===========================================================================
// Inlines
//===========================================================================

inline
void MAnimCurveKey::SetTime( const MTime& time )
{
    mTime = time;
}

inline
MTime MAnimCurveKey::Time( void ) const
{
    return mTime;
}

inline
void MAnimCurveKey::SetTimeValue( const MTime& time )
{
    mTimeValue = time;
}

inline
MTime MAnimCurveKey::TimeValue( void ) const
{
    return mTimeValue;
}

inline
void MAnimCurveKey::SetValue( double value )
{
    mValue = value;
}

inline
double MAnimCurveKey::Value( void ) const
{
    return mValue;
}

inline
void MAnimCurveKey::SetInTangentType( MFnAnimCurve::TangentType type )
{
    mTangentType[0] = type;
}

inline
MFnAnimCurve::TangentType MAnimCurveKey::InTangentType( void ) const
{
    return mTangentType[0];
}

inline
void MAnimCurveKey::SetOutTangentType( MFnAnimCurve::TangentType type )
{
    mTangentType[1] = type;
}

inline
MFnAnimCurve::TangentType MAnimCurveKey::OutTangentType( void ) const
{
    return mTangentType[1];
}

inline
void MAnimCurveKey::SetInAngle( const MAngle& angle )
{
    mTangentAngle[0] = angle;
}

inline
void MAnimCurveKey::GetInAngle( MAngle& angle ) const
{
    angle = mTangentAngle[0];
}

inline
void MAnimCurveKey::SetOutAngle( const MAngle& angle )
{
    mTangentAngle[1] = angle;
}

inline
void MAnimCurveKey::GetOutAngle( MAngle& angle ) const
{
    angle = mTangentAngle[1];
}

inline
void MAnimCurveKey::SetInWeight( double weight )
{
    mTangentWeight[0] = weight;
}

inline
double MAnimCurveKey::GetInWeight( void ) const
{
    return mTangentWeight[0];
}

inline
void MAnimCurveKey::SetOutWeight( double weight )
{
    mTangentWeight[1] = weight;
}

inline
double MAnimCurveKey::GetOutWeight( void ) const
{
    return mTangentWeight[1];
}

inline
void MAnimCurveKey::SetTangentsLocked( bool bLocked )
{
    mbTangentsLocked = bLocked;
}

inline
bool MAnimCurveKey::IsTangentsLocked( void ) const
{
    return mbTangentsLocked;
}

inline
void MAnimCurveKey::SetWeightsLocked( bool bLocked )
{
    mbWeightsLocked = bLocked;
}

inline
bool MAnimCurveKey::IsWeightsLocked( void ) const
{
    return mbWeightsLocked;
}

inline
void MAnimCurveKey::SetIsBreakdown( bool bBreakdown )
{
    mbIsBreakdown = bBreakdown;
}

inline
bool MAnimCurveKey::IsBreakdown( void ) const
{
    return mbIsBreakdown;
}

#endif // __MANIMCURVEKEY_HPP_
