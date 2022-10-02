//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        PS2_rSoundVoice.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	This file contains the Playstation2 implementation of the
//      rSoundSystem Component.
//
//=============================================================================

//============================================================================
// Include Files
//============================================================================

#include <eekernel.h> // defines NULL
#include <sifdev.h>
#include <sdrcmd.h>
#include <libsdr.h>

#include <stdio.h>

#include <radsound.hpp>

#include "../../common/softwarelistener.hpp"
#include "../../ps2/iop/iopclient.hpp"
#include "adpcm.hpp"
#include "adpcmvoice.hpp"

//============================================================================
// Global variables
//============================================================================

unsigned int g_UsedCoreVoiceBitMask[ 2 ] = { 0x00, 0x00 };

#define NULL_VOICE 0xFFFFFFFF
#define NULL_CORE  0xFFFFFFFF

static const char dc[] = "radSoundVoiceAdpcmPs2";

//========================================================================
// Static Initialization
//========================================================================

radSoundVoiceAdpcmPs2 * radLinkedClass< radSoundVoiceAdpcmPs2 >::s_pLinkedClassHead = NULL;
radSoundVoiceAdpcmPs2 * radLinkedClass< radSoundVoiceAdpcmPs2 >::s_pLinkedClassTail = NULL;

//========================================================================
// Constants
//========================================================================

//
// Running through the parameters will provide multipliers
// for right speaker as object moves from straight ahead 
// around the right hand side to the back.
//
// Running from the bottom up with provide the left 
// hand speaker multiplier.
//
// Angle is measured from axis that runs in the direction
// that the listener is facing.
//
// The recommended Dolby Prologic II multipliers are given
// by the formula   multiplier = sin( angle / 2 + 45 )
//
// However we found that this causes the sound source to appear
// too far forward.  (At an angle of 90 degrees the sound is heard
// only in the front right speaker.  The other platforms produce
// a sound that is further back and at 90 degrees is heard from
// both the front right and the rear right.
//
// The Dolby formula has been altered slightly to generate this table.
//
// For 0 <= angle <= 60:  multiplier = sin( ( 3 / 2 ) * ( angle / 2 ) + 45 )
//
// For 60 < angle <= 180: multiplier = sin( ( 3 / 2 ) * ( angle - 60 ) / 2 + 45 )
//

static const float g_SurroundTableFrontToRightToBack[ ] = 
{
    0.7071067811865, // 0 
    0.7163019434247, // 1
    0.7253743710123, // 2
    0.7343225094357, // 3
    0.7431448254774, // 4
    0.7518398074790, // 5
    0.7604059656000, // 6
    0.7688418320735, // 7
    0.7771459614570, // 8
    0.7853169308807, // 9
    0.7933533402912, // 10
    0.8012538126911, // 11
    0.8090169943749, // 12
    0.8166415551617, // 13
    0.8241261886220, // 14
    0.8314696123025, // 15
    0.8386705679454, // 16
    0.8457278217040, // 17
    0.8526401643541, // 18
    0.8594064115015, // 19
    0.8660254037844, // 20
    0.8724960070728, // 21
    0.8788171126620, // 22
    0.8849876374630, // 23
    0.8910065241884, // 24
    0.8968727415327, // 25
    0.9025852843499, // 26
    0.9081431738251, // 27
    0.9135454576426, // 28
    0.9187912101489, // 29
    0.9238795325113, // 30
    0.9288095528719, // 31
    0.9335804264972, // 32
    0.9381913359225, // 33
    0.9426414910922, // 34
    0.9469301294951, // 35
    0.9510565162952, // 36
    0.9550199444572, // 37
    0.9588197348682, // 38
    0.9624552364536, // 39
    0.9659258262891, // 40
    0.9692309097068, // 41
    0.9723699203977, // 42
    0.9753423205085, // 43
    0.9781476007338, // 44
    0.9807852804032, // 45
    0.9832549075640, // 46
    0.9855560590581, // 47
    0.9876883405951, // 48
    0.9896513868197, // 49
    0.9914448613738, // 50
    0.9930684569549, // 51
    0.9945218953683, // 52
    0.9958049275747, // 53
    0.9969173337331, // 54
    0.9978589232386, // 55
    0.9986295347546, // 56
    0.9992290362407, // 57
    0.9996573249756, // 58
    0.9999143275740, // 59
    1.0000000000000, // 60
    0.9999785816641, // 61
    0.9999143275740, // 62
    0.9998072404821, // 63
    0.9996573249756, // 64
    0.9994645874764, // 65
    0.9992290362407, // 66
    0.9989506813589, // 67
    0.9986295347546, // 68
    0.9982656101847, // 69
    0.9978589232386, // 70
    0.9974094913374, // 71
    0.9969173337331, // 72
    0.9963824715083, // 73
    0.9958049275747, // 74
    0.9951847266722, // 75
    0.9945218953683, // 76
    0.9938164620564, // 77
    0.9930684569549, // 78
    0.9922779121060, // 79
    0.9914448613738, // 80
    0.9905693404436, // 81
    0.9896513868197, // 82
    0.9886910398242, // 83
    0.9876883405951, // 84
    0.9866433320849, // 85
    0.9855560590581, // 86
    0.9844265680899, // 87
    0.9832549075640, // 88
    0.9820411276703, // 89
    0.9807852804032, // 90
    0.9794874195591, // 91
    0.9781476007338, // 92
    0.9767658813209, // 93
    0.9753423205085, // 94
    0.9738769792773, // 95
    0.9723699203977, // 96
    0.9708212084269, // 97
    0.9692309097068, // 98
    0.9675990923603, // 99
    0.9659258262891, // 100
    0.9642111831703, // 101
    0.9624552364536, // 102
    0.9606580613579, // 103
    0.9588197348682, // 104
    0.9569403357322, // 105
    0.9550199444572, // 106
    0.9530586433063, // 107
    0.9510565162952, // 108
    0.9490136491882, // 109
    0.9469301294951, // 110
    0.9448060464669, // 111
    0.9426414910922, // 112
    0.9404365560934, // 113
    0.9381913359225, // 114
    0.9359059267573, // 115
    0.9335804264972, // 116
    0.9312149347588, // 117
    0.9288095528719, // 118
    0.9263643838751, // 119
    0.9238795325113, // 120
    0.9213551052232, // 121
    0.9187912101489, // 122
    0.9161879571171, // 123
    0.9135454576426, // 124
    0.9108638249212, // 125
    0.9081431738251, // 126
    0.9053836208980, // 127
    0.9025852843499, // 128
    0.8997482840522, // 129
    0.8968727415327, // 130
    0.8939587799699, // 131
    0.8910065241884, // 132
    0.8880161006528, // 133
    0.8849876374630, // 134
    0.8819212643484, // 135
    0.8788171126620, // 136
    0.8756753153754, // 137
    0.8724960070728, // 138
    0.8692793239451, // 139
    0.8660254037844, // 140
    0.8627343859778, // 141
    0.8594064115015, // 142
    0.8560416229148, // 143
    0.8526401643541, // 144
    0.8492021815266, // 145
    0.8457278217040, // 146
    0.8422172337163, // 147
    0.8386705679454, // 148
    0.8350879763187, // 149
    0.8314696123025, // 150
    0.8278156308955, // 151
    0.8241261886220, // 152
    0.8204014435255, // 153
    0.8166415551617, // 154
    0.8128466845916, // 155
    0.8090169943749, // 156
    0.8051526485629, // 157
    0.8012538126911, // 158
    0.7973206537727, // 159
    0.7933533402912, // 160
    0.7893520421932, // 161
    0.7853169308807, // 162
    0.7812481792048, // 163
    0.7771459614570, // 164
    0.7730104533627, // 165
    0.7688418320735, // 166
    0.7646402761590, // 167
    0.7604059656000, // 168
    0.7561390817803, // 169
    0.7518398074790, // 170
    0.7475083268626, // 171
    0.7431448254774, // 172
    0.7387494902412, // 173
    0.7343225094357, // 174
    0.7298640726978, // 175
    0.7253743710123, // 176
    0.7208535967029, // 177
    0.7163019434247, // 178
    0.7117196061552, // 179
    0.7071067811865, // 180
    0.7024636661169, // 181
    0.6977904598417, // 182
    0.6930873625456, // 183
    0.6883545756938, // 184
    0.6835923020229, // 185
    0.6788007455329, // 186
    0.6739801114783, // 187
    0.6691306063589, // 188
    0.6642524379113, // 189
    0.6593458151001, // 190
    0.6544109481086, // 191
    0.6494480483302, // 192
    0.6444573283589, // 193
    0.6394390019806, // 194
    0.6343932841636, // 195
    0.6293203910498, // 196
    0.6242205399450, // 197
    0.6190939493098, // 198
    0.6139408387504, // 199
    0.6087614290087, // 200
    0.6035559419536, // 201
    0.5983246005707, // 202
    0.5930676289532, // 203
    0.5877852522925, // 204
    0.5824776968678, // 205
    0.5771451900372, // 206
    0.5717879602276, // 207
    0.5664062369248, // 208
    0.5610002506640, // 209
    0.5555702330196, // 210
    0.5501164165955, // 211
    0.5446390350150, // 212
    0.5391383229110, // 213
    0.5336145159156, // 214
    0.5280678506504, // 215
    0.5224985647159, // 216
    0.5169068966820, // 217
    0.5112930860771, // 218
    0.5056573733780, // 219
    0.5000000000000, // 220
    0.4943212082861, // 221
    0.4886212414970, // 222
    0.4829003438000, // 223
    0.4771587602596, // 224
    0.4713967368260, // 225
    0.4656145203251, // 226
    0.4598123584479, // 227
    0.4539904997395, // 228
    0.4481491935892, // 229
    0.4422886902190, // 230
    0.4364092406733, // 231
    0.4305110968083, // 232
    0.4245945112807, // 233
    0.4186597375374, // 234
    0.4127070298044, // 235
    0.4067366430758, // 236
    0.4007488331031, // 237
    0.3947438563843, // 238
    0.3887219701524, // 239
    0.3826834323651, // 240
    0.3766285016932, // 241
    0.3705574375098, // 242
    0.3644704998792, // 243
    0.3583679495453, // 244
    0.3522500479212, // 245
    0.3461170570775, // 246
    0.3399692397310, // 247
    0.3338068592338, // 248
    0.3276301795617, // 249
    0.3214394653032, // 250
    0.3152349816478, // 251
    0.3090169943749, // 252
    0.3027857698426, // 253
    0.2965415749756, // 254
    0.2902846772545, // 255
    0.2840153447039, // 256
    0.2777338458813, // 257
    0.2714404498651, // 258
    0.2651354262434, // 259
    0.2588190451025, // 260
    0.2524915770152, // 261
    0.2461532930290, // 262
    0.2398044646550, // 263
    0.2334453638559, // 264
    0.2270762630344, // 265
    0.2206974350215, // 266
    0.2143091530651, // 267
    0.2079116908178, // 268
    0.2015053223256, // 269
    0.1950903220161, // 270
    0.1886669646866, // 271
    0.1822355254921, // 272
    0.1757962799344, // 273
    0.1693495038490, // 274
    0.1628954733946, // 275
    0.1564344650402, // 276
    0.1499667555540, // 277
    0.1434926219912, // 278
    0.1370123416820, // 279
    0.1305261922201, // 280
    0.1240344514505, // 281
    0.1175373974578, // 282
    0.1110353085543, // 283
    0.1045284632677, // 284
    0.0980171403296, // 285
    0.0915016186634, // 286
    0.0849821773724, // 287
    0.0784590957278, // 288
    0.0719326531567, // 289
    0.0654031292301, // 290
    0.0588708036512, // 291
    0.0523359562429, // 292
    0.0457988669365, // 293
    0.0392598157591, // 294
    0.0327190828218, // 295
    0.0261769483079, // 296
    0.0196336924606, // 297
    0.0130895955713, // 298
    0.0065449379674, // 299
    0.0000000000000, // 300
    0.0130895955713, // 301
    0.0261769483079, // 302
    0.0392598157591, // 303
    0.0523359562429, // 304
    0.0654031292301, // 305
    0.0784590957278, // 306
    0.0915016186634, // 307
    0.1045284632677, // 308
    0.1175373974578, // 309
    0.1305261922201, // 310
    0.1434926219912, // 311
    0.1564344650402, // 312
    0.1693495038490, // 313
    0.1822355254921, // 314
    0.1950903220161, // 315
    0.2079116908178, // 316
    0.2206974350215, // 317
    0.2334453638559, // 318
    0.2461532930290, // 319
    0.2588190451025, // 320
    0.2714404498651, // 321
    0.2840153447039, // 322
    0.2965415749756, // 323
    0.3090169943749, // 324
    0.3214394653032, // 325
    0.3338068592338, // 326
    0.3461170570775, // 327
    0.3583679495453, // 328
    0.3705574375098, // 329
    0.3826834323651, // 330
    0.3947438563843, // 331
    0.4067366430758, // 332
    0.4186597375374, // 333
    0.4305110968083, // 334
    0.4422886902190, // 335
    0.4539904997395, // 336
    0.4656145203251, // 337
    0.4771587602596, // 338
    0.4886212414970, // 339
    0.5000000000000, // 340
    0.5112930860771, // 341
    0.5224985647159, // 342
    0.5336145159156, // 343
    0.5446390350150, // 344
    0.5555702330196, // 345
    0.5664062369248, // 346
    0.5771451900372, // 347
    0.5877852522925, // 348
    0.5983246005707, // 349
    0.6087614290087, // 350
    0.6190939493098, // 351
    0.6293203910498, // 352 
    0.6394390019806, // 353
    0.6494480483302, // 354
    0.6593458151001, // 355
    0.6691306063589, // 356
    0.6788007455329, // 357
    0.6883545756938, // 358
    0.6977904598417, // 359
    0.7071067811865  // 360
};

