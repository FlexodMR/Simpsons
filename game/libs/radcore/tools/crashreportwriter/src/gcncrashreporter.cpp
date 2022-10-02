//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        gcncrashreporter.cpp
//
// Subsystem:   Foundation Technologies Tools - Crash Report Writer
//
// Description: This file contains the IRadCrashReporter implementation
//              for gamecube generated crash handler reports
//
// Revisions:   April 3, 2002   RWS
//
//=============================================================================

//=============================================================================
// Included Files
//=============================================================================

#include "../../PEAddr2Line/src/PEAddr2Line.h"
#include "gcncrashreporter.hpp"

//=============================================================================
// Global Declarations
//=============================================================================

//=============================================================================
// Component radCrashReporterGcn
//=============================================================================

//=============================================================================
// radCrashReporterGcn::radCrashReporterGcn
//=============================================================================

radCrashReporterGcn::radCrashReporterGcn
( 
    IRadFile * pInputFile, 
    char * pExecutableFileName
)
    :
    radRefCount( 0 )
{
    ::memset( & m_RadCrashRecordGcn, 0xCD , sizeof( radCrashRecordGcn ) );

    //
    // Suck the file into the member crash record
    //

    if( pInputFile != NULL )
    {
        pInputFile->ReadAsync( & m_RadCrashRecordGcn, sizeof( m_RadCrashRecordGcn ) );
        pInputFile->WaitForCompletion( );
    }
    else
    {
        rAssert( pInputFile != NULL );
        return;
    }

    //
    // Verify that this is a gamecube crash report of the correct version
    //
    
    rAssert(
        strcmp( RAD_CRASH_RECORD_GCN_PLATFORM, 
            m_RadCrashRecordGcn.m_RadCrashRecordInfo.m_Platform ) == 0 );

    rAssert( 
        strcmp( RAD_CRASH_RECORD_GCN_VERSION, 
            m_RadCrashRecordGcn.m_RadCrashRecordInfo.m_Version ) == 0 );

    //
    // Init the peaddr2line system
    //

    if( !radPEAddr2LineLoadExe( pExecutableFileName ) )
    {
        rDebugPrintf( "Executable Filename not found [%s]\n", pExecutableFileName );
        rAssert( false );
    }

    //
    // The gamecube wrote the report in BigEndian.  Convert it to LittleEndian
    //

    BigEndianToLittleEndian( & m_RadCrashRecordGcn );

    //
    // Peform a function trace and get line and symbol info
    //
    
    TraceFunctions( ); 
}

//=============================================================================
// radCrashReporterGcn::~radCrashReporterGcn
//=============================================================================

radCrashReporterGcn::~radCrashReporterGcn( void )
{
    //
    // UnInit the peaddr2line system
    //

    if( !radPEAddr2LineUnLoadExe( ) )
    {
        rDebugPrintf( "Could not unload Executable\n" );
    }
}

//=============================================================================
// radCrashReporterGcn::~radCrashReporterGcn
//=============================================================================

unsigned radCrashReporterGcn::GetNumExceptionInfos( void )
{
    return 3;
}

//=============================================================================
// radCrashReporterGcn::~radCrashReporterGcn
//=============================================================================

