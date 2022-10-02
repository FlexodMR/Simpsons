//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        delay.hpp
//
// Subsystem:   Radical Foundation Tools - Sound system
//
// Description: This file contains an declarations for the delay effect on
//              the Gamecube
//
//=============================================================================

#ifndef DELAYEFFECTGCN_HPP
#define DELAYEFFECTGCN_HPP

//=============================================================================
// Class Declarations
//=============================================================================

//
// This is the actual delay sound effect class
//
class radSoundEffectDelayGcn :  public IRadSoundEffectDelayGcn,
                                public radSoundEffectGcn
{
public:
    
    IMPLEMENT_REFCOUNTED( "radSoundEffectDelayGcn" )
    
    //
    // Constructors and destructors
    //    
    radSoundEffectDelayGcn( void );


    //
    // IRadSoundEffect
    //    
    virtual void Attach( unsigned int aux );
    virtual void Detach( void );
    virtual void Update( void );
    virtual void SetMasterGain( float masterGain );
    virtual float GetMasterGain( void );
    virtual void SetGain( float gain );
    virtual float GetGain( void );
   
    //
    // IRadSoundEffectDelayGcn
    //
    virtual void SetEnabled( bool enabled );
    virtual bool GetEnabled( void );

    virtual void SetDelay ( unsigned int channel, float ms );
    virtual float GetDelay( unsigned int channel );
    
    virtual void SetFeedback( unsigned int channel, float feedback );
    virtual float GetFeedback( unsigned int channel );
    
protected:
    
    //
    // radSoundEffectGcn
    //
    virtual void InitEffect( void );
    virtual void ShutdownEffect( void );
    virtual void ApplyEffect( void );
    
    void GetEffectCallbackFunction( AXAuxCallback * ppCallback, void ** ppData );
    
private:
    
    void SetOutput( unsigned int channel, float output );
    float GetOutput( unsigned int channel );
    
    unsigned int m_Aux;
    AXFX_DELAY m_AfxDelay;    
};

#endif // DELAYEFFECTGCN_HPP