//========================================================================
// radSoundVoiceAdpcmPs2::Play
//========================================================================

void radSoundVoiceAdpcmPs2::Play
(
    void
)
{
    //
    // Just set the key on for all our voices.
    //

    if ( m_Playing == false )
    {
        // Throughout this code, we test so see if we have a sony voice
        // for each operation.  This is a flag that we have a buffer
        // and a physical hardware voice.  This is the only spot where
        // we get the voices, so we wrap this call only with the
        // buffer existence check.

        if ( m_xRadSoundBufferAdpcmPs2 != NULL )
        {

            //
            // Get HardwareVoices might fail if we are physically out of voices.
            // 

            m_HaveVoices = GetHardwareVoices( );

            if ( m_HaveVoices == true )
            {
                m_Playing = true; 

                // Initialize the hardware voices to known values

                SetStartAddressInSamples( m_LastPlaybackPosition );
                SetVoiceVolumes( );
                SetVoicePitches( ); 
                 
                SetVoiceLoopAddresses( );             
               
                // if we were going to stop, clear the stop flag

				if ( m_pHardwareVoiceNumberArrayDry[ 0 ] != NULL_VOICE )
				{
					radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_KeyOnMask[ m_DryCore ] |= GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayDry );
					radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_KeyOffMask[ m_DryCore ] &= ~GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayDry );
					radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_VoiceDryMaskLeft[ m_DryCore ] |= GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayDry );
					radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_VoiceDryMaskRight[ m_DryCore ] |= GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayDry );
				}
				
				for( unsigned int core = 0; core < 2; core ++ )
				{
					if ( m_pHardwareVoiceNumberArrayCoreEffect[ core ][ 0 ] != NULL_VOICE )
					{
						radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_KeyOnMask[ core ] |= GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayCoreEffect[ core ] );
						radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_KeyOffMask[ core ] &= ~GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayCoreEffect[ core ] );
						radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_VoiceEffectMaskLeft[ core ] |= GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayCoreEffect[ core ] );
						radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_VoiceEffectMaskRight[ core ] |= GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayCoreEffect[ core ] );					

						if ( m_AuxModes[ core ] == radSoundAuxMode_PostFaderDirect )
						{
							radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_VoiceDryMaskLeft[ core ] |= GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayCoreEffect[ core ] );
							radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_VoiceDryMaskRight[ core ] |= GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayCoreEffect[ core ] );					
						}

					}
				}

                m_ReadStamp = radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_Stamp;
                m_ReadSynch = false;
				               
                rAssert( IsHardwarePlaying( ) );
            }
        } 
    }
}

