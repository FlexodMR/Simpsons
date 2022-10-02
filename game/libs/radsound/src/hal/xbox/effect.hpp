//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        effect.hpp
//
// Subsystem:	Radical Sound System
//
// Description:	XBox effect interfaces
//
// Creation     Jan 29, 2002    RS  
//
//=============================================================================

#ifndef EFFECT_HPP
#define EFFECT_HPP

//============================================================================
// Include Files
//============================================================================

#include <radsound_xbox.hpp>
#include <radsoundobject.hpp>

//============================================================================
// Forward Declarations
//============================================================================

struct radSoundHalEffectXBox;
struct radSoundHalEffectEchoXBox;
struct radSoundHalEffectReverbXBox;
struct radSoundHalEffectDistortionXBox;

//============================================================================
// Component: radSoundHalEffectXBox
//============================================================================

// Parent class for all other effects

struct radSoundHalEffectXBox
    :
    public IRadSoundHalEffect,
    public radSoundObject
{
    public:

        radSoundHalEffectXBox( unsigned long index, unsigned int numInputs, 
            unsigned long * pInputs, unsigned int numOutputs, unsigned long * pOutputs );
        virtual ~radSoundHalEffectXBox( void );

        // These functions use the Direct Sound constant definitions
        // of the mixbins
        virtual unsigned long GetIndex( void ) { return m_EffectIndex; }
        virtual unsigned int GetNumInputs( void ) { return m_NumInputs; }
        virtual unsigned int GetNumOutputs( void ) { return m_NumOutputs; }
        virtual unsigned int GetInput( unsigned int index ) { rAssert( index < m_NumInputs ); return m_pInputs[ index ]; }
        virtual unsigned int GetOutput( unsigned int index ) { rAssert( index < m_NumOutputs ); return m_pOutputs[ index ]; }
   
        // Children of this class will have to implement these functions themselves
        virtual void Attach( unsigned int auxSend ) = 0;
        virtual void Detach( void ) = 0;
        virtual void SetMasterGain( float masterGain ) = 0;
        virtual float GetMasterGain( void ) = 0;
        

    protected: 

        // These functions allow access to the actual dsp effects programs.
        // At the moment, the dataOffset is calculated using the "offsetof"
        // macro that is defined in "stddef.h"
    
        void SetEffectData( unsigned int dataOffset, unsigned long dataValue );
        unsigned long GetEffectData( unsigned int dataOffset );

    private:
        
        radSoundHalEffectXBox( void );

        // The effect index in the image file 
        unsigned long m_EffectIndex;
        unsigned int  m_NumInputs;
        unsigned int  m_NumOutputs;

        // These will eventually be determined at run-time
        unsigned long m_pInputs[ 2 ];
        unsigned long m_pOutputs[ 4 ];
        
        float m_MasterGain;
};


//============================================================================
// Component: radSoundHalEffectEchoStereoXBox
//============================================================================

struct radSoundHalEffectEchoXBox
    :
    public IRadSoundHalEffectEchoXBox,
    public radSoundHalEffectXBox
{

    public:
    
        IMPLEMENT_REFCOUNTED( "radSoundHalEffectEchoXBox" )

        radSoundHalEffectEchoXBox( unsigned int effectIndex ); 
        virtual ~radSoundHalEffectEchoXBox( void );

        //
        // IRadSoundHalEffectEchoXBox
        //

	    virtual void SetGain( float gain );
	    virtual float GetGain( void );

        //
        // IRadSoundHalEffect
        //

        virtual void Attach( unsigned int auxSend );
        virtual void Detach( void );        
        virtual void Update( void );
        virtual unsigned long GetIndex( void ) { return radSoundHalEffectXBox::GetIndex( ); }
        virtual unsigned int GetNumInputs( void ) { return radSoundHalEffectXBox::GetNumInputs( ); }
        virtual unsigned int GetNumOutputs( void ) { return radSoundHalEffectXBox::GetNumOutputs( ); }
        virtual unsigned int GetInput( unsigned int index ) { return radSoundHalEffectXBox::GetInput( index ); }
        virtual unsigned int GetOutput( unsigned int index ) { return radSoundHalEffectXBox::GetOutput( index ); }
        virtual void SetMasterGain( float masterGain );
        virtual float GetMasterGain( void );
              
    private:

        // You can't use this
        radSoundHalEffectEchoXBox( void );

        // Transmit parameters to hardware

        void UpdateParameters( void );

        // Attach count
        unsigned int m_AttachCount;
        unsigned int m_AuxSend;

        bool m_DirtyParams;

        struct Parameter
        {
            unsigned long m_Value;
            unsigned long m_Offset;
        };

        Parameter m_HardwareGain;
        float     m_EffectGain;
        float     m_MasterGain;
        
        // These will eventually go away
        static unsigned int s_NumInputs;
        static unsigned int s_NumOutputs;
        static unsigned long s_pInputs[];
        static unsigned long s_pOutputs[];
};


