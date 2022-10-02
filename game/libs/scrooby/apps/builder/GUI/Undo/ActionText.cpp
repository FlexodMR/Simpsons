//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles Text actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionText.h"

#include "..\Property Dialogs\TextPropDlg.h"

#include "..\..\FeData\Factories\BaseFactory.h"
#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\Helpers\ResourceManager.h"
#include "..\..\FeData\NamedElements\GDI\GDIText.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\Project.h"
#include "..\..\FeData\NamedElements\Text.h"
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
// ActionText::ActionText
//===========================================================================
// Description: ActionText's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionText::ActionText( FeData::Page* page, 
                            FeData::DrawingElement* drawingElement,
                            FeData::PageElement* parent,
                            int elementIndex,
                            ActionDrawingElementEnum type ) :
ActionBoxDrawingElement( page, drawingElement, parent, elementIndex, type ),
m_OldTextType( FeData::TextBibleString ),
m_OldHardCodedString( "" ),
m_OldTextBibleName( "" ),
m_OldTextBibleStringName( "" ),
m_OldTextStyleName( "" ),
m_OldShadowEnabled( false ),
m_OldShadowRed( 0 ),
m_OldShadowGreen( 0 ),
m_OldShadowBlue( 0 ),
m_OldShadowAlpha( 0 ),
m_OldXShadowOffset( 0 ),
m_OldYShadowOffset( 0 ),
m_NewTextType( FeData::TextBibleString ),
m_NewHardCodedString( "" ),
m_NewTextBibleName( "" ),
m_NewTextBibleStringName( "" ),
m_NewTextStyleName( "" ),
m_NewShadowEnabled( false ),
m_NewShadowRed( 0 ),
m_NewShadowGreen( 0 ),
m_NewShadowBlue( 0 ),
m_NewShadowAlpha( 0 ),
m_NewXShadowOffset( 0 ),
m_NewYShadowOffset( 0 )
{
    using namespace FeData;
    

    switch( m_ActionType )
    {
        case ACTION_DRAWINGELEMENT_ADD:
        {
            // Make the new Text
            if( (m_Page == NULL) || (drawingElement != NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionText::ActionText: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Text Add";
           
            NameManager nameManager;
            nameManager.GenerateUniqueTextName( m_OldName, m_Page );
            FeData::GDIText t;
            GetDefaultBoxDrawingElementSettings( &t );
            GetNewSettingsFromDialog();
            break;
        }

        case ACTION_DRAWINGELEMENT_MODIFY:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) )
            {
                g_OutputMessage.Add( "ActionText::ActionText: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Text Modify";

            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldTextSettings();
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
                g_OutputMessage.Add( "ActionText::ActionText: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Text Delete";
        
            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldTextSettings();
            break;
        }

        case ACTION_DRAWINGELEMENT_DUPLICATE:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionText::ActionText: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Text Duplicate";
        
            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldTextSettings();

            NameManager nameManager;
            nameManager.GenerateUniqueDrawingElementCopyName( m_DrawingElement, m_OldName, m_Page );
            
            // No longer need the drawing element to copy from
            m_DrawingElement = NULL;
            break;
        }

        default:
        {
            g_OutputMessage.Add( "ActionText::ActionText: Invalid drawing element action type!",
                                  DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }

}


//===========================================================================
// ActionText::ActionText
//===========================================================================
// Description: ActionText's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionText::~ActionText()
{

}


//===========================================================================
// ActionText::Do
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
// ActionText::Undo
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



void ActionText::DoModify()
{
    SetNewBoxDrawingElementSettings();

    Change( m_NewTextType,
            m_NewHardCodedString,
            m_NewTextBibleName,
            m_NewTextBibleStringName,
            m_NewTextStyleName,
            m_NewShadowEnabled,
            m_NewShadowRed,
            m_NewShadowGreen,
            m_NewShadowBlue,
            m_NewShadowAlpha,
            m_NewXShadowOffset,
            m_NewYShadowOffset );
}


void ActionText::UndoModify()
{
    SetOldBoxDrawingElementSettings();

    Change( m_OldTextType,
            m_OldHardCodedString,
            m_OldTextBibleName,
            m_OldTextBibleStringName,
            m_OldTextStyleName,
            m_OldShadowEnabled,
            m_OldShadowRed,
            m_OldShadowGreen,
            m_OldShadowBlue,
            m_OldShadowAlpha,
            m_OldXShadowOffset,
            m_OldYShadowOffset );
}


bool ActionText::MakeNewDrawingElement( FeData::BaseFactory* objectFactory )
{
    m_DrawingElement = objectFactory->NewText();
    if( m_DrawingElement == NULL )
    {
        FeData::g_OutputMessage.Add( "ActionText::MakeNewDrawingElement: Out of Memory!",
                                     FeData::ErrorOutputMessage );
        return false;
    }

    return true;
}


void ActionText::GetOldTextSettings()
{
    using namespace FeData;

    Text* text = dynamic_cast<Text*>( m_DrawingElement );
    if( text == NULL )
    {
        g_OutputMessage.Add( "ActionText::GetOldTextSettings: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    if( !text->GetTextType( 0, m_OldTextType ) )
    {
        g_OutputMessage.Add( "ActionText::GetOldTextSettings: Could not get the text type.  Using default.",
                              DebugOutputMessage );
    }
    
    if( m_OldTextType == TextBibleString )
    {
        if( !text->GetTextBibleName( 0, m_OldTextBibleName ) )
        {
            g_OutputMessage.Add( "ActionText::GetOldTextSettings: Could not get the text bible name.  Using default.",
                                  DebugOutputMessage );
        }

        if( !text->GetTextBibleString( 0, m_OldTextBibleStringName ) )
        {
            g_OutputMessage.Add( "ActionText::GetOldTextSettings: Could not get the text bible string.  Using default.",
                                  DebugOutputMessage );
        }
    }
    else
    {
        if( !text->GetHardCodedString( 0, m_OldHardCodedString ) )
        {
            g_OutputMessage.Add( "ActionText::GetOldTextSettings: Could not get the hard coded string.  Using default.",
                                  DebugOutputMessage );
        }
    }

    if( !text->GetTextStyleName( m_OldTextStyleName ) )
    {
        g_OutputMessage.Add( "ActionText::GetOldTextSettings: Could not get the text style name.  Using default.",
                              DebugOutputMessage );
    }

    m_OldShadowEnabled = text->IsShadowEnabled();
    m_OldShadowRed = text->GetShadowRed();
    m_OldShadowGreen = text->GetShadowGreen();
    m_OldShadowBlue = text->GetShadowBlue();
    m_OldShadowAlpha = text->GetShadowAlpha();
    m_OldXShadowOffset = text->GetXShadowOffset();
    m_OldYShadowOffset = text->GetYShadowOffset();
}


void ActionText::GetNewSettingsFromDialog()
{
    using namespace FeData;

    CTextPropDlg dlg;

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

    dlg.m_TextType = m_OldTextType;

    if( m_OldTextType == TextBibleString )
    {
        dlg.m_SelectedBible = m_OldTextBibleName;
        dlg.m_SelectedBibleString = m_OldTextBibleStringName;
    }
    else
    {
        dlg.m_HardCodedString = m_OldHardCodedString;
    }

    dlg.m_SelectedStyle = m_OldTextStyleName;

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

    bool changeMade = false;

    if( dlg.m_TextType == m_OldTextType )
    {
        if( dlg.m_TextType == TextBibleString )
        {
            if( (dlg.m_SelectedBible != m_OldTextBibleName) ||
                (dlg.m_SelectedBibleString != m_OldTextBibleStringName) )
            {
                changeMade = true;        
            }
        }
        else
        {
            if( dlg.m_HardCodedString != m_OldHardCodedString )
            {
                changeMade = true;        
            }
        }
    }
    else
    {
        changeMade = true;
    }


    if( ( changeMade ) ||
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
       
        m_NewTextType = dlg.m_TextType;
        if( m_NewTextType == TextBibleString )
        {
            m_NewTextBibleName = dlg.m_SelectedBible;
            m_NewTextBibleStringName = dlg.m_SelectedBibleString;
        }
        else
        {
            m_NewHardCodedString = dlg.m_HardCodedString;
        }
        m_NewTextStyleName = dlg.m_SelectedStyle;

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


void ActionText::Change( FeData::TextTypeEnum textType,
                         PascalCString& hardCodedString,
                         PascalCString& textBibleName,
                         PascalCString& textBibleStringName,
                         PascalCString& textStyleName,
                         bool ShadowEnabled,
                         int ShadowRed,
                         int ShadowGreen,
                         int ShadowBlue,
                         int ShadowAlpha,
                         int ShadowXOffset,
                         int ShadowYOffset )
{
    using namespace FeData;

    Text* text = dynamic_cast<Text*>( m_DrawingElement );
    if( text == NULL )
    {
        g_OutputMessage.Add( "ActionText::DoModify: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }


    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        g_OutputMessage.Add( "ActionText::DoModify: Cannot get resource manager!",
                              DebugOutputMessage );
        return;
    }

    
    if( textType == TextBibleString )
    {
        TextBible* textBible = resMan->GetTextBible( textBibleName );
        if( textBible == NULL )
        {
            g_OutputMessage.Add( "ActionText::ChangeImage: Cannot get the new text bible!",
                                  DebugOutputMessage );
            return;
        }

        if( text->GetNumberOfTexts() > 0 )
        {
            text->RemoveText( 0 );
        }

        text->AddTextBibleString( textBible, textBibleStringName );
    }
    else
    {
        if( text->GetNumberOfTexts() > 0 )
        {
            text->RemoveText( 0 );
        }

        text->AddHardCodedString( hardCodedString );
    }


    TextStyle* textStyle = resMan->GetTextStyle( textStyleName );
    if( textStyle == NULL )
    {
        g_OutputMessage.Add( "ActionText::ChangeImage: Cannot get the new text style!",
                              DebugOutputMessage );
        return;
    }

    text->SetTextStyle( textStyle );

    text->SetShadowEnabled( ShadowEnabled );
    if( ShadowEnabled )
    {
        text->SetShadowColor( ShadowRed, ShadowGreen, ShadowBlue, ShadowAlpha );
        text->SetShadowOffset( ShadowXOffset, ShadowYOffset );
    }
}
