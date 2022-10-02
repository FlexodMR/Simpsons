//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "float.h"
#include "limits.h"
#include "obOdlParser.hpp"
#include "obFloat.hpp"
#include "obBool.hpp"
#include "obInt.hpp"
#include "obCollection.hpp"
#include "obString.hpp"
#include "obReference.hpp"
#include "obEnum.hpp"
#include "obComplex.hpp"
#include "obProject.hpp"
#include "obCast.hpp"

char obOdlParser::s_pLastError[ 1024 ] = "No Error";

obClass * obOdlParser::ParseBool( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser )
{
    if ( ! parser.SkipToken( "[" ) )
    {
        sprintf( s_pLastError, "Expeded '[' after bool" );
        return NULL;
    }

    bool defaultValue = false;
 
    while( ! parser.SkipToken( "]" ) )
    {   
        if ( parser.SkipToken( "def:" ) )
        {
            char boolStr[ 10 ];

            if ( parser.SkipToken( "false" ) )
            {
                defaultValue = false;
            }
            else if ( parser.SkipToken( "true" ) )
            {
                defaultValue = true;
            }
            else
            {
                sprintf( s_pLastError, "Expected [true] or [false] not [%s] after bool Default=",
                    boolStr );
                return NULL;
            }
        }   
        else
        {
            sprintf( s_pLastError, "Unknown bool initializer" );
            return NULL;
        }
    }
    
    obBoolClass * pObBoolClass = new obBoolClass( pParent, pName, defaultValue );
    pObProject->AddClass( pObBoolClass );

    return pObBoolClass;
}

obClass * obOdlParser::ParseInt( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser )
{
    if ( ! parser.SkipToken( "[" ) )
    {
        sprintf( s_pLastError, "Expected '[' after 'int'" );
        return NULL;
    }

    int defaultValue = 0;
    int minValue = INT_MIN;
    int maxValue = INT_MAX;

    while( ! parser.SkipToken( "]" ) )
    {   
        if ( parser.SkipToken( "min:" ) )
        {
            minValue = parser.GetInteger( );
        }
        else if ( parser.SkipToken( "max:" ) )
        {
            maxValue = parser.GetInteger( );
        }
        else if ( parser.SkipToken( "def:" ) )
        {
            defaultValue = parser.GetInteger( );
        }
        else
        {
            sprintf( s_pLastError, "Unknown 'int' initializer" );
            return NULL;
        }
    }

    obIntClass * pObIntClass = new obIntClass( pParent, pName, minValue, maxValue, defaultValue );
    pObProject->AddClass( pObIntClass );
    return pObIntClass;
}

obClass * obOdlParser::ParseFloat( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser )
{
    if ( ! parser.SkipToken( "[" ) )
    {
        sprintf( s_pLastError, "Expected '[' after 'float'" );
        return NULL;
    }

    float defaultValue = 0.0f;
    float minValue = -FLT_MAX;
    float maxValue = FLT_MAX;

    while( ! parser.SkipToken( "]" ) )
    {   
        if ( parser.SkipToken( "min:" ) )
        {
            minValue = parser.GetFloat( );
        }
        else if ( parser.SkipToken( "max:" ) )
        {
            maxValue = parser.GetFloat( );
        }
        else if ( parser.SkipToken( "def:" ) )
        {
            defaultValue = parser.GetFloat( );
        }
        else
        {
            sprintf( s_pLastError, "Unknown 'float' initializer" );
            return NULL;
        }
    }

    obFloatClass * pObFloatClass = new obFloatClass( pParent, pName, minValue, maxValue, defaultValue );
    pObProject->AddClass( pObFloatClass );
    return pObFloatClass;

}

