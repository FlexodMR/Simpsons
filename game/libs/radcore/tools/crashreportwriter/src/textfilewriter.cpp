//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
// textfilewriter.cpp
//=============================================================================

//=============================================================================
// Included Files
//=============================================================================

#include "textfilewriter.hpp"

//=============================================================================
// Class: textFileWriter
//=============================================================================

//=============================================================================
// textFileWriter::textFileWriter
//=============================================================================

textFileWriter::textFileWriter( IRadFile * pOutputFile, IRadCrashReporter * pIRadCrashReporter )
    :
    radRefCount( 0 ),
    m_pIRadFile( pOutputFile ),
    m_pIRadCrashReporter( pIRadCrashReporter )
{
    rAssert( pOutputFile != NULL );
}

//=============================================================================
// textFileWriter::~textFileWriter
//=============================================================================

textFileWriter::~textFileWriter( void )
{

}

//=============================================================================
// textFileWriter::OutputFile
//=============================================================================

void textFileWriter::OutputFile( void )
{
    PrintTitle( );
    PrintGeneralExceptionInfo( );
    PrintContext( );
    PrintFunctionTrace( );
    PrintThisPointerDetails( );
    PrintStackDump( );
}

//=============================================================================
// textFileWriter::PrintGeneralExceptionInfo
//=============================================================================

void textFileWriter::PrintGeneralExceptionInfo( void )
{
    char buf[ 1088 ];

    sprintf( buf, "\r\n\r\n===========================================================================\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, " GENERAL EXCEPTION INFO:\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, "===========================================================================\r\n\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    for( unsigned int i = 0; i < m_pIRadCrashReporter->GetNumExceptionInfos( ); i++ )
    {
        m_pIRadCrashReporter->PrintExceptionInfo( buf, sizeof( buf ), i );
        m_pIRadFile->WriteAsync( buf, strlen( buf ) );
        m_pIRadFile->WaitForCompletion( );
    }
}

//=============================================================================
// textFileWriter::PrintTitle
//=============================================================================

void textFileWriter::PrintTitle( void )
{
    char buf[ 256 ];

    sprintf( buf, "\r\n===========================================================================\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, "FTech Crash Report\r\n\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, "Title:     [%s]\r\n", m_pIRadFile->GetFilename( ) );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    m_pIRadCrashReporter->PrintPlatform( buf, sizeof( buf ) );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    m_pIRadCrashReporter->PrintDate( buf, sizeof( buf ) );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    m_pIRadCrashReporter->PrintVersion( buf, sizeof( buf ) );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, "\r\nCrashReportWriter | (C) 2002 Radical Entertainment                     \r\n");
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, "===========================================================================\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );
}


//=============================================================================
// textFileWriter::PrintContext
//=============================================================================

void textFileWriter::PrintContext( void )
{
    char buf[ 256 ];

    sprintf( buf, "\r\n\r\n===========================================================================\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, " CONTEXT INFORMATION\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, "===========================================================================\r\n\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    for( unsigned int i = 0; i < m_pIRadCrashReporter->GetNumRegisters( ); i++ )
    {
        m_pIRadCrashReporter->PrintRegister( buf, sizeof( buf ), i );
        m_pIRadFile->WriteAsync( buf, strlen( buf ) );
        m_pIRadFile->WaitForCompletion( );
    }
}

//=============================================================================
// textFileWriter::PrintFunctionTrace
//=============================================================================

void textFileWriter::PrintFunctionTrace( void )
{
    char buf[ 1280 ];

    sprintf( buf, "\r\n\r\n===========================================================================\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, " FUNCTION TRACE INFORMATION\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, " (Note: Not all of the listed arguments will be valid.)\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, "===========================================================================\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    for( unsigned int i = 0; i < m_pIRadCrashReporter->GetNumFunctions( ); i++ )
    {
        m_pIRadCrashReporter->PrintFunctionTrace( buf, sizeof( buf ), i );
        m_pIRadFile->WriteAsync( buf, strlen( buf ) );
        m_pIRadFile->WaitForCompletion( );
    }
}

//=============================================================================
// textFileWriter::PrintStackDump
//=============================================================================

void textFileWriter::PrintStackDump( void )
{
    char buf[ 1280 * 64 ];

    sprintf( buf, "\r\n\r\n===========================================================================\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, " RAW STACK DUMP\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, "===========================================================================\r\n\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    m_pIRadCrashReporter->PrintStackDump( buf, sizeof( buf ) );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );
}

//=============================================================================
// textFileWriter::PrintThisPointerDetails
//=============================================================================

void textFileWriter::PrintThisPointerDetails( void )
{
    char buf[ 1280 * 64 ];

    sprintf( buf, "\r\n\r\n===========================================================================\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, " THIS POINTER DETAILS \r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    sprintf( buf, "===========================================================================\r\n\r\n" );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );

    m_pIRadCrashReporter->PrintThisPointerDetails( buf, sizeof( buf ) );
    m_pIRadFile->WriteAsync( buf, strlen( buf ) );
    m_pIRadFile->WaitForCompletion( );
}