//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles MultiSprite actions.
//
// Authors:     Ian Gipson
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionMultiSprite.h"

#include <assert.h>
#include "..\Property Dialogs\MultiSpritePropDlg.h"
#include "..\..\FeData\Factories\BaseFactory.h"
#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\Helpers\ResourceManager.h"
#include "..\..\FeData\NamedElements\GDI\GDIMultiSprite.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\Project.h"
#include "..\..\FeData\NamedElements\MultiSprite.h"
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
// ActionMultiSprite::ActionMultiSprite
//===========================================================================
// Description: ActionMultiSprite's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
ActionMultiSprite::ActionMultiSprite( FeData::Page* page, 
                                      FeData::DrawingElement* drawingElement,
                                      FeData::PageElement* parent,
                                      int elementIndex,
                                      ActionDrawingElementEnum type ) 
    :
        ActionBoxDrawingElement( page, drawingElement, parent, elementIndex, type ),
m_OldImageNames(),
m_OldSelection( 0 ),
m_NewImageNames(),
m_NewSelection( 0 )
{
   using namespace FeData;
    

    switch( m_ActionType )
    {
        case ACTION_DRAWINGELEMENT_ADD:
        {
            // Make the new Multisprite
            if( (m_Page == NULL) || (drawingElement != NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionMultiSprite::ActionMultiSprite: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "MultiSprite Add";
           
            NameManager nameManager;
            nameManager.GenerateUniqueMultiSpriteName( m_OldName, m_Page );

            FeData::GDIMultiSprite s;
            GetDefaultBoxDrawingElementSettings( &s );
            GetNewSettingsFromDialog();
            break;
        }

        case ACTION_DRAWINGELEMENT_MODIFY:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) )
            {
                g_OutputMessage.Add( "ActionMultiSprite::ActionMultiSprite: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "MultiSprite Modify";

            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldImageNames();
            GetNewSettingsFromDialog();
            break;
        }

        case ACTION_DRAWINGELEMENT_DELETE:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionMultiSprite::ActionMultiSprite: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "MultiSprite Delete";
        
            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldImageNames();
            break;
        }

        case ACTION_DRAWINGELEMENT_DUPLICATE:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionMultiSprite::ActionMultiSprite: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "MultiSprite Duplicate";
        
            // Get the old settings to use durring the creation of the new element.
            GetOldBoxDrawingElementSettings();
            GetOldImageNames();

            NameManager nameManager;
            nameManager.GenerateUniqueDrawingElementCopyName( m_DrawingElement, m_OldName, m_Page );
            
            // No longer need the drawing element to copy from
            m_DrawingElement = NULL;
            break;
        }

        default:
        {
            g_OutputMessage.Add( "ActionMultiSprite::ActionMultiSprite: Invalid drawing element action type!",
                                  DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }

}


//===========================================================================
// ActionMultiSprite::ActionMultiSprite
//===========================================================================
// Description: ActionMultiSprite's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMultiSprite::~ActionMultiSprite()
{

}


//===========================================================================
// ActionMultiSprite::Do
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
// ActionMultiSprite::Undo
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



void ActionMultiSprite::DoModify()
{
    SetNewBoxDrawingElementSettings();

    ChangeImages( m_NewImageNames, m_NewSelection );
}

void ActionMultiSprite::UndoModify()
{
    SetOldBoxDrawingElementSettings();

    ChangeImages( m_OldImageNames, m_OldSelection );
}


bool ActionMultiSprite::MakeNewDrawingElement( FeData::BaseFactory* objectFactory )
{
    m_DrawingElement = objectFactory->NewMultiSprite();
    if( m_DrawingElement == NULL )
    {
        FeData::g_OutputMessage.Add( "ActionMultiSprite::MakeNewDrawingElement: Out of Memory!",
                                     FeData::ErrorOutputMessage );
        return false;
    }

    return true;
}


void ActionMultiSprite::GetOldImageNames()
{
    using namespace FeData;

    MultiSprite* multiSprite = dynamic_cast< MultiSprite* >( m_DrawingElement );
    if( multiSprite  == NULL )
    {
        g_OutputMessage.Add( "ActionMultiSprite::GetOldImageName: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    m_OldImageNames.clear() ;
    int size = multiSprite->GetNumberOfImages() ;
    int i = 0 ;
    for( i = 0; i < size; i++ )
    {
        Image* image = multiSprite->GetImage( i );
        if( image != NULL )
        {
            m_OldImageNames.push_back( image->GetName() );
        }
    }

    m_OldSelection = multiSprite->GetCurrentImage();
}


//===========================================================================
// void ActionMultiSprite::GetNewSettingsFromDialog()d
//===========================================================================
// Description: opens the dialog box, and gets new settings out of it
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
void ActionMultiSprite::GetNewSettingsFromDialog()
{
    using namespace FeData;

    CMultiSpritePropDlg dlg;

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

    //add all the names of the selected resources to the dialog
    dlg.m_SelectedImageNames = m_OldImageNames;

    dlg.m_CurrentlyShownImage = m_OldSelection;
    dlg.SetPage( m_Page );

    if (dlg.DoModal() != IDOK)
    {
        //if the dialog was cancelled then don't do anything
        m_ActionValid = false;
        return;
    }

    //check if anything changed
    bool didSomethingChange = false ;
    if( this->m_OldImageNames.size() != dlg.m_SelectedImageNames.size() )
    {
        didSomethingChange = true ;
    }
    else
    {
        int size = this->m_OldImageNames.size() ;
        int i = 0; 
        for( i = 0; i < size; i++ )
        {
            if( this->m_OldImageNames[ i ] != dlg.m_SelectedImageNames[ i ] )
            {
                didSomethingChange = true ;
            }
        }
    }

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
        (dlg.m_CurrentlyShownImage != m_OldSelection) ||
        ( didSomethingChange ) )
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
       
        this->m_NewImageNames.clear() ;
        int i = 0 ;
        for( i = 0; i < dlg.m_SelectedImageNames.size(); i++ )
        {
            this->m_NewImageNames.push_back( dlg.m_SelectedImageNames[ i ] ) ;
        }

        m_NewSelection = dlg.m_CurrentlyShownImage;
        m_ActionValid = true;
    }
    else
    {
        // No change so don't do anything
        m_ActionValid = false;
    }
}


//===========================================================================
// void ActionMultiSprite::ChangeImages( std::vector< PascalCString > imageNames );
//===========================================================================
// Description: changes the image list in the old multisprite to the new values
//
// Constraints:    NONE
//
// Parameters:    NONE
//
// Return:      NONE
//
//===========================================================================
void ActionMultiSprite::ChangeImages( std::vector< PascalCString > imageNames,
                                      int selection )
{
    using namespace FeData;

    //cast this drawing element to a multisprite
    MultiSprite* multiSprite = dynamic_cast<MultiSprite*>( m_DrawingElement );
    if( multiSprite == NULL )
    {
        g_OutputMessage.Add( "ActionMultiSprite::ChangeImage: Invalid drawing element type!",
                              DebugOutputMessage );
        return;
    }

    if( !AreOldAndNewListsEqual() )
    {
        //get the resource manager
        ResourceManager* resMan = m_Page->GetResourceManager();
        if( resMan == NULL )
        {
            g_OutputMessage.Add( "ActionMultiSprite::ChangeImage: Cannot get resource manager!",
                                  DebugOutputMessage );
            return;
        }

        if( m_ActionType == ACTION_DRAWINGELEMENT_MODIFY )
        {
            // Remove all the old image
            multiSprite->RemoveAllImages();
        }

        // Get the new images
        int size = imageNames.size();
        int i ;
        for( i = 0; i < size; i++ )
        {
            PascalCString imageName = imageNames[ i ];
            Image* newImage = resMan->GetImage( imageName );
            if( newImage == NULL )
            {
                //IMPROVE: include the image name here
                g_OutputMessage.Add( "ActionMultiSprite::ChangeImage: Cannot get the new image!",
                                      DebugOutputMessage );
                return;
            }

            // Add the new image
            multiSprite->AddImage( newImage );
        }
    }
    
    multiSprite->SetCurrentImage( selection );
}


//===========================================================================
// bool ActionMultiSprite::AreOldAndNewListsEqual() const
//===========================================================================
// Description: determines if the old and the new image lists are the same
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
bool ActionMultiSprite::AreOldAndNewListsEqual() const
{
    int oldSize = this->m_OldImageNames.size();
    int newSize = this->m_NewImageNames.size();
    if( oldSize != newSize )
    {
        return false;
    }
    else
    {
        int i = 0;
        for( i = 0; i < oldSize; i++ )
        {
            if( this->m_OldImageNames[ i ] != this->m_NewImageNames[ i ] )
            {
                return false ;
            }
        }
    }
    return true ;
}