obClass * obOdlParser::ParseString( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser )
{

    char defaultValue[ 1024 ];
    sprintf( defaultValue, "Undefined" );      

    if ( ! parser.SkipToken( "[" ) )
    {
        sprintf( s_pLastError, "Expected '[' after 'string'" );
        return NULL;
    }

    while ( ! parser.SkipToken( "]" ) )
    {
       
        if ( parser.SkipToken( "def:" ) )
        {
            if ( ! parser.GetQuotedString( defaultValue, 1024 ) )
            {
                sprintf( s_pLastError, "Expected quoted string" );
                return NULL;
            }
        }
        else
        {
            sprintf( s_pLastError, "Unknown string initializer" );
            return NULL;
        }
    }

    obStringClass * pObStringClass = new obStringClass( pParent, pName, defaultValue );
    pObProject->AddClass( pObStringClass );
    return pObStringClass;
}

obClass * obOdlParser::ParseReference( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser )
{
    if ( ! parser.SkipToken( "<" ) )
    {
        sprintf( s_pLastError, "Expected '>' after ref" );
        return NULL;
    }

    obClass * pClass = ParseDataType( pParent, pName, pObProject, parser );

    if ( pClass == NULL )
    {
        return NULL;
    }

    if ( ! parser.SkipToken( ">" ) )
    {
        sprintf( s_pLastError, "Expected '>' after ref type" );
        return NULL;
    }

    if ( ! parser.SkipToken( "[" ) )
    {
        sprintf( s_pLastError, "Expected '[' after '>'" );
        return NULL;
    }

    bool nullAllowed = false;

    while ( ! parser.SkipToken( "]" ) )
    {
        if ( parser.SkipToken( "nullok:" ) )
        {
            if ( parser.SkipToken( "true" ) )
            {
                nullAllowed = true;
            }
            else if ( parser.SkipToken( "false" ) )
            {
                nullAllowed = false;
            }
            else
            {
                sprintf( s_pLastError, "Expected 'true' or 'false' after nullok:" );
                return NULL;
            }
        }
    }

    obReferenceClass * pObReferenceClass = new obReferenceClass( pParent, pName, pClass, nullAllowed );      
    pObProject->AddClass( pObReferenceClass );
    return pObReferenceClass;

}

obClass * obOdlParser::ParseCollection( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser )
{
    if ( ! parser.SkipToken( "<" ) )
    {
        sprintf( s_pLastError, "Expected '<' after 'collection'" );
        return NULL;
    }

    obClass * pClass = ParseDataType( pParent, pName, pObProject, parser );

    if ( pClass == NULL )
    {
        return NULL;
    }

    if ( ! parser.SkipToken( ">" ) )
    {
        sprintf( s_pLastError, "Expected '>' after collection data type" );
        return NULL;
    }

    if ( ! parser.SkipToken( "[" ) )
    {
        sprintf( s_pLastError, "Expected '[' after '>'" );
        return NULL;
    }

    unsigned int minElements = 0;
    unsigned int maxElements = 0xFFFFFFFF;

    while( ! parser.SkipToken( "]" ) )
    {   
        if ( parser.SkipToken( "min:" ) )
        {
            minElements = parser.GetInteger( );
        }
        else if ( parser.SkipToken( "max:" ) )
        {
            maxElements = parser.GetInteger( );
        }
        else
        {
            break;
        }
    }
    
    obCollectionClass * pObCollectionClass = new obCollectionClass( pParent, pName, pClass, minElements, maxElements );
    pObProject->AddClass( pObCollectionClass );

    return pObCollectionClass;
}

typedef obClass * (ParseFunction)(obClass * pParent, const char * pName, obProject * pObProject, obParser & );

obClass * obOdlParser::ParseDataType( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser  )
{
    struct DataTypeTable { const char * m_pType; ParseFunction * m_pParseFunction; };

    static DataTypeTable table[] =
    {
        { "class", ParseClass },
        { "bool", ParseBool },
        { "int", ParseInt },
        { "float", ParseFloat },
        { "string", ParseString },
        { "ref", ParseReference },
        { "collection", ParseCollection },
        { "enum", ParseEnum }
    };

    static unsigned int numTypes = sizeof( table ) / sizeof( DataTypeTable );

    char dataType[ 256 ];

    if ( ! parser.GetVariableName( dataType, 256 ) )
    {
        sprintf( s_pLastError, "Expected class" );
        return NULL;
    }

    obClass * pObClass = pObProject->FindClass( dataType );

    if ( pObClass != NULL )
    {
        return pObClass;
    }

    char name[ 256 ];

    if ( ! parser.GetVariableName( name, 256 ) )
    {
        sprintf( name, "");
    }     

    for( unsigned int t = 0; t < numTypes; t ++ )
    {
        if ( strcmp( dataType, table[ t ].m_pType ) == 0 )
        {
            return table[t].m_pParseFunction( pParent, name, pObProject, parser );
        }
    }

    sprintf( s_pLastError, "Unknown type: %s", dataType );

    return NULL;
}

