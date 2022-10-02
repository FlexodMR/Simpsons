//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ProjectElement class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ProjectElement.h"
#include "Project.h"

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
// ProjectElement::ProjectElement
//===========================================================================
// Description: ProjectElement's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ProjectElement::ProjectElement() :
m_Project( NULL )
{
}


//===========================================================================
// ProjectElement::~ProjectElement
//===========================================================================
// Description: ProjectElement's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ProjectElement::~ProjectElement()
{
}

//===========================================================================
// ProjectElement::SetProject
//===========================================================================
// Description: Set the project
//
// Constraints:    None
//
// Parameters:    theProject - a pointer to the project to use.
//
// Return:      Nothing
//
//===========================================================================
void ProjectElement::SetProject( Project* theProject )
{
    m_Project = theProject;
}

//===========================================================================
// ProjectElement::GetProject
//===========================================================================
// Description: Get the project
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      a pointer to the project.
//
//===========================================================================
Project* ProjectElement::GetProject()
{
    return m_Project;
}


} // End NameSpace
