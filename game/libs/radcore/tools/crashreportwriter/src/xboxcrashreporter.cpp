//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
// xboxcrashreporter.hpp
//=============================================================================

//=============================================================================
// Included Files
//=============================================================================

#include "../../PEAddr2Line/src/PEAddr2Line.h"
#include "xboxcrashreporter.hpp"

//=============================================================================
// Component radCrashReporterXBox
//=============================================================================

//=============================================================================
// radCrashReporterXBox::radCrashReporterXBox
//=============================================================================

radCrashReporterXBox::radCrashReporterXBox
( 
    IRadFile * pInputFile, 
    char * pExecutableFileName
)
    :
    radRefCount( 0 ),
    m_NumRegisters( 0 )
{
    ::memset( & m_RadCrashRecordXBox, 0 , sizeof( m_RadCrashRecordXBox ) );

    // Verify the file (still to come)

    // The file should contain an xbox crash record
    if( pInputFile != NULL )
    {
        pInputFile->ReadAsync( & m_RadCrashRecordXBox, sizeof( m_RadCrashRecordXBox ) );
        pInputFile->WaitForCompletion( );
    }
    else
    {
        rAssert( pInputFile != NULL );
        return;
    }

    // Init the peaddr2line system

    radPEAddr2LineSetXBoxMainAddress( m_RadCrashRecordXBox.m_AddressOfMain );

    if( !radPEAddr2LineLoadExe( pExecutableFileName ) )
    {
        rDebugPrintf( "Executable Filename not found [%s]\n", pExecutableFileName );
        rAssert( false );
    }

}

//=============================================================================
// radCrashReporterXBox::~radCrashReporterXBox
//=============================================================================

radCrashReporterXBox::~radCrashReporterXBox( void )
{

}

//=============================================================================
// radCrashReporterXBox::~radCrashReporterXBox
//=============================================================================

unsigned radCrashReporterXBox::GetNumExceptionInfos( void )
{
    return 3;
}

//=============================================================================
// radCrashReporterXBox::~radCrashReporterXBox
//=============================================================================

void radCrashReporterXBox::PrintExceptionInfo( char * buffer, unsigned int bufferSize, unsigned int infoIndex )
{
    rAssert( bufferSize >= 1088 );
    rAssert( infoIndex < GetNumExceptionInfos( ) );

    switch( infoIndex )
    {
        case 0:  // ExceptionCode
        {
            sprintf( buffer, "\r\nExceptionCode:    [0x%08x]", 
                m_RadCrashRecordXBox.m_ExceptionRecord.ExceptionCode );

            switch( m_RadCrashRecordXBox.m_ExceptionRecord.ExceptionCode )
            {
                case radCrashRecordXBox::RAD_STATUS_ACCESS_VIOLATION:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_ACCESS_VIOLATION)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_IN_PAGE_ERROR:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_IN_PAGE_ERROR)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_INVALID_HANDLE:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_INVALID_HANDLE)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_NO_MEMORY:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_NO_MEMORY)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_ILLEGAL_INSTRUCTION:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_ILLEGAL_INSTRUCTION)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_NONCONTINUABLE_EXCEPTION:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_NONCONTINUABLE_EXCEPTION)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_INVALID_DISPOSITION:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_INVALID_DISPOSITION)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_ARRAY_BOUNDS_EXCEEDED:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_ARRAY_BOUNDS_EXCEEDED)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_FLOAT_DENORMAL_OPERAND:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_FLOAT_DENORMAL_OPERAND)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_FLOAT_DIVIDE_BY_ZERO:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_FLOAT_DIVIDE_BY_ZERO)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_FLOAT_INEXACT_RESULT:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_FLOAT_INEXACT_RESULT)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_FLOAT_INVALID_OPERATION:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_FLOAT_INVALID_OPERATION)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_FLOAT_OVERFLOW:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_FLOAT_OVERFLOW)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_FLOAT_STACK_CHECK:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_FLOAT_STACK_CHECK)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_FLOAT_UNDERFLOW:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_FLOAT_UNDERFLOW)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_INTEGER_DIVIDE_BY_ZERO:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_INTEGER_DIVIDE_BY_ZERO)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_INTEGER_OVERFLOW:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_INTEGER_OVERFLOW)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_PRIVILEGED_INSTRUCTION:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_PRIVILEGED_INSTRUCTION)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_STACK_OVERFLOW:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_STACK_OVERFLOW)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_CONTROL_C_EXIT:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_CONTROL_C_EXIT)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_FLOAT_MULTIPLE_FAULTS:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_FLOAT_MULTIPLE_FAULTS)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_FLOAT_MULTIPLE_TRAPS:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_FLOAT_MULTIPLE_TRAPS)\r\n" );
                    break;
                }
                case radCrashRecordXBox::RAD_STATUS_REG_NAT_CONSUMPTION:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (STATUS_REG_NAT_CONSUMPTION)\r\n" );
                    break;
                }
                default:
                {
                    sprintf( (char*)( buffer + strlen( buffer ) ),
                        "  (Unknown exception see xbox/include/winnt.h for listing of all exception)\r\n" );
                }
            }
            break;
        }
        case 1:  // ExceptionFlags
        {
            sprintf( buffer, "\r\nExceptionFlags:   [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_ExceptionRecord.ExceptionFlags );
            break;
        }
        case 2:  // ExceptionAddress
        {
            char Line[ 512 ];
            char Symbol[ 512 ];
            
            ::radPEAddr2Line( ( unsigned int ) m_RadCrashRecordXBox.m_ExceptionRecord.ExceptionAddress,
                    Symbol, Line );

            sprintf( buffer, "\r\nExceptionAddress: [0x%08x]\r\n" \
                                 "          Symbol: [%s]\r\n" \
                                 "            Line: [%s]\r\n",
                m_RadCrashRecordXBox.m_ExceptionRecord.ExceptionAddress, Symbol, Line);
            break;
        }
    }
}

