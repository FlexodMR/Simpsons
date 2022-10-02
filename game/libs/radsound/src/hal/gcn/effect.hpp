//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef EFFECT_HPP
#define EFFECT_HPP

#include "voice.hpp"

#define NULL_AUX 0xFFFFFFFF

#define EFFECT_DIRTY_ALL    0xFFFFFFFF
#define EFFECT_DIRTY_NONE   0x00000000
#define EFFECT_DIRTY_GAIN   ( 0x01 << 0 )
#define EFFECT_DIRTY_PARAMS ( 0x01 << 1 )

struct radSoundEffectGcn
    :
    public IRadSoundHalEffect,
    public radSoundObject
{

    public:
    
        inline radSoundEffectGcn( void );  
        virtual ~radSoundEffectGcn( void );

        inline void Attach( unsigned int aux );
        inline void Detach( void );
        inline void Update( void );
        
        inline void SetMasterGain( float masterGain );
        inline float GetMasterGain( void );
               
    protected:
    
        virtual void InitEffect( void ) = 0;
        virtual void ApplyEffect( void ) = 0;
        virtual void ShutdownEffect( void ) = 0;
        
        virtual void GetEffectCallbackFunction( AXAuxCallback * ppCallback, void ** ppData ) = 0;       
    
        inline void  SetAnalogParam( float * pParam, float value, float min, float max );
        inline float GetAnalogParam( float param, float min, float max );

        inline void  SetAnalogParam( unsigned long * pParam, unsigned int value, unsigned int min, unsigned int max );
        inline unsigned int GetAnalogParam( unsigned long param, unsigned int min, unsigned int max );
        
        inline void  _SetGain( float gain );
        inline float _GetGain( void );
        
        inline void _SetEnabled( bool enabled );
        inline bool _GetEnabled( void );       
        
    private:
    
        inline void InstallEffect( void );
        inline void UninstallEffect( void );
   
        unsigned int m_Aux;
        float m_Gain;
        float m_MasterGain;
        bool  m_Enabled;    

        unsigned int m_DirtyFlags; 
};

inline radSoundEffectGcn::radSoundEffectGcn( void )
    :
    m_Aux( NULL_AUX ),
    m_Gain( 1.0f ),
    m_MasterGain( 0.0f ),
    m_Enabled( true ),
    m_DirtyFlags( EFFECT_DIRTY_ALL )
{
    
}

inline void radSoundEffectGcn::Attach( unsigned int aux )
{
    rAssert( m_Aux == NULL_AUX );
    
    m_Aux = aux;
    
    InitEffect( );
    
    if ( m_Enabled == true )
    {
        InstallEffect( );
    }
}

inline void radSoundEffectGcn::Detach( void )
{
    rAssert( m_Aux != NULL_AUX );
   
    if ( m_Enabled == true )
    {    
        UninstallEffect( );
    }
    
    ShutdownEffect( );
    
    m_Aux = NULL_AUX;        
}

inline void radSoundEffectGcn::InstallEffect( void )
{
    AXAuxCallback pFunction = NULL;
    
    void * pUserData = NULL;
    
    GetEffectCallbackFunction( & pFunction, & pUserData );
    
    rAssert( pFunction != NULL );
    rAssert( pUserData != NULL );

    if ( m_Aux == 0 )
    {
        AXRegisterAuxACallback( pFunction, pUserData );
    }
    else if ( m_Aux == 1 )
    {
        AXRegisterAuxBCallback( pFunction, pUserData );
    }
    else
    {
        rAssert( 0 );
    }
}

inline void radSoundEffectGcn::UninstallEffect( void )
{
    if ( m_Aux == 0 )
    {
        AXRegisterAuxACallback( NULL, NULL );
    }
    else if ( m_Aux == 1 )
    {
        AXRegisterAuxBCallback( NULL, NULL );
    }
    else
    {
        rAssert( 0 );
    }
}
        
inline void radSoundEffectGcn::Update( void )
{
    if ( m_DirtyFlags & EFFECT_DIRTY_ALL )
    {
        if ( m_DirtyFlags & EFFECT_DIRTY_GAIN )
        {
            radSoundVoiceGcn::SetMasterAuxGain( m_Aux, m_Gain * m_MasterGain );   
        }
            
        if ( m_DirtyFlags & EFFECT_DIRTY_PARAMS )
        {
            ApplyEffect( );
        }
        
        m_DirtyFlags = EFFECT_DIRTY_NONE;
    }
}

inline void radSoundEffectGcn::SetMasterGain( float masterGain )
{
    if ( m_MasterGain != masterGain )
    {
        m_MasterGain = masterGain;
        
        m_DirtyFlags |= EFFECT_DIRTY_GAIN;
    }       
}

inline float radSoundEffectGcn::GetMasterGain( void )
{
    return m_MasterGain;
}

inline void radSoundEffectGcn::SetAnalogParam
(
    float * pParam,
    float value,
    float min,
    float max
)
{
    if ( value < min )
    {
        value = min;
    }
    else if ( value > max )
    {
        value = max;
    }
    
    if ( *pParam != value )
    {
        *pParam = value;
        
        m_DirtyFlags |= EFFECT_DIRTY_PARAMS;
    }   
}

inline float radSoundEffectGcn::GetAnalogParam
(
    float param,
    float min,
    float max
)
{
    rAssert( param >= min );
    rAssert( param <= max );
    
    return param;
}

inline void radSoundEffectGcn::SetAnalogParam
(
    unsigned long * pParam,
    unsigned int value,
    unsigned int min,
    unsigned int max
)
{
    if ( value < min )
    {
        value = min;
    }
    else if ( value > max )
    {
        value = max;
    }
    
    if ( *pParam != value )
    {
        *pParam = value;
        
        m_DirtyFlags |= EFFECT_DIRTY_PARAMS;
    }   
}

inline unsigned int radSoundEffectGcn::GetAnalogParam
(
    unsigned long param,
    unsigned int min,
    unsigned int max
)
{
    rAssert( param >= min );
    rAssert( param <= max );
    
    return param;
}

inline void radSoundEffectGcn::_SetGain( float gain )
{
    rWarning( gain >= 0.0f );
    rWarning( gain <= 1.0f );
    
    if ( gain < 0.0f )
    {
        gain = 0.0f;
    }
    else if ( gain > 1.0f )
    {
        gain = 1.0f;
    }
    
    if ( m_Gain != gain )
    {
        m_Gain = gain;
        
        m_DirtyFlags |= EFFECT_DIRTY_GAIN;
    }
}

inline float radSoundEffectGcn::_GetGain( void )
{
    return m_Gain;
}

inline void radSoundEffectGcn::_SetEnabled( bool enabled )
{
    if ( enabled != m_Enabled )
    {
        m_Enabled = enabled;
        
        if ( m_Enabled == true )
        {
            InstallEffect( );
        }
        else
        {
            UninstallEffect( );
        }
    }
}

inline bool radSoundEffectGcn::_GetEnabled( void )
{
    return m_Enabled;
}

#endif