//========================================================================
// radSoundVoiceAdpcmPs2::Stop
//========================================================================

void radSoundVoiceAdpcmPs2::Stop( void )
{
    //
    // Just set the key radSoundAuxMode_Off for all our voices.
    //

    if ( m_Playing == true )
    {
        #ifndef RAD_RELEASE

            extern bool g_VoiceStoppingPlayingSilence;
            
            if ( g_VoiceStoppingPlayingSilence == false )
            {
                bool stopOk;
                
                if ( ( m_Trim * m_Volume ) > 0.0f )
                {
                    stopOk = false;
                }
                else
                {
                    stopOk = true;
                }
            
                if ( m_xRadSoundHalPositionalGroup != NULL && ( stopOk == false ) )
                {
                    radSoundVector listenerPosition;
                    radSoundVector voicePosition;
                    
                    float maxDistance;
                    float minDistance;
                    
                    m_xRadSoundHalPositionalGroup->GetMinMaxDistance( & minDistance, & maxDistance );
                    
                    m_xRadSoundHalPositionalGroup->GetPosition( & voicePosition );
                    radSoundHalListenerGet( )->GetPosition( & listenerPosition );
                    
                    float distBetween = listenerPosition.GetDistanceBetween( voicePosition );
                    
                    if ( distBetween < maxDistance )
                    {
                        stopOk = false;
                    }
                    else
                    {
                        stopOk = true;
                    }
                }
                    
                if ( ! stopOk )
                {
                    rTunePrintf( "radsound: TRC Violation: Voice stopped while audible\n" );
                }
            }                
            

        #endif // !RAD_RELEASE

        StopAndFreeHardwareVoices( );
                
        m_Playing = false;
    }
}

//========================================================================
// radSoundVoiceAdpcmPs2::StopAndFreeHardwareVoices
//========================================================================

void radSoundVoiceAdpcmPs2::StopAndFreeHardwareVoices( )
{
    rAssert( m_HaveVoices == true );
                          
    m_LastPlaybackPosition = GetPlaybackPositionInSamples( );

	if ( m_pHardwareVoiceNumberArrayDry[ 0 ] != NULL_VOICE )
	{                             
		radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_KeyOnMask[ m_DryCore ] &= ~GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayDry );                                                                          
		radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_KeyOffMask[ m_DryCore ] |= GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayDry );
		radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_VoiceDryMaskLeft[ m_DryCore ] &= ~GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayDry );
		radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_VoiceDryMaskRight[ m_DryCore ] &= ~GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayDry );
	}
				
	for ( unsigned int core = 0; core < 2; core ++ )
	{
		if ( m_pHardwareVoiceNumberArrayCoreEffect[ core ][ 0 ] != NULL_VOICE )
		{
			radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_KeyOnMask[ core ] &= ~GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayCoreEffect[ core ] );                                                                          
			radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_KeyOffMask[ core ] |= GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayCoreEffect[ core ] );
			radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_VoiceEffectMaskLeft[ core ] &= ~GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayCoreEffect[ core ] );
			radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_VoiceEffectMaskRight[ core ] &= ~GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayCoreEffect[ core ] );					

			if ( m_AuxModes[ core ] == radSoundAuxMode_PostFaderDirect )
			{
				radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_VoiceDryMaskLeft[ core ] &= ~GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayCoreEffect[ core ] );
				radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_VoiceDryMaskRight[ core ] &= ~GetVoiceSwitchMask( m_pHardwareVoiceNumberArrayCoreEffect[ core ] );					
			}
		}
    }					
			   
    FreeHardwareVoices( );

	m_HaveVoices = false;
}

//========================================================================
// radSoundVoiceAdpcmPs2::IsPlaying
//========================================================================

bool radSoundVoiceAdpcmPs2::IsPlaying( void )
{
    return m_Playing;
}

//========================================================================
// radSoundVoiceAdpcmPs2::SetLoopBackPoints
//========================================================================

void radSoundVoiceAdpcmPs2::SetVoiceLoopAddresses( void )
{
    if ( m_HaveVoices == true )
    {            
        for ( unsigned int voice = 0; voice < m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels( ); voice ++ )
        {                        
            unsigned int loopBackPoint = m_xRadSoundBufferAdpcmPs2->GetStartAddress( ) + ( voice * ( m_xRadSoundBufferAdpcmPs2->GetSizeInBytes( ) / m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels( ) ) );
			
			if ( m_pHardwareVoiceNumberArrayDry[ 0 ] != NULL_VOICE )
			{           
				radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_SpuVoiceParams[ m_DryCore ][ m_pHardwareVoiceNumberArrayDry[ voice ] ].m_LoopAddress = loopBackPoint;
				radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_SpuVoiceParams[ m_DryCore ][ m_pHardwareVoiceNumberArrayDry[ voice ] ].m_Flags |= LOOPADDRESS_DIRTY;
			}
						
			for( unsigned int core = 0; core < 2; core ++ )
			{
				if ( m_pHardwareVoiceNumberArrayCoreEffect[ core ][ voice ] != NULL_VOICE )
				{
					radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_SpuVoiceParams[ core ][ m_pHardwareVoiceNumberArrayCoreEffect[ core ][ voice ] ].m_LoopAddress = loopBackPoint;
					radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_SpuVoiceParams[ core ][ m_pHardwareVoiceNumberArrayCoreEffect[ core ][ voice ] ].m_Flags |= LOOPADDRESS_DIRTY;
				}
			}
        }
    }
}

//========================================================================
// radSoundVoiceAdpcmPs2::IsHardwarePlaying
//========================================================================

bool radSoundVoiceAdpcmPs2::IsHardwarePlaying( void )
{
    //
    // Check to see if all of our voices have a playback volume of zero.
    //
    if ( m_HaveVoices == true )
    {
        //
        // Ok, here's the deal: after years of painful research, I have come
        // to the definitive conclusion that there is no IsPlaying( ) function
        // for the sony hardware, you can only check to see if the end point has
        // been passed.  Or, check the envelope volume.  I am currently using
        // the first method, as it seems to give more accurrate results.
        //
        if ( m_xRadSoundBufferAdpcmPs2->IsLooping( ) == false && m_ReadSynch == true)
        {
            //
            // If the buffer is not looping, the end point passing flag signals
            // that the voices is logically stopped, becuase the hardware
            // has "applied muting to the voice".
            //

			unsigned int core = NULL_CORE;
			unsigned int voiceNumber = NULL_VOICE;
						
			voiceNumber = GetLeadVoice( & core );
		
			unsigned int value = radSoundIopPs2::GetInstance( )->GetReadCommandPacket( )->m_EndPointMask[ core ];

			bool endPointPassed = !( value & ( 0x01 << voiceNumber ) );

			return endPointPassed && m_Playing;         
        }
        else
        {
            //
            // If the buffer is looping, and we have set the key_on for the voice, it
            // will never be stopped by hardware, only explicitly by us, and that is
            // what this flag is for.
            //

            return m_Playing;
        } 
    }

    return false;
}


//========================================================================
// radSoundVoiceAdpcmPs2::GetPlaybackPositionInSamples
//========================================================================

