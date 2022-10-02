//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obEnum.hpp"

obClassInstance * obEnumClass::CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName )
{
    return new obEnumClassInstance( this, pObClassInstance_Parent, pName );
}

obEnumClass::obEnumClass( obClass * pParent, const char * pName )
	:
	obClass( NULL, pParent, pName )
{
}

unsigned int obEnumClass::GetNumValues( void )
{
    return m_ObVector_Strings.GetNumItems( );
}

const char * obEnumClass::GetValueAt( unsigned int i )
{
    return m_ObVector_Strings.GetAt( i );
}

bool obEnumClass::ValueToInt( const char * pValue, int * pInt )
{
    for( unsigned int i = 0; i < m_ObVector_Strings.GetNumItems( ); i ++ )
    {
        if ( m_ObVector_Strings.GetAt( i ) == pValue )
        {
            *pInt = i;
            return true;
        }           
    }
    
    return false;    
}

void obEnumClass::AddValue( const char * pValue )
{
    m_ObVector_Strings.AddEnd( obUtilString( pValue ) );
}
   
obEnumClassInstance::obEnumClassInstance( obEnumClass * pobEnumClass, obClassInstance * pObClassInstance_Parent, const char * pName )
    :
    obClassInstance( pobEnumClass, pObClassInstance_Parent, pName ),
    m_Value( 0 )
{
}

void obEnumClassInstance::WriteTextData( obTextStream & stream, unsigned int indent )
{
    stream.WriteString( GetEnumClass( )->GetValueAt( m_Value ) );
}

bool obEnumClassInstance::ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString )
{
    char var[ 256 ];
    
    if ( ! parser.GetVariableName( var, 256 ) )
    {
        *pErrorString = "Expected Enum Value";
        return false;        
    }
    
    if ( ! GetEnumClass( )->ValueToInt( var, & m_Value ) )
    {
        pErrorString->Format( "No such enum value: [%s]", var );
        return false;
    }
    
    return true;
}

obClassInstance * obEnumClassInstance::Clone( obClassInstance * pObClassInstance_Parent )
{
    obEnumClassInstance * pNew = new obEnumClassInstance( GetEnumClass( ), 
        pObClassInstance_Parent,
        GetName( ) );
        
    pNew->SetValue( m_Value );
        
    return pNew;
}
