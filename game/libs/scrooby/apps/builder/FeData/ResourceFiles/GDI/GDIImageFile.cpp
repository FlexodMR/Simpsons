//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GDIImageFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "GDIImageFile.h"
#include "pcstring.h"
#include "..\..\Helpers\OutputMessage.h"
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
// GDIImageFile::GDIImageFile
//===========================================================================
// Description: GDIImageFile's constructor
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//
// Return:      Nothing
//
//===========================================================================

GDIImageFile::GDIImageFile(  FileName &fileName  ) : ImageFile( fileName ), mSprite( NULL )
{
}


//===========================================================================
// GDIImageFile::~GDIImageFile
//===========================================================================
// Description: GDIImageFile's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GDIImageFile::~GDIImageFile()
{
}


//===========================================================================
// GDIImageFile::Load
//===========================================================================
// Description: This is used to load the resource file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - there is enough memory
//              false - if there is not enough memory to load the picture.
//
//===========================================================================

bool GDIImageFile::Load()
{
    PascalCString message( "Loading GDI Image: " );
    PascalCString fileName;
    m_FileName.Get( fileName );
    message += fileName;
    g_OutputMessage.Add( message, DebugOutputMessage );
    if( fileName.JustExtension() == "p3d" )
    {
        tlDataChunk::RegisterDefaultChunks();

        tlFile input( new tlFileByteStream( fileName, omREAD ), tlFile::FROMFILE );
        if( !input.IsOpen() ) 
        {
            return false;
        }
        
        tlDataChunk* inchunk = new tlDataChunk(&input);
        
        input.Close();
        
        int ch;
        for(ch=0; ch < inchunk->SubChunkCount() && !m_FileLoaded; ch++)
        {
            tlDataChunk* sub = inchunk->GetSubChunk(ch);
            switch(sub->ID())
            {
            case Pure3D::Texture::SPRITE:
                    mSprite = new tlSprite(sub);
                    m_FileLoaded = true;
                break;
            default:            
                break;
            }
        }        
    }
    else
    {
        m_FileLoaded = m_ImageLib.Load( fileName );
    }
 
    if( m_FileLoaded )
    {
        m_ImageLib.SetTransparencyColor( 255, 0, 255 );
        return true;
    }

    return false;
}


//===========================================================================
// GDIImageFile::GetWidth
//===========================================================================
// Description: This returns the width of the image.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the width of the image.
//
//===========================================================================

int GDIImageFile::GetWidth()
{
    if( m_FileLoaded )
    {
        if( mSprite )
        {
            return mSprite->GetImageWidth();
        }
        return m_ImageLib.GetWidth();
    }
    else
    {
        return g_DefaultImageWidth;
    }
}


//===========================================================================
// GDIImageFile::GetHeight
//===========================================================================
// Description: This returns the height of the image.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the height of the image.
//
//===========================================================================

int GDIImageFile::GetHeight()
{
    if( m_FileLoaded )
    {
        if( mSprite )
        {
            return mSprite->GetImageHeight();        }

        return m_ImageLib.GetHeight();
    }
    else
    {
        return g_DefaultImageHeight;
    }
}


//===========================================================================
// GDIImageFile::GetImageLib
//===========================================================================
// Description: This returns a pointer to the image lib.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to the image lib
//
//===========================================================================

ImageLib* GDIImageFile::GetImageLib()
{
    return &m_ImageLib;
}


} // End NameSpace