unsigned int radSoundVoiceAdpcmPs2::GetPlaybackPositionInSamples
(
    void
)
{
    if ( m_HaveVoices == true && m_ReadSynch == true )
    {
        // Store this function for speed.
        
        IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat = m_xRadSoundBufferAdpcmPs2->GetFormat( );
        unsigned int channels = pIRadSoundHalAudioFormat->GetNumberOfChannels( );

        // check the position of the first voice in the buffer.  All the others
        // are following this one.

		unsigned int core = NULL_CORE;
		unsigned int voiceNumber = NULL_VOICE;
					
		voiceNumber = GetLeadVoice( & core );

        unsigned int address = radSoundIopPs2::GetInstance( )->GetReadCommandPacket( )->
			m_VoiceAddress[ core ][ voiceNumber ];

        // get the logical buffer start and end address so we can convert bytes to samples.
        // if there is more than one channel the buffer is in chunks of samples
        // [ channel1 | channel2 | channel3 | channel4 ], so we must divided the
        // number of bytes by the number of channels.

        unsigned int bufferStart = m_xRadSoundBufferAdpcmPs2->GetStartAddress( );
        unsigned int bufferEnd = bufferStart + ( m_xRadSoundBufferAdpcmPs2->GetSizeInBytes( ) / channels );

        if ( (address  >= bufferStart && address < bufferEnd) == false )
        {
            address = bufferStart;
        }

        //
        // Convert the addres to an offset in bytes.
        //

        unsigned int offsetInBytes = address - bufferStart;

        //
        // BytesToSamples( ) doesn't do any data chunking calculation, it is a simple
        // ratio, so the value it returns will be out by 1/2 in the case of stereo data.
        //

        unsigned int offsetInSamples =
			pIRadSoundHalAudioFormat->BytesToSamples( offsetInBytes ) * channels;


        return ::radMemoryRoundDown( offsetInSamples, 28 );
    }

    return m_LastPlaybackPosition;
}


//========================================================================
// radSoundVoiceAdpcmPs2::SetPlaybackPositionInSamples
//========================================================================

void radSoundVoiceAdpcmPs2::SetPlaybackPositionInSamples
(
    unsigned int samples
)
{
    Stop( );

    if ( m_xRadSoundBufferAdpcmPs2 != NULL )
    {
        rAssert( samples < m_xRadSoundBufferAdpcmPs2->GetFormat( )->FramesToSamples( m_xRadSoundBufferAdpcmPs2->GetSizeInFrames( ) ) );

        m_LastPlaybackPosition = samples;
    }
    else
    {
        m_LastPlaybackPosition = 0;
    }
}

//========================================================================
// radSoundVoiceAdpcmPs2::SetStartAddressInSamples
//========================================================================

void radSoundVoiceAdpcmPs2::SetStartAddressInSamples
(
	unsigned int samples
)
{
    if ( m_HaveVoices == true )
    {
        //
        // A vag "block" is 16 bytes and contains 28 samples
        //
        // Setting the playback register requires this granularity

        samples = ::radMemoryRoundDown( samples, 28 );
   
        unsigned int chunkSize = m_xRadSoundBufferAdpcmPs2->GetSizeInBytes( ) / m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels( );
        unsigned int startAddress = m_xRadSoundBufferAdpcmPs2->GetStartAddress( );
        unsigned int offsetIntoChunk = m_xRadSoundBufferAdpcmPs2->GetFormat( )->SamplesToBytes( samples ) / m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels( ) ;     
                         
        rAssert( offsetIntoChunk < chunkSize );

        //    
        // for each voice set the new start address to the offset within its
        // buffer chunk.
        //

        for ( unsigned int voice = 0; voice < m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels( ); voice ++ )
        {
            unsigned int chunkStartAddress = startAddress + ( chunkSize * voice );
        
            // rDebugChannel( radSoundDebugChannel, "    Voice: [0x%x] SetToAddress:[0x%x] Samples[%d]\n", voice, chunkStartAddress + offsetIntoChunk, samples );

            rAssert( (chunkStartAddress % 16) == 0 );

			if ( m_pHardwareVoiceNumberArrayDry[ 0 ] != NULL_VOICE )
			{        
				radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_SpuVoiceParams[ m_DryCore ][ m_pHardwareVoiceNumberArrayDry[ voice ] ].m_StartAddress = chunkStartAddress + offsetIntoChunk;
				radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_SpuVoiceParams[ m_DryCore ][ m_pHardwareVoiceNumberArrayDry[ voice ] ].m_Flags |= STARTADDRESS_DIRTY;
			}        
			 
			for( unsigned int core = 0; core < 2; core ++ )
			{
				if ( m_pHardwareVoiceNumberArrayCoreEffect[ core ][ 0 ] != NULL_VOICE )
				{
					radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_SpuVoiceParams[ core ][ m_pHardwareVoiceNumberArrayCoreEffect[ core ][ voice ] ].m_StartAddress = chunkStartAddress + offsetIntoChunk;
					radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_SpuVoiceParams[ core ][ m_pHardwareVoiceNumberArrayCoreEffect[ core ][ voice ] ].m_Flags |= STARTADDRESS_DIRTY;
				}
			}
		}
    }
}
   

//========================================================================
// radSoundVoiceAdpcmPs2::FreeHardwareVoices
//========================================================================

void radSoundVoiceAdpcmPs2::FreeHardwareVoices
(
    void
)
{
    //
    // We maintain a bit mask for each core, just set the bits for all of
    // our hardware voices to zero.
    //

    for ( unsigned int voiceNumber = 0; voiceNumber < m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels( ); voiceNumber ++ )
    {
        if ( m_pHardwareVoiceNumberArrayDry[ voiceNumber ] != NULL_VOICE )
        { 
            g_UsedCoreVoiceBitMask[ m_DryCore ] &= ( ~( 0x01 << m_pHardwareVoiceNumberArrayDry[voiceNumber] ));
            m_pHardwareVoiceNumberArrayDry[ voiceNumber ] = NULL_VOICE; 
        }
	
		for( unsigned int core = 0; core < 2 ; core ++ )
		{
			if ( m_pHardwareVoiceNumberArrayCoreEffect[ core ][ voiceNumber ] != NULL_VOICE )
			{
				g_UsedCoreVoiceBitMask[ core ] &= ( ~( 0x01 << m_pHardwareVoiceNumberArrayCoreEffect[ core ][voiceNumber] ));
				m_pHardwareVoiceNumberArrayCoreEffect[ core ][ voiceNumber ] = NULL_VOICE;
			}
		}
    }

	m_DryCore = NULL_CORE;
}

//========================================================================
// radSoundVoiceAdpcmPs2::GetCoreVoices
//========================================================================

bool radSoundVoiceAdpcmPs2::GetCoreVoices
(
	unsigned int core,
	unsigned int * pVoices,
	unsigned int numVoices
)
{
	unsigned int foundVoices = 0;

	unsigned int foundVoiceMask = 0x00;
	unsigned int checkVoiceMask = 0x00;

    for ( unsigned int currentUserVoice = 0; currentUserVoice < numVoices; currentUserVoice ++ )
    {
        for ( unsigned int checkVoice = 0; checkVoice < 24; checkVoice ++ )
        {
            checkVoiceMask = 0x01 << checkVoice;

            if (  ( ( g_UsedCoreVoiceBitMask[ core ] & checkVoiceMask ) == 0 ) && ( ( foundVoiceMask & checkVoiceMask ) == 0  ) )
            {
                pVoices[ currentUserVoice ] = checkVoice;
                foundVoiceMask |= checkVoiceMask;
                foundVoices++;
                break;
            }
        }
	}

    if ( foundVoices < numVoices )
    {
        for ( unsigned int voiceToNull = 0; voiceToNull < numVoices; voiceToNull ++ )
        {
            pVoices[ voiceToNull ] = NULL_VOICE;
        }

		return false;
    }

    for ( unsigned int voiceToMark = 0; voiceToMark < numVoices; voiceToMark ++ )
    {
        g_UsedCoreVoiceBitMask[ core ] |= ( 0x01 << pVoices[ voiceToMark ] ); // mark as used.
    }

	
	return true; 
}

//============================================================================
// radSoundVoiceAdpcmPs2::FreeHardwareVoices
//============================================================================

