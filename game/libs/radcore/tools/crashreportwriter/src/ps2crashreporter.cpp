//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        ps2crashreporter.cpp
//
// Subsystem:   Foundation Technologies Tools - Crash Report Writer
//
// Description: This file contains the IRadCrashReporter implementation
//              for ps2 generated crash handler reports
//
// Revisions:   April 17, 2002   RWS
//
//=============================================================================

//=============================================================================
// Included Files
//=============================================================================

#include "../../PEAddr2Line/src/PEAddr2Line.h"
#include "ps2crashreporter.hpp"

//=============================================================================
// Definitions
//=============================================================================

#define PS2_CRASH_REPORTER_EXC_CODE_MASK 0x007c

//=============================================================================
// Component radCrashReporterPs2
//=============================================================================

//=============================================================================
// radCrashReporterPs2::radCrashReporterPs2
//=============================================================================

radCrashReporterPs2::radCrashReporterPs2
( 
    IRadFile * pInputFile, 
    char * pExecutableFileName
)
    :
    radRefCount( 0 )
{
    ::memset( & m_RadCrashRecordPs2, 0xCD , sizeof( m_RadCrashRecordPs2 ) );

    //
    // Suck the file into the member crash record
    //

    if( pInputFile != NULL )
    {
        pInputFile->ReadAsync( & m_RadCrashRecordPs2, sizeof( m_RadCrashRecordPs2 ) );
        pInputFile->WaitForCompletion( );
    }
    else
    {
        rAssert( pInputFile != NULL );
        return;
    }

    //
    // Verify that this is a ps2 crash report of the correct version
    //
    
    rAssert(
        strcmp( RAD_CRASH_RECORD_PS2_PLATFORM, 
            m_RadCrashRecordPs2.m_RadCrashRecordInfo.m_Platform ) == 0 );

    rAssert( 
        strcmp( RAD_CRASH_RECORD_PS2_VERSION, 
            m_RadCrashRecordPs2.m_RadCrashRecordInfo.m_Version ) == 0 );

    //
    // Init the peaddr2line system
    //

    if( !radPEAddr2LineLoadExe( pExecutableFileName ) )
    {
        rDebugPrintf( "Executable Filename not found [%s]\n", pExecutableFileName );
        rAssert( false );
    }

    //
    // Peform a function trace and get line and symbol info
    //
    
    TraceFunctions( ); 
}

//=============================================================================
// radCrashReporterPs2::~radCrashReporterPs2
//=============================================================================

radCrashReporterPs2::~radCrashReporterPs2( void )
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
// radCrashReporterPs2::~radCrashReporterPs2
//=============================================================================

unsigned radCrashReporterPs2::GetNumExceptionInfos( void )
{
    return 3;
}

//=============================================================================
// radCrashReporterPs2::~radCrashReporterPs2
//=============================================================================

void radCrashReporterPs2::PrintExceptionInfo( char * buffer, unsigned int bufferSize, unsigned int infoIndex )
{
    rAssert( bufferSize >= 1088 );
    rAssert( infoIndex < GetNumExceptionInfos( ) );

    switch( infoIndex )
    {
        case 0:  // ExceptionCode
        {
            // Cause registers is cop0 register 13
            // Exception cause is located at bits 6:2 (inclusive)

            unsigned int excCode = ( PS2_CRASH_REPORTER_EXC_CODE_MASK && 
                m_RadCrashRecordPs2.m_Registers.cop0r[ 13 ] ) >> 2;


            sprintf( buffer, "\r\nExceptionCode:    [0x%08x]", excCode );
            
            switch( excCode )
            {
                case radCrashRecordPs2::RAD_EXC_INTERRUPT:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (INTERRUPT)\r\n" );
                    break;
                }
                case radCrashRecordPs2::RAD_EXC_TLB_MOD:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (TLB_MOD)\r\n" );
                    break;
                }
                case radCrashRecordPs2::RAD_EXC_TLB_MISS_READ:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (TLB_MISS_READ)\r\n" );
                    break;
                }
                case radCrashRecordPs2::RAD_EXC_TLB_MISS_WRITE:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (TLB_MISS_WRITE)\r\n" );
                    break;
                }
                case radCrashRecordPs2::RAD_EXC_ADDR_ERROR_READ:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (ADDR_ERROR_READ)\r\n" );
                    break;
                }
                case radCrashRecordPs2::RAD_EXC_ADDR_ERROR_WRITE:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (ADDR_ERROR_WRITE)\r\n" );
                    break;
                }
                case radCrashRecordPs2::RAD_EXC_INSTR_BUS_ERROR:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (INSTR_BUS_ERROR:)\r\n" );
                    break;
                }
                case radCrashRecordPs2::RAD_EXC_DATA_BUS_ERROR:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (DATA_BUS_ERROR)\r\n" );
                    break;
                }
                case radCrashRecordPs2::RAD_EXC_SYSCALL:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (SYSCALL)\r\n" );
                    break;
                }
                case radCrashRecordPs2::RAD_EXC_BREAK:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (BREAK)\r\n" );
                    break;
                }
                case radCrashRecordPs2::RAD_EXC_ILLEGAL_INSTR:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (ILLEGAL_INSTR)\r\n" );
                    break;
                }
                case radCrashRecordPs2::RAD_EXC_COP_UNUSABLE:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (COP_UNUSABLE)\r\n" );
                    break;
                }
                case radCrashRecordPs2::RAD_EXC_OVERFLOW:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (OVERFLOW)\r\n" );
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
        case 1:  // Cause Register
        {
            sprintf( buffer, "\r\nCauseRegister:   [0x%08x]\r\n", 
                m_RadCrashRecordPs2.m_Registers.cop0r[ 13 ] );
            break;
        }
        case 2:  // ExceptionAddress
        {
            sprintf( buffer, "\r\nExceptionAddress: [0x%08x]  (ErrorEPC)\r\n" \
                                 "          Symbol: [%s]\r\n" \
                                 "            Line: [%s]\r\n",
                // m_pAddr2LineInfo[ 0 ].m_Addr,
                // m_pAddr2LineInfo[ 0 ].m_pSymbolInfo,
                // m_pAddr2LineInfo[ 0 ].m_pLineInfo );

                0x0000000,
                "(???????????????)",
                "(???????????????)" );

            break;
        }
    }


}

