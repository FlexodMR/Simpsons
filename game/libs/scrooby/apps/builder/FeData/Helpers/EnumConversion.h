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

// Recompilation protection flag.
#ifndef __ENUMCONVERSION_H
#define __ENUMCONVERSION_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_JustificationLeft                   = "left";
const char* const g_JustificationRight                  = "right";
const char* const g_JustificationTop                    = "top";
const char* const g_JustificationBottom                 = "bottom";
const char* const g_JustificationCenter                 = "centre";

namespace FeData
{
    enum DrawingElementOrderEnum
    {
        DrawingElementBefore,
        DrawingElementAfter,
        DrawingElementNotFound
    };

    enum JustificationEnum
    {
        Left,
        Right,
        Top,
        Bottom,
        Center
    };

    enum TranslucencyEnum
    {
        Normal
    };

    enum TextTypeEnum
    {
        TextBibleString,
        HardCodedString
    };

}

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: These functions will do the string <-> enumeration conversion
//
// Constraints: None
//
//===========================================================================

namespace FeData
{

    JustificationEnum StringToJustificationEnum( const char* str );
    TranslucencyEnum StringToTranslucencyEnum( const char* str );
    TextTypeEnum StringToTextTypeEnum( const char* str );
    const char* JustificationEnumToString( JustificationEnum justification );
    const char* TranslucencyEnumToString( TranslucencyEnum translucency );
    const char* TextTypeEnumToString( TextTypeEnum textType );

}

//===========================================================================
// Inlines
//===========================================================================

#endif                                  // End conditional inclusion