//=============================================================================
// radCrashReporterXBox::GetNumRegisters
//=============================================================================

unsigned int radCrashReporterXBox::GetNumRegisters( void )
{
    // Not going to include FLOATING_SAVE_AREA yet
    return 13;
}

//=============================================================================
// radCrashReporterXBox::PrintRegister
//=============================================================================

void radCrashReporterXBox::PrintRegister
( 
    char * buffer, 
    unsigned int bufferSize, 
    unsigned int registerIndex 
)
{
    // This will give plenty of room
    rAssert( bufferSize >= 64 );
    rAssert( registerIndex < GetNumRegisters( ) );

    switch( registerIndex )
    {
        case 0:  // ContextFlags
        {
            sprintf( buffer, "ContextFlags: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.ContextFlags );
            break;
        }
        case 1:  // EDI
        {
            sprintf( buffer, "         EDI: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.Edi );
            break;
        }
        case 2:  // ESI
        {
            sprintf( buffer, "         ESI: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.Esi );
            break;
        }
        case 3:  // EBX
        {
            sprintf( buffer, "         EBX: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.Ebx );
            break;
        }
        case 4:  // EDX
        {
            sprintf( buffer, "         EDX: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.Edx );
            break;
        }
        case 5:  // ECX
        {
            sprintf( buffer, "         ECX: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.Ecx );
            break;
        }
        case 6:  // EAX
        {
            sprintf( buffer, "         EAX: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.Eax );
            break;
        }
        case 7:  // EBP
        {
            sprintf( buffer, "         EBP: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.Ebp );
            break;
        }
        case 8:  // EIP
        {
            sprintf( buffer, "         EIP: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.Eip );
            break;
        }
        case 9:  // SEGCS
        {
            sprintf( buffer, "       SEGCS: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.SegCs );
            break;
        }
        case 10:  // EFLAGS
        {
            sprintf( buffer, "      EFLAGS: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.EFlags );
            break;
        }
        case 11:  // ESP
        {
            sprintf( buffer, "         ESP: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.Esp );
            break;
        }
        case 12:  // SEGSS
        {
            sprintf( buffer, "       SEGSS: [0x%08x]\r\n", 
                m_RadCrashRecordXBox.m_Context.SegSs );
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
// radCrashReporterXBox::PrintStackDump
//=============================================================================

void radCrashReporterXBox::PrintStackDump( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 1280 * 64 );
    
    // We know that the dump starts at the stack pointer

    unsigned int pos = m_RadCrashRecordXBox.m_Context.Esp;
    char * curr = buffer;

    for( unsigned int i = 0; i < sizeof( m_RadCrashRecordXBox.m_StackDump ) / sizeof( unsigned int ); i++ )
    {
        if( i % 2 == 0 )
        {
            sprintf( curr, "addr [0x%08x] val [0x%08x]  ", pos, m_RadCrashRecordXBox.m_StackDump[ i ] );
        }
        else
        {
            sprintf( curr, "addr [0x%08x] val [0x%08x]\r\n", pos, m_RadCrashRecordXBox.m_StackDump[ i ] );
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
// radCrashReporterXBox::PrintThisPointerDetails
//=============================================================================

void radCrashReporterXBox::PrintThisPointerDetails( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 1280 * 64 );
    
    char line[ 512 ];
    char symbol[ 512 ];
    char buf[ 1280 ];

    ::radPEAddr2Line( m_RadCrashRecordXBox.m_Context.Ecx, symbol, line );

    sprintf( buf, "  addr: [0x%08x]\r\n" \
                  "symbol: [%s]\r\n" \
                  "  line: [%s]\r\n\r\n", m_RadCrashRecordXBox.m_Context.Ecx, symbol, line );

    strcpy( buffer, buf );

    // We know that the dump starts 128 bytes before the this pointer

    unsigned int pos = m_RadCrashRecordXBox.m_Context.Ecx - 128 * 4;
    char * curr = buffer + strlen( buf );

    for( unsigned int i = 0; i < sizeof( m_RadCrashRecordXBox.m_ThisPointerDump ) / sizeof( unsigned int ); i++ )
    {
        if( i % 2 == 0 )
        {
            sprintf( curr, "addr [0x%08x] val [0x%08x]  ", pos, m_RadCrashRecordXBox.m_ThisPointerDump[ i ] );
        }
        else
        {
            sprintf( curr, "addr [0x%08x] val [0x%08x]\r\n", pos, m_RadCrashRecordXBox.m_ThisPointerDump[ i ] );
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
// radCrashReporterXBox::GetNumFunctions 
//=============================================================================

unsigned int radCrashReporterXBox::GetNumFunctions( void )
{
    return 10;
}

//=============================================================================
// radCrashReporterXBox::PrintFunctionTrace
//=============================================================================

void radCrashReporterXBox::PrintFunctionTrace
( 
    char * buffer, 
    unsigned int bufferSize, 
    unsigned int functionIndex 
)
{
    rAssert( bufferSize >= 1280 );  // That should be plenty

    unsigned int numFunctions = 10; // sizeof( m_RadCrashRecordXBox.m_StackTrace ) / sizeof( radCrashRecordXBox::FunctionInfo );
    unsigned int numArgs = sizeof( m_RadCrashRecordXBox.m_StackTrace[ 0 ].m_pArgs ) / sizeof( unsigned int );

    rAssert( functionIndex < numFunctions );

    char symbol[ 512 ];
    char line[ 512 ];

    radPEAddr2Line( m_RadCrashRecordXBox.m_StackTrace[ functionIndex ].m_pFunction,
        symbol, line );

    sprintf( buffer, "\r\n[%02d] Function: [0x%08x]\r\n"
                           "       Symbol: [%s]\r\n" \
                           "         Line: [%s]\r\n" \
                           "         Args: [0x%08x] [0x%08x] [0x%08x]\r\n" \
                           "               [0x%08x] [0x%08x] [0x%08x]\r\n" \
                           "               [0x%08x]\r\n",
        functionIndex,
        m_RadCrashRecordXBox.m_StackTrace[ functionIndex ].m_pFunction,
        symbol,
        line,
        m_RadCrashRecordXBox.m_StackTrace[ functionIndex ].m_pArgs[ 0 ],
        m_RadCrashRecordXBox.m_StackTrace[ functionIndex ].m_pArgs[ 1 ],
        m_RadCrashRecordXBox.m_StackTrace[ functionIndex ].m_pArgs[ 2 ],
        m_RadCrashRecordXBox.m_StackTrace[ functionIndex ].m_pArgs[ 3 ],
        m_RadCrashRecordXBox.m_StackTrace[ functionIndex ].m_pArgs[ 4 ],
        m_RadCrashRecordXBox.m_StackTrace[ functionIndex ].m_pArgs[ 5 ],
        m_RadCrashRecordXBox.m_StackTrace[ functionIndex ].m_pArgs[ 6 ] );
}

//=============================================================================
// radCrashReporterXBox::PrintPlatform
//=============================================================================

void radCrashReporterXBox::PrintPlatform( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 256 );
    sprintf( buffer, "\r\n" );
}

//=============================================================================
// radCrashReporterXBox::PrintDate
//=============================================================================

void radCrashReporterXBox::PrintDate( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 256 );
    sprintf( buffer, "\r\n" );
}

//=============================================================================
// radCrashReporterXBox::PrintVersion
//=============================================================================

void radCrashReporterXBox::PrintVersion( char * buffer, unsigned int bufferSize )
{
    rAssert( bufferSize >= 256 );
    sprintf( buffer, "\r\n" );
}
