//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the BaseFactory class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#include "..\..\stdafx.h"
#include "BaseFactory.h"
#include "..\Helpers\Vertex.h"
#include "..\NamedElements\Group.h"
#include "..\NamedElements\Layer.h"
#include "..\NamedElements\MultiSprite.h"
#include "..\NamedElements\MultiText.h"
#include "..\NamedElements\Page.h"
#include "..\NamedElements\Polygon.h"
#include "..\NamedElements\Project.h"
#include "..\NamedElements\Screen.h"
#include "..\NamedElements\Sprite.h"
#include "..\NamedElements\Text.h"
#include "..\Resources\Image.h"
#include "..\Resources\MovieClip.h"
#include "..\Resources\Pure3dFile.h"
#include "..\Resources\TextBible.h"
#include "..\Resources\TextStyle.h"
#include "..\ResourceFiles\ImageFile.h"
#include "..\ResourceFiles\MovieClipFile.h"
#include "..\ResourceFiles\Pure3dFileFile.h"
#include "..\ResourceFiles\TextBibleFile.h"
#include "..\ResourceFiles\TextStyleFile.h"
#include "..\ResourceFiles\PageFile.h"
#include "..\ResourceFiles\ScreenFile.h"

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
// BaseFactory::BaseFactory
//===========================================================================
// Description: BaseFactory's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

BaseFactory::BaseFactory()
{
}


//===========================================================================
// BaseFactory::~BaseFactory
//===========================================================================
// Description: BaseFactory's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

BaseFactory::~BaseFactory()
{
}


//===========================================================================
// BaseFactory::News
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
Project* BaseFactory::NewProject() const
{
    return new Project;
}

Screen* BaseFactory::NewScreen() const
{
    return new Screen;
}

Page* BaseFactory::NewPage() const
{
    return new Page;
}

Layer* BaseFactory::NewLayer() const
{
    return new Layer;
}

Group* BaseFactory::NewGroup() const
{
    return new Group;
}

Vertex* BaseFactory::NewVertex() const
{
    return new Vertex;
}

Image* BaseFactory::NewImage() const
{
    return new Image;
}

MovieClip* BaseFactory::NewMovieClip() const
{
    return new MovieClip;
}

Pure3dFile* BaseFactory::NewPure3dFile() const
{
    return new Pure3dFile;
}


TextBible* BaseFactory::NewTextBible() const
{
    return new TextBible;
}

TextStyle* BaseFactory::NewTextStyle() const
{
    return new TextStyle;
}

ImageFile* BaseFactory::NewImageFile( FileName &fileName ) const
{
    return new ImageFile( fileName );
}

TextBibleFile* BaseFactory::NewTextBibleFile( FileName &fileName ) const
{
    return new TextBibleFile( fileName );
}

TextStyleFile* BaseFactory::NewTextStyleFile( FileName &fileName ) const
{
    return new TextStyleFile( fileName );
}

PageFile* BaseFactory::NewPageFile( FileName &fileName ) const
{
    return new PageFile( fileName );
}

ScreenFile* BaseFactory::NewScreenFile( FileName &fileName ) const
{
    return new ScreenFile( fileName );
}

MovieClipFile*  BaseFactory::NewMovieClipFile( FileName& fileName ) const
{
    return new MovieClipFile( fileName );
}

Pure3dFileFile* BaseFactory::NewPure3dFileFile( FileName& fileName ) const
{
    return new Pure3dFileFile( fileName );
}


} // End NameSpace
