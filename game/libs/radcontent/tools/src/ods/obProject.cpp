//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obProject.hpp"
#include "obComplex.hpp"
#include "obCast.hpp"
#include "obMemoryDataStream.hpp"

obProject::obProject( void )
{
}

obProject::~obProject( void )
{
    RemoveAllClasses( );
    RemoveAllInstances( );
}

bool obProject::LoadText( obDataStream & stream )
{
    obParser parser( stream );
    m_LastError = "Ok";
        
    char className[ 256 ];
    bool failed = false;
    
    while( ! parser.IsEof( ) )
    {
        if ( ! parser.GetVariableName( className, 256 ) )
        {
            m_LastError.Format( "Expected class name" );
            failed = true;
            break;
        }
        
        obClass * pObClass = FindClass( className );
        
        if ( pObClass == NULL )
        {
            m_LastError.Format( "No such class [%s]", className );
            failed = true;            
            break;
        }
        
        char objectName[ 256 ];
        
        if ( ! parser.GetVariableName( objectName, 256 ) )
        {
            m_LastError = "Expected object name";
            failed = true;
            break;
        }
        
        obClassInstance * pInst = pObClass->CreateInstance( NULL, objectName );
        AddInstance( pInst );
        if ( ! pInst->ReadTextData( *this, parser, & m_LastError ) )
        {
            RemoveInstance( pInst );
            failed = true;            
            break;
        }
    }
    
    if ( failed == true )
    {
        m_LastError.Format( "%s : Line: [%d]\n", m_LastError, parser.GetLineCount( ) + 1 );
        return false;
    }
    
    return true;
}

void obProject::SaveText( obDataStream & stream )
{
    obTextStream textStream( stream );

    unsigned int numItems = GetNumInstances( );

    unsigned int indent = 0;
    
    for( unsigned int i = 0; i < numItems; i ++ )
    {
        obClassInstance * pInst = GetInstanceAt( i );
        
        textStream.WriteString( pInst->GetClass( )->GetName( ) );
        textStream.WriteString( " " );
        textStream.WriteString( pInst->GetName( ) );
        textStream.WriteCrlf( );
        
        pInst->WriteTextData( textStream, 0 );
        textStream.WriteCrlf( );        
    }
}
	
const char * obProject::GetLastError( void )
{
    return m_LastError;
}

void obProject::RemoveAllClasses( void )
{
    unsigned int items = m_ObVector_Classes.GetNumItems( );

    for( unsigned int i = 0; i < items; i ++ )
    {
        obClass * pObClass = m_ObVector_Classes.GetAt( i );

        delete pObClass;
    }

    m_ObVector_Classes.RemoveAll( );
}

obClass * obProject::FindClass( const char * pName )
{
    unsigned int items = m_ObVector_Classes.GetNumItems( );

    for( unsigned int i = 0; i < items; i ++ )
    {
        obClass * pObClass = m_ObVector_Classes.GetAt( i );

        if ( strcmp( pObClass->GetName( ), pName ) == 0 )
        {
            return pObClass;
        }
    }

    return NULL;
}

void obProject::AddClass( obClass * pClass )
{
    m_ObVector_Classes.AddEnd( pClass );
}

unsigned int obProject::GetNumClasses( void )
{
    return m_ObVector_Classes.GetNumItems( );
}

obClass * obProject::GetClassAt( unsigned int i )
{
    return m_ObVector_Classes.GetAt( i );
}

void obProject::AddInstance( obClassInstance * pInstance )
{
    m_ObVector_Instances.AddEnd( pInstance );
}

obClassInstance * obProject::FindInstance( const char * pName )
{
    unsigned int items = m_ObVector_Instances.GetNumItems( );

    obParser parser( obMemoryDataStream( pName, strlen( pName ) ) );
    
    obClassInstance * pInstance = NULL;
    
    char subst[256];
        
    if ( ! parser.GetVariableName( subst, 256 ) )
    {
        return NULL;        
    }
    
    for( unsigned int i = 0; i < items; i ++ )
    {        
        obClassInstance * pTest = m_ObVector_Instances.GetAt( i );
            
        if ( ::strcmp( pTest->GetName( ), subst ) == 0 )
        {
            pInstance = pTest;
            break;
        }
    }
    
    while ( 1 )
    {
        if ( parser.IsEof( ) )
        {
            break;
        }
        
        if ( ! parser.SkipToken( "." ) )
        {
            return NULL;
        }        
        
        if ( ! parser.GetVariableName( subst, 256 ) )
        {
            return NULL;
        }
        
        pInstance = pInstance->FindChild( subst );
        
        if ( ! pInstance  )
        {
            break;
        }
    }

    return pInstance;
}

unsigned int obProject::GetNumInstances( )
{
    return m_ObVector_Instances.GetNumItems( );
}

obClassInstance * obProject::GetInstanceAt( unsigned int i )
{
    return m_ObVector_Instances.GetAt( i );
}

void obProject::RemoveInstance( obClassInstance * pInstance )
{
    unsigned int items = m_ObVector_Instances.GetNumItems( );

    for( unsigned int i = 0; i < items; i ++ )
    {
        if ( m_ObVector_Instances.GetAt( i ) == pInstance )
        {        
            m_ObVector_Instances.RemoveAt( i );        
        
            delete pInstance;
            return;
        }
    }     
}

void obProject::RemoveAllInstances( void )
{
    unsigned int items = m_ObVector_Instances.GetNumItems( );

    for( unsigned int i = 0; i < items; i ++ )
    {
        obClassInstance * pInstance = m_ObVector_Instances.GetAt( i );
        
        delete pInstance;
    }
    
    m_ObVector_Instances.RemoveAll( );
    
}


bool obProject::IsModified(void)
{
    return true;
}