void radCrashReporterGcn::PrintExceptionInfo( char * buffer, unsigned int bufferSize, unsigned int infoIndex )
{
    rAssert( bufferSize >= 1088 );
    rAssert( infoIndex < GetNumExceptionInfos( ) );

    switch( infoIndex )
    {
        case 0:  // ExceptionCode
        {
            sprintf( buffer, "\r\nExceptionCode:    [0x%08x]", 
                m_RadCrashRecordGcn.m_OSError );

            switch( m_RadCrashRecordGcn.m_OSError )
            {
                case radCrashRecordGcn::SYSTEM_RESET:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (SYSTEM_RESET)\r\n" );
                    break;
                }
                case radCrashRecordGcn::MACHINE_CHECK:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (MACHINE_CHECK)\r\n" );
                    break;
                }
                case radCrashRecordGcn::DSI:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (DSI)\r\n" );
                    break;
                }
                case radCrashRecordGcn::ISI:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (ISI)\r\n" );
                    break;
                }
                case radCrashRecordGcn::EXTERNAL_INTERRUPT:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (EXTERNAL_INTERRUPT)\r\n" );
                    break;
                }
                case radCrashRecordGcn::ALIGNMENT:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (ALIGNMENT)\r\n" );
                    break;
                }
                case radCrashRecordGcn::PROGRAM:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (PROGRAM)\r\n" );
                    break;
                }
                case radCrashRecordGcn::FLOATING_POINT:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (FLOATING_POINT)\r\n" );
                    break;
                }
                case radCrashRecordGcn::DECREMENTER:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (DECREMENTER)\r\n" );
                    break;
                }
                case radCrashRecordGcn::SYSTEM_CALL:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (SYSTEM_CALL)\r\n" );
                    break;
                }
                case radCrashRecordGcn::TRACE:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (TRACE)\r\n" );
                    break;
                }
                case radCrashRecordGcn::PERFORMACE_MONITOR:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (PERFORMACE_MONITOR)\r\n" );
                    break;
                }
                case radCrashRecordGcn::BREAKPOINT:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (BREAKPOINT)\r\n" );
                    break;
                }
                case radCrashRecordGcn::SYSTEM_INTERRUPT:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (SYSTEM_INTERRUPT)\r\n" );
                    break;
                }
                case radCrashRecordGcn::THERMAL_INTERRUPT:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (THERMAL_INTERRUPT)\r\n" );
                    break;
                }
                case radCrashRecordGcn::PROTECTION:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (PROTECTION)\r\n" );
                    break;
                }
                case radCrashRecordGcn::MAX:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (MAX)\r\n" );
                    break;
                }
                default:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (Could not decode exception)\r\n" );
                }
            }
            break;
        }
        case 1:  // ExceptionFlags
        {
            sprintf( buffer, "\r\nExceptionFlags:   [0x%08x]  (SRR1)\r\n", 
                m_RadCrashRecordGcn.m_OSContext.srr1 );
            break;
        }
        case 2:  // ExceptionAddress
        {
            sprintf( buffer, "\r\nExceptionAddress: [0x%08x]  (SRR0)\r\n" \
                                 "          Symbol: [%s]\r\n" \
                                 "            Line: [%s]\r\n",
                m_pAddr2LineInfo[ 0 ].m_Addr,
                m_pAddr2LineInfo[ 0 ].m_pSymbolInfo,
                m_pAddr2LineInfo[ 0 ].m_pLineInfo );

            break;
        }
    }


}

//=============================================================================
// radCrashReporterGcn::GetNumRegisters
//=============================================================================

unsigned int radCrashReporterGcn::GetNumRegisters( void )
{
    // Not going to include FLOATING_SAVE_AREA yet
    return 10;
}

//=============================================================================
// radCrashReporterGcn::PrintRegister
//=============================================================================

