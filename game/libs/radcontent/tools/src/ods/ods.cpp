//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "ods.hpp" 
#include "obVector.hpp"
#include "string.h"
#include "assert.h"

struct Thing
{
    enum Type { Project } m_Type;
};

struct String : public Thing
{
};

struct Project : public Thing
{
    
};

struct HandleTableEntry
{   
    void * m_pData;
};

#define HANDLE_TABLE_SIZE 1024

HandleTableEntry g_HandleTable[ HANDLE_TABLE_SIZE ];

char g_Mem[ 64000 ];
char * g_pMemEnd = g_Mem;

//============================================================================

void * odsHeapAlloc( size_t size )
{
    void * pMem = g_pMemEnd;
    g_pMemEnd += size;
    
    return pMem;
}

//============================================================================

void odsHeapFree( void * pMemory, size_t size )
{
    memcpy( (char*) pMemory, (char*)pMemory + size,
        g_pMemEnd - (char*) pMemory );
}

OdsHandle odsHandleGet( void )
{
    for( unsigned int i = 0; i < HANDLE_TABLE_SIZE; i ++ )
    {
        if ( g_HandleTable[ i ].m_pData == NULL )
        {
            return i;
        }
    }
    
    assert( false );
    
    return -1;
    
}

void odsHandleFree( OdsHandle * h )
{
    g_HandleTable[ *h ].m_pData = NULL;
    
    *h = -1;
}

void * odsHandleGetData( OdsHandle h )
{
    return g_HandleTable[ h ].m_pData;
}

void odsHandleSetData( OdsHandle h, void * pData )
{
    g_HandleTable[ h ].m_pData = pData;
}

//============================================================================

_X_ hOdsProject odsCreateProject( )
{
    OdsHandle h = odsHandleGet( );
    
        
    Project * pProject = (Project*) odsHeapAlloc( sizeof( Project ) );
    odsHandleSetData( h, pProject );
    
    pProject->m_Type = Thing::Project;
    
    return h;   
}

//============================================================================

_X_ void            odsDestroyProject( hOdsProject * project )
{   
    odsHeapFree( odsHandleGetData( *project ), sizeof( Project ) );
    odsHandleFree( project );
};

// Types

_X_ void            odsAddTdlFile( Project & project, const char * pFileName )
{
    //String
    
}
