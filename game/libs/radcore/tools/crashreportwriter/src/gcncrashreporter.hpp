//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        gcncrashreporter.hpp
//
// Subsystem:   Foundation Technologies Tools - Crash Report Writer
//
// Description: This file contains the IRadCrashReporter implementation
//              for gamecube generated crash handler reports
//
// Revisions:   April 3, 2002   RWS
//
//=============================================================================

#ifndef GCNCRASHREPORTER_HPP
#define GCNCRASHREPORTER_HPP

//=============================================================================
// Included Files
//=============================================================================

#include <radfile.hpp>
#include "crashreport.hpp"
#include "../../../src/radcrashhandler/crashrecords.hpp"

//=============================================================================
// Definitions
//=============================================================================

#define GCN_CRASH_REPORT_FUNCTION_TRACE_SIZE 11

//=============================================================================
// ForwardDeclarations
//=============================================================================

class radCrashReporterGcn;

//=============================================================================
// Component radCrashReporterGcn
//=============================================================================

class radCrashReporterGcn : public IRadCrashReporter,
                            public radRefCount
{
    public:

        IMPLEMENT_REFCOUNTED( "radCrashReporterGcn" )

        radCrashReporterGcn( IRadFile * pInputFile, char * pExecutableFileName );
        virtual ~radCrashReporterGcn( void );

        virtual unsigned GetNumExceptionInfos( void );
        virtual void PrintExceptionInfo( char * buffer, unsigned int bufferSize, unsigned int infoIndex );

        virtual unsigned int GetNumRegisters( void );
        virtual void PrintRegister( char * buffer, unsigned int bufferSize, unsigned int registerIndex );

        virtual void PrintStackDump( char * buffer, unsigned int bufferSize );
        virtual void PrintThisPointerDetails( char * buffer, unsigned int bufferSize );

        virtual unsigned int GetNumFunctions( void );
        virtual void PrintFunctionTrace( char * buffer, unsigned int bufferSize, unsigned int functionIndex );

        virtual void PrintPlatform( char * buffer, unsigned int bufferSize );
        virtual void PrintDate( char * buffer, unsigned int bufferSize );
        virtual void PrintVersion( char * buffer, unsigned int bufferSize );

    private:

        // Assist with addr2Line conversion

        struct addr2LineInfo
        {
            unsigned int m_Addr;
            char m_pLineInfo[ 512 ];
            char m_pSymbolInfo[ 512 ];
        };

        void TraceFunctions( void );

        // Conversion functions to go from Gamecube to Win32 representations of memory

        void BigEndianToLittleEndian( radCrashRecordGcn * pRadCrashRecordGcn );
        inline unsigned short BigEndianToLittleEndian( unsigned short bigEndian );
        inline unsigned int BigEndianToLittleEndian( unsigned int bigEndian );
        inline float BigEndianToLittleEndian( float bigEndian );
        inline double BigEndianToLittleEndian( double bigEndian );

        // Members

        radCrashRecordGcn m_RadCrashRecordGcn;
        addr2LineInfo m_pAddr2LineInfo[ GCN_CRASH_REPORT_FUNCTION_TRACE_SIZE ];
};

//=============================================================================
// radCrashReporterGcn::BigEndianToLittleEndian( unsigned short )
//=============================================================================

unsigned short radCrashReporterGcn::BigEndianToLittleEndian( unsigned short bigEndian )
{
    unsigned short littleEndian;
	
	( ( char * ) & littleEndian )[ 0 ] = ( ( char * ) & bigEndian )[ 1 ];
    ( ( char * ) & littleEndian )[ 1 ] = ( ( char * ) & bigEndian )[ 0 ];

    return littleEndian;
}

//=============================================================================
// radCrashReporterGcn::BigEndianToLittleEndian( unsigned int )
//=============================================================================

unsigned int radCrashReporterGcn::BigEndianToLittleEndian( unsigned int bigEndian )
{
    unsigned int littleEndian;
	
	( ( char * ) & littleEndian )[ 0 ] = ( ( char * ) & bigEndian )[ 3 ];
    ( ( char * ) & littleEndian )[ 1 ] = ( ( char * ) & bigEndian )[ 2 ];
    ( ( char * ) & littleEndian )[ 2 ] = ( ( char * ) & bigEndian )[ 1 ];
    ( ( char * ) & littleEndian )[ 3 ] = ( ( char * ) & bigEndian )[ 0 ];

    return littleEndian;
}

//=============================================================================
// radCrashReporterGcn::BigEndianToLittleEndian( float )
//=============================================================================

float radCrashReporterGcn::BigEndianToLittleEndian( float bigEndian )
{
    float littleEndian;
	
	( ( char * ) & littleEndian )[ 0 ] = ( ( char * ) & bigEndian )[ 3 ];
    ( ( char * ) & littleEndian )[ 1 ] = ( ( char * ) & bigEndian )[ 2 ];
    ( ( char * ) & littleEndian )[ 2 ] = ( ( char * ) & bigEndian )[ 1 ];
    ( ( char * ) & littleEndian )[ 3 ] = ( ( char * ) & bigEndian )[ 0 ];

    return littleEndian;
}

//=============================================================================
// radCrashReporterGcn::BigEndianToLittleEndian( unsigned int )
//=============================================================================

double radCrashReporterGcn::BigEndianToLittleEndian( double bigEndian )
{
    double littleEndian;
	
	( ( char * ) & littleEndian )[ 0 ] = ( ( char * ) & bigEndian )[ 7 ];
    ( ( char * ) & littleEndian )[ 1 ] = ( ( char * ) & bigEndian )[ 6 ];
    ( ( char * ) & littleEndian )[ 2 ] = ( ( char * ) & bigEndian )[ 5 ];
    ( ( char * ) & littleEndian )[ 3 ] = ( ( char * ) & bigEndian )[ 4 ];
	( ( char * ) & littleEndian )[ 4 ] = ( ( char * ) & bigEndian )[ 3 ];
    ( ( char * ) & littleEndian )[ 5 ] = ( ( char * ) & bigEndian )[ 2 ];
    ( ( char * ) & littleEndian )[ 6 ] = ( ( char * ) & bigEndian )[ 1 ];
    ( ( char * ) & littleEndian )[ 7 ] = ( ( char * ) & bigEndian )[ 0 ];

    return littleEndian;
}



#endif // GCNCRASHREPORTER_HPP

