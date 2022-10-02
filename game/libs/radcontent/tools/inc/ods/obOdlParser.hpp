//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef STRUCTBUILDER_HPP
#define STRUCTBUILDER_HPP

#include "obParser.hpp"
#include "obClass.hpp"
#include "obProject.hpp"

class obOdlParser
{
    public:

        static bool ParseDefinitionFile( obProject * pObProject, obDataStream & dataStream );
        static const char * GetLastError( void ) { return s_pLastError; }

    private:

        static obClass * ParseDataType( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser );
        static obClass * ParseClass( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser );
        static obClass * ParseString( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser );
        static obClass * ParseFloat( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser );
        static obClass * ParseInt( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser );
        static obClass * ParseBool( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser );
        static obClass * ParseUnsignedInt( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser );
        static obClass * ParseCollection( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser );
        static obClass * ParseReference( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser );
        static obClass * ParseEnum( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser );
        
        static char s_pLastError[ 1024 ];
};

#endif // STRUCTBUILDER_HPP