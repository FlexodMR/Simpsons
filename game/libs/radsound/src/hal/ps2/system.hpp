//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef SOUNDSYSTEM_HPP
#define SOUNDSYSTEM_HPP

#include <radsound_hal.hpp>
#include <effect.hpp>

struct radSoundHalSystem
	:
	public IRadSoundHalSystem,
	public radSoundObject
{
	IMPLEMENT_REFCOUNTED( "radSoundHalSystem" )
      
    radSoundHalSystem( radMemoryAllocator allocator );
    ~radSoundHalSystem( void );


    // IRadSoundHalSystem

    virtual void Initialize( const SystemDescription & systemDescription );
        	    
	virtual IRadSoundHalMemoryRegion * GetRootMemoryRegion( void );   
    virtual unsigned int GetNumAuxSends( void );
	virtual void SetOutputMode( radSoundOutputMode mode );
	virtual radSoundOutputMode GetOutputMode( void );
	virtual unsigned int GetReferenceClock( void );   
    virtual void GetStats( IRadSoundHalSystem::Stats * pStats );
    virtual void SetAuxEffect( unsigned int auxNumber, IRadSoundHalEffect * pIRadSoundHalEffect );
    virtual IRadSoundHalEffect * GetAuxEffect( unsigned int auxNumber );
    virtual void SetAuxGain( unsigned int aux, float gain );
    virtual float GetAuxGain( unsigned int aux );
    virtual void Service( void );
    virtual void ServiceOncePerFrame( void );

    void UpdateEffects( void );

    unsigned int    m_NumAuxSends;
    float           m_Gain[ 2 ];

	radSoundOutputMode m_OutputMode;

	ref< IRadSoundHalEffect > m_xIRadSoundHalEffectPs2[ 2 ];

    unsigned int m_LastServiceTime;
    unsigned int m_ServiceOncePerFrameTimer;

    static radSoundHalSystem * s_pRsdSystem;

};


#endif // SOUNDSYSTEM_HPP
    










    
