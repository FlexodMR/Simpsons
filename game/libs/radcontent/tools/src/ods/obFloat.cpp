//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obFloat.hpp"

obFloatClass::obFloatClass( obClass * pParent, const char * pName, float minValue, float maxValue, float value )
	:
	obClass( NULL, pParent, pName ),
	m_MinValue( minValue ),
	m_MaxValue( maxValue ),
	m_DefaultValue( value )
{
}

obClassInstance * obFloatClass::CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName )
{
    return new obFloatClassInstance( this, pObClassInstance_Parent, pName );
}

obFloatClassInstance::obFloatClassInstance( obFloatClass * pobFloatClass, obClassInstance * pObClassInstance_Parent, const char * pName )
    :
    obClassInstance( pobFloatClass, pObClassInstance_Parent, pName ),
    m_Value( pobFloatClass->GetDefaultValue( ) )
{
}

void obFloatClassInstance::WriteTextData( obTextStream & stream, unsigned int index )
{
    stream.WriteFloat( m_Value );
}
 
bool obFloatClassInstance::ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString )
{
    if ( ! parser.IsNumber( ) )
    {
        *pErrorString = "Expected float point value";
        return false;
    }
   
    m_Value = parser.GetFloat( );
    
    return true;
}

obClassInstance * obFloatClassInstance::Clone( obClassInstance * pParent )
{
    obFloatClassInstance * pNew = new obFloatClassInstance(
        GetFloatClass( ), pParent, GetName( ) );
        
    pNew->SetValue( m_Value );
        
    return pNew;
}

