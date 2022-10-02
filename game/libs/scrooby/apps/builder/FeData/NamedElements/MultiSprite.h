//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiSprite class which represents a 
//              MultiSprite.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MULTISPRITE_H
#define __MULTISPRITE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "BoxDrawingElement.h"
#include "..\Helpers\ElementList.h"
#include "..\Resources\Image.h"

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
    class MultiSprite : public BoxDrawingElement
    {
        public:
            MultiSprite();
            virtual ~MultiSprite();

            virtual bool Draw( DrawingContext* theDrawingContext ) = 0;

            bool AddImage( Image* newImage );
            int GetCurrentImage();
            Image* GetImage( int index );
            int GetNumberOfImages();
            bool GetSpriteName( int index, PascalCString &name );
            tlDataChunk* MakeChunk() const;
            bool RemoveAllImages();
            bool RemoveImage( int index );
            void SetCurrentImage( int index );

            virtual DrawingElementDescription* GetDescription();
            virtual bool SetFromDescription( DrawingElementDescription* description);

        protected:
            virtual bool FillInDescription( DrawingElementDescription* description );

        private:
            // Create this methods as private so they can not be used
            MultiSprite(const MultiSprite &right);
            const MultiSprite & operator = (const MultiSprite &right);

            // Data members
            ElementList< Image > m_ImageList;
            int m_CurrentImage;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

