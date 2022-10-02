//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GDIDrawingContext class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include <stdlib.h>
#include "GDIDrawingContext.h"

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
// GDIDrawingContext::GDIDrawingContext
//===========================================================================
// Description: GDIDrawingContext's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GDIDrawingContext::GDIDrawingContext()
{
    m_DC = NULL;
}


//===========================================================================
// GDIDrawingContext::~GDIDrawingContext
//===========================================================================
// Description: GDIDrawingContext's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GDIDrawingContext::~GDIDrawingContext()
{
}


//===========================================================================
// GDIDrawingContext::SetCDC
//===========================================================================
// Description: This is used to set the Windows device-context.
//
// Constraints:    None
//
// Parameters:    dc - A pointer to the Windows device-context.
//
// Return:      Nothing
//
//===========================================================================

void GDIDrawingContext::SetCDC( CDC* theDC )
{
    m_DC = theDC;
}


//===========================================================================
// GDIDrawingContext::GetCDC
//===========================================================================
// Description: This is used to get the Windows device-context.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to the Windows device-context.
//
//===========================================================================

CDC* GDIDrawingContext::GetCDC()
{
    return m_DC;
}


} // End NameSpace
