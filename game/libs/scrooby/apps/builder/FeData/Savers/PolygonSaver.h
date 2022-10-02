//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PolygonSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __POLYGONSAVER_H
#define __POLYGONSAVER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Polygon;
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
// Description: This class is used save a Polygon to a file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class PolygonSaver
    {
        public:
            PolygonSaver();
            ~PolygonSaver();

            bool Save( Polygon* thePolygon, XMLSaver& theSaver );

        protected:

        private:
            // Create this methods as private so they can not be used
            PolygonSaver(const PolygonSaver &right);
            const PolygonSaver & operator = (const PolygonSaver &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

