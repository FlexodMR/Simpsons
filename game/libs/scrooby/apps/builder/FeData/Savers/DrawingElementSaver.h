//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the DrawingElementSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __DRAWINGELEMENTSAVER_H
#define __DRAWINGELEMENTSAVER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class DrawingElement;
}
class XMLSaver;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used save a DrawingElement to a file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class DrawingElementSaver
    {
        public:
            DrawingElementSaver();
            ~DrawingElementSaver();

            bool Save( DrawingElement* theDrawingElement, XMLSaver& theSaver );

        protected:

        private:
            // Create this methods as private so they can not be used
            DrawingElementSaver(const DrawingElementSaver &right);
            const DrawingElementSaver & operator = (const DrawingElementSaver &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

