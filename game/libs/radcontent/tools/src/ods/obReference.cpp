//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obReference.hpp"
#include "obComplex.hpp"
#include "obProject.hpp"

obClassInstance * obReferenceClass::CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName )
{
    return new obReferenceClassInstance( this, pObClassInstance_Parent, pName );
}
        
obReferenceClass::obReferenceClass( obClass * pParent,const char * pName, obClass * pClass, bool canBeNull )
    :
    obClass( NULL, pParent, pName ),
    m_pObClass( pClass ),
    m_CanBeNull( canBeNull )
{

}

obReferenceClass::~obReferenceClass( void )
{
}

obReferenceClassInstance::obReferenceClassInstance( obReferenceClass * pobReferenceClass, obClassInstance * pObClassInstance_Parent, const char * pName )
    :
    obClassInstance( pobReferenceClass, pObClassInstance_Parent, pName ),
    m_pValue( NULL )
{
}

void obReferenceClassInstance::WriteTextData( obTextStream & stream, unsigned int indent )
{
    if ( m_pValue == NULL )
    {
        stream.WriteString( "null" );
    }
    else
    {
        char fullName[ 256 ];
        m_pValue->GetFullName( fullName, 256);
        
        stream.WriteString( fullName );
    }
}

bool obReferenceClassInstance::ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString )
{
    if ( parser.SkipToken( "null" ) )
    {
        m_pValue = NULL;
        return true;
    }

    char name[ 256 ];
    if ( ! parser.GetCompositeVariableName( name, 256 ) )
    {
        *pErrorString = "Expected reference name";
        return false;
    }
    
    obClassInstance * pValue = project.FindInstance( name );
    
    if ( pValue == NULL )
    {
        pErrorString->Format( "No such instance: [%s]", name );
        return false;
    }

    if ( pValue->GetClass( )->IsType( GetReferenceClass( )->GetReferenceType( ) ) == false )
    {
        pErrorString->Format( "Type missmatch: %s is not a %s", pValue->GetClass( )->GetName( ), GetReferenceClass( )->GetReferenceType( )->GetName( ) );
        return false;
    }
    
    m_pValue = pValue;
    m_pValue->AddRef( this );       
    
    return true;
}

obClassInstance * obReferenceClassInstance::Clone( obClassInstance * pObClassInstance_Parent )
{
    obReferenceClassInstance * pNew = new obReferenceClassInstance( GetReferenceClass( ), 
        pObClassInstance_Parent,
        GetName( ) );
        
    pNew->SetValue( m_pValue );
        
    return pNew;
}

obReferenceClass * obReferenceClassInstance::GetReferenceClass( void )
{
    return (obReferenceClass*) GetClass( );
}

void obReferenceClassInstance::SetValue( obClassInstance * pValue )
{
    if ( m_pValue != NULL )
    {
        m_pValue->RemoveRef( this );
    }
    
    m_pValue = pValue;
    
    if ( m_pValue != NULL )
    {
        m_pValue->AddRef( this );
    }
}

obReferenceClassInstance::~obReferenceClassInstance( )
{
    if ( m_pValue != NULL )
    {
        m_pValue->RemoveRef( this );
    }
}
        
obClassInstance * obReferenceClassInstance::GetValue( void )
{
    return m_pValue; 
}


