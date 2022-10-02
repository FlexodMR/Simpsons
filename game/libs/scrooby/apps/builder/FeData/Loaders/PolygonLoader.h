//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PolygonLoader class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __POLYGONLOADER_H
#define __POLYGONLOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Polygon;
    class Page;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_PolygonTag                   = "Polygon";
const char* const g_PolygonTagName               = "Name";
const char* const g_PolygonTagVertexes           = "Vertexes";
const char* const g_PolygonTagTranslucency       = "Translucency";
const char* const g_PolygonTagValue              = "value";

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used load a Polygon from the file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class PolygonLoader
    {
        public:
            PolygonLoader();
            ~PolygonLoader();

            Polygon* Load( XMLTree &loadTree, Page* thePage );

        protected:

        private:
            // Create this methods as private so they can not be used
            PolygonLoader(const PolygonLoader &right);
            const PolygonLoader & operator = (const PolygonLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

