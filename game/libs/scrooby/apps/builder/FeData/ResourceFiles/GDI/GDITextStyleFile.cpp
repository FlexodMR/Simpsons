//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GDITextStyleFile class.
//
// Authors:     Victor Medrano
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\..\StdAfx.h"
#include <assert.h>
#include "GDITextStyleFile.h"
#include "..\..\Helpers\OutputMessage.h"
#include "Strings\UnicodeString.h"

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
// GDITextStyleFile::GDITextStyleFile
//===========================================================================
// Description: GDITextStyleFile's constructor
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//
// Return:      Nothing
//
//===========================================================================

GDITextStyleFile::GDITextStyleFile( FileName &fileName ) : 
TextStyleFile( fileName )
{
}


//===========================================================================
// GDITextStyleFile::~GDITextStyleFile
//===========================================================================
// Description: GDITextStyleFile's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GDITextStyleFile::~GDITextStyleFile()
{
}


//===========================================================================
// GDITextStyleFile::GetStringExtent
//===========================================================================
// Description: This retieves the size of a text if displayed with this 
//              TextStyle.
//
// Constraints:    None
//
// Parameters:    string - String to get the size for
//              width - place to put the width
//              height - place to put the height
//
// Return:      true  - if the width and hight could be retrieved,
//              false - if an error occured.
//
//===========================================================================

bool GDITextStyleFile::GetStringExtent( UnicodeString& string, int& width, int& height )
{
    int size = string.Length() + 1;
    char* buffer = new char[ size ];

    if( buffer == NULL )
    {
        g_OutputMessage.Add( "GDITextStyleFile::GetStringExtent: Out of Memory!", 
                             ErrorOutputMessage );
        return false;
    }
    
    string.MakeAscii( buffer, size );
    CString tempString( buffer );

    CDC tempCDC;

    CWnd* wnd = AfxGetMainWnd();
    CDC* createFromCDC = wnd->GetDC();

    tempCDC.CreateCompatibleDC( createFromCDC );
    tempCDC.SelectObject( &m_Font );

    CSize textExtent = tempCDC.GetTextExtent( tempString );
    width = textExtent.cx;
    height = textExtent.cy;

    // Clean up
    tempCDC.DeleteDC();
    wnd->ReleaseDC( createFromCDC );

    delete [] buffer;
    buffer = NULL;

    return true;
}


//===========================================================================
// GDITextStyleFile::GetFont
//===========================================================================
// Description: This returns a pointer to the font
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      a pointer to the font
//
//===========================================================================

CFont* GDITextStyleFile::GetFont()
{
    return &m_Font;
}


//===========================================================================
// GDITextStyleFile::RemakeFont
//===========================================================================
// Description: This is used to remake the font.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void GDITextStyleFile::RemakeFont()
{
    BOOL bItalic = FALSE;
    int nWeight = FW_NORMAL;

    if( m_style == "Bold")
    {
        nWeight = FW_BOLD;
    }
    else if( m_style == "Bold_Italic" )
    {
        nWeight = FW_BOLD;
        bItalic = TRUE;
    }

    m_Font.DeleteObject();

    int result = m_Font.CreateFont( -m_size,                      // nHeight
                       0,                           // nWidth,
                       0,                           // nEscapement 
                       0,                           // nOrientation
                       nWeight,                     // nWeight
                       bItalic,                     // bItalic
                       FALSE,                       // bUnderline
                       FALSE,                       // cStrikeOut
                       DEFAULT_CHARSET,             // nCharSet
                       OUT_DEFAULT_PRECIS,          // nOutPrecision
                       CLIP_DEFAULT_PRECIS,         // nClipPrecision
                       DEFAULT_QUALITY,             // nQuality
                       DEFAULT_PITCH | FF_DONTCARE + TMPF_TRUETYPE , // nPitchAndFamily
                       m_font );                    // lpszFacename
    if( result != 0 )
    {
        g_OutputMessage.Add
        ( 
            "GDITextStyleFile::RemakeFont: This font will not be displayed properly",
            WarningOutputMessage 
        );
    }
}


} // End NameSpace
