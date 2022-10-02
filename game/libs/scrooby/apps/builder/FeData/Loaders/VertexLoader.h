//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the VertexLoader class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __VERTEXLOADER_H
#define __VERTEXLOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Vertex;
    class Page;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_VertexTag                      = "Vertex";
const char* const g_VertexTagPosition              = "Position";
const char* const g_VertexTagPositionX             = "x";
const char* const g_VertexTagPositionY             = "y";
const char* const g_VertexTagColor                 = "Colour";
const char* const g_VertexTagColorRed              = "red";
const char* const g_VertexTagColorGreen            = "green";
const char* const g_VertexTagColorBlue             = "blue";
const char* const g_VertexTagColorAlpha            = "alpha";

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used load a Vertex from the file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class VertexLoader
    {
        public:
            VertexLoader();
            ~VertexLoader();

            Vertex* Load( XMLTree &loadTree, Page* thePage );

        protected:

        private:
            // Create this methods as private so they can not be used
            VertexLoader(const VertexLoader &right);
            const VertexLoader & operator = (const VertexLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

