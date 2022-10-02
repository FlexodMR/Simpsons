//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        ps2crashreporter.hpp
//
// Subsystem:   Foundation Technologies Tools - Crash Report Writer
//
// Description: This file contains the IRadCrashReporter implementation
//              for ps2 generated crash handler reports
//
// Revisions:   April 17, 2002   RWS
//
//=============================================================================

#ifndef PS2CRASHREPORTER_HPP
#define PS2CRASHREPORTER_HPP

//=============================================================================
// Included Files
//=============================================================================

#include <radfile.hpp>
#include "crashreport.hpp"
#include "../../../src/radcrashhandler/crashrecords.hpp"

//=============================================================================
// Definitions
//=============================================================================

#define PS2_CRASH_REPORT_FUNCTION_TRACE_SIZE 11

//=============================================================================
// ForwardDeclarations
//=============================================================================

class radCrashReporterPs2;

//=============================================================================
// Component radCrashReporterGcn
//=============================================================================

class radCrashReporterPs2 : public IRadCrashReporter,
                            public radRefCount
{
    public:

        IMPLEMENT_REFCOUNTED( "radCrashReporterPs2" )

        radCrashReporterPs2( IRadFile * pInputFile, char * pExecutableFileName );
        virtual ~radCrashReporterPs2( void );

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

        // Members

        radCrashRecordPs2 m_RadCrashRecordPs2;
        addr2LineInfo m_pAddr2LineInfo[ PS2_CRASH_REPORT_FUNCTION_TRACE_SIZE ];
};

#endif // PS2CRASHREPORTER_HPP

