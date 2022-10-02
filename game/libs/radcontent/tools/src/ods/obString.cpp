//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obString.hpp"
#include "obCast.hpp"

obStringClassInstance::obStringClassInstance(
    obStringClass * pobStringClass,
    obClassInstance * pObClassInstance_Parent,
    const char * pName )
    :
    obClassInstance( pobStringClass, pObClassInstance_Parent, pName ),
    m_Value( pobStringClass->GetDefaultValue( ) )
{
}

obClassInstance * obStringClass::CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName )
{
    return new obStringClassInstance( this, pObClassInstance_Parent, pName );
}

obStringClass::obStringClass( obClass * pParent, const char * pName, const char * pValue )
	:
	obClass( NULL, pParent, pName ),
	m_DefaultValue( pValue )
{
}

const char * obStringClass::GetDefaultValue( void ) { return m_DefaultValue; }

const char * obStringClassInstance::GetValue( void )
{
    return m_Value;
}

void obStringClassInstance::SetValue( const char * pValue )
{
    m_Value = pValue;
}

void obStringClassInstance::WriteTextData( obTextStream & stream, unsigned int indent )
{
    stream.WriteQuotedString( m_Value );
}

bool obStringClassInstance::ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString )
{
    char value[ 256 ];
    
    if ( ! parser.GetQuotedString( value, 256 ) )
    {
        *pErrorString = "Expected quoted string";
        return false;
    }
    
    m_Value = value;
    
    return true;
}

obClassInstance * obStringClassInstance::Clone( obClassInstance * pObClassInstance_Parent )
{
    obStringClassInstance * pNew = new obStringClassInstance(
        GetStringClass( ),
        pObClassInstance_Parent,
        GetName( ) );
    
    pNew->SetValue( m_Value );
        
    return pNew;
}

obStringClass * obStringClassInstance::GetStringClass( void )
{
    return obFastDynamicCast< obStringClass * >( GetClass( ) );
}