//============================================================================
// Component: radSoundHalEffectI3DL2ReverbXBox
//============================================================================

struct radSoundHalEffectI3DL2ReverbXBox
    :
    public IRadSoundHalEffectI3DL2ReverbXBox,
    public radSoundHalEffectXBox
{

    public:
    
        IMPLEMENT_REFCOUNTED( "radSoundHalEffectI3DL2ReverbXBox" )

        radSoundHalEffectI3DL2ReverbXBox( unsigned int effectIndex );
        virtual ~radSoundHalEffectI3DL2ReverbXBox( void );

        //
        //IRadSoundHalEffectI3DL2ReverbXBox
        //

        virtual void  SetRoom( int mBvalue );
        virtual int   GetRoom( void );
        virtual void  SetRoomHF( int mBvalue );
        virtual int   GetRoomHF( void );
        virtual void  SetRoomRolloffFactor( float value );
        virtual float GetRoomRolloffFactor( void );
        virtual void  SetDecayTime( float value );
        virtual float GetDecayTime( void );
        virtual void  SetDecayHFRatio( float value );
        virtual float GetDecayHFRatio( void );
        virtual void  SetReflections( int mBvalue );
        virtual int   GetReflections( void );
        virtual void  SetReflectionsDelay( float value );
        virtual float GetReflectionsDelay( void );
        virtual void  SetReverb( int mBvalue );
        virtual int   GetReverb( void );
        virtual void  SetReverbDelay( float value );
        virtual float GetReverbDelay( void );
        virtual void  SetDiffusion( float value );
        virtual float GetDiffusion( void );
        virtual void  SetDensity( float value );
        virtual float GetDensity( void );
        virtual void  SetHFReference( float value );
        virtual float GetHFReference( void );

        //
        // IRadSoundHalEffect
        //

        virtual void Attach( unsigned int auxSend );
        virtual void Detach( void );        
        virtual void Update( void );
        virtual unsigned long GetIndex( void ) { return radSoundHalEffectXBox::GetIndex( ); }
        virtual unsigned int GetNumInputs( void ) { return radSoundHalEffectXBox::GetNumInputs( ); }
        virtual unsigned int GetNumOutputs( void ) { return radSoundHalEffectXBox::GetNumOutputs( ); }
        virtual unsigned int GetInput( unsigned int index ) { return radSoundHalEffectXBox::GetInput( index ); }
        virtual unsigned int GetOutput( unsigned int index ) { return radSoundHalEffectXBox::GetOutput( index ); }
        virtual void SetMasterGain( float masterGain );
        virtual float GetMasterGain( void );
       

        // Internal public fuctions

        void UpdateListener( void );
               
    private:

        // You can't use this
        radSoundHalEffectI3DL2ReverbXBox( void );

        // Attach count
        unsigned int m_AttachCount;
        unsigned int m_AuxSend;

        // Use the room parameter to fake master gain control
        float m_MasterGain;
        int   m_Room;

        DSI3DL2LISTENER m_DsI3dl2Listener;

        bool m_DirtyParams;
        bool m_IsTheEnvEffect;
        
        // These will eventually go away
        static unsigned int s_NumInputs;
        static unsigned int s_NumOutputs;
        static unsigned long s_pInputs[];
        static unsigned long s_pOutputs[];
};

