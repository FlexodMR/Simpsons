//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles ActionPage actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionPage.h"
#include "..\..\FeData\Factories\BaseFactory.h"
#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\Helpers\ResourceFileManager.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\Project.h"
#include "..\..\FeData\NamedElements\Screen.h"
#include "..\..\FeData\ResourceFiles\PageFile.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// ActionPage::ActionPage
//===========================================================================
// Description: ActionPage's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionPage::ActionPage( FeData::Screen* screen, 
                        FeData::PageFile* pageFile,
                        ActionPageEnum actionType,
                        SelectionList* selectionList ) :
Action( NULL, screen, "", true, true, false ),
m_PageFile( pageFile ),
m_PageFileIndex( 0 ),
m_Exportable( true ),
m_ActionType( actionType ),
m_PageFileInHierarchy( false ),
m_SelectionList( selectionList ),
m_OldSelectionList()
{
    using namespace FeData;
 
    if( (m_Screen == NULL) || (m_PageFile == NULL) )
    {
        FeData::g_OutputMessage.Add( "ActionPage::ActionPage: Invalid parameters!",
                                     FeData::DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    switch( m_ActionType )
    {
        case ACTION_PAGE_ADD:
        {
            m_Type = "Page Addition";
            break;
        }

        case ACTION_PAGE_DELETE:
        {
            if( m_SelectionList == NULL )
            {
                g_OutputMessage.Add( "ActionPage::ActionPage: Invalid parameters for delete!",
                                     DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_OldSelectionList = *m_SelectionList;

            m_PageFileInHierarchy = true;

            m_PageFileIndex = m_Screen->GetPageFileIndex( m_PageFile );
            m_Exportable = m_Screen->IsExportable( m_PageFileIndex );

            m_Type = "Page Deletion";
            break;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "ActionPage::ActionPage: Invalid action type!",
                                         FeData::DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }  // switch
}


//===========================================================================
// ActionPage::ActionPage
//===========================================================================
// Description: ActionPage's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionPage::~ActionPage()
{
    using namespace FeData;

    if( m_ActionValid &&
        !m_PageFileInHierarchy && 
        (m_PageFile != NULL) )
    {
        Project* project = m_Screen->GetProject();
        ResourceFileManager* resourceFileManager = project->GetResourceFileManager();

        resourceFileManager->Release( (ResourceFile**)&m_PageFile );
    }
}


//===========================================================================
// ActionPage::Do
//===========================================================================
// Description: This does the action
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void ActionPage::Do()
{
    switch( m_ActionType )
    {
        case ACTION_PAGE_ADD:
        {
            m_Screen->AddPageFileAtIndex( m_PageFile, m_Exportable, m_PageFileIndex );
            m_PageFileInHierarchy = true;
            break;
        }

        case ACTION_PAGE_DELETE:
        {
            m_Screen->RemovePageFileWithoutRelease( m_PageFile );
            m_PageFileInHierarchy = false;

            if( m_SelectionList != NULL )
            {
                m_SelectionList->Clear();
            }
            break;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "ActionPage::Do: Invalid action type!",
                                         FeData::DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }  // switch
}


//===========================================================================
// ActionPage::Undo
//===========================================================================
// Description: This undoes the action
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void ActionPage::Undo()
{
    switch( m_ActionType )
    {
        case ACTION_PAGE_ADD:
        {
            m_Screen->RemovePageFileWithoutRelease( m_PageFile );
            m_PageFileInHierarchy = false;
            break;
        }

        case ACTION_PAGE_DELETE:
        {
            m_Screen->AddPageFileAtIndex( m_PageFile, true, m_PageFileIndex );
            m_PageFileInHierarchy = true;

            if( m_SelectionList != NULL )
            {
                *m_SelectionList = m_OldSelectionList;
            }
            break;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "ActionPage::Undo: Invalid action type!",
                                         FeData::DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }  // switch
}
