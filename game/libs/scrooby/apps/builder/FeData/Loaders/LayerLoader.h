//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the LayerLoader class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __LAYERLOADER_H
#define __LAYERLOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Layer;
    class Page;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_LayerTag                  = "Layer";
const char* const g_LayerTagName              = "Name";
const char* const g_LayerTagVisible           = "Visible";
const char* const g_LayerTagEditable          = "Editable";
const char* const g_LayerTagAlpha             = "Alpha";
const char* const g_LayerTagDrawingElements   = "DrawingElements";

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
    class LayerLoader
    {
        public:
            LayerLoader();
            ~LayerLoader();

            Layer* Load( XMLTree &loadTree, Page* thePage );

        protected:

        private:
            // Create this methods as private so they can not be used
            LayerLoader(const LayerLoader &right);
            const LayerLoader & operator = (const LayerLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

