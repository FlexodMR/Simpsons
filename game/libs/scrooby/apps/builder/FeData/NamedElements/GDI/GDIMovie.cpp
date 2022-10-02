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

//===========================================================================
// Includes
//===========================================================================

#include "stdafx.h"
#include "GDIMovie.h"
#include "Strings\UnicodeString.h"
#include "..\..\Helpers\OutputMessage.h"
#include "..\..\DrawingContexts\GDIDrawingContext.h"
#include "..\..\ResourceFiles\GDI\GDITextStyleFile.h"
#include "..\..\Resources\TextStyle.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// GDIMovie::GDIMovie
//===========================================================================
// Description: GDIMovie's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GDIMovie::GDIMovie()
{    
}


//===========================================================================
// GDIMovie::~GDIMovie
//===========================================================================
// Description: GDIMovie's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GDIMovie::~GDIMovie()
{
}


//===========================================================================
// GDIMovie::Draw
//===========================================================================
// Description: This is used to draw the drawing element.
//
// Constraints:    None
//
// Parameters:    theDrawingContext - The drawing context used to draw the
//                                  element.
//
// Return:      true  - if successful
//              false - otherwise.
//
//===========================================================================
bool GDIMovie::Draw( DrawingContext* theDrawingContext )
{
    using namespace FeData;

    GDIDrawingContext* theGDI = dynamic_cast<GDIDrawingContext*>(theDrawingContext);

    // Make sure the Drawing Context is the correct kind.
    if( theGDI != NULL )
    {
        // Do the drawing
        CDC *theCDC = theGDI->GetCDC();
        COLORREF saveBackColor = theCDC->SetBkColor( RGB( 255, 255, 255 ) );
        bool drawError = true;

        // If we don't have a valid sprite, draw the error box 
        if( drawError )
        {
            // Draw the Red Box
            CRect boundingRect( GetX(), 
                                GetDeviceY() - GetHeight(), 
                                GetX() + GetWidth(), 
                                GetDeviceY() );
            CBrush errorBrush( RGB( 255, 0, 0 ) );
            theCDC->FrameRect( boundingRect, &errorBrush );

            // Draw the Red Cross
            CPen errorPen( PS_SOLID, 1, RGB( 255, 0, 0 ) );
            CPen* savePen = theCDC->SelectObject( &errorPen );

            theCDC->MoveTo( GetX(), GetDeviceY() - GetHeight() );
            theCDC->LineTo( GetX() + GetWidth(), GetDeviceY() );
            theCDC->MoveTo( GetX() + GetWidth(), GetDeviceY() - GetHeight() );
            theCDC->LineTo( GetX(), GetDeviceY() );

            theCDC->SelectObject( savePen );

            theCDC->TextOut( GetX(), GetDeviceY() - GetHeight(), GetName(), strlen( GetName() ) );
        }
        theCDC->SetBkColor( saveBackColor );
        return true;
    }
    else
    {
        g_OutputMessage.Add( "GDIText::Draw: Bad GDIDrawingContext!", 
                             ErrorOutputMessage );
        return false;
    }
}


//===========================================================================
// GDIMovie::GetDeviceY
//===========================================================================
// Description: This is used to get device Y coordinate (inverted Y axis)
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Height of screen resolution - Y coordinate
//
//===========================================================================
inline int GDIMovie::GetDeviceY()
{
    return GetYResolution() - GetY();
}


} // End NameSpace
