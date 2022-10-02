//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GDIFactory class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GDIFactory_H
#define __GDIFactory_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "BaseFactory.h"

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
// Description: This class is used to represent a front-end multi sprite.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class GDIFactory : public BaseFactory
    {
        public:
            GDIFactory();
            virtual ~GDIFactory();

            virtual ImageFile*      NewImageFile( FileName &fileName ) const;
            virtual Movie*          NewMovie() const;
            virtual MultiSprite*    NewMultiSprite() const;
            virtual MultiText*      NewMultiText() const;
            virtual Polygon*        NewPolygon() const;
            virtual Pure3dObject*   NewPure3dObject() const;
            virtual Sprite*         NewSprite() const;
            virtual Text*           NewText() const;
            virtual TextStyleFile*  NewTextStyleFile( FileName& fileName ) const;

        protected:

        private:
            // Create this methods as private so they can not be used
            GDIFactory(const GDIFactory &right);
            const GDIFactory & operator = (const GDIFactory &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

