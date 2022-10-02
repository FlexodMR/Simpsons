//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiText class which represents a 
//              MultiText.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MOVIE_H
#define __MOVIE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "BoxDrawingElement.h"
#include "..\Helpers\ElementList.h"
#include "..\Helpers\EnumConversion.h"

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class MovieClip;
}
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

    class Movie : public BoxDrawingElement
    {
        public:
            Movie();
            virtual ~Movie();

            virtual bool Draw( DrawingContext* theDrawingContext ) = 0;

            MovieClip* GetMovieClip();
            bool SetMovieClip( MovieClip* theMovieClip );
            bool GetMovieClipName( PascalCString &name ) const;
            virtual tlDataChunk* MakeChunk() const;

            virtual DrawingElementDescription* GetDescription();
            virtual bool SetFromDescription( DrawingElementDescription* description);

        protected:
            virtual bool FillInDescription( DrawingElementDescription* description );

        private:
            // Create this methods as private so they can not be used
            Movie( const Movie& right );
            const Movie& operator = ( const Movie& right );


            // Data members
            MovieClip* m_MovieClip;
//            ElementList< TextStruct > m_TextList;
//            PascalCString m_FontName;
//            int m_CurrentText;
//            TextStyle* m_TextStyle;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

