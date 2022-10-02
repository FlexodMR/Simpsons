//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef VAGHEADER_HPP
#define VAGHEADER_HPP

//=============================================================================
// Struct: VagHeader
//=============================================================================

#define VAG_SAMPLES_PER_FRAME 28
#define VAG_MONO_FRAME_SIZE 16
#define VAG_LOOP_END_BIT    0x01 // Endpoint information
#define VAG_LOOP_BIT        0x02 // Loop existence / non-existence
#define VAG_LOOP_START_BIT  0x04 // Loop Point Information

struct VagHeader
{
	char           m_pFormatTag[4];		    // always 'VAGp' for identifying
	unsigned int   m_FormatVersion;		    // format version (2)
	unsigned int   m_SourceStartAddress;    // Source Start Address, always 0 (reserved for VAB format)
	unsigned int   m_DataSizeInBytes;       // Sound Data Size in bytes

	unsigned int   m_SamplingFrequency;     // sampling frequency, 44100(>pt1000), 32000(>pt), 22000(>pt0800)...
	unsigned short m_LeftVolume;		    // base volume for Left channel
	unsigned short m_RightVolume;           // base volume for Right channel
	unsigned short m_BasePitch;		        // base pitch (includes fs modulation)
	unsigned short m_Adsr1;                 // base ADSR1 (see SPU manual)
	unsigned short m_Adsr2;                 // base ADSR2 (see SPU manual)
	unsigned short m_shortReserved;         // ...

	char           m_pName[16];             // Identifying name
    // char           m_pPadding[16];       // need zeros to avoid click at beginning of vag playback
};

#endif // VagHeader_HPP