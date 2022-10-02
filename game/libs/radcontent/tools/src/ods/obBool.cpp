//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obBool.hpp"

obClassInstance * obBoolClass::CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName )
{
    return new obBoolClassInstance( this, pObClassInstance_Parent, pName );
}


obBoolClass::obBoolClass( obClass * pObClassParent, const char * pName, bool value )
	:
	obClass( NULL, pObClassParent, pName ),
	m_DefaultValue( value )
{
}

        
bool obBoolClass::GetDefaultValue( void )
{
    return m_DefaultValue; 
}

obBoolClassInstance::obBoolClassInstance( obBoolClass * pobBoolClass, obClassInstance * pObClassInstance_Parent, const char * pName )
    :
    obClassInstance( pobBoolClass, pObClassInstance_Parent, pName ),
    m_Value( pobBoolClass->GetDefaultValue( ) )
{
}

bool obBoolClassInstance::GetValue( void )
{
    return m_Value;
}

void obBoolClassInstance::SetValue( bool value )
{
    m_Value = value;
}

obBoolClass * obBoolClassInstance::GetBoolClass( void )
{
    return (obBoolClass*) GetClass( );
}

void obBoolClassInstance::WriteTextData( obTextStream & stream, unsigned int indent )
{
    if ( m_Value == true )
    {
        stream.WriteString( "true" );
    }
    else
    {
        stream.WriteString( "false" );
    }
}


bool obBoolClassInstance::ReadTextData( obProject & project, obParser & stream, obUtilString * pErrorString )
{
    if ( stream.SkipToken( "false" ) )
    {
        m_Value = false;
    }
    else if ( stream.SkipToken( "true" ) )
    {
        m_Value = true;
    }
    else
    {
        *pErrorString = "Expected 'true' or 'false'";
        return false;
    }
    
    return true;
    
}

obClassInstance * obBoolClassInstance::Clone( obClassInstance * pObClassInstance_Parent )
{
    obBoolClassInstance * pNew = new obBoolClassInstance( GetBoolClass( ), pObClassInstance_Parent, GetName( ) );
    
    pNew->SetValue( m_Value );
    
    return pNew;
    
}