void radCrashReporterGcn::PrintRegister
( 
    char * buffer, 
    unsigned int bufferSize, 
    unsigned int registerIndex 
)
{
    // This will give plenty of room
    rAssert( bufferSize >= 64 );
    rAssert( registerIndex < GetNumRegisters( ) );

    // Here's crude way of doing this

    switch( registerIndex )
    {
        case 0:  // GPR's
        {
            sprintf( buffer, "R0  [0x%08x]   R8  [0x%08x]   R16 [0x%08x]   R24 [0x%08x]\r\n", 
                m_RadCrashRecordGcn.m_OSContext.gpr[ 0 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 8 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 16 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 24 ] );
            break;
        }
        case 1:  // GPR's
        {
            sprintf( buffer, "SP  [0x%08x]   R9  [0x%08x]   R17 [0x%08x]   R25 [0x%08x]\r\n", 
                m_RadCrashRecordGcn.m_OSContext.gpr[ 1 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 9 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 17 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 25 ] );
            break;
        }
        case 2:  // GPR's
        {
            sprintf( buffer, "R2  [0x%08x]   R10 [0x%08x]   R18 [0x%08x]   R26 [0x%08x]\r\n", 
                m_RadCrashRecordGcn.m_OSContext.gpr[ 2 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 10 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 18 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 26 ] );
            break;
        }
        case 3:  // GPR's
        {
            sprintf( buffer, "R3  [0x%08x]   R11 [0x%08x]   R19 [0x%08x]   R27 [0x%08x]\r\n", 
                m_RadCrashRecordGcn.m_OSContext.gpr[ 3 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 11 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 19 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 27 ] );
            break;
        }
        case 4:  // GPR's
        {
            sprintf( buffer, "R4  [0x%08x]   R12 [0x%08x]   R20 [0x%08x]   R28 [0x%08x]\r\n", 
                m_RadCrashRecordGcn.m_OSContext.gpr[ 4 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 12 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 20 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 28 ] );
            break;
        }
        case 5:  // GPR's
        {
            sprintf( buffer, "R5  [0x%08x]   R13 [0x%08x]   R21 [0x%08x]   R29 [0x%08x]\r\n", 
                m_RadCrashRecordGcn.m_OSContext.gpr[ 5 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 13 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 21 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 29 ] );
            break;
        }
        case 6:  // GPR's
        {
            sprintf( buffer, "R6  [0x%08x]   R14 [0x%08x]   R22 [0x%08x]   R30 [0x%08x]\r\n", 
                m_RadCrashRecordGcn.m_OSContext.gpr[ 6 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 14 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 22 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 30 ] );
            break;
        }
        case 7:  // GPR's
        {
            sprintf( buffer, "R7  [0x%08x]   R15 [0x%08x]   R23 [0x%08x]   R31 [0x%08x]\r\n\r\n", 
                m_RadCrashRecordGcn.m_OSContext.gpr[ 7 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 15 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 23 ],
                m_RadCrashRecordGcn.m_OSContext.gpr[ 31 ] );
            break;
        }
        case 8:  // cr/lr/ctr/xer
        {
            sprintf( buffer, "CR  [0x%08x]   LR  [0x%08x]   CTR [0x%08x]   XER [0x%08x]\r\n", 
                m_RadCrashRecordGcn.m_OSContext.cr,
                m_RadCrashRecordGcn.m_OSContext.lr,
                m_RadCrashRecordGcn.m_OSContext.ctr,
                m_RadCrashRecordGcn.m_OSContext.xer );
            break;
        }
        case 9:  // srr0/srr1
        {
            sprintf( buffer, "srr0[0x%08x]   srr1[0x%08x]   mode[    0x%04x]  state[    0x%04x]\r\n", 
                m_RadCrashRecordGcn.m_OSContext.srr0,
                m_RadCrashRecordGcn.m_OSContext.srr1,
                m_RadCrashRecordGcn.m_OSContext.mode,
                m_RadCrashRecordGcn.m_OSContext.state );
            break;
        }
        default:
        {
            sprintf( buffer, "UNKNOWN\r\n" );
            break;
        }
    }
}

//=============================================================================
// radCrashReporterGcn::PrintStackDump
//=============================================================================

void radCrashReporterGcn::PrintStackDump( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 1280 * 64 );
    
    // Calculate the starting address of the stack dump

    unsigned int pos = m_RadCrashRecordGcn.m_OSContext.gpr[ 1 ] - RAD_CRASH_RECORD_GCN_STACK_DUMP_SP_OFFSET * sizeof( unsigned int );

    char * curr = buffer;

    for( unsigned int i = 0; i < RAD_CRASH_RECORD_GCN_STACK_DUMP_SIZE; i++ )
    {
        if( i % 2 == 0 )
        {
            sprintf( curr, "addr [0x%08x] val [0x%08x]  ", pos, m_RadCrashRecordGcn.m_StackDump[ i ] );
        }
        else
        {
            sprintf( curr, "addr [0x%08x] val [0x%08x]\r\n", pos, m_RadCrashRecordGcn.m_StackDump[ i ] );
        }

        pos += 4;
        curr += 36;      // the line size is 36 characters

        if( curr >= buffer + bufferSize )
        {
            rDebugPrintf( "WARNING almost overflowed the buffered\n" );
            break;
        }
    }
}

//=============================================================================
// radCrashReporterGcn::PrintThisPointerDetails
//=============================================================================

void radCrashReporterGcn::PrintThisPointerDetails( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 1280 * 64 );

    sprintf( buffer, "(This pointer Details not available on Gamecube)\r\n" );
}

//=============================================================================
// radCrashReporterGcn::GetNumFunctions 
//=============================================================================

unsigned int radCrashReporterGcn::GetNumFunctions( void )
{
    return GCN_CRASH_REPORT_FUNCTION_TRACE_SIZE - 1;
}

//=============================================================================
// radCrashReporterGcn::PrintFunctionTrace
//=============================================================================