obClass * obOdlParser::ParseClass( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser )
{
    obComplexClass * pObComplexClass_Base = NULL;

    if ( parser.SkipToken( "base" ) )
    {
        char base[ 256 ];

        if ( ! parser.GetToken( base, 256 ) )
        {
            sprintf( s_pLastError, "Expected base clase name after 'base'" );
            return NULL;            
        }

        obClass * pObClassBase = pObProject->FindClass( base );

        if ( pObClassBase == NULL )
        {
            sprintf( s_pLastError, "No such base clase: [%s]", base );
            return NULL;
        }

        pObComplexClass_Base = obSafeDynamicCast< obComplexClass * >( pObClassBase );

        if ( pObComplexClass_Base == NULL )
        {
            sprintf( s_pLastError, "[%s] is not a complex class", pObClassBase->GetName( ) );
            return NULL;
        }
    }

    if ( ! parser.SkipToken( "[" ) )
    {
        sprintf( s_pLastError, "Expected: { after struct name" );
        return NULL;
    }

    obComplexClass * pComplexClass = new obComplexClass( pParent, pName, pObComplexClass_Base );
    pObProject->AddClass( pComplexClass );

    while ( ! parser.SkipToken( "]" ) )
    {
        obClass * pAttribute = ParseDataType( pComplexClass, pName, pObProject, parser );

        if ( pAttribute == NULL )
        {
            return NULL;
        }

        char attribName[ 256 ];

        if ( ! parser.GetVariableName( attribName, 256 ) )
        {
            sprintf( s_pLastError, "Expected attribute name after data type" );
            return NULL;
        }

        obClassInstance * pAttribute_Templ = pAttribute->CreateInstance( NULL, attribName );
        
        if ( parser.SkipToken( ":" ) )
        {
            obUtilString errorString;
            
            if ( ! pAttribute_Templ->ReadTextData( *pObProject, parser, &  errorString ) )
            {
                strcpy( s_pLastError, errorString );
                return false;
            }
         }       
        
        pComplexClass->AddAttribute( pAttribute_Templ);
     }

    return pComplexClass;
}

obClass * obOdlParser::ParseEnum( obClass * pParent, const char * pName, obProject * pObProject, obParser & parser )
{
    if ( ! parser.SkipToken( "[" ) )
    {
        return NULL;
    }

    obEnumClass * pObEnumClass = new obEnumClass( pParent, pName );
    
    char value[ 256 ];
    while( parser.GetVariableName( value, 256 ) )
    {
        pObEnumClass->AddValue( value );
        parser.SkipToken( "," );
    }
    
    if ( ! parser.SkipToken( "]" ) )
    {
        strcpy( s_pLastError, "Expected ']'" );
        return NULL;
    }

    pObProject->AddClass( pObEnumClass );
    return pObEnumClass;
}



bool obOdlParser::ParseDefinitionFile( obProject * pObProject, obDataStream & dataStream )
{
    obParser parser( dataStream );

    bool ok = true;

    while( ! parser.IsEof( ) )
    {
        obClass * pClass = ParseDataType( NULL, "", pObProject, parser );

        if ( pClass == NULL )
        {
            ok = false;
            break;
        }
    }

    if ( ok == false )
    {
        char message[ 1024 ];
        sprintf( message, "%s : Line: [%d]\n", s_pLastError, parser.GetLineCount( ) + 1 );
        strcpy( s_pLastError, message );
    }
 
    return ok;
};