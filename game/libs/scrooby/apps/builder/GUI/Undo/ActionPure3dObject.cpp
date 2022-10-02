//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles Pure3dObject actions.
//
// Authors:     Ian Gipson
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionPure3dObject.h"


#include "..\Property Dialogs\Pure3dObjectPropDlg.h"

#include "..\..\FeData\Factories\BaseFactory.h"
#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\Helpers\ResourceManager.h"
#include "..\..\FeData\NamedElements\GDI\GDIPure3dObject.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\Project.h"
#include "..\..\FeData\NamedElements\Pure3dObject.h"
#include "..\..\FeData\Resources\Pure3dFile.h"

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
// ActionPure3dObject::ActionPure3dObject
//===========================================================================
// Description: ActionPure3dObject's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionPure3dObject::ActionPure3dObject( FeData::Page* page, 
                                  FeData::DrawingElement* drawingElement,
                                  FeData::PageElement* parent,
                                  int elementIndex,
                                  ActionDrawingElementEnum type ) :
    ActionBoxDrawingElement( page, drawingElement, parent, elementIndex, type ),
    m_OldResourceName( "" ),
    m_NewResourceName( "" )
{
    using namespace FeData;
    
    switch( m_ActionType )
    {
        case ACTION_DRAWINGELEMENT_ADD:
        {
            // Make the new Pure3dObject
            if( ( m_Page == NULL ) || ( drawingElement != NULL ) || ( parent == NULL ) )
            {
                g_OutputMessage.Add( "ActionPure3dObject::ActionPure3dObject: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Pure3dObject Add";
           
            NameManager nameManager;
            nameManager.GenerateUniquePure3dObjectName( m_OldName, m_Page );

            FeData::GDIPure3dObject p;
            GetDefaultBoxDrawingElementSettings( &p );
            GetNewSettingsFromDialog();
            break;
        }

        case ACTION_DRAWINGELEMENT_MODIFY:
        {
            if( ( m_Page == NULL ) || ( drawingElement == NULL ) )
            {
                g_OutputMessage.Add( "ActionPure3dObject::ActionPure3dObject: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Pure3dObject Modify";

            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldPure3dObjectSettings();
            GetOldResourceName();
            GetNewSettingsFromDialog();
            break;
        }

        case ACTION_DRAWINGELEMENT_DELETE:
        {
            if( ( m_Page == NULL ) || ( drawingElement == NULL ) || ( parent == NULL ) )
            {
                g_OutputMessage.Add( "ActionPure3dObject::ActionPure3dObject: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Pure3dObject Delete";
        
            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldPure3dObjectSettings();
            GetOldResourceName();
            break;
        }

        case ACTION_DRAWINGELEMENT_DUPLICATE:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionPure3dObject::ActionPure3dObject: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Pure3dObject Duplicate";
        
            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldPure3dObjectSettings();
            GetOldResourceName();

            NameManager nameManager;
            nameManager.GenerateUniqueDrawingElementCopyName( m_DrawingElement, m_OldName, m_Page );
            
            // No longer need the drawing element to copy from
            m_DrawingElement = NULL;
            break;
        }

        default:
        {
            g_OutputMessage.Add( "ActionPure3dObject::ActionPure3dObject: Invalid drawing element action type!",
                                  DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }

}


//===========================================================================
// ActionPure3dObject::ActionPure3dObject
//===========================================================================
// Description: ActionPure3dObject's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionPure3dObject::~ActionPure3dObject()
{
}

//===========================================================================
// ActionPure3dObject::Do
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



//===========================================================================
// ActionPure3dObject::Undo
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



void ActionPure3dObject::DoModify()
{
    SetNewBoxDrawingElementSettings();
    if( m_OldResourceName != m_NewResourceName )
    {
        ChangeResource( m_NewResourceName );
    }
}


void ActionPure3dObject::UndoModify()
{
    SetOldBoxDrawingElementSettings();
    if( m_OldResourceName != m_NewResourceName )
    {
        ChangeResource( m_OldResourceName );
    }
}


bool ActionPure3dObject::MakeNewDrawingElement( FeData::BaseFactory* objectFactory )
{
    m_DrawingElement = objectFactory->NewPure3dObject();
    if( m_DrawingElement == NULL )
    {
        FeData::g_OutputMessage.Add( "ActionPure3dObject::ActionPure3dObject: Out of Memory!",
                                     FeData::ErrorOutputMessage );
        return false;
    }

    return true;
}


void ActionPure3dObject::GetOldPure3dObjectSettings()
{
    using namespace FeData;

    Pure3dObject* pure3dObject = dynamic_cast< Pure3dObject* >( m_DrawingElement );
    if( pure3dObject == NULL )
    {
        g_OutputMessage.Add( "ActionMultiText::GetOldPure3dObjectSettings: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }
}

void ActionPure3dObject::GetOldResourceName()
{
    using namespace FeData;

    Pure3dObject* pure3dObject = dynamic_cast< Pure3dObject* >( m_DrawingElement );
    if( pure3dObject == NULL )
    {
        g_OutputMessage.Add( "ActionPure3dObject::GetOldMovieName: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    Pure3dFile* pure3dFile = pure3dObject->GetPure3dFile();
    if( pure3dFile != NULL )
    {
        m_OldResourceName = pure3dFile->GetName();
    }
}

void ActionPure3dObject::GetNewSettingsFromDialog()
{
    using namespace FeData;

    CPure3dObjectPropDlg dlg;

    dlg.SetName( m_OldName );
     dlg.m_fPosX   = m_OldX;
    dlg.m_fPosY   = m_OldY;
    dlg.m_nHeight = m_OldHeight;
    dlg.m_nWidth  = m_OldWidth;
    
    dlg.SetJustification( m_OldJustificationHorizontal, m_OldJustificationVertical );

    dlg.m_Red = m_OldRed;
    dlg.m_Green = m_OldGreen;
    dlg.m_Blue = m_OldBlue;
    dlg.m_Alpha = m_OldAlpha;

    dlg.SetPage( m_Page );
    dlg.SetSelectedImageName( m_OldResourceName );

    if (dlg.DoModal() != IDOK)
    {
        m_ActionValid = false;
        return;
    }

    dlg.GetSelectedImageName( m_NewResourceName );

    if( ( strcmp( dlg.m_strName, m_OldName ) != 0 ) ||
        ( dlg.m_fPosX != m_OldX ) ||
        ( dlg.m_fPosY != m_OldY ) ||
        ( dlg.m_nHeight != m_OldHeight ) || 
        ( dlg.m_nWidth != m_OldWidth ) || 
        ( dlg.GetJustificationHorizontal() != m_OldJustificationHorizontal ) || 
        ( dlg.GetJustificationVertical() != m_OldJustificationVertical ) ||
        ( dlg.m_Red != m_OldRed ) ||
        ( dlg.m_Green != m_OldGreen ) ||
        ( dlg.m_Blue != m_OldBlue ) ||
        ( dlg.m_Alpha != m_OldAlpha ) ||
        ( m_NewResourceName != m_OldResourceName )
      )
    {
        m_NewName = dlg.m_strName;

        m_NewX = dlg.m_fPosX;
        m_NewY = dlg.m_fPosY;
        m_NewHeight = dlg.m_nHeight;
        m_NewWidth = dlg.m_nWidth;

           m_NewJustificationHorizontal = dlg.GetJustificationHorizontal();
        m_NewJustificationVertical = dlg.GetJustificationVertical();

        m_NewRed = dlg.m_Red;
        m_NewGreen = dlg.m_Green;
        m_NewBlue = dlg.m_Blue;
        m_NewAlpha = dlg.m_Alpha;

        m_ActionValid = true;
    }
    else
    {
        m_ActionValid = false;
    }
}

void ActionPure3dObject::ChangeResource( PascalCString& resourceName )
{
    using namespace FeData;

    Pure3dObject* pure3dObject = dynamic_cast< Pure3dObject* >( m_DrawingElement );
    if( pure3dObject == NULL )
    {
        g_OutputMessage.Add( "ActionPure3dObject::ChangeResource: Invalid drawing element type!",
                              DebugOutputMessage );
        return;
    }

    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        g_OutputMessage.Add( "ActionPure3dObject::ChangeResource: Cannot get resource manager!",
                              DebugOutputMessage );
        return;
    }

    // Get the new image
    Pure3dFile* newResource = resMan->GetPure3dFile( resourceName );
    if( newResource == NULL )
    {
        g_OutputMessage.Add( "ActionPure3dObject::ChangeResource: Cannot get the new Pure3dFile!",
                              DebugOutputMessage );
        return;
    }

    if( m_ActionType == ACTION_DRAWINGELEMENT_MODIFY )
    {
        // Remove the old image
        pure3dObject->SetPure3dFile( newResource );
    }
}
