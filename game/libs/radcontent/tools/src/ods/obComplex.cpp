//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obComplex.hpp"
#include "obCast.hpp"
               
obComplexClass::obComplexClass( obClass * pParent, const char * pName, obComplexClass * pBaseClass )
    :
    obClass( pBaseClass, pParent, pName )
{
}

obComplexClass::~obComplexClass( void )
{
    RemoveAllAttributes( );
}

void obComplexClass::RemoveAllAttributes( void )
{
    unsigned int items = m_ObVector_Attributes.GetNumItems( );

    for( unsigned int i = 0; i < items; i ++ )
    {
        delete m_ObVector_Attributes.GetAt( i );
    }

    m_ObVector_Attributes.RemoveAll( );
}

obClassInstance * obComplexClass::CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName )
{   
    return new obComplexClassInstance( this, pObClassInstance_Parent, pName );
}
     
void obComplexClass::AddAttribute( obClassInstance * pObClassInstance )
{
    m_ObVector_Attributes.AddEnd( pObClassInstance );
}

obComplexClassInstance::obComplexClassInstance( obComplexClass * pObComplexClass, obClassInstance * pObClassInstance_Parent, const char * pName )
    :
    obClassInstance( pObComplexClass, pObClassInstance_Parent, pName ),
    m_pObComplexClassInstance_Base( NULL ),
    m_ObVector_AttributeInstances( pObComplexClass->GetNumAttributes( ) )
{
    if ( GetComplexClass( )->GetBase( ) != NULL )
    {
        m_pObComplexClassInstance_Base = obFastDynamicCast< obComplexClassInstance * >( GetComplexClass( )->GetBase( )->CreateInstance( pObClassInstance_Parent, pName ) );
    }
    else
    {
        m_pObComplexClassInstance_Base = NULL;
    }    

    for( unsigned int i = 0; i < pObComplexClass->GetNumAttributes( ); i ++ )
    {
        obClassInstance * pObClassInstance_Templ = pObComplexClass->GetAttributeAt( i );
        obClassInstance * pObClassInstance_Clone = pObClassInstance_Templ->Clone( this );

        m_ObVector_AttributeInstances.AddEnd( pObClassInstance_Clone );
    }
}

obComplexClassInstance::obComplexClassInstance( obComplexClassInstance * pClone, obClassInstance * pObClassInstance_Parent )
    :
    obClassInstance( pClone->GetComplexClass( ), pObClassInstance_Parent, pClone->GetName( ) ),
    m_pObComplexClassInstance_Base( NULL ),
    m_ObVector_AttributeInstances( pClone->GetComplexClass( )->GetNumAttributes( ) )    
{
    if ( GetComplexClass( )->GetBase( ) != NULL )
    {
        m_pObComplexClassInstance_Base = obFastDynamicCast< obComplexClassInstance * >( GetComplexClass( )->GetBase( )->CreateInstance( pObClassInstance_Parent, pClone->GetName( ) ) );
    }
    
    for( unsigned int i = 0; i < GetComplexClass( )->GetNumAttributes( ); i ++ )
    {
        obClassInstance * pAttrClone = pClone->GetAttributeAt( i )->Clone( this );
        
        m_ObVector_AttributeInstances.AddEnd( pAttrClone );
    }    
}


obClassInstance * obComplexClassInstance::Clone( obClassInstance * pObClassInstance_Parent )
{
    return new obComplexClassInstance( this, pObClassInstance_Parent );
}
        
obComplexClassInstance::~obComplexClassInstance( void )
{
    for( unsigned int i = 0; i < m_ObVector_AttributeInstances.GetNumItems( ); i ++ )
    {
        delete m_ObVector_AttributeInstances.GetAt( i );
    }
    
    delete m_pObComplexClassInstance_Base;
}

obClassInstance * obComplexClassInstance::FindAttribute( const char * pName )
{
    unsigned int items = GetComplexClass( )->GetNumAttributes( );

    for( unsigned int i = 0; i < items; i ++ )
    {
        if ( strcmp( GetComplexClass( )->GetAttributeAt( i )->GetName( ), pName ) == 0 )
        {
            return m_ObVector_AttributeInstances.GetAt( i );
        }
    }

    return NULL;
}

obClassInstance * obComplexClassInstance::GetAttributeAt( unsigned int i )
{
    return m_ObVector_AttributeInstances.GetAt( i );
}

obClassInstance * obComplexClass::GetAttributeAt( unsigned int i )
{
    return m_ObVector_Attributes.GetAt( i );
}


unsigned int obComplexClass::GetNumAttributes( void )
{
    return m_ObVector_Attributes.GetNumItems( );
}

void obComplexClassInstance::WriteTextData( obTextStream & stream, unsigned int indent )
{
    stream.WriteCrlf( );
    stream.Indent( indent );        
    stream.WriteLine( "[ " );
            
    for( unsigned int i = 0; i < m_ObVector_AttributeInstances.GetNumItems( ); i ++ )
    {
        stream.Indent( indent + 1);       
        stream.WriteString( GetComplexClass( )->GetAttributeAt( i )->GetName( ) );
        stream.WriteString( ":" );        
               
        m_ObVector_AttributeInstances.GetAt( i )->WriteTextData( stream , indent + 1 );
        
        stream.WriteCrlf( );            
    }
    
    stream.Indent( indent );       
    stream.WriteString( "]" );
}

bool obComplexClassInstance::ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString )
{
    if ( ! parser.SkipToken( "[" ) )
    {
        *pErrorString = "Expected '['";
        return false;
    }

    while ( ! parser.SkipToken( "]" ) )
    {
        char attributeName[ 256 ];
        if ( ! parser.GetVariableName( attributeName, 256 ) )
        {
            *pErrorString = "Expected variable name";
            return false;
        }

        if ( ! parser.SkipToken( ":" ) )
        {
           *pErrorString = "Expected ':' after attribute name";
            return false;
        }

        obClassInstance * pObClassInstance = FindAttribute( attributeName );

        if ( pObClassInstance== NULL )
        {
            pErrorString->Format( "no such attribute: [%s]",attributeName );
            return false;
        }

        if ( ! pObClassInstance->ReadTextData( project, parser, pErrorString ) )
        {
            return false;
        }
    }

    return true;
}    

unsigned int obComplexClassInstance::GetNumChildren( void )
{
    return GetComplexClass( )->GetNumAttributes( );
}

obClassInstance * obComplexClassInstance::GetChildAt( unsigned int i )
{
    return m_ObVector_AttributeInstances.GetAt( i );
}

obClassInstance * obComplexClassInstance::GetBaseClassInstance( void )
{
    return m_pObComplexClassInstance_Base;
}


