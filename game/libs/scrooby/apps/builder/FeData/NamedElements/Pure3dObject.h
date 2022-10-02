//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Pure3dObject class which represents a 
//              Pure3D model in the 
//
// Authors:     Ian Gipson
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PURE3DOBJECT_H
#define __PURE3DOBJECT_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "BoxDrawingElement.h"
#include "..\Helpers\ElementList.h"
#include "..\Helpers\EnumConversion.h"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================


namespace FeData
{
    class Pure3dFile;
}

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end multi sprite.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Pure3dObject : public BoxDrawingElement
    {
        public:
            Pure3dObject();
            virtual ~Pure3dObject();

            virtual bool Draw( DrawingContext* theDrawingContext ) = 0;
            Pure3dFile* GetPure3dFile();
            bool SetPure3dFile( Pure3dFile* thePure3dFile );

            //gets the filename of the resource file
            PascalCString GetPure3dFileName() const;

            virtual tlDataChunk* MakeChunk() const;
            virtual DrawingElementDescription* GetDescription();
            virtual bool SetFromDescription( DrawingElementDescription* description);

        protected:
            virtual bool FillInDescription( DrawingElementDescription* description );

        private:
            // Create this methods as private so they can not be used
            Pure3dObject(const Pure3dObject &right);
            const Pure3dObject & operator = (const Pure3dObject &right);

            Pure3dFile* m_Pure3dFile;
            // Data members
//            PascalCString m_FontName;
//            int m_CurrentText;
//            TextStyle* m_TextStyle;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