void radCrashReporterGcn::PrintFunctionTrace
( 
    char * buffer, 
    unsigned int bufferSize, 
    unsigned int functionIndex 
)
{
    rAssert( bufferSize >= 1280 );  // That should be plenty

    rAssert( functionIndex + 1 < GCN_CRASH_REPORT_FUNCTION_TRACE_SIZE );

    sprintf( buffer, "\r\n[%02d] Function: [0x%08x]\r\n"
                           "       Symbol: [%s]\r\n" \
                           "         Line: [%s]\r\n",
        functionIndex,
        m_pAddr2LineInfo[ functionIndex + 1 ].m_Addr,
        m_pAddr2LineInfo[ functionIndex + 1 ].m_pSymbolInfo,
        m_pAddr2LineInfo[ functionIndex + 1 ].m_pLineInfo );
}

//=============================================================================
// radCrashReporterGcn::PrintPlatform
//=============================================================================

void radCrashReporterGcn::PrintPlatform( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 256 );

    sprintf( buffer, "Platform:  [%s]\r\n", m_RadCrashRecordGcn.m_RadCrashRecordInfo.m_Platform );
}

//=============================================================================
// radCrashReporterGcn::PrintDate
//=============================================================================

void radCrashReporterGcn::PrintDate( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 256 );

    sprintf( buffer, "\r\n" );
/*
    sprintf( buffer, "TimeStamp: [%d/%d/%d] [%02d:%02d:%02d]\r\n", 
        m_RadCrashRecordGcn.m_RadCrashRecordInfo.m_Month + 1,
        m_RadCrashRecordGcn.m_RadCrashRecordInfo.m_Day,
        m_RadCrashRecordGcn.m_RadCrashRecordInfo.m_Year,
        m_RadCrashRecordGcn.m_RadCrashRecordInfo.m_Hour,
        m_RadCrashRecordGcn.m_RadCrashRecordInfo.m_Minute,
        m_RadCrashRecordGcn.m_RadCrashRecordInfo.m_Second );
*/
}

//=============================================================================
// radCrashReporterGcn::PrintVersion
//=============================================================================

void radCrashReporterGcn::PrintVersion( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 256 );

    sprintf( buffer, "Version:   [%s]\r\n", m_RadCrashRecordGcn.m_RadCrashRecordInfo.m_Version );
}

//=============================================================================
// radCrashReporterGcn::BigEndianToLittleEndian
//=============================================================================

void radCrashReporterGcn::BigEndianToLittleEndian( radCrashRecordGcn * pRadCrashRecordGcn )
{
    rAssert( pRadCrashRecordGcn != NULL );
    
    if( pRadCrashRecordGcn != NULL )
    {
        //
        // Convert everything that's bigger than a byte
        //

        // m_RadCrashRecordInfo

        pRadCrashRecordGcn->m_RadCrashRecordInfo.m_Day =
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_RadCrashRecordInfo.m_Day );

        pRadCrashRecordGcn->m_RadCrashRecordInfo.m_Month =
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_RadCrashRecordInfo.m_Month );

        pRadCrashRecordGcn->m_RadCrashRecordInfo.m_Year =
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_RadCrashRecordInfo.m_Year );

        pRadCrashRecordGcn->m_RadCrashRecordInfo.m_Hour =
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_RadCrashRecordInfo.m_Hour );

        pRadCrashRecordGcn->m_RadCrashRecordInfo.m_Minute =
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_RadCrashRecordInfo.m_Minute );

        pRadCrashRecordGcn->m_RadCrashRecordInfo.m_Second =
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_RadCrashRecordInfo.m_Second );

        // m_OSError

        pRadCrashRecordGcn->m_OSError = ( radCrashRecordGcn::radCrashOSErrorGcn )
            BigEndianToLittleEndian( (unsigned int) pRadCrashRecordGcn->m_OSError );

        // m_OSContext

        for( unsigned int i = 0; i < 32; i++ )
        {
            pRadCrashRecordGcn->m_OSContext.gpr[ i ] = 
                BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.gpr[ i ] );

            pRadCrashRecordGcn->m_OSContext.fpr[ i ] = 
                BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.fpr[ i ] );

            pRadCrashRecordGcn->m_OSContext.psf[ i ] = 
                BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.psf[ i ] );
        }

        for( unsigned int j = 0; j < 8; j++ )
        {
            pRadCrashRecordGcn->m_OSContext.gqr[ i ] = 
                BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.gqr[ i ] );
        }

        pRadCrashRecordGcn->m_OSContext.cr = 
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.cr );

        pRadCrashRecordGcn->m_OSContext.lr = 
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.lr );

        pRadCrashRecordGcn->m_OSContext.ctr = 
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.ctr );

        pRadCrashRecordGcn->m_OSContext.xer = 
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.xer );

        pRadCrashRecordGcn->m_OSContext.fpscr_pad = 
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.fpscr_pad );

        pRadCrashRecordGcn->m_OSContext.fpscr = 
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.fpscr );

        pRadCrashRecordGcn->m_OSContext.srr0 = 
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.srr0 );

        pRadCrashRecordGcn->m_OSContext.srr1 = 
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.srr1 );

        pRadCrashRecordGcn->m_OSContext.mode = 
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.mode );

        pRadCrashRecordGcn->m_OSContext.state = 
            BigEndianToLittleEndian( pRadCrashRecordGcn->m_OSContext.state );

        // m_StackDump

        for( unsigned int k = 0; k < RAD_CRASH_RECORD_GCN_STACK_DUMP_SIZE; k++ )
        {
            pRadCrashRecordGcn->m_StackDump[ k ] = 
                BigEndianToLittleEndian( pRadCrashRecordGcn->m_StackDump[ k ] );
        }
    }
}

