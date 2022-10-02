//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <windows.h>
#include <file/file.hpp>
#include <assert.h>
#include "encvag.h"
#include <output/output.hpp>

bool ConvertVag( IDataStream * pDataStreamIn, IDataStream * pDataStreamOut, bool looping )
{
    unsigned lastPercentDone = 0;
    unsigned percentDone = 0;

    unsigned int block = 0;

    const unsigned int sourceBytesPerBlock = 56;
    const unsigned int targetBytesPerBlock = 16;

    char sourceBuffer[ sourceBytesPerBlock ];
    char targetBuffer[ targetBytesPerBlock ];    

    unsigned int dataStreamInSize = 0;
    unsigned int totalBlocks = 0;
    unsigned int lastSourceBlockSize = 0;

    ::EncVagInit( ENC_VAG_MODE_HIGH );

    if ( ! pDataStreamIn->GetSize( & dataStreamInSize ) )
    {
        goto BAIL;
    }

    totalBlocks = ( dataStreamInSize / sourceBytesPerBlock );
    lastSourceBlockSize = dataStreamInSize % sourceBytesPerBlock;
    
    if ( lastSourceBlockSize != 0 )
    {
        totalBlocks++;
    }

    // write a block of zeros, this is required

    ::ZeroMemory( targetBuffer, targetBytesPerBlock );

    if ( ! pDataStreamOut->WriteBytes( targetBuffer, targetBytesPerBlock ) )
    {
        goto BAIL;
    }

    for ( block = 0; block < totalBlocks; block++ )
    {
        percentDone = (int) ( ( (float) (block + 1) / (float) totalBlocks ) * 100.0f );
        if ( percentDone != lastPercentDone )
        { 
            printInfoSilent( "\rProgress: [%d%%]", percentDone );                
            lastPercentDone = percentDone;
        }

        int flag = 0;

        //
        // If you're making a "Normal" vag you neet the start and end markers,
        // but we write them in at run-time so we can seemlessly stitch.  In
        // other words we just write the loop bit.
        //

        if ( looping )
        {
            flag = ENC_VAG_LOOP_BODY;
        }
        else
        {
            if ( block == 0 )
            {
                flag = ENC_VAG_1_SHOT ;
            }
            else if ( block == ( totalBlocks - 1 ) )
            {
                flag = ENC_VAG_1_SHOT_END ;
            }
            else
            {
                flag = ENC_VAG_1_SHOT ;
            }
        }

        if ( ( block == ( totalBlocks - 1 ) ) && ( lastSourceBlockSize != 0 ) )
        {
            ::ZeroMemory( sourceBuffer, sourceBytesPerBlock );
            if ( ! pDataStreamIn->ReadBytes( sourceBuffer, lastSourceBlockSize ) )
            {
                goto BAIL;
            }
        }
        else
        {
            if ( ! pDataStreamIn->ReadBytes( sourceBuffer, sourceBytesPerBlock ) )
            {
                goto BAIL;
            }
        }

        ::EncVag( ( short * ) sourceBuffer, ( short * ) targetBuffer, flag );

        if ( ! pDataStreamOut->WriteBytes( targetBuffer, targetBytesPerBlock ) )
        {
            goto BAIL;
        }

    }

    //
    // You only need the stop block for non looping samples.
    //

    if ( ! looping )
    {
        ::EncVagFin( ( short * ) targetBuffer );
    }

    if ( ! pDataStreamOut->WriteBytes( targetBuffer, targetBytesPerBlock ) )
    {
        goto BAIL;
    }

    printInfoSilent( "\n" );

    return true;

    BAIL:

    printInfoSilent( "\n" );

    return false;
}
