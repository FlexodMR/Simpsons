//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles Sprite actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionSprite.h"

#include "..\Property Dialogs\SpritePropDlg.h"

#include "..\..\FeData\Factories\BaseFactory.h"
#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\Helpers\ResourceManager.h"
#include "..\..\FeData\NamedElements\GDI\GDISprite.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\Project.h"
#include "..\..\FeData\NamedElements\Sprite.h"
#include "..\..\FeData\Resources\Image.h"

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
// ActionSprite::ActionSprite
//===========================================================================
// Description: ActionSprite's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionSprite::ActionSprite( FeData::Page* page, 
                            FeData::DrawingElement* drawingElement,
                            FeData::PageElement* parent,
                            int elementIndex,
                            ActionDrawingElementEnum type ) :
ActionBoxDrawingElement( page, drawingElement, parent, elementIndex, type ),
m_OldImageName( "" ),
m_NewImageName( "" )
{
    using namespace FeData;
    

    switch( m_ActionType )
    {
        case ACTION_DRAWINGELEMENT_ADD:
        {
            // Make the new sprite
            if( (m_Page == NULL) || (drawingElement != NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionSprite::ActionSprite: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Sprite Add";
           
            NameManager nameManager;
            nameManager.GenerateUniqueSpriteName( m_OldName, m_Page );

            FeData::GDISprite s;
            GetDefaultBoxDrawingElementSettings( &s );
            GetNewSettingsFromDialog();
            break;
        }

        case ACTION_DRAWINGELEMENT_MODIFY:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) )
            {
                g_OutputMessage.Add( "ActionSprite::ActionSprite: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Sprite Modify";

            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldImageName();
            GetNewSettingsFromDialog();

            // There is no need to rebuild the tree if the names are the same.
            if( m_OldName == m_NewName )
            {
                m_HaveToRebuildTree = false;
            }
            break;
        }

        case ACTION_DRAWINGELEMENT_DELETE:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionSprite::ActionSprite: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Sprite Delete";
        
            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldImageName();
            break;
        }

        case ACTION_DRAWINGELEMENT_DUPLICATE:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionSprite::ActionSprite: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Sprite Duplicate";
        
            // Get the old settings to use durring the creation of the new element.
            GetOldBoxDrawingElementSettings();
            GetOldImageName();

            NameManager nameManager;
            nameManager.GenerateUniqueDrawingElementCopyName( m_DrawingElement, m_OldName, m_Page );
            
            // No longer need the drawing element to copy from
            m_DrawingElement = NULL;
            break;
        }

        default:
        {
            g_OutputMessage.Add( "ActionSprite::ActionSprite: Invalid drawing element action type!",
                                  DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }

}


//===========================================================================
// ActionSprite::ActionSprite
//===========================================================================
// Description: ActionSprite's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionSprite::~ActionSprite()
{

}


//===========================================================================
// ActionSprite::Do
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
// ActionSprite::Undo
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



void ActionSprite::DoModify()
{
    SetNewBoxDrawingElementSettings();

    if( m_OldImageName != m_NewImageName )
    {
        ChangeImage( m_NewImageName );
    }
}

void ActionSprite::UndoModify()
{
    SetOldBoxDrawingElementSettings();

    if( m_OldImageName != m_NewImageName )
    {
        ChangeImage( m_OldImageName );
    }
}


bool ActionSprite::MakeNewDrawingElement( FeData::BaseFactory* objectFactory )
{
    m_DrawingElement = objectFactory->NewSprite();
    if( m_DrawingElement == NULL )
    {
        FeData::g_OutputMessage.Add( "ActionSprite::MakeNewDrawingElement: Out of Memory!",
                                     FeData::ErrorOutputMessage );
        return false;
    }

    return true;
}


void ActionSprite::GetOldImageName()
{
    using namespace FeData;

    Sprite* sprite = dynamic_cast<Sprite*>( m_DrawingElement );
    if( sprite == NULL )
    {
        g_OutputMessage.Add( "ActionSprite::GetOldImageName: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    Image* image = sprite->GetImage();
    if( image != NULL )
    {
        m_OldImageName = image->GetName();
    }
}


void ActionSprite::GetNewSettingsFromDialog()
{
    using namespace FeData;

    CSpritePropDlg dlg;

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
    dlg.SetSelectedImageName( m_OldImageName );

    if (dlg.DoModal() != IDOK)
    {
        m_ActionValid = false;
        return;
    }

    dlg.GetSelectedImageName( m_NewImageName );

    // Did something change?
    if( (strcmp( dlg.m_strName, m_OldName ) != 0) || 
        (dlg.m_fPosX != m_OldX) || 
        (dlg.m_fPosY != m_OldY) || 
        (dlg.m_nHeight != m_OldHeight) || 
        (dlg.m_nWidth != m_OldWidth) || 
        (dlg.GetJustificationHorizontal() != m_OldJustificationHorizontal ) || 
        (dlg.GetJustificationVertical() != m_OldJustificationVertical ) ||
        (dlg.m_Red != m_OldRed ) ||
        (dlg.m_Green != m_OldGreen ) ||
        (dlg.m_Blue != m_OldBlue ) ||
        (dlg.m_Alpha != m_OldAlpha ) ||
        (m_NewImageName != m_OldImageName ) )
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
        // No change so don't do anything
        m_ActionValid = false;
    }
}



void ActionSprite::ChangeImage( PascalCString& imageName )
{
    using namespace FeData;

    Sprite* sprite = dynamic_cast<Sprite*>( m_DrawingElement );
    if( sprite == NULL )
    {
        g_OutputMessage.Add( "ActionSprite::ChangeImage: Invalid drawing element type!",
                              DebugOutputMessage );
        return;
    }

    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        g_OutputMessage.Add( "ActionSprite::ChangeImage: Cannot get resource manager!",
                              DebugOutputMessage );
        return;
    }

    // Get the new image
    Image* newImage = resMan->GetImage( imageName );
    if( newImage == NULL )
    {
        g_OutputMessage.Add( "ActionSprite::ChangeImage: Cannot get the new image!",
                              DebugOutputMessage );
        return;
    }

    if( m_ActionType == ACTION_DRAWINGELEMENT_MODIFY )
    {
        // Remove the old image
        sprite->RemoveImage( 0 );
    }

    // Add the new image
    sprite->AddImage( newImage );
}