//=============================================================================
// radCrashReporterGcn::TraceFunctions
//=============================================================================

void radCrashReporterGcn::TraceFunctions( void )
{
    rAssert( m_pAddr2LineInfo != NULL );

    unsigned int prevSp = 0x00000000;
    unsigned int currSp = m_RadCrashRecordGcn.m_OSContext.gpr[ 1 ];
    unsigned int dumpIndex = RAD_CRASH_RECORD_GCN_STACK_DUMP_SP_OFFSET;

    // These will be used for obtaining line info and symbol info

    unsigned int pAddr[ GCN_CRASH_REPORT_FUNCTION_TRACE_SIZE ];
    char * pLineInfo[ GCN_CRASH_REPORT_FUNCTION_TRACE_SIZE ];
    char * pSymbolInfo[ GCN_CRASH_REPORT_FUNCTION_TRACE_SIZE ];

    //
    // The first element will be at the location of the exception
    //

    m_pAddr2LineInfo[ 0 ].m_Addr = m_RadCrashRecordGcn.m_OSContext.srr0;  // address of exception
    pAddr[ 0 ] = m_pAddr2LineInfo[ 0 ].m_Addr;
    pLineInfo[ 0 ] = m_pAddr2LineInfo[ 0 ].m_pLineInfo;
    pSymbolInfo[ 0 ] = m_pAddr2LineInfo[ 0 ].m_pSymbolInfo;
    
    //
    // The rest of the function trace
    //

    for( unsigned int i = 1; i < GCN_CRASH_REPORT_FUNCTION_TRACE_SIZE; i++ )
    {
        // Perform the trace
        
        if( dumpIndex + 1 < ( sizeof( m_RadCrashRecordGcn.m_StackDump ) / sizeof( unsigned int ) ) )
        {
            if( currSp != 0xFFFFFFFF || currSp != 0x00000000 )
            {
                m_pAddr2LineInfo[ i ].m_Addr = m_RadCrashRecordGcn.m_StackDump[ dumpIndex + 1 ];
                
                prevSp = currSp;
                currSp = m_RadCrashRecordGcn.m_StackDump[ dumpIndex ];
                dumpIndex += ( currSp - prevSp ) / sizeof( unsigned int );
            }
            else
            {
                m_pAddr2LineInfo[ i ].m_Addr= 0x00000000;
            }
        }
        else
        {
            m_pAddr2LineInfo[ i ].m_Addr = 0x00000000;
        }

        // Prepare for the call to radPEAddr2LineV

        pAddr[ i ] = m_pAddr2LineInfo[ i ].m_Addr;
        pLineInfo[ i ] = m_pAddr2LineInfo[ i ].m_pLineInfo;
        pSymbolInfo[ i ] = m_pAddr2LineInfo[ i ].m_pSymbolInfo;
    }

    //
    // Now fill the line and symbol info
    //

    if( ! radPEAddr2LineV( pAddr, GCN_CRASH_REPORT_FUNCTION_TRACE_SIZE, pSymbolInfo, pLineInfo ) )
    {
        rReleasePrintf( "radPEAddr2LineV call failed\n" );
    }
}