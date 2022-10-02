//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper classes
//
// Description: This contains the enumeration <-> string conversion functions
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include <string.h>
#include "EnumConversion.h"
#include "OutputMessage.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// StringToEnums
//===========================================================================
// Description: These functions convert string to enums
//
// Constraints:    None
//
// Parameters:    str - the input string
//
// Return:      enum - the appropriate enum
//
//===========================================================================
JustificationEnum StringToJustificationEnum( const char* str )
{
    if( _stricmp( str, g_JustificationLeft ) == 0 )
    {
        return Left;
    }
    else if( _stricmp( str, g_JustificationRight ) == 0 )
    {
        return Right;
    }
    else if( _stricmp( str, g_JustificationTop ) == 0 )
    {
        return Top;
    }
    else if( _stricmp( str, g_JustificationBottom ) == 0 )
    {
        return Bottom;
    }
    else if( _stricmp( str, g_JustificationCenter ) == 0 )
    {
        return Center;
    }
    else
    {
        g_OutputMessage.Add( "StringToJustficationEnum:  Invalid string given!  Default to left", ErrorOutputMessage );
        return Left;
    }
}

TranslucencyEnum StringToTranslucencyEnum( const char* str )
{
    if( _stricmp( str, "normal" ) == 0 )
    {
        return Normal;
    }
    else
    {
        g_OutputMessage.Add( "StringToTranslucencyEnum:  Invalid string given!  Default to normal", ErrorOutputMessage );
        return Normal;
    }
}

TextTypeEnum StringToTextTypeEnum( const char* str )
{
    if( _stricmp( str, "TextBibleString" ) == 0 )
    {
        return TextBibleString;
    }
    else if( _stricmp( str, "HardCodedString" ) == 0 )
    {
        return HardCodedString;
    }
    else
    {
        g_OutputMessage.Add( "StringToTextTypeEnum:  Invalid string given!  Default to TextBibleString", ErrorOutputMessage );
        return TextBibleString;
    }
}

//===========================================================================
// EnumToStrings
//===========================================================================
// Description: These functions convert enums to string
//
// Constraints:    None
//
// Parameters:    enum - the appropriate enum
//
// Return:      str - the input string
//
//===========================================================================
const char* JustificationEnumToString( JustificationEnum justification )
{
    switch( justification )
    {
        case Left:   return g_JustificationLeft;
        case Right:  return g_JustificationRight;
        case Top:    return g_JustificationTop;
        case Bottom: return g_JustificationBottom;
        case Center: return g_JustificationCenter;
        default:
        {
            g_OutputMessage.Add( "JustificationEnumToString:  Invalid enumeration given!  Default to left", ErrorOutputMessage );
            return g_JustificationLeft;
        }
    }
}

const char* TranslucencyEnumToString( TranslucencyEnum translucency )
{
    switch( translucency )
    {
        case Normal:   return "normal";
        default:
        {
            g_OutputMessage.Add( "TranslucencyEnumToString:  Invalid enumeration given!  Default to normal", ErrorOutputMessage );
            return "normal";
        }
    }
}

const char* TextTypeEnumToString( TextTypeEnum textType )
{
    switch( textType )
    {
        case TextBibleString:   return "textBibleString";
        case HardCodedString:   return "hardCodedString";
        default:
        {
            g_OutputMessage.Add( "TextTypeEnumToString:  Invalid enumeration given!  Default to textBibleString", ErrorOutputMessage );
            return "textBibleString";
        }
    }
}

} // End NameSpace
