//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles MultiText actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionMultiText.h"

#include "..\Property Dialogs\MultiTextPropDlg.h"

#include "..\..\FeData\Factories\BaseFactory.h"
#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\Helpers\ResourceManager.h"
#include "..\..\FeData\NamedElements\GDI\GDIMultiText.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\Project.h"
#include "..\..\FeData\NamedElements\MultiText.h"
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
// ActionMultiText::ActionMultiText
//===========================================================================
// Description: ActionMultiText's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMultiText::ActionMultiText( FeData::Page* page, 
                                  FeData::DrawingElement* drawingElement,
                                  FeData::PageElement* parent,
                                  int elementIndex,
                                  ActionDrawingElementEnum type ) :
ActionBoxDrawingElement( page, drawingElement, parent, elementIndex, type ),
m_OldTextStyleName( "" ),
m_OldTextList(),
m_OldSelection( 0 ),
m_OldShadowEnabled( false ),
m_OldShadowRed( 0 ),
m_OldShadowGreen( 0 ),
m_OldShadowBlue( 0 ),
m_OldShadowAlpha( 0x80 ),
m_OldXShadowOffset( -1 ),
m_OldYShadowOffset( -2 ),
m_NewTextStyleName( "" ),
m_NewTextList(),
m_NewSelection( 0 ),
m_NewShadowEnabled( false ),
m_NewShadowRed( 0 ),
m_NewShadowGreen( 0 ),
m_NewShadowBlue( 0 ),
m_NewShadowAlpha( 0x80 ),
m_NewXShadowOffset( -1 ),
m_NewYShadowOffset( -2 ),
m_TextListChanged( false )
{
    using namespace FeData;
    
    switch( m_ActionType )
    {
        case ACTION_DRAWINGELEMENT_ADD:
        {
            // Make the new MultiText
            if( (m_Page == NULL) || (drawingElement != NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionMultiText::ActionMultiText: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "MultiText Add";
           
            NameManager nameManager;
            nameManager.GenerateUniqueMultiTextName( m_OldName, m_Page );

            FeData::GDIMultiText t;
            GetDefaultBoxDrawingElementSettings( &t );
            GetNewSettingsFromDialog();
            break;
        }

        case ACTION_DRAWINGELEMENT_MODIFY:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) )
            {
                g_OutputMessage.Add( "ActionMultiText::ActionMultiText: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "MultiText Modify";

            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldMultiTextSettings();
            GetNewSettingsFromDialog();
            break;
        }

        case ACTION_DRAWINGELEMENT_DELETE:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionMultiText::ActionMultiText: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "MultiText Delete";
        
            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldMultiTextSettings();
            break;
        }

        case ACTION_DRAWINGELEMENT_DUPLICATE:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionMultiText::ActionMultiText: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "MultiText Duplicate";
        
            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldMultiTextSettings();

            NameManager nameManager;
            nameManager.GenerateUniqueDrawingElementCopyName( m_DrawingElement, m_OldName, m_Page );
            
            // No longer need the drawing element to copy from
            m_DrawingElement = NULL;
            break;
        }

        default:
        {
            g_OutputMessage.Add( "ActionMultiText::ActionMultiText: Invalid drawing element action type!",
                                  DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }

}


//===========================================================================
// ActionMultiText::ActionMultiText
//===========================================================================
// Description: ActionMultiText's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMultiText::~ActionMultiText()
{

}


//===========================================================================
// ActionMultiText::Do
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
// ActionMultiText::Undo
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



void ActionMultiText::DoModify()
{
    SetNewBoxDrawingElementSettings();

    Change( m_NewTextStyleName, 
            m_NewTextList, 
            m_NewSelection,
            m_NewShadowEnabled,
            m_NewShadowRed,
            m_NewShadowGreen,
            m_NewShadowBlue,
            m_NewShadowAlpha,
            m_NewXShadowOffset,
            m_NewYShadowOffset );
}


void ActionMultiText::UndoModify()
{
    SetOldBoxDrawingElementSettings();

    Change( m_OldTextStyleName, 
            m_OldTextList, 
            m_OldSelection,
            m_OldShadowEnabled,
            m_OldShadowRed,
            m_OldShadowGreen,
            m_OldShadowBlue,
            m_OldShadowAlpha,
            m_OldXShadowOffset,
            m_OldYShadowOffset );

}


bool ActionMultiText::MakeNewDrawingElement( FeData::BaseFactory* objectFactory )
{
    m_DrawingElement = objectFactory->NewMultiText();
    if( m_DrawingElement == NULL )
    {
        FeData::g_OutputMessage.Add( "ActionMultiText::MakeNewDrawingElement: Out of Memory!",
                                     FeData::ErrorOutputMessage );
        return false;
    }

    return true;
}


void ActionMultiText::GetOldMultiTextSettings()
{
    using namespace FeData;

    MultiText* multiText = dynamic_cast<MultiText*>( m_DrawingElement );
    if( multiText == NULL )
    {
        g_OutputMessage.Add( "ActionMultiText::GetOldMultiTextSettings: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }


    if( !multiText->GetTextStyleName( m_OldTextStyleName ) )
    {
        g_OutputMessage.Add( "ActionMultiText::GetOldMultiTextSettings: Could not get the text style name.  Using default.",
                              DebugOutputMessage );
    }

    if( !multiText->FillInTextList( m_OldTextList ) )
    {
        g_OutputMessage.Add( "ActionMultiText::GetOldMultiTextSettings: Could not fill in the text list.  Using default.",
                              DebugOutputMessage );
    }

    m_OldSelection = multiText->GetCurrentText();

    m_OldShadowEnabled = multiText->IsShadowEnabled();
    m_OldShadowRed = multiText->GetShadowRed();
    m_OldShadowGreen = multiText->GetShadowGreen();
    m_OldShadowBlue = multiText->GetShadowBlue();
    m_OldShadowAlpha = multiText->GetShadowAlpha();
    m_OldXShadowOffset = multiText->GetXShadowOffset();
    m_OldYShadowOffset = multiText->GetYShadowOffset();

}


void ActionMultiText::GetNewSettingsFromDialog()
{
    using namespace FeData;

    CMultiTextPropDlg dlg;

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

    m_NewTextList = m_OldTextList;
    dlg.SetTextList( &m_NewTextList );

    dlg.m_SelectedStyle = m_OldTextStyleName;
    dlg.m_CurrentlyShownText = m_OldSelection;

    dlg.m_ShadowEnabled = m_OldShadowEnabled;
    
    dlg.m_ShadowRed = m_OldShadowRed;
    dlg.m_ShadowGreen = m_OldShadowGreen;
    dlg.m_ShadowBlue = m_OldShadowBlue;
    dlg.m_ShadowAlpha = m_OldShadowAlpha;

    dlg.m_xShadowOffset = m_OldXShadowOffset;
    dlg.m_yShadowOffset = m_OldYShadowOffset;

    if (dlg.DoModal() != IDOK)
    {
        m_ActionValid = false;
        return;
    }

    m_TextListChanged = (m_NewTextList != m_OldTextList);

    if( m_TextListChanged ||
        ( strcmp( dlg.m_strName, m_OldName ) != 0 ) ||
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
        ( dlg.m_SelectedStyle != m_OldTextStyleName ) ||
        ( dlg.m_CurrentlyShownText != m_OldSelection) ||
        ( (dlg.m_ShadowEnabled == 1) != m_OldShadowEnabled ) ||
        ( dlg.m_ShadowRed != m_OldShadowRed ) ||
        ( dlg.m_ShadowGreen != m_OldShadowGreen ) ||
        ( dlg.m_ShadowBlue != m_OldShadowBlue ) ||
        ( dlg.m_ShadowAlpha != m_OldShadowAlpha ) ||
        ( dlg.m_xShadowOffset != m_OldXShadowOffset ) ||
        ( dlg.m_yShadowOffset != m_OldYShadowOffset ) )
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

        m_NewTextStyleName = dlg.m_SelectedStyle;
        m_NewSelection = dlg.m_CurrentlyShownText;

        m_NewShadowEnabled = dlg.m_ShadowEnabled == 1;
        m_NewShadowRed = dlg.m_ShadowRed;
        m_NewShadowGreen = dlg.m_ShadowGreen;
        m_NewShadowBlue = dlg.m_ShadowBlue;
        m_NewShadowAlpha = dlg.m_ShadowAlpha;
        m_NewXShadowOffset = dlg.m_xShadowOffset;
        m_NewYShadowOffset = dlg.m_yShadowOffset;

        m_ActionValid = true;
    }
    else
    {
        m_ActionValid = false;
    }
}


void ActionMultiText::Change( PascalCString& textStyleName,
                              FeData::TextList& textList,
                              int selection,
                            bool ShadowEnabled,
                            int ShadowRed,
                            int ShadowGreen,
                            int ShadowBlue,
                            int ShadowAlpha,
                            int ShadowXOffset,
                            int ShadowYOffset )
{
    using namespace FeData;

    MultiText* multiText = dynamic_cast<MultiText*>( m_DrawingElement );
    if( multiText == NULL )
    {
        g_OutputMessage.Add( "ActionMultiText::Change: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        g_OutputMessage.Add( "ActionMultiText::Change: Cannot get resource manager!",
                              DebugOutputMessage );
        return;
    }

    // Set the text style
    TextStyle* textStyle = resMan->GetTextStyle( textStyleName );
    if( textStyle == NULL )
    {
        g_OutputMessage.Add( "ActionMultiText::Change: Cannot get the new text style!",
                              DebugOutputMessage );
    }
    else
    {
        multiText->SetTextStyle( textStyle );
    }

    // Set the multi text elements from the text list
    //if( m_TextListChanged )
    //{
        multiText->SetFromTextList( textList );
    //}

    multiText->SetCurrentText( selection );

    multiText->SetShadowEnabled( ShadowEnabled );
    if( ShadowEnabled )
    {
        multiText->SetShadowColor( ShadowRed, ShadowGreen, ShadowBlue, ShadowAlpha );
        multiText->SetShadowOffset( ShadowXOffset, ShadowYOffset );
    }
}
