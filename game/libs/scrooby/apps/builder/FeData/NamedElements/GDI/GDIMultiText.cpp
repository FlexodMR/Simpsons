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
#include "GDIMultiText.h"
#include "Strings\UnicodeString.h"
#include "..\..\Helpers\OutputMessage.h"
#include "..\..\DrawingContexts\GDIDrawingContext.h"
#include "..\..\ResourceFiles\GDI\GDITextStyleFile.h"
#include "..\..\Resources\TextStyle.h"
#include <toollib.hpp>

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
// GDIMultiText::GDIMultiText
//===========================================================================
// Description: GDIMultiText's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GDIMultiText::GDIMultiText()
{    
}


//===========================================================================
// GDIMultiText::~GDIMultiText
//===========================================================================
// Description: GDIMultiText's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GDIMultiText::~GDIMultiText()
{
}


//===========================================================================
// GDIDrawingElement::Draw
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

bool GDIMultiText::Draw( DrawingContext* theDrawingContext )
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

        UnicodeString unicodeString;
        
        if( GetString( GetCurrentText(), unicodeString ) )
        {
            int size = unicodeString.Length() + 1;            
            
            TextStyle* textStyle = GetTextStyle();
            if( textStyle != NULL )
            {
                GDITextStyleFile* textStyleFile = dynamic_cast<GDITextStyleFile*>( textStyle->GetResourceFile() );
                if( textStyleFile != NULL )
                {
                    tlTextureFont* textureFont = textStyleFile->GetTextureFont();
                    unsigned int* buffer32 = new unsigned int[unicodeString.Length()+1];
                    for( int i = 0; i < unicodeString.Length(); i++ )
                    {
                        buffer32[i] = static_cast<unsigned int>(unicodeString[i]);
                    }
                    buffer32[i] = 0;
                    tlImage* image = textureFont->DisplayTextLine( buffer32 );
                    delete[] buffer32;
                    tlColour colour;

                    int y = 0;
                    int startx = 0;
                    if( image->GetHeight() < GetHeight() )
                    {
                        switch( GetJustificationVertical() )
                        {
                        case Top:
                            y = 0;
                            break;
                        case Bottom:
                            y = GetHeight() - image->GetHeight();
                            break;
                        case Center:
                        default:
                            y = (GetHeight() - image->GetHeight()) / 2;
                        }
                    }
                    if( image->GetWidth() < GetWidth() )
                    {
                        switch( GetJustificationHorizontal() )
                        {
                        case Left:
                            startx = 0;
                            break;
                        case Right:
                            startx = GetWidth() - image->GetWidth();
                            break;
                        case Center:
                        default:
                            startx = (GetWidth() - image->GetWidth()) / 2;
                        }
                    }

                    for( y; y < GetHeight(); y++ )
                    {
                        if( y >= image->GetHeight() )
                        {
                            continue;
                        }
                        for( int x = startx; x < GetWidth(); x++ )
                        {
                            if( x >= image->GetWidth() )
                            {
                                continue;
                            }
                            
                            colour = image->GetPixel( x, y );
                            COLORREF bgcolour = theCDC->GetPixel( GetX() + x, GetDeviceY() - GetHeight() + y );
                            theCDC->SetPixel( GetX() + x, GetDeviceY() - GetHeight() + y, RGB( (GetRed()*colour.alpha) + (GetRValue(bgcolour)*(1-colour.alpha)), (GetGreen()*colour.alpha) + (GetGValue(bgcolour)*(1-colour.alpha)), (GetBlue()*colour.alpha) + (GetBValue(bgcolour)*(1-colour.alpha)) ) );
                        }

                    }
                }
            }
            
            drawError = false;
        }


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
// GDIMultiText::GetDeviceY
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
inline int GDIMultiText::GetDeviceY()
{
    return GetYResolution() - GetY();
}


} // End NameSpace
