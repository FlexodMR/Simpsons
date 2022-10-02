//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
// crashreport.hpp
//=============================================================================

#ifndef CRASHREPORT_HPP
#define CRASHREPORT_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <radobject.hpp>
#include <radfile.hpp>

//=============================================================================
// Forward Declarations
//=============================================================================

struct IRadCrashReporter;

//=============================================================================
// Interface: IRadCrashReporter
//=============================================================================

//
// Classes that implement the IRadCrashReport interface translate the contents
// of crash handler files (.crh) into strings suitable for display in text
// (.txt) files
//

struct IRadCrashReporter : public IRefCount
{
    virtual unsigned GetNumExceptionInfos( void ) = 0;
    virtual void PrintExceptionInfo( char * buffer, unsigned int bufferSize, unsigned int infoIndex ) = 0;

    virtual unsigned int GetNumRegisters( void ) = 0;
    virtual void PrintRegister( char * buffer, unsigned int bufferSize, unsigned int registerIndex ) = 0;

    virtual void PrintStackDump( char * buffer, unsigned int bufferSize ) = 0;
    virtual void PrintThisPointerDetails( char * buffer, unsigned int bufferSize ) = 0;

    virtual unsigned int GetNumFunctions( void ) = 0;
    virtual void PrintFunctionTrace( char * buffer, unsigned int bufferSize, unsigned int functionIndex ) = 0;

    virtual void PrintPlatform( char * buffer, unsigned int bufferSize ) = 0;
    virtual void PrintDate( char * buffer, unsigned int bufferSize ) = 0;
    virtual void PrintVersion( char * buffer, unsigned int bufferSize ) = 0;
};



#endif // CRASHREPORT_HPP
