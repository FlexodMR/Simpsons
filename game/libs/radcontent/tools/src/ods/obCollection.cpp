//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obcollection.hpp"
#include "obproject.hpp"

obClassInstance * obCollectionClass::CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName )
{
    return new obCollectionClassInstance( this, pObClassInstance_Parent, pName );
}

void obCollectionClassInstance::InsertItem( obClassInstance * pNew )
{    
    m_ObVector_Items.AddEnd( pNew );
}

void obCollectionClassInstance::RemoveAll( void )
{
    for ( unsigned int i = 0; i < m_ObVector_Items.GetNumItems( ); i ++ )
    {
        delete m_ObVector_Items.GetAt( i );
    }
    
    m_ObVector_Items.RemoveAll( );
}

obClassInstance * obCollectionClassInstance::GetItemAt( unsigned int i )
{
    return m_ObVector_Items.GetAt( i );
}

void obCollectionClassInstance::RemoveItem( obClassInstance * pObClassInstance )
{
    for ( unsigned int i = 0; i < m_ObVector_Items.GetNumItems( ); i ++ )
    {
        if ( m_ObVector_Items.GetAt( i ) == pObClassInstance )
        {
            m_ObVector_Items.RemoveAt( i );
            return;
        }
    }
}   
        
obCollectionClass::~obCollectionClass( void )
{

}

obCollectionClass::obCollectionClass( obClass * pParent, const char * pName, obClass * pClassType, int minElements, int maxElements )
    :
    obClass( NULL, pParent, pName ),
    m_pObClass( pClassType ),
    m_MinElements( minElements ),
    m_MaxElements( maxElements )
{
}

obCollectionClassInstance::~obCollectionClassInstance( )
{
    RemoveAll( );
}

obClass * obCollectionClass::GetCollectionType( void )
{
    return m_pObClass;
}

unsigned int obCollectionClass::GetMinElements( void )
{
    return m_MinElements;
}

unsigned int obCollectionClass::GetMaxElements( void )
{
    return m_MaxElements;
}

obCollectionClassInstance::obCollectionClassInstance( obCollectionClass * pobCollectionClass, obClassInstance * pObClassInstance_Parent, const char * pName )
    :
    obClassInstance( pobCollectionClass, pObClassInstance_Parent, pName )
{
}

obCollectionClass * obCollectionClassInstance::GetCollectionClass( void )
{
    return (obCollectionClass*) GetClass( );
}

unsigned int obCollectionClassInstance::GetNumItems( void )
{
   return m_ObVector_Items.GetNumItems( );
}

obClassInstance * obCollectionClassInstance::FindItem( const char * pName )
{
    for( unsigned int i = 0; i < m_ObVector_Items.GetNumItems( ); i ++ )
    {
        if ( strcmp( m_ObVector_Items.GetAt( i )->GetName( ), pName ) == 0 )
        {
            return m_ObVector_Items.GetAt( i );
        }
    }
    
    return NULL;
}

void obCollectionClassInstance::WriteTextData( obTextStream & stream, unsigned int indent )
{
    stream.WriteCrlf( );    
    stream.Indent( indent );
    stream.WriteLine( "[" );

           
    for( unsigned int i = 0; i < m_ObVector_Items.GetNumItems( ); i ++ )
    {        
        stream.Indent( indent + 1 );
        stream.WriteString( m_ObVector_Items.GetAt( i )->GetClass( )->GetName( ) );
        stream.WriteString( " " );
        stream.WriteString( m_ObVector_Items.GetAt( i )->GetName( ) );
        stream.WriteString( ":" );
        m_ObVector_Items.GetAt( i )->WriteTextData( stream, indent + 1 );
        stream.WriteCrlf(  );
    }
    
    stream.Indent( indent );
    stream.WriteString( "]" );
}

bool obCollectionClassInstance::ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString )
{
    if ( ! parser.SkipToken( "[" ) )
    {
        *pErrorString = "Expected '['";
        return false;
    }
    
    while( ! parser.SkipToken( "]" ) )
    {
        char classname[ 256 ];
        char name[ 256 ];
        
        if ( ! parser.GetVariableName( classname, 256 ) )
        {
            *pErrorString = "Expected class type";
            return false;            
        }
        
        obClass * pObClass = project.FindClass( classname );
        
        if ( pObClass == NULL  )
        {
            pErrorString->Format( "No such class: [%s]", classname );
            return false;
        }
       
        if ( pObClass->IsType( GetCollectionClass( )->GetCollectionType( ) ) == false )
        {
            pErrorString->Format( "Type missmatch: %s is not a %s", pObClass->GetName( ), GetCollectionClass( )->GetCollectionType( ) );
        
        }
        
        if ( ! parser.GetCompositeVariableName( name, 256 ) )
        {
            *pErrorString = "Expected element name";
            return false;
        }
        
        if ( ! parser.SkipToken( ":" ) )
        {
            *pErrorString = "Expected ':'";
            return false;
        }
        
        obClassInstance * pInstance = pObClass->CreateInstance( this, name );
        
        InsertItem( pInstance );
        
        if ( ! pInstance->ReadTextData( project, parser, pErrorString ) )
        {
            return false;
        }
    }
    
    return true;    
}

unsigned int obCollectionClassInstance::GetNumChildren( void )
{
    return m_ObVector_Items.GetNumItems( );
}

obClassInstance * obCollectionClassInstance::GetChildAt( unsigned int i )
{
    return m_ObVector_Items.GetAt( i );
}

obClassInstance * obCollectionClassInstance::Clone( obClassInstance * pObClassInstance_Parent )
{
    obCollectionClassInstance * pNew = new obCollectionClassInstance( GetCollectionClass( ), pObClassInstance_Parent, GetName( ) );
    
    for( unsigned int i = 0; i < GetNumItems( ); i ++ )
    {
        pNew->InsertItem( GetItemAt( i )->Clone( pNew ) ); 
    }
    
    return pNew;
    
}


