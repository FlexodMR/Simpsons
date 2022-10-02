//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef SOUNDSYSTEM_HPP
#define SOUNDSYSTEM_HPP

#include <radsound_hal.hpp>
#include <radsoundgcn.hpp>
#include <effect.hpp>
#include <radobjectlist.hpp>
#include <radsoundobject.hpp>

//============================================================================
// Class: radSoundHalSystem
//============================================================================

class radSoundHalSystem
    :
	public IRadSoundHalSystem,
	public radSoundObject
{
	public:    

        virtual void Initialize( const SystemDescription & systemDescription );

        virtual IRadSoundHalMemoryRegion * GetRootMemoryRegion( void );
        
        virtual unsigned int GetNumAuxSends( );

	    virtual void SetAuxEffect( unsigned int auxNumber, IRadSoundHalEffect * pIRadSoundHalEffect );
	    virtual IRadSoundHalEffect * GetAuxEffect( unsigned int auxNumber );

        virtual void SetAuxGain( unsigned int aux, float gain );
        virtual float GetAuxGain( unsigned int aux );
	
		virtual void SetOutputMode( radSoundOutputMode mode );
		virtual radSoundOutputMode GetOutputMode( void );
		
		void SetOutputMode( radSoundOutputMode mode, bool setRom );

    	virtual void Service( void );
        virtual void ServiceOncePerFrame( void );

    	virtual void GetStats( IRadSoundHalSystem::Stats * pStats );

	    virtual unsigned int GetReferenceClock( void );

    private:
        
        IMPLEMENT_REFCOUNTED( "radSoundHalSystem" )
            		
		radSoundHalSystem( void );
		virtual ~radSoundHalSystem( void );		
		void UpdateEffects( void );
	
        unsigned int    m_NumAuxSends;
        float           m_Gain[ 2 ];        
        void * m_pAramAddress;        
        radSoundOutputMode m_OutputMode;
        unsigned int m_LastServiceTime;
        
	    ref< IRadMemoryHeap >	m_xIRadMemoryHeap_Aram;	    
	    ref< IRadSoundHalEffect > m_axRadSoundEffectGcn[ 2 ];
	    
        static void AxAudioFrameCallback( void );        
        static radSoundHalSystem * s_pTheSoundSystem;

    friend IRadSoundHalSystem * radSoundHalSystemGet( void );
    friend void radSoundHalSystemInitialize( radMemoryAllocator allocator  );
    friend void radSoundHalSystemTerminate( void );
    friend class radSoundObjectGcn;

};

#endif // SOUNDSYSTEM_HPP