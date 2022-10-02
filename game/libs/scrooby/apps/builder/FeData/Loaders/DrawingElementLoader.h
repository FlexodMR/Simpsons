//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the DrawingElementLoader class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __DRAWINGELEMENTLOADER_H
#define __DRAWINGELEMENTLOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class DrawingElement;
    class Page;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_DrawingElementTagGroup        = "Group";
const char* const g_DrawingElementTagSprite       = "Sprite";
const char* const g_DrawingElementTagMultiSprite  = "MultiSprite";
const char* const g_DrawingElementTagText         = "Text";
const char* const g_DrawingElementTagMultiText    = "MultiText";
const char* const g_DrawingElementTagPolygon      = "Polygon";
const char* const g_DrawingElementTagPure3dObject = "Pure3dObject";
const char* const g_DrawingElementTagMovie        = "Movie";

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
    class DrawingElementLoader
    {
        public:
            DrawingElementLoader();
            ~DrawingElementLoader();

            DrawingElement* Load( XMLTree &loadTree, Page* thePage );

        protected:

        private:
            // Create this methods as private so they can not be used
            DrawingElementLoader(const DrawingElementLoader &right);
            const DrawingElementLoader & operator = (const DrawingElementLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

