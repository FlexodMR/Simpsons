//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the BoxDrawingElementLoader class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __BOXDRAWINGELEMENTLOADER_H
#define __BOXDRAWINGELEMENTLOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class BoxDrawingElement;
    class Page;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_BoxDrawingElementTagName                    = "Name";
const char* const g_BoxDrawingElementTagPosition                = "Position";
const char* const g_BoxDrawingElementTagPositionX               = "x";
const char* const g_BoxDrawingElementTagPositionY               = "y";
const char* const g_BoxDrawingElementTagDimension               = "Dimension";
const char* const g_BoxDrawingElementTagDimensionWidth          = "width";
const char* const g_BoxDrawingElementTagDimensionHeight         = "height";
const char* const g_BoxDrawingElementTagTranslucency            = "Translucency";
const char* const g_BoxDrawingElementTagTranslucencyValue       = "value";
const char* const g_BoxDrawingElementTagJustification           = "Justification";
const char* const g_BoxDrawingElementTagJustificationVertical   = "vertical";
const char* const g_BoxDrawingElementTagJustificationHorizontal = "horizontal";
const char* const g_BoxDrawingElementTagColor                   = "Colour";
const char* const g_BoxDrawingElementTagColorRed                = "red";
const char* const g_BoxDrawingElementTagColorGreen              = "green";
const char* const g_BoxDrawingElementTagColorBlue               = "blue";
const char* const g_BoxDrawingElementTagColorAlpha              = "alpha";
const char* const g_BoxDrawingElementTagRotation                = "Rotation";
const char* const g_BoxDrawingElementTagRotationValue           = "value";
const char* const g_BoxDrawingElementTagSprite                  = "Sprite";
const char* const g_BoxDrawingElementTagPure3dObject            = "Pure3dObject";
const char* const g_BoxDrawingElementTagMovie                   = "Movie";
const char* const g_BoxDrawingElementTagMultiSprite             = "MultiSprite";
const char* const g_BoxDrawingElementTagText                    = "Text";
const char* const g_BoxDrawingElementTagMultiText               = "MultiText";

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used load a layer from the file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class BoxDrawingElementLoader
    {
        public:
            BoxDrawingElementLoader();
            ~BoxDrawingElementLoader();

            BoxDrawingElement* Load( XMLTree &loadTree, Page* thePage );

        protected:

        private:
            // Create this methods as private so they can not be used
            BoxDrawingElementLoader(const BoxDrawingElementLoader &right);
            const BoxDrawingElementLoader & operator = (const BoxDrawingElementLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

