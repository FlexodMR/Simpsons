//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef STANDARDQUALITYREVERB_HPP
#define STANDARDQUALITYREVERB_HPP

class radSoundEffectStdReverbGcn
    :
    public IRadSoundEffectStdReverbGcn,
    public radSoundEffectGcn
{
    public:
    
        IMPLEMENT_REFCOUNTED( "radSoundObjectGcn" )
        
        // IRadSoundEffect

        virtual void Attach( unsigned int aux );
        virtual void Detach( void );
        virtual void Update( void );
        virtual void SetMasterGain( float masterGain );
        virtual float GetMasterGain( void );

        // IRadSoundEffectStdReverbGcn

    	virtual void SetGain( float gain );
    	virtual float GetGain( void );

    	virtual void SetEnabled( bool enabled );
    	virtual bool GetEnabled( void );
        
        virtual void SetPreDelay( float milliseconds );
        virtual float GetPreDelay( void );
        
        virtual void SetReverbTime( float milliseconds );
        virtual float GetReverbTime( void );
        
        virtual void SetColoration( float coloration );
        virtual float GetColoration( void );
        
        virtual void SetDamping( float damping );
        virtual float GetDamping( void );
        
       
        // Constructors and destructors
        
        radSoundEffectStdReverbGcn( void );
        
    protected:
    
        virtual void InitEffect( void );
        virtual void ShutdownEffect( void );
        virtual void ApplyEffect( void );
        
        void GetEffectCallbackFunction( AXAuxCallback * ppCallback, void ** ppData );
                    
    private:
    
        void SetMix( float gain );
        float GetMix( void );
    
        unsigned int m_Aux;
        AXFX_REVERBSTD m_AfxReverbStd;
                  
};

#endif // StdREVERB_HPP