//=============================================================================
// radCrashReporterPs2::GetNumRegisters
//=============================================================================

unsigned int radCrashReporterPs2::GetNumRegisters( void )
{
    return 52;
}

//=============================================================================
// radCrashReporterPs2::PrintRegister
//=============================================================================

void radCrashReporterPs2::PrintRegister
( 
    char * buffer, 
    unsigned int bufferSize, 
    unsigned int registerIndex 
)
{
    // This will give plenty of room
    rAssert( bufferSize >= 64 );
    rAssert( registerIndex < GetNumRegisters( ) );

    // figure out how to display the register

    unsigned int GPR_OFFSET = 0;
    unsigned int HILO_OFFSET = 32;
    unsigned int COP0_OFFSET = 36;

    //
    // General Registers
    //

    if( registerIndex == 0 )        // zero
    {
        sprintf( buffer, "zr       [0x%08x%08x%08x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos0,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos1,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos3 );
    }
    else if( registerIndex == 1 )   // at
    {
        sprintf( buffer, "at       [0x%08x%08x%08x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos0,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos1,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos3 );
    }
    else if( registerIndex <= 3 )   // v0 && v1
    {
        sprintf( buffer, "v%d       [0x%08x%08x%08x%08x]\r\n", 
            registerIndex - 2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos0,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos1,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos3 );
    }
    else if( registerIndex <= 7 )   // a0 - a3
    {
        sprintf( buffer, "a%d       [0x%08x%08x%08x%08x]\r\n", 
            registerIndex - 4,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos0,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos1,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos3 );
    }
    else if( registerIndex <= 15 )   // t0 - t7
    {
        sprintf( buffer, "t%d       [0x%08x%08x%08x%08x]\r\n", 
            registerIndex - 8,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos0,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos1,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos3 );
    }
    else if( registerIndex <= 23 )   // s0 - s7
    {
        sprintf( buffer, "s%d       [0x%08x%08x%08x%08x]\r\n", 
            registerIndex - 16, 
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos0,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos1,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos3 );
    }
    else if( registerIndex <= 25 )   // t8 - t9
    {
        sprintf( buffer, "t%d       [0x%08x%08x%08x%08x]\r\n", 
            registerIndex - 24,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos0,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos1,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos3 );
    }
    else if( registerIndex <= 27 )   // k0 - k1
    {
        sprintf( buffer, "k%d       [0x%08x%08x%08x%08x]\r\n", 
            registerIndex - 26,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos0,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos1,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos3 );
    }
    else if( registerIndex == 28 )   // gp
    {
        sprintf( buffer, "gp       [0x%08x%08x%08x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos0,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos1,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos3 );
    }
    else if( registerIndex == 29 )   // sp
    {
        sprintf( buffer, "sp       [0x%08x%08x%08x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos0,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos1,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos3 );
    }
    else if( registerIndex == 30 )   // fp
    {
        sprintf( buffer, "fp       [0x%08x%08x%08x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos0,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos1,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos3 );
    }
    else if( registerIndex == 31 )   // ra
    {
        sprintf( buffer, "ra       [0x%08x%08x%08x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos0,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos1,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos2,
            m_RadCrashRecordPs2.m_Registers.gpr[ registerIndex ].pos3 );
    }

    //
    // Hi and lo
    //

    else if( registerIndex - HILO_OFFSET == 0 )   // hi
    {
        sprintf( buffer, "\r\nhi       [0x%08x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.hi[ registerIndex - HILO_OFFSET ].pos0,
            m_RadCrashRecordPs2.m_Registers.hi[ registerIndex - HILO_OFFSET ].pos1 );
    }
    else if( registerIndex - HILO_OFFSET == 1 )    // lo
    {
        sprintf( buffer, "lo       [0x%08x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.hi[ registerIndex - HILO_OFFSET ].pos0,
            m_RadCrashRecordPs2.m_Registers.hi[ registerIndex - HILO_OFFSET ].pos1 );
    }
    else if( registerIndex - HILO_OFFSET == 2 )    // hi1
    {
        sprintf( buffer, "hi1      [0x%08x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.hi[ registerIndex - HILO_OFFSET ].pos0,
            m_RadCrashRecordPs2.m_Registers.hi[ registerIndex - HILO_OFFSET ].pos1 );
    }
    else if( registerIndex - HILO_OFFSET == 3 )    // lo1
    {
        sprintf( buffer, "lo1      [0x%08x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.hi[ registerIndex - HILO_OFFSET ].pos0,
            m_RadCrashRecordPs2.m_Registers.hi[ registerIndex - HILO_OFFSET ].pos1 );
    }

    //
    // COP0 Registers
    //

    else if( registerIndex - COP0_OFFSET == 0 )    // Index  && Random
    {
        sprintf( buffer, "\r\nIndex    [0x%08x]   Random   [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 1 )    // EntryLo0 && EntryLo1
    {
        sprintf( buffer, "EntryLo0 [0x%08x]   EntryLo1 [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 2 )    // Context && PageMask
    {
        sprintf( buffer, "Context  [0x%08x]   PageMask [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 3 )    // Wired && (Reserved)
    {
        sprintf( buffer, "Wired    [0x%08x]   Reserved [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 4 )    // BadVAddr && Count
    {
        sprintf( buffer, "BadVAddr [0x%08x]   Count    [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 5 )    // EntryHi && Compare
    {
        sprintf( buffer, "EntryHi  [0x%08x]   Compare  [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 6 )    // Status  && Cause
    {
        sprintf( buffer, "Status   [0x%08x]   Cause    [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 7 )    // EPC    && PRId
    {
        sprintf( buffer, "EPC      [0x%08x]   PRId     [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 8 )    // Config && Reserved
    {
        sprintf( buffer, "Config   [0x%08x]   Reserved [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 9 )    // Reserved && Reserved
    {
        sprintf( buffer, "Reserved [0x%08x]   Reserved [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 10 )    // Reserved && Reserved
    {
        sprintf( buffer, "Reserved [0x%08x]   Reserved [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 11 )    // Reserved && BadPAddr
    {
        sprintf( buffer, "Reserved [0x%08x]   BadPAddr [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }

    else if( registerIndex - COP0_OFFSET == 12 )    // Debug && Perf
    {
        sprintf( buffer, "Debug    [0x%08x]   Perf     [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 13 )    // Reserved   && Reserved
    {
        sprintf( buffer, "Reserved [0x%08x]   Reserved [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 14 )    // TagLo  && TagHi  
    {
        sprintf( buffer, "TagLo    [0x%08x]   TagHi    [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else if( registerIndex - COP0_OFFSET == 15 )    // ErrorEPC & Reserved
    {
        sprintf( buffer, "ErrorEPC [0x%08x]   Reserved [0x%08x]\r\n", 
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 ],
            m_RadCrashRecordPs2.m_Registers.cop0r[ ( registerIndex - COP0_OFFSET ) * 2 + 1 ]);
    }
    else
    {
        sprintf( buffer, "UNKNOWN\r\n" );
    }
}

//=============================================================================
// radCrashReporterPs2::PrintStackDump
//=============================================================================

void radCrashReporterPs2::PrintStackDump( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 1280 * 64 );
    
    // Get the address of the dump

    unsigned long pos= m_RadCrashRecordPs2.m_Registers.gpr[ 30 ].pos0;

    char * curr = buffer;

    for( unsigned int i = 0; i < RAD_CRASH_RECORD_GCN_STACK_DUMP_SIZE; i++ )
    {
        if( i % 2 == 0 )
        {
            sprintf( curr, "addr [0x%08x] val [0x%08x]  ", pos, m_RadCrashRecordPs2.m_StackDump[ i ] );
        }
        else
        {
            sprintf( curr, "addr [0x%08x] val [0x%08x]\r\n", pos, m_RadCrashRecordPs2.m_StackDump[ i ] );
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
// radCrashReporterPs2::PrintThisPointerDetails
//=============================================================================

void radCrashReporterPs2::PrintThisPointerDetails( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 1280 * 64 );

    sprintf( buffer, "(This pointer Details not available on Ps2)\r\n" );
}

//=============================================================================
// radCrashReporterPs2::GetNumFunctions 
//=============================================================================

unsigned int radCrashReporterPs2::GetNumFunctions( void )
{
    return PS2_CRASH_REPORT_FUNCTION_TRACE_SIZE - 1;
}

//=============================================================================
// radCrashReporterPs2::PrintFunctionTrace
//=============================================================================

void radCrashReporterPs2::PrintFunctionTrace
( 
    char * buffer, 
    unsigned int bufferSize, 
    unsigned int functionIndex 
)
{
    rAssert( bufferSize >= 1280 );  // That should be plenty

    rAssert( functionIndex < RAD_CRASH_RECORD_PS2_STACK_TRACE_SIZE );

    sprintf( buffer, "\r\n[%02d] Function: [0x%08x]\r\n"
                           "       Symbol: [%s]\r\n" \
                           "         Line: [%s]\r\n",
        functionIndex,
        m_pAddr2LineInfo[ functionIndex ].m_Addr,
        m_pAddr2LineInfo[ functionIndex ].m_pSymbolInfo,
        m_pAddr2LineInfo[ functionIndex ].m_pLineInfo );
}

//=============================================================================
// radCrashReporterPs2::PrintPlatform
//=============================================================================

void radCrashReporterPs2::PrintPlatform( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 256 );

    sprintf( buffer, "Platform:  [%s]\r\n", m_RadCrashRecordPs2.m_RadCrashRecordInfo.m_Platform );
}

//=============================================================================
// radCrashReporterPs2::PrintDate
//=============================================================================

void radCrashReporterPs2::PrintDate( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 256 );

    sprintf( buffer, "\r\n" );
/*
    sprintf( buffer, "TimeStamp: [%d/%d/%d] [%02d:%02d:%02d]\r\n", 
        m_RadCrashRecordPs2.m_RadCrashRecordInfo.m_Month + 1,
        m_RadCrashRecordPs2.m_RadCrashRecordInfo.m_Day,
        m_RadCrashRecordPs2.m_RadCrashRecordInfo.m_Year,
        m_RadCrashRecordPs2.m_RadCrashRecordInfo.m_Hour,
        m_RadCrashRecordPs2.m_RadCrashRecordInfo.m_Minute,
        m_RadCrashRecordPs2.m_RadCrashRecordInfo.m_Second );
*/
}

//=============================================================================
// radCrashReporterPs2::PrintVersion
//=============================================================================

void radCrashReporterPs2::PrintVersion( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 256 );

    sprintf( buffer, "Version:   [%s]\r\n", m_RadCrashRecordPs2.m_RadCrashRecordInfo.m_Version );
}

//=============================================================================
// radCrashReporterPs2::TraceFunctions
//=============================================================================

void radCrashReporterPs2::TraceFunctions( void )
{

    rAssert( m_pAddr2LineInfo != NULL );

    // These will be used for obtaining line info and symbol info

    unsigned int pAddr[ RAD_CRASH_RECORD_PS2_STACK_TRACE_SIZE ];
    char * pLineInfo[ RAD_CRASH_RECORD_PS2_STACK_TRACE_SIZE ];
    char * pSymbolInfo[ RAD_CRASH_RECORD_PS2_STACK_TRACE_SIZE ];
   
    //
    // Set up the pointers for symbol resolution
    //

    for( unsigned int i = 0; i < RAD_CRASH_RECORD_PS2_STACK_TRACE_SIZE; i++ )
    {
        m_pAddr2LineInfo[ i ].m_Addr = m_RadCrashRecordPs2.m_StackTrace[ i ];
        pAddr[ i ] = m_pAddr2LineInfo[ i ].m_Addr;
        pLineInfo[ i ] = m_pAddr2LineInfo[ i ].m_pLineInfo;
        pSymbolInfo[ i ] = m_pAddr2LineInfo[ i ].m_pSymbolInfo;
    }

    //
    // Now fill the line and symbol info
    //

    if( ! radPEAddr2LineV( pAddr, RAD_CRASH_RECORD_PS2_STACK_TRACE_SIZE, pSymbolInfo, pLineInfo ) )
    {
        rReleasePrintf( "radPEAddr2LineV call failed\n" );
    }
}