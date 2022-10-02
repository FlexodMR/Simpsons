//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        soundsystem.hpp
//
// Subsystem:	Radical Sound System
//
// Description:	This files contains the implementation of the xbox sound system  
//
// Creation TH
//
//=============================================================================

#ifndef SOUNDSYSTEM_HPP
#define SOUNDSYSTEM_HPP

//============================================================================
// Include Files
//============================================================================

#include <radsoundobject.hpp>
#include "radsoundxbox.hpp"
#include "effect.hpp"

//============================================================================
// Definitions
//============================================================================

#define RSDSYSTEM_EFFECTS_MAX 10  // 20 sends / 2 inputs ?

//============================================================================
// Component: radSoundHalSystem
//============================================================================

struct radSoundHalSystem
    :
    public IRadSoundHalSystemXBox,
    public radSoundObject
{
    public:

   	    IMPLEMENT_REFCOUNTED( "radSoundHalSystem" )

        radSoundHalSystem( radMemoryAllocator allocator );
        virtual ~radSoundHalSystem( void );

        //
        // IRadSoundHalSystemXBox
        //

        virtual void GetDirectSoundReference( IDirectSound ** ppIDirectSound );

        // (IRadSoundHalSystem)

        virtual void Initialize( const SystemDescription & systemDescription );

        virtual IRadSoundHalMemoryRegion * GetRootMemoryRegion( void );

        virtual unsigned int GetNumAuxSends( void );
        virtual void SetAuxEffect( unsigned int auxNumber, IRadSoundHalEffect * pIRadSoundHalEffect );
	    virtual IRadSoundHalEffect * GetAuxEffect( unsigned int auxNumber );
        virtual void SetAuxGain( unsigned int aux, float gain );
        virtual float GetAuxGain( unsigned int aux );

	    virtual void SetOutputMode( radSoundOutputMode mode );
	    virtual radSoundOutputMode GetOutputMode( void );

        virtual void Service( void );
		virtual void ServiceOncePerFrame( void );

        virtual void GetStats( IRadSoundHalSystem::Stats * pStats );

        //
        // other public methods
        //
        static radSoundHalSystem * GetInstance( void );
        static void Initialize( void );
        static void Terminate( void );

    private:

	    void DownloadScratchImage( void );
       
	    void *          m_pRootMemory;
        unsigned int    m_NumAuxSends;
        float           m_AuxGain[ RSDSYSTEM_EFFECTS_MAX ];
        unsigned int    m_LastServiceTime;

        ref< IDirectSound > m_xIDirectSound;
        ref< IDirectSoundBuffer > m_xIDirectSoundBuffer_Primary;
        ref< IDirectSound3DListener > m_xIDirectSound3DListener;

        static radSoundHalSystem * s_pTheSoundSystem;

        ref< IRadSoundHalEffect > m_xIRadSoundHalEffect[ RSDSYSTEM_EFFECTS_MAX ];
};
    

#endif  // SOUNDSYSTEM_HPP