bool radSoundVoiceAdpcmPs2::GetHardwareVoices
(
    void
)
{
    //
    // We are trying to capture unused voices, we want all of the voices on
    // the same core.
    //

	unsigned int numChannels = m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels( );

    rAssert( m_pHardwareVoiceNumberArrayDry[ 0 ] == NULL_VOICE );
    rAssert( m_pHardwareVoiceNumberArrayDry[ 1 ] == NULL_VOICE );
	rAssert( m_pHardwareVoiceNumberArrayCoreEffect[ 0 ][ 0 ] == NULL_VOICE );
	rAssert( m_pHardwareVoiceNumberArrayCoreEffect[ 0 ][ 1 ] == NULL_VOICE );
	rAssert( m_pHardwareVoiceNumberArrayCoreEffect[ 1 ][ 0 ] == NULL_VOICE );
	rAssert( m_pHardwareVoiceNumberArrayCoreEffect[ 0 ][ 1 ] == NULL_VOICE );

	//
	// Find some dry voices, we only need dry voices if none of the aux
	// modes are post fader direct.
	//

	bool foundDry = true;

	if
	(
		m_AuxModes[ 0 ] != radSoundAuxMode_PostFaderDirect &&
		m_AuxModes[ 1 ] != radSoundAuxMode_PostFaderDirect
	)
	{
		unsigned int numAuxSends = ::radSoundHalSystemGet( )->GetNumAuxSends( );
		unsigned int tryCore = NULL_CORE;

		if ( numAuxSends == 0 )
		{
			tryCore = GetCoreWithMostFreeVoices( );
		}
		else if ( numAuxSends == 1 )
		{
			tryCore = 1;
		}
		else if ( numAuxSends == 2 )
		{
			if
			(
				::radSoundHalSystemGet( )->GetAuxEffect( 0 ) != NULL &&
				::radSoundHalSystemGet( )->GetAuxEffect( 1 ) != NULL
			)
			{
				tryCore = GetCoreWithMostFreeVoices( );
			}
			else
			{
				if ( ::radSoundHalSystemGet( )->GetAuxEffect( 0 ) != NULL )
				{
					tryCore = 1;
				}
				else
				{
					tryCore = 0;
				}
			}
		}

		rAssert( tryCore != NULL_CORE );

		do
		{
			foundDry = GetCoreVoices( tryCore, m_pHardwareVoiceNumberArrayDry, numChannels );
		}
		while( foundDry == false && AttemptVoiceKill( tryCore ) );

		if( foundDry == true )
		{
			m_DryCore = tryCore;
		}
		else
		{
			tryCore = ( tryCore == 0 ? 1 : 0 );

			do
			{
				foundDry = GetCoreVoices( tryCore, m_pHardwareVoiceNumberArrayDry, numChannels );
			}
			while( foundDry == false && AttemptVoiceKill( tryCore ) );

			if ( foundDry == true )
			{
				m_DryCore = tryCore;
			}
		}
	}
	else
	{
		m_DryCore = NULL_CORE;
	}

	rWarningMsg( foundDry == true, "radSound: Out of voices trying to capture dry voices, and priority kill failed" );

	if ( foundDry == true )
	{
		for ( unsigned int core = 0; core < 2; core ++ )
		{	
			if ( m_AuxModes[ core ] != radSoundAuxMode_Off )
			{
				bool foundWet = false;

				do
				{
					foundWet = GetCoreVoices(
						core, m_pHardwareVoiceNumberArrayCoreEffect[ core ], numChannels );
				}
				while( foundWet == false && AttemptVoiceKill( core ) );

				rWarningMsg( foundWet, "radSound: Out of voices trying to assign effect, and priority kill failed" );
			}
		}
	}

	//
	// If any of our voices can be LeadVoice, this is good enough for us!
	//

	if
	(
		m_pHardwareVoiceNumberArrayDry[ 0 ] != NULL_VOICE ||
		m_pHardwareVoiceNumberArrayCoreEffect[ 0 ][ 0 ] != NULL_VOICE ||
		m_pHardwareVoiceNumberArrayCoreEffect[ 1 ][ 0 ] != NULL_VOICE
	)
	{
		return true;
	}

	return false;
}



//========================================================================
// radSoundVoiceAdpcmPs2::GetVoiceSwitchMask
//========================================================================

unsigned int radSoundVoiceAdpcmPs2::GetVoiceSwitchMask
(
	unsigned int voiceNumberArray[ 2 ] 
)
{
    rAssert( voiceNumberArray[ 0 ] != NULL_VOICE );

    //
    // For the Switch fucntions (rSdSetSwitch) in the sony libraries, we build
    // up a mask from all of our voices.
    //

    unsigned int voiceMask = 0x00;

    for
    (
        unsigned int voiceToMark = 0;
        voiceToMark < m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels( );
        voiceToMark ++
    )
    {
        voiceMask |= ( 0x01 << voiceNumberArray[ voiceToMark ] );
    }

    return voiceMask;
}

//========================================================================
// radSoundVoiceAdpcmPs2::SetVoiceVolumes
//========================================================================

void radSoundVoiceAdpcmPs2::SetVoiceVolumes( void )
{
    if ( m_HaveVoices == true )
    {
        //
        // Pan and volume are related so when the volume changes, we have to take
        // the current pan setting into consideration, and vise versa.
        //

        float lPanFactorAmp;
        float rPanFactorAmp;
        float positionalVolumeAdjustAmp;

        if ( m_xRadSoundHalPositionalGroup == NULL ) 
        {
            radSoundPanToVolumePower( m_Pan, & lPanFactorAmp, & rPanFactorAmp );
            positionalVolumeAdjustAmp = 1.0f;
		    lPanFactorAmp = ::radSoundPowerToAmplitude( lPanFactorAmp );
		    rPanFactorAmp = ::radSoundPowerToAmplitude( rPanFactorAmp );
        }
        else
        {
            if ( radSoundHalSystemGet( )->GetOutputMode( ) == radSoundOutputMode_Surround )
            {
                CaculateSurroundPanAmpFactor( 
                    m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_PanAdjust,
                    m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_FrontBackPanAdjust,
                    & lPanFactorAmp,
                    & rPanFactorAmp );
                positionalVolumeAdjustAmp = m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_VolumeAdjust;
            }
            else
            {
                radSoundPanToVolumePowerConstant( m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_PanAdjust, & lPanFactorAmp, & rPanFactorAmp );
                positionalVolumeAdjustAmp = m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_VolumeAdjust;
		        lPanFactorAmp = ::radSoundPowerToAmplitude( lPanFactorAmp );
		        rPanFactorAmp = ::radSoundPowerToAmplitude( rPanFactorAmp );
            }
        }


		float trimAmp = ::radSoundVolumeAnalogToAmplitude( m_Trim );
		float volAmp  = ::radSoundVolumeAnalogToAmplitude( m_Volume );

		float preFaderLAmp  = positionalVolumeAdjustAmp * lPanFactorAmp * m_MuteFactor * trimAmp;
		float preFaderRAmp  = positionalVolumeAdjustAmp * rPanFactorAmp * m_MuteFactor * trimAmp;
		float postFaderLAmp = preFaderLAmp * volAmp;
		float postFaderRAmp = preFaderRAmp * volAmp;

        // Calculated Occlusion and obstruction multipliers

        float occl = 1.0f;
        float obst = 1.0f;
        
        if ( m_xRadSoundHalPositionalGroup != NULL )
        {
            occl = OcclusionAnalogToMultiplier( m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_Occlusion );
            obst = ObstructionAnalogToMultiplier( m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_Obstruction );
        }

        // Calculate the surround multipliers

        float lSurround = 1.0f;
        float rSurround = 1.0f;

        CalculateSurroundMultipliers( & lSurround, & rSurround );

        //
		// Set dry voices.  (We apply both the occlusion and obstruction to the dry voice.
		//

        short leftSpuVolume  = ::radSoundVolumeAmplitudeToHardwareAdpcmPs2( postFaderLAmp * occl * obst * lSurround );
		short rightSpuVolume = ::radSoundVolumeAmplitudeToHardwareAdpcmPs2( postFaderRAmp * occl * obst * rSurround );
		
        //
        // Mono and stereo voices are handled differently.  For a mono voice a single voice
        // gets the l/r volume values.  In the case of a stereo voice, the left voice
        // will allways have a right volume of zero, and the right volume will allways have
        // a left volume of zero.
        //

		if ( m_pHardwareVoiceNumberArrayDry[ 0 ] != NULL_VOICE )
		{

			if ( m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels() == 1 )
			{
				radSoundSpuVoiceParams * pVp =
					& ( radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->
						m_SpuVoiceParams[ m_DryCore ][ m_pHardwareVoiceNumberArrayDry[ 0 ] ] );

				pVp->m_LeftVolume  = leftSpuVolume; 
				pVp->m_RightVolume = rightSpuVolume;
				pVp->m_Flags |= RVOL_DIRTY | LVOL_DIRTY;

				//
				// Convert to mono
				//

				if ( radSoundHalSystemGet( )->GetOutputMode( ) == radSoundOutputMode_Mono )
				{
					pVp->m_LeftVolume = ( pVp->m_LeftVolume + pVp->m_RightVolume ) / 2;
					pVp->m_RightVolume = pVp->m_LeftVolume;
    			}
			}
			else if ( m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels() == 2 )
			{
				radSoundSpuVoiceParams * pVp0 =
					& ( radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->
						m_SpuVoiceParams[ m_DryCore ][ m_pHardwareVoiceNumberArrayDry[ 0 ] ] );

				radSoundSpuVoiceParams * pVp1 =
					& ( radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->
						m_SpuVoiceParams[ m_DryCore ][ m_pHardwareVoiceNumberArrayDry[ 1 ] ] );

				pVp0->m_LeftVolume = leftSpuVolume;
				pVp0->m_RightVolume = 0;
				pVp1->m_LeftVolume  = 0;
				pVp1->m_RightVolume = rightSpuVolume;

				pVp0->m_Flags |= RVOL_DIRTY | LVOL_DIRTY;
				pVp1->m_Flags |= RVOL_DIRTY | LVOL_DIRTY;

				//
				// ConvertToMono
				//

				if ( radSoundHalSystemGet( )->GetOutputMode( ) == radSoundOutputMode_Mono )
				{
					pVp0->m_LeftVolume  = pVp0->m_LeftVolume / 2;
					pVp0->m_RightVolume = pVp0->m_LeftVolume;
					pVp1->m_RightVolume = pVp1->m_RightVolume / 2;
					pVp1->m_LeftVolume  = pVp1->m_RightVolume;
				}
			}
			else
			{
				rAssert( 0 ); // Only stereo or mono supported
			}
		}


     	//
		// Set effect voices
		//

    	for ( unsigned int core = 0; core < 2; core ++ )
		{
			if ( m_pHardwareVoiceNumberArrayCoreEffect[ core ][ 0 ] != NULL_VOICE )
			{
				short leftEffectVolume;
				short rightEffectVolume;

				if ( m_AuxModes[ core ] == radSoundAuxMode_PostFaderDirect )
				{
					leftEffectVolume = leftSpuVolume;
					rightEffectVolume = rightSpuVolume;
				}
				else
				{
                    if( m_xRadSoundHalPositionalGroup == NULL )
                    {
                        float coreAuxGainAmp = ::radSoundVolumeAnalogToAmplitude( m_AuxGains[ core ] );

					    if ( m_AuxModes[ core ] == radSoundAuxMode_PreFader )
					    {
						    leftEffectVolume  = ::radSoundVolumeAmplitudeToHardwareAdpcmPs2( preFaderLAmp * coreAuxGainAmp );					
						    rightEffectVolume = ::radSoundVolumeAmplitudeToHardwareAdpcmPs2( preFaderRAmp * coreAuxGainAmp );
  					    }
					    else
					    {
                            rAssert( m_AuxModes[ core ] == radSoundAuxMode_PostFader );

						    leftEffectVolume  = ::radSoundVolumeAmplitudeToHardwareAdpcmPs2( postFaderLAmp * coreAuxGainAmp );					
						    rightEffectVolume = ::radSoundVolumeAmplitudeToHardwareAdpcmPs2( postFaderRAmp * coreAuxGainAmp );
					    }
                    }
                    else
                    {
                        if( core != m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_EnvAuxSend )
                        {
                            // Don't listen to this effect
                            leftEffectVolume = radSoundVolumeAmplitudeToHardwareAdpcmPs2( 0.0f );
                            rightEffectVolume = radSoundVolumeAmplitudeToHardwareAdpcmPs2( 0.0f );
                        }
                        else
                        {
                            // We're positional, so we don't listen to aux modes, etc.
                            // And only the occlusion factor matters here
                            leftEffectVolume  = ::radSoundVolumeAmplitudeToHardwareAdpcmPs2( postFaderLAmp * occl );					
						    rightEffectVolume = ::radSoundVolumeAmplitudeToHardwareAdpcmPs2( postFaderRAmp * occl );
                        }
                    }
				}

				if ( m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels() == 1 )
				{
					radSoundSpuVoiceParams * pVp =
						& ( radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->
							m_SpuVoiceParams[ core ][ m_pHardwareVoiceNumberArrayCoreEffect[ core ][ 0 ] ] );
						 
					pVp->m_LeftVolume  = leftEffectVolume;
					pVp->m_RightVolume = rightEffectVolume;
					pVp->m_Flags |= RVOL_DIRTY | LVOL_DIRTY;			

					//
					// Convert to mono
					//

					if ( radSoundHalSystemGet( )->GetOutputMode( ) == radSoundOutputMode_Mono )
					{
						pVp->m_LeftVolume = ( pVp->m_LeftVolume + pVp->m_RightVolume ) / 2;
						pVp->m_RightVolume = pVp->m_LeftVolume;
					}

				}
				else if ( m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels() == 2 )
				{
					radSoundSpuVoiceParams * pVp0 = 
						& ( radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->
							m_SpuVoiceParams[ core ][ m_pHardwareVoiceNumberArrayCoreEffect[ core ][ 0 ] ] );

					radSoundSpuVoiceParams * pVp1 = 
						& ( radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->
							m_SpuVoiceParams[ core ][ m_pHardwareVoiceNumberArrayCoreEffect[ core ][ 1 ] ] );
													
					pVp0->m_LeftVolume = leftEffectVolume;
					pVp0->m_RightVolume = 0;
					pVp1->m_LeftVolume  = 0;
					pVp1->m_RightVolume = rightEffectVolume;
										
					pVp0->m_Flags |= RVOL_DIRTY | LVOL_DIRTY;
					pVp1->m_Flags |= RVOL_DIRTY | LVOL_DIRTY;					

					//
					// ConvertToMono
					//

					if ( radSoundHalSystemGet( )->GetOutputMode( ) == radSoundOutputMode_Mono )
					{
						pVp0->m_LeftVolume = pVp0->m_LeftVolume / 2;
						pVp0->m_RightVolume = pVp0->m_LeftVolume;
						pVp1->m_RightVolume = pVp1->m_RightVolume / 2;
						pVp1->m_LeftVolume  = pVp1->m_RightVolume;
					}

				}
				else
				{
					rAssert( 0 ); // Only stereo or mono supported
				}
			}
		}
    }
}

//========================================================================
// radSoundVoiceAdpcmPs2::SetVoiceEffects
//========================================================================

void radSoundVoiceAdpcmPs2::SetVoiceEffects( void )
{
	SetVoiceVolumes( );
}

//========================================================================
// radSoundVoiceAdpcmPs2::SetVoicePitches
//========================================================================

void radSoundVoiceAdpcmPs2::SetVoicePitches( void )
{
    //
    // Convert the pitch multiple to a hardware setting. 
    //

    float pitchAdjust;

    if ( m_xRadSoundHalPositionalGroup == NULL )
    {
        pitchAdjust = m_Pitch;
    }
    else
    {
        pitchAdjust = m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_PitchAdjust * m_Pitch;
    }

    if ( m_HaveVoices == true  )
    {
        short spuPitch = ::radSoundPitchPercentageToHardwareAdpcmPs2
        (
            pitchAdjust,
            m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetSampleRate( )
        );

        //
        // Set all of our voices to this pitch.  To bad we couldn't set them all at once.
        // There is a chance we could lose sync here, but there's nothing we can do
        // about it.
        // 

        for
        (
            unsigned int voice = 0;
            voice < m_xRadSoundBufferAdpcmPs2->GetFormat( )->GetNumberOfChannels( );
            voice ++
        )
        {
			if ( m_pHardwareVoiceNumberArrayDry[ 0 ] != NULL_VOICE )
			{
				radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_SpuVoiceParams[ m_DryCore ][ m_pHardwareVoiceNumberArrayDry[ voice ] ].m_Pitch = spuPitch;
				radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_SpuVoiceParams[ m_DryCore ][ m_pHardwareVoiceNumberArrayDry[ voice ] ].m_Flags |= PITCH_DIRTY;
			}

			for( unsigned int core = 0; core < 2; core ++ )
			{
				if ( m_pHardwareVoiceNumberArrayCoreEffect[ core ][ voice ] != NULL_VOICE )
				{
					radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_SpuVoiceParams[ core ][ m_pHardwareVoiceNumberArrayCoreEffect[ core ][ voice ] ].m_Pitch = spuPitch;
					radSoundIopPs2::GetInstance( )->GetWriteCommandPacket( )->m_SpuVoiceParams[ core ][ m_pHardwareVoiceNumberArrayCoreEffect[ core ][ voice ] ].m_Flags |= PITCH_DIRTY;
				}
			}	
        }
    }
}

