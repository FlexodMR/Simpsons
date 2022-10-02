//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
// textfilewriter.hpp
//=============================================================================

#ifndef TEXTFILEWRITER_HPP
#define TEXTFILEWRITER_HPP

//=============================================================================
// Included Files
//=============================================================================

#include <radobject.hpp>
#include "crashreport.hpp"

//=============================================================================
// Forward Declarations
//=============================================================================

class textFileWriter;

//=============================================================================
// Class textFileWriter
//=============================================================================

class textFileWriter : public IRefCount,
                       public radRefCount
{
    public :

        IMPLEMENT_REFCOUNTED( "textFileWriter" )

        textFileWriter( IRadFile * pOutputFile, IRadCrashReporter * pIRadCrashReporter );
        virtual ~textFileWriter( void );

        void OutputFile( void );

    private :

        void PrintTitle( void );
        void PrintGeneralExceptionInfo( void );
        void PrintContext( void );
        void PrintFunctionTrace( void );
        void PrintStackDump( void );
        void PrintThisPointerDetails( void );

        ref< IRadFile > m_pIRadFile;
        ref< IRadCrashReporter > m_pIRadCrashReporter;
};

#endif // TEXTFILEWRITER_HPP