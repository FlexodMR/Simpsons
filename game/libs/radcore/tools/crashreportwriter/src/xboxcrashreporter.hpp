//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
// xboxcrashreporter.hpp
//=============================================================================

#ifndef XBOXCRASHREPORTER_HPP
#define XBOXCRASHREPORTER_HPP

//=============================================================================
// Included Files
//=============================================================================


#include <radfile.hpp>
#include "crashreport.hpp"
#include "../../../src/radcrashhandler/crashrecords.hpp"

//=============================================================================
// ForwardDeclarations
//=============================================================================

class radCcrashReporterXBox;

//=============================================================================
// Component crashReporterXBox
//=============================================================================

class radCrashReporterXBox : public IRadCrashReporter,
                             public radRefCount
{
    public:

        IMPLEMENT_REFCOUNTED( "radCrashReporterXBox" )

        radCrashReporterXBox( IRadFile * pInputFile, char * pExecutableFileName );
        virtual ~radCrashReporterXBox( void );

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

        radCrashRecordXBox m_RadCrashRecordXBox;

        unsigned int m_NumRegisters;
};




#endif // XBOXCRASHREPORTER_HPP

