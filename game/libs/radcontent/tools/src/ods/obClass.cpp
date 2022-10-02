//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obClass.hpp"
#include "obReference.hpp"

obClass::obClass( obClass * pBase, obClass * pParent, const char * pName )
    :
    m_pBase( pBase ),
    m_pParent( pParent )
    
{
    m_Name = pName;
}

obClass::~obClass( void )
{
}

obClass * obClass::GetBase( void )
{
    return m_pBase;
}

void obClass::GetFullName( char * pBuffer, unsigned int chars )
{
    if ( m_pParent != NULL )
    {
        m_pParent->GetFullName( pBuffer, chars );
        strcat( pBuffer, "." );
        strcat( pBuffer, GetName( ) );        
    }
    else
    {
        strcpy( pBuffer, GetName( ) );
    }    
}

const char * obClass::GetName( void )
{
    return m_Name;
}

obClass * obClass::GetParent( void )
{
    return m_pParent;
}

obClassInstance::obClassInstance( obClass * pClass, obClassInstance * pObClassInstance_Parent, const char * pName  )
    :
    m_pClass( pClass ),
    m_pParent( pObClassInstance_Parent ),
    m_Name( pName )    
{

}


obClass * obClassInstance::GetClass( void )
{
    return m_pClass;
}

obClassInstance * obClassInstance::GetParent( void )
{
    return m_pParent;
}

const char * obClassInstance::GetName( void )
{
    return m_Name;
}

void obClassInstance::GetFullName( char * pName, unsigned int chars )
{
    if ( m_pParent == NULL )
    {
        strcpy( pName, m_Name );
    }
    else
    {
        m_pParent->GetFullName( pName, chars );
        strcat( pName, "." );
        strcat( pName, m_Name );
    }

}

void obClassInstance::SetName( const char * pName )
{
    m_Name = pName;
}

obClassInstance * obClassInstance::FindChild( const char * pName )
{
    for( unsigned int c = 0; c < GetNumChildren( ); c ++ )
    {
        obClassInstance * pChild = GetChildAt( c );
        
        if ( strcmp( pChild->GetName( ), pName ) == 0 )
        {
            return pChild;
        }
            
    }
    
    return NULL;
}

bool obClass::IsType( obClass * pObClass )
{
    obClass * pObClassBase = this;
    
    while( pObClassBase != NULL )
    {
        if ( pObClassBase == pObClass )
        {
            return true;
        }
        
        pObClassBase = pObClassBase->GetBase( );        
    }
    
    return false;
}

void obClassInstance::AddRef( obReferenceClassInstance * pObClassInstance )
{
    m_ObVector_References.AddEnd( pObClassInstance );
}

void obClassInstance::RemoveRef( obReferenceClassInstance * pObClassInstance )
{
    for( unsigned int i = 0; i < m_ObVector_References.GetNumItems( ); i ++ )
    {
        if ( m_ObVector_References.GetAt( i ) == pObClassInstance )
        {
            m_ObVector_References.RemoveAt( i );
            break;
        }
    }
}

unsigned int obClassInstance::GetNumReferences( void )
{
    return m_ObVector_References.GetNumItems( );
}

obReferenceClassInstance * obClassInstance::GetReferenceAt( unsigned int i )
{
    return m_ObVector_References.GetAt( i );
}

obClassInstance::~obClassInstance( void )
{

    for( int i = m_ObVector_References.GetNumItems( ) -1 ; i >= 0; i -- )
    {
        obReferenceClassInstance * pRef = m_ObVector_References.GetAt( i );
        pRef->SetValue( NULL );
    }
}


        
