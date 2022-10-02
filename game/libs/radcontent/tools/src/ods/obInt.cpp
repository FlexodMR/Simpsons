//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obInt.hpp"

obClassInstance * obIntClass::CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName )
{
    return new obIntClassInstance( this, pObClassInstance_Parent, pName );
}

obIntClass::obIntClass( obClass * pParent, const char * pName, int min, int max, int value)
	:
	obClass( NULL, pParent, pName ),
    m_MinValue( min ),
    m_MaxValue( max ),
	m_Value( value )
{
}
   
obIntClassInstance::obIntClassInstance( obIntClass * pobIntClass, obClassInstance * pObClassInstance_Parent, const char * pName )
    :
    obClassInstance( pobIntClass, pObClassInstance_Parent, pName ),
    m_Value( pobIntClass->GetDefaultValue( ) )
{
}

void obIntClassInstance::WriteTextData( obTextStream & stream, unsigned int indent )
{
    stream.WriteInt( m_Value );
}

bool obIntClassInstance::ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString )
{
    if ( ! parser.IsNumber( ) )
    {
        *pErrorString = "Expected integer value";
        return false;        
    }
    
    m_Value = parser.GetInteger( );
    
    return true;
}

obClassInstance * obIntClassInstance::Clone( obClassInstance * pObClassInstance_Parent )
{
    obIntClassInstance * pNew = new obIntClassInstance( GetIntClass( ), 
        pObClassInstance_Parent,
        GetName( ) );
        
    pNew->SetValue( m_Value );
        
    return pNew;
}