/*
//============================================================================
// Component: radSoundHalEffectReverbXBox
//============================================================================

struct radSoundHalEffectReverbXBox
    :
    public IRadSoundHalEffectReverbXBox,
    public radSoundHalEffectXBox
{

    public:
    
        IMPLEMENT_REFCOUNTED( "radSoundHalEffectReverbXBox" )

        radSoundHalEffectReverbXBox( unsigned int effectIndex );
        virtual ~radSoundHalEffectReverbXBox( void );

        //
        // IRadSoundHalEffectXBox
        //

        virtual void Attach( unsigned int auxSend );
        virtual void Detach( void );        
        virtual void Update( void );
        virtual unsigned long GetIndex( void ) { return radSoundHalEffectXBox::GetIndex( ); }
        virtual unsigned int GetNumInputs( void ) { return radSoundHalEffectXBox::GetNumInputs( ); }
        virtual unsigned int GetNumOutputs( void ) { return radSoundHalEffectXBox::GetNumOutputs( ); }
        virtual unsigned int GetInput( unsigned int index ) { return radSoundHalEffectXBox::GetInput( index ); }
        virtual unsigned int GetOutput( unsigned int index ) { return radSoundHalEffectXBox::GetOutput( index ); }
               
    private:

        // You can't use this
        radSoundHalEffectReverbXBox( void );

        // State info
        unsigned int m_AttachCount;
        unsigned int m_AuxSend;
        bool m_DirtyParams;

        struct ReverbState
        {
            unsigned long m_ShortReverbInputDelay;
            unsigned long m_LongReverbFeedbackDelay;
            unsigned long m_LongReverbInputGain;
            unsigned long m_LongReverbCrossfeedGain;
            unsigned long m_ShortReverbOutputGain;
            unsigned long m_LongReverbOutputGain;
        }

        // These will eventually go away
        static unsigned int s_NumInputs;
        static unsigned int s_NumOutputs;
        static unsigned long s_pInputs[];
        static unsigned long s_pOutputs[];
};
*/


//============================================================================
// Component: radSoundHalEffectDistortionXBox
//============================================================================

struct radSoundHalEffectDistortionXBox
    :
    public IRadSoundHalEffectDistortionXBox,
    public radSoundHalEffectXBox
{

    public:
    
        IMPLEMENT_REFCOUNTED( "radSoundHalEffectDistortionXBox" )

        radSoundHalEffectDistortionXBox( unsigned int effectIndex );
        virtual ~radSoundHalEffectDistortionXBox( void );

        //
        // IRadSoundHalEffectReverbXBox
        //

        virtual void SetGain( float value );
        virtual float GetGain( void );
        virtual void SetPreFilterCoefficient( IIR2FilterCoefficient coef, float value );
        virtual float GetPreFilterCoefficient( IIR2FilterCoefficient coef );
        virtual void SetPostFilterCoefficient( IIR2FilterCoefficient coef, float value );
        virtual float GetPostFilterCoefficient( IIR2FilterCoefficient coef );

        //
        // IRadSoundHalEffect
        //

        virtual void Attach( unsigned int auxSend );
        virtual void Detach( void );        
        virtual void Update( void );
        virtual unsigned long GetIndex( void ) { return radSoundHalEffectXBox::GetIndex( ); }
        virtual unsigned int GetNumInputs( void ) { return radSoundHalEffectXBox::GetNumInputs( ); }
        virtual unsigned int GetNumOutputs( void ) { return radSoundHalEffectXBox::GetNumOutputs( ); }
        virtual unsigned int GetInput( unsigned int index ) { return radSoundHalEffectXBox::GetInput( index ); }
        virtual unsigned int GetOutput( unsigned int index ) { return radSoundHalEffectXBox::GetOutput( index ); }
        virtual void SetMasterGain( float masterGain );
        virtual float GetMasterGain( void );
       
    private:

        // You can't use this
        radSoundHalEffectDistortionXBox( void );

        // Transmit parameters to hardware

        void UpdateParameters( void );

        // Attach count
        unsigned int m_AttachCount;
        unsigned int m_AuxSend;

        bool m_DirtyParams;

        struct Parameter
        {
            unsigned long m_Value;
            unsigned long m_Offset;
        };

        enum Param_Indices
        {
            GAIN = 0,
            POST_FILTER_B0,
            POST_FILTER_B1,
            POST_FILTER_B2,
            POST_FILTER_A1,
            POST_FILTER_A2,
            PRE_FILTER_B0,
            PRE_FILTER_B1,
            PRE_FILTER_B2,
            PRE_FILTER_A1,
            PRE_FILTER_A2,
            NUM_INDICES
        };

        Parameter m_Parameters[ NUM_INDICES ];
        
        float m_EffectGain;
        float m_MasterGain;
        
        // These will eventually go away
        static unsigned int s_NumInputs;
        static unsigned int s_NumOutputs;
        static unsigned long s_pInputs[];
        static unsigned long s_pOutputs[];
};

#endif