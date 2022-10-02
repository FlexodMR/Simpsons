//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the Color class which represents a Color.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __COLOR_H
#define __COLOR_H


//===========================================================================
// Nested Includes
//===========================================================================

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
// Description: This class is used to represent a front-end Color.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Color
    {
        public:
            Color();
            Color( int red, int green, int blue, int alpha );
            Color( Color &right );
            ~Color();

            const Color & operator = ( const Color &right );

            int GetRed() const;
            int GetBlue() const;
            int GetGreen() const;
            int GetAlpha() const;

            void Set( int red, int green, int blue, int alpha );

            void SetRed( int red );
            void SetBlue( int blue );
            void SetGreen( int green );
            void SetAlpha( int alpha );

        protected:

        private:
            // Data members
            int m_red;
            int m_green;
            int m_blue;
            int m_alpha;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

