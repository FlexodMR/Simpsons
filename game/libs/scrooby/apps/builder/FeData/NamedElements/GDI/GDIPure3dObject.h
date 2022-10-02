//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GDIMultiText class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GDIPURE3DOBJECT_H
#define __GDIPURE3DOBJECT_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "..\Pure3dObject.h"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to draw a MultiText to a Windows 
//              device-context.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class GDIPure3dObject : public Pure3dObject
    {
        public:
            GDIPure3dObject();
            virtual ~GDIPure3dObject();

            virtual bool Draw( DrawingContext* theDrawingContext );
            int GetDeviceY();

        protected:

        private:
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