//============================================================================
// radSoundVoiceAdpcmPs2::OcclusionAnalogToMultiplier
//============================================================================

float radSoundVoiceAdpcmPs2::OcclusionAnalogToMultiplier( float occlAnalog )
{
    // For now just linear
    return 1.0f - occlAnalog;
}

//============================================================================
// radSoundVoiceAdpcmPs2::ObstructionAnalogToMultiplier
//============================================================================

float radSoundVoiceAdpcmPs2::ObstructionAnalogToMultiplier( float obstAnalog )
{
    // For now just linear
    return 1.0 - obstAnalog;
}

//============================================================================
// radSoundVoiceAdpcmPs2::CalculateSurroundMultipliers
//============================================================================

void radSoundVoiceAdpcmPs2::CalculateSurroundMultipliers( float * pLSurround, float * pRSurround )
{
    rAssert( pLSurround != NULL );
    rAssert( pRSurround != NULL );

    if ( m_xRadSoundHalPositionalGroup != NULL && radSoundHalSystemGet( )->GetOutputMode( ) == radSoundOutputMode_Surround )
    {
        //
        // Surround calculations require the knowledge of the quadrant of the previous
        // position.  To avoid an instantaneous flip of the sign of the volume, 8 quadrants
        // are used.  They are numbered as you follow 720 degrees around the origin.  They
        // are then repeated.
        //
        //           \3|0/        \7|4/    
        //            \|/          \|/       
        //             |            |   
        //          2  | 1       6  | 5   
        //
        // So the idea is that if the previous position was quadrant 7, and you traveled
        // clockwise into the next quadrant, your new position would be quadrant 0.
        //
        // The dolby prologic II encoding is emulated by adjusting the polarity of the 
        // left and right volumes.  This method is based on the Dolby Pro Logic II Lt/Rt
        // Coefficient Table, which is available on the Ps2 website.
        //

        radSoundVector vObject( 
            m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_PanAdjust, 
            m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_FrontBackPanAdjust, 
            0.0f );

        if ( m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_PanAdjust > 0 )
        {
            radSoundVector panAxis( 0.0f, 1.0f, 0.0f );
            int angle = ::radSoundFloatToInt( panAxis.GetAngleBetween( vObject ) + 0.5f );

            if ( angle <= 60 )
            {
                // Front right (quadrant 0 or 4)

                if ( ( m_PreviousQuadrant + 1 ) % 8 > 3 )
                {
                    m_PreviousQuadrant = 4;
                    * pLSurround = -1.0f;
                    * pRSurround = -1.0f;        
                }
                else
                {
                    m_PreviousQuadrant = 0;
                    * pLSurround = 1.0f;
                    * pRSurround = 1.0f;        
                }
            }
            else
            {
                // Back right (quadrant 1 or 5)

                if ( m_PreviousQuadrant > 3 )
                {
                    m_PreviousQuadrant = 5;
                    * pLSurround = 1.0f;
                    * pRSurround = -1.0f;        
                }
                else
                {
                    m_PreviousQuadrant = 1;
                    * pLSurround = -1.0f;
                    * pRSurround = 1.0f;        
                }
            }
        }
        else
        {
            radSoundVector panAxis( 0.0f, -1.0f, 0.0f );
            int angle = ::radSoundFloatToInt( panAxis.GetAngleBetween( vObject ) + 0.5f );

            if ( angle >= 120 )
            {
                // Front left (quadrant 3 or 7)

                if ( ( m_PreviousQuadrant + 3 ) % 8 > 3 )
                {
                    m_PreviousQuadrant = 3;
                    * pLSurround = -1.0f;
                    * pRSurround = -1.0f;        
                }
                else
                {
                    m_PreviousQuadrant = 7;
                    * pLSurround = 1.0f;
                    * pRSurround = 1.0f;        
                }
            }
            else
            {
                // Back left (quadrant 2 or 6)

                if ( m_PreviousQuadrant > 3 )
                {
                    m_PreviousQuadrant = 6;
                    * pLSurround = 1.0f;
                    * pRSurround = -1.0f;        
                }
                else
                {
                    m_PreviousQuadrant = 2;
                    * pLSurround = -1.0f;
                    * pRSurround = 1.0f;        
                }
            }
        }
    }
    else
    {
        * pLSurround = 1.0f;
        * pRSurround = 1.0f;    
    }
}

//============================================================================
// radSoundVoiceAdpcmPs2::CaculateSurroundPanAmpFactor
//============================================================================

void radSoundVoiceAdpcmPs2::CaculateSurroundPanAmpFactor( float pan, float span, float * lFactorAmp, float * rFactorAmp )
{
    radSoundVector vObject( pan, span, 0.0f );

    if ( pan < 0.00001f && pan > -0.00001f && span < 0.00001f && span > -0.00001f )
    {
        * lFactorAmp = g_SurroundTableFrontToRightToBack[ 0 ];
        * rFactorAmp = g_SurroundTableFrontToRightToBack[ 0 ];
    }
    else
    {
        if( pan > 0.0f )
        {
            radSoundVector panAxis( 0.0f, 1.0f, 0.0f );

            int angle = ::radSoundFloatToInt( panAxis.GetAngleBetween( vObject ) + 0.5f );

            * lFactorAmp = g_SurroundTableFrontToRightToBack[ 360 - angle ];
            * rFactorAmp = g_SurroundTableFrontToRightToBack[ angle ];
        }
        else
        {
            radSoundVector panAxis( 0.0f, -1.0f, 0.0f );

            int angle = ::radSoundFloatToInt( panAxis.GetAngleBetween( vObject ) + 0.5f );

            * lFactorAmp = g_SurroundTableFrontToRightToBack[ 180 - angle ];
            * rFactorAmp = g_SurroundTableFrontToRightToBack[ 180 + angle ];
        }
    }
}

//============================================================================
// radSoundVoiceAdpcmPs2::radSoundVoiceAdpcmPs2
//============================================================================

radSoundVoiceAdpcmPs2::radSoundVoiceAdpcmPs2( void )
    :
	m_Priority( 5 ),
    m_Playing( false ),
	m_HaveVoices( false ),
    m_Trim( 1.0f ),
    m_MuteFactor( 1.0f ),
    m_Volume( 1.0f ),
    m_Pan( 0.0f ),
    m_Pitch( 1.0f ),
    m_PreviousQuadrant( 0 ),
    m_LastPlaybackPosition( 0 ),
    m_DryCore( NULL_CORE ),
    m_ReadStamp( 0 ),
    m_ReadSynch( false ),
	m_xRadSoundHalPositionalGroup( NULL )
{
    m_pHardwareVoiceNumberArrayDry[0] = NULL_VOICE;
    m_pHardwareVoiceNumberArrayDry[1] = NULL_VOICE;

	m_pHardwareVoiceNumberArrayCoreEffect[ 0 ][ 0 ] = NULL_VOICE;
	m_pHardwareVoiceNumberArrayCoreEffect[ 0 ][ 1 ] = NULL_VOICE;
	m_pHardwareVoiceNumberArrayCoreEffect[ 1 ][ 0 ] = NULL_VOICE;
	m_pHardwareVoiceNumberArrayCoreEffect[ 1 ][ 1 ] = NULL_VOICE;

	m_AuxGains[ 0 ] = 0.0f;
	m_AuxGains[ 1 ] = 0.0f;

	m_AuxModes[ 0 ] = radSoundAuxMode_Off;
	m_AuxModes[ 1 ] = radSoundAuxMode_Off;
}

//============================================================================
// radSoundVoiceAdpcmPs2::~radSoundVoiceAdpcmPs2
//============================================================================

