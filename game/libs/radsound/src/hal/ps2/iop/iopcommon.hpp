//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        PS2_rSoundRpc.hpp
//
// Subsystem:	Radical Sound System
//
// Description:	This file contains the common header information for the
//              IOP --> EE remote procedure call protocol.
//
//=============================================================================

#ifndef PS2_RSOUNDRPC_HPP
#define PS2_RSOUNDRPC_HPP

// This is the ID of the server to connect to, ps2 system functions have
// bit 31 set ( negative numbers ).

#define radSoundLoadServerVersion 0x0107
#define radSoundVoiceServerVersion 0x0107

// Id's of the server command handlers

#define radSoundIopLoadServerId    0x11
#define radSoundIopVoiceServerId   0x12

// These are the functions supported by the Iop load server (called by the Ee).

#define radSoundIopLoadServerFx_Initialize          0x00
#define radSoundIopLoadServerFx_ClearBufferAsync    0x11
#define radSoundIopLoadServerFx_LoadBufferAsync     0x12
#define radSoundIopLoadServerFx_DebugVerifySpuRange 0x13

// These are the functions supported by the Ee load server (called by the Iop)

#define radSoundEeLoadServerFx_LoadBufferComplete  0x13
#define radSoundEeLoadServerFx_ClearBufferComplete 0x14

// These are the functions supported by the Iop voice server

#define radSoundIopVoiceServerFx_Initialize       0x00
#define radSoundIopVoiceServerFx_WriteVoiceState  0x10

union radSoundIopLoadServerFxParams
{
    struct radSoundIopLoadServerFx_Initialize_Params
    {
        unsigned int m_Version;
        unsigned int m_TransferBufferSize;
        unsigned int m_UninterleaveBufferSize;
        unsigned int m_ClearBufferSize;
        unsigned int m_EnableDebugChannel;

        char m_Padding[ 40 ];
    } m_Initialize;

    struct radSoundIopLoadServerFx_LoadBuffer_Params
    {
	    unsigned int m_IopTransferBuffer;
	    unsigned int m_SpuBuffer;
	    unsigned int m_SpuBufferSizeInFrames;
	    unsigned int m_LoadStartInFrames;
	    unsigned int m_NumberOfLoadFrames;
	    unsigned int m_NumberOfChannels;
	    unsigned int m_Looping; 
    } m_LoadBufferAsync;

    struct radSoundIopLoadServerFx_ClearBuffer_Params
    {
        unsigned int m_SpuBufferAddress;
        unsigned int m_SpuBufferSizeInFrames;
	    unsigned int m_StartPositionInFrames;
	    unsigned int m_NumberOfFrames;
	    unsigned int m_NumberOfChannels;
        unsigned int m_Looping;
    } m_ClearBufferAsync;

    struct radSoundIopLoadServerFx_DebugVerifySpuRange_Params
    {   
        unsigned int m_SpuRangeStart;
        unsigned int m_SpuRangeSize;
        unsigned int m_NumberOfChannels;
        unsigned int m_Filler[ 1 ];
    } m_DebugVerifySpuRange;
};

union radSoundIopLoaderServerFxRet
{
    struct radSoundIopLoadServerFx_Initialize_Ret
    {
        unsigned int m_InitializedOk;
        unsigned int m_TransferBufferAddress;
        char m_Padding[ 60 ];
    } m_Initialize;
};

#define STARTADDRESS_DIRTY	( 0x01 )
#define LOOPADDRESS_DIRTY	( 0x01 << 1 )
#define PITCH_DIRTY			( 0x01 << 2 )
#define LVOL_DIRTY			( 0x01 << 3 )
#define RVOL_DIRTY			( 0x01 << 4 )		

struct radSoundIopVoiceServerFx_Initialize_Params
{
    unsigned int m_Version;
    char m_Padding[ 60 ];
};

struct radSoundIopVoiceServerFx_Initialize_Ret
{
    unsigned int m_InitializedOk;
    char m_Padding[ 60 ];
};

struct radSoundSpuVoiceParams
{
    short m_Pitch;
    short m_LeftVolume;
    short m_RightVolume;
    short m_Flags;
    unsigned int m_StartAddress;
    unsigned int m_LoopAddress;
};

struct radSoundIopVoiceServerFx_WriteVoiceState_Params
{
    unsigned int m_Stamp;

    struct radSoundSpuVoiceParams m_SpuVoiceParams[ 2 ][ 24 ];

    unsigned int m_KeyOnMask[ 2 ];
    unsigned int m_KeyOffMask[ 2 ];
	unsigned int m_VoiceEffectMaskLeft[ 2 ];
	unsigned int m_VoiceEffectMaskRight[ 2 ];
	unsigned int m_VoiceDryMaskLeft[ 2 ];
	unsigned int m_VoiceDryMaskRight[ 2 ];

    char m_Padding[ 44 ];
};


//
// This packet contains all of the voice positions and playing status.
//
struct radSoundEeVoiceServerFx_ReadVoiceState_Params
{
    unsigned int m_Stamp;

    unsigned int m_EndPointMask[ 2 ];
    unsigned int m_VoiceAddress[ 2 ][ 24 ];

    char m_Padding[ 52 ];
};
    

#endif // PS2_RSOUNDRPC_HPP