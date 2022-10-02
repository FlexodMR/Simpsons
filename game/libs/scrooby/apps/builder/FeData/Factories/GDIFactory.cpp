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

//===========================================================================
// Includes
//===========================================================================
#include "..\..\stdafx.h"
#include "GDIFactory.h"
#include "..\ResourceFiles\GDI\GDIImageFile.h"
#include "..\NamedElements\GDI\GDIMovie.h"
#include "..\NamedElements\GDI\GDIMultiSprite.h"
#include "..\NamedElements\GDI\GDIMultiText.h"
#include "..\NamedElements\GDI\GDIPolygon.h"
#include "..\NamedElements\GDI\GDIPure3dObject.h"
#include "..\NamedElements\GDI\GDISprite.h"
#include "..\NamedElements\GDI\GDIText.h"
#include "..\ResourceFiles\GDI\GDITextStyleFile.h"

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
// GDIFactory::GDIFactory
//===========================================================================
// Description: GDIFactory's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GDIFactory::GDIFactory()
{
}


//===========================================================================
// GDIFactory::~GDIFactory
//===========================================================================
// Description: GDIFactory's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GDIFactory::~GDIFactory()
{
}


//===========================================================================
// GDIFactory::News
//===========================================================================
// Description: The following functions are used to create pointers to 
//              front-end objects.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to the newly created object.
//
//===========================================================================

Sprite* GDIFactory::NewSprite() const
{
    return new GDISprite;
}

MultiSprite* GDIFactory::NewMultiSprite() const
{
    return new GDIMultiSprite;
}

Text* GDIFactory::NewText() const
{
    return new GDIText;
}

Movie* GDIFactory::NewMovie() const
{
    return new GDIMovie;
}

MultiText* GDIFactory::NewMultiText() const
{
    return new GDIMultiText;
}

Polygon* GDIFactory::NewPolygon() const
{
    return new GDIPolygon;
}

Pure3dObject* GDIFactory::NewPure3dObject() const
{
    return new GDIPure3dObject();
}

ImageFile* GDIFactory::NewImageFile( FileName &fileName ) const
{
    return new GDIImageFile( fileName );
}

TextStyleFile* GDIFactory::NewTextStyleFile( FileName &fileName ) const
{
    return new GDITextStyleFile( fileName );
}

} // End NameSpace
