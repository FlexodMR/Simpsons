//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the LayerSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __LAYERSAVER_H
#define __LAYERSAVER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Layer;
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
// Description: This class is used save a Layer to a file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class LayerSaver
    {
        public:
            LayerSaver();
            ~LayerSaver();

            bool Save( Layer* theLayer, XMLSaver& theSaver );

        protected:

        private:
            // Create this methods as private so they can not be used
            LayerSaver(const LayerSaver &right);
            const LayerSaver & operator = (const LayerSaver &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