radSoundVoiceAdpcmPs2::~radSoundVoiceAdpcmPs2( void )
{
    Stop( );

    if ( m_xRadSoundHalPositionalGroup != NULL )
    {
        m_xRadSoundHalPositionalGroup->RemovePositionalEntity( this );
		m_xRadSoundHalPositionalGroup = NULL;
    }
}

//============================================================================
// radSoundVoiceAdpcmPs2::SetBuffer
//============================================================================

void radSoundVoiceAdpcmPs2::SetBuffer( IRadSoundHalBuffer * pB )
{
    Stop( );

    m_LastPlaybackPosition = 0;

    m_xRadSoundBufferAdpcmPs2 = static_cast< radSoundBufferAdpcmPs2 * >( pB );
}

//============================================================================
// radSoundVoiceAdpcmPs2::GetBuffer
//============================================================================

IRadSoundHalBuffer *  radSoundVoiceAdpcmPs2::GetBuffer( void )
{
    return m_xRadSoundBufferAdpcmPs2;
}

//============================================================================
// radSoundVoiceAdpcmPs2::SetPositionalGroup
//============================================================================

/* virtual */ void radSoundVoiceAdpcmPs2::SetPositionalGroup( IRadSoundHalPositionalGroup * pIRshpg )
{
	if( m_xRadSoundHalPositionalGroup != NULL )
	{
		m_xRadSoundHalPositionalGroup->RemovePositionalEntity( this );
		
		SetVoiceVolumes( );
		SetVoicePitches( );
	}

	m_xRadSoundHalPositionalGroup = static_cast< radSoundHalPositionalGroup * >( pIRshpg );

	if( m_xRadSoundHalPositionalGroup != NULL )
	{
		m_xRadSoundHalPositionalGroup->AddPositionalEntity( this );
	}
}

//============================================================================
// radSoundVoiceAdpcmPs2::GetPositionalGroup
//============================================================================

/* virtual */ IRadSoundHalPositionalGroup * radSoundVoiceAdpcmPs2::GetPositionalGroup( void )
{
    return m_xRadSoundHalPositionalGroup;
}

//============================================================================
// radSoundVoiceAdpcmPs2::ApplySettings
//============================================================================

void radSoundVoiceAdpcmPs2::OnApplyPositionalSettings( void )
{
    rAssert( m_xRadSoundHalPositionalGroup != NULL );

    // Override the aux send modes

	m_AuxModes[ 0 ] = radSoundAuxMode_Off;
	m_AuxModes[ 1 ] = radSoundAuxMode_Off;

    if
    ( 
        m_xRadSoundHalPositionalGroup->
        m_RadSoundHalPositionalInformation.m_EnvAuxSend < 
        ::radSoundHalSystemGet( )->GetNumAuxSends( )
    )
    {
        m_AuxModes[ m_xRadSoundHalPositionalGroup->
            m_RadSoundHalPositionalInformation.m_EnvAuxSend ] = radSoundAuxMode_PostFader;
    }

	if( m_Playing )
	{
		SetVoiceVolumes( );
		SetVoicePitches( );
	}
}

//============================================================================
// radSoundVoiceAdpcmPs2::GetLeadVoices
//============================================================================

unsigned int radSoundVoiceAdpcmPs2::GetLeadVoice( unsigned int * pCore )
{
	rAssert( pCore != NULL );

	if ( m_pHardwareVoiceNumberArrayDry[ 0 ] != NULL_VOICE )
	{
		*pCore = m_DryCore;
		return m_pHardwareVoiceNumberArrayDry[ 0 ];

	}
	else if ( m_pHardwareVoiceNumberArrayCoreEffect[ 0 ][ 0 ] != NULL_VOICE )
	{
		*pCore = 0;
		return m_pHardwareVoiceNumberArrayCoreEffect[ 0 ][ 0 ];
	}
	else if ( m_pHardwareVoiceNumberArrayCoreEffect[ 1 ][ 0 ] != NULL_VOICE )
	{
		*pCore = 1;
		return m_pHardwareVoiceNumberArrayCoreEffect[ 1 ][ 0 ];
	}
	else
	{
		rAssert( 0 );
	}

	*pCore = NULL_CORE;

	return NULL_VOICE;
}

//============================================================================
// radSoundVoiceAdpcmPs2::AttemptVoiceKill
//============================================================================

bool radSoundVoiceAdpcmPs2::AttemptVoiceKill( unsigned int core )
{
	radSoundVoiceAdpcmPs2 * pSearch = NULL;
	radSoundVoiceAdpcmPs2 * pVoiceToKill = NULL;

	if ( m_xRadSoundHalPositionalGroup != NULL )
	{
		//
		// Refresh our positional information
		//

		radSoundHalListener::GetInstance( )->CalculatePositionalInformation(
			& m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation );

		float lowestVolume = 1.0f;

		pSearch = GetLinkedClassHead( );

		while ( pSearch != NULL )
		{
			if ( pSearch->GetPositionalGroup( ) != NULL )
			{
				if ( pSearch->m_Priority <= m_Priority )
				{
					if ( pSearch->HasVoiceOnCore( core ) )
					{
						if ( pSearch->IsHardwarePlaying( ) )
						{
							if ( static_cast< radSoundHalPositionalGroup * >( pSearch->GetPositionalGroup( ) )->m_RadSoundHalPositionalInformation.m_VolumeAdjust <
							     m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_VolumeAdjust )
							{
								lowestVolume = pSearch->m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_VolumeAdjust;
								pVoiceToKill = pSearch;
							}
						}						
					}
				}
			}

			pSearch = pSearch->GetLinkedClassNext( );			
		}
	}

	if ( pVoiceToKill == NULL )
	{
		pSearch = GetLinkedClassHead( );

		while( pSearch != NULL )
		{
			if ( pSearch->m_Priority < m_Priority )
			{
				if ( pSearch->HasVoiceOnCore( core ) )
				{
					if ( pSearch->IsHardwarePlaying( ) )
					{
						pVoiceToKill = pSearch;
						break;
					}
				}
			}
			
			pSearch = pSearch->GetLinkedClassNext( );		
		}

		if ( pVoiceToKill != NULL )
		{
			rDebugString( "radSound: Killing voice based on priority\n" );
		}
			
	}
	else
	{
		rDebugString( "radSound: Killing voice based on positional volume and priority\n" );
	}

	if ( pVoiceToKill != NULL )
	{
		pVoiceToKill->Stop( );

		return true;
	}

	return false;
}

bool radSoundVoiceAdpcmPs2::HasVoiceOnCore( unsigned int core )
{
    return (
		m_DryCore == core ||
		m_pHardwareVoiceNumberArrayCoreEffect[ core ][ 0 ] != NULL_VOICE );

}

unsigned int radSoundVoiceAdpcmPs2::GetCoreWithMostFreeVoices( void )
{	
	return GetNumberOfUsedCoreVoices( 0 ) < GetNumberOfUsedCoreVoices( 1 ) ? 0 : 1;
}

unsigned int radSoundVoiceAdpcmPs2::GetNumberOfUsedCoreVoices( unsigned int core )
{
	unsigned int count = 0;

	unsigned int mask = g_UsedCoreVoiceBitMask[ core ];

	for ( unsigned int i = 0; i < 24; i ++ )
	{
		if ( mask & ( 0x01 << i ) )
		{
			count++;
		}
	}

	return count;	
}

void radSoundVoiceAdpcmPs2::Service( void )
{
    if ( m_Playing == true )
    {
        // Check to see if the voice has ended

        if ( IsHardwarePlaying( ) == false )
        {
            StopAndFreeHardwareVoices( );

            m_Playing = false;

            m_LastPlaybackPosition = 0;
        }
        else
        {
            // Check to see if we are locked to the IOP async read packet

            if ( m_ReadSynch == false )
            {

                unsigned int readStamp = radSoundIopPs2::GetInstance( )->GetReadCommandPacket( )->m_Stamp;
                unsigned int dif = readStamp - m_ReadStamp;

                if ( dif < 0xFFFF0000 )
                {
                    m_ReadSynch = true; 
                    m_ReadStamp = 0;                       
                }
            }
        }
    }
}



IRadSoundHalVoice * radSoundHalVoiceCreate( radMemoryAllocator allocator )
{
	return new ( "radSoundVoiceAdpcmPs2", allocator ) radSoundVoiceAdpcmPs2( );
}
