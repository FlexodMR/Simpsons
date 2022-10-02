//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Pure3dFile class.
//
// Authors:     Ian Gipson
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PURE3DFILE_H
#define __PURE3DFILE_H

//===========================================================================
// Nested Includes
//===========================================================================
#include "Resource.h"

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
// Description: This class is used to represent a front-end Image resource.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Pure3dFile : public Resource
    {
        public:
            Pure3dFile();
            virtual ~Pure3dFile();

            const PascalCString& GetAnimationName() const;
            const PascalCString& GetCameraName() const;
            const PascalCString& GetInventoryName() const;

            //makes a toollib chunk for this object
            tlDataChunk* MakeChunk() const;

            void SetAnimationName( const PascalCString& name );
            void SetCameraName( const PascalCString& name );
            void SetInventoryName( const PascalCString& name );

        protected:
            PascalCString m_AnimationName;
            PascalCString m_CameraName;
            PascalCString m_InventoryName;
            
        private:
            // Create this methods as private so they can not be used
            Pure3dFile(const Pure3dFile &right);
            const Pure3dFile & operator = (const Pure3dFile &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

