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

#include "ActionMovie.h"

#include "..\Property Dialogs\MoviePropDlg.h"

#include "..\..\FeData\Factories\BaseFactory.h"
#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\Helpers\ResourceManager.h"
#include "..\..\FeData\NamedElements\GDI\GDIMovie.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\Project.h"
#include "..\..\FeData\NamedElements\Movie.h"
#include "..\..\FeData\Resources\MovieClip.h"

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
// ActionMovie::ActionMovie
//===========================================================================
// Description: ActionMovie's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMovie::ActionMovie( FeData::Page* page, 
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
            // Make the new ActionMovie
            if( (m_Page == NULL) || (drawingElement != NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionMovie::ActionMovie: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Movie Add";
           
            NameManager nameManager;
            nameManager.GenerateUniqueMovieName( m_OldName, m_Page );
            FeData::GDIMovie m;
            GetDefaultBoxDrawingElementSettings( &m );
            GetNewSettingsFromDialog();
            break;
        }

        case ACTION_DRAWINGELEMENT_MODIFY:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) )
            {
                g_OutputMessage.Add( "ActionMovie::ActionMovie: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Movie Modify";

            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldMovieSettings();
            GetOldResourceName();
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

            m_Type = "Movie Delete";
        
            // Get the old settings.
            GetOldBoxDrawingElementSettings();
            GetOldMovieSettings();
            GetOldResourceName();
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
            GetOldMovieSettings();
            GetOldResourceName();

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
// ActionMovie::ActionMovie
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

ActionMovie::~ActionMovie()
{

}


//===========================================================================
// ActionMovie::Do
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
// ActionMovie::Undo
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



void ActionMovie::DoModify()
{
    SetNewBoxDrawingElementSettings();
}


void ActionMovie::UndoModify()
{
    SetOldBoxDrawingElementSettings();
}


bool ActionMovie::MakeNewDrawingElement( FeData::BaseFactory* objectFactory )
{
    m_DrawingElement = objectFactory->NewMovie();
    if( m_DrawingElement == NULL )
    {
        FeData::g_OutputMessage.Add( "ActionMovie::MakeNewDrawingElement: Out of Memory!",
                                     FeData::ErrorOutputMessage );
        return false;
    }

    return true;
}


void ActionMovie::GetOldMovieSettings()
{
    using namespace FeData;

    Movie* movie = dynamic_cast< Movie* >( m_DrawingElement );
    if( movie == NULL )
    {
        g_OutputMessage.Add( "ActionMovie::GetOldMovieSettings: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }
}

void ActionMovie::GetOldResourceName()
{
    using namespace FeData;

    Movie* movie = dynamic_cast< Movie* >( m_DrawingElement );
    if( movie == NULL )
    {
        g_OutputMessage.Add( "ActionMovie::GetOldMovieName: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    MovieClip* movieClip = movie->GetMovieClip();
    if( movieClip != NULL )
    {
        m_OldResourceName = movieClip->GetName();
    }
}

void ActionMovie::GetNewSettingsFromDialog()
{
    using namespace FeData;

    CMoviePropDlg dlg;

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

void ActionMovie::ChangeResource( PascalCString& resourceName )
{
    using namespace FeData;

    Movie* movie = dynamic_cast<Movie*>( m_DrawingElement );
    if( movie == NULL )
    {
        g_OutputMessage.Add( "ActionMovie::ChangeResource: Invalid drawing element type!",
                              DebugOutputMessage );
        return;
    }

    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        g_OutputMessage.Add( "ActionMovie::ChangeResource: Cannot get resource manager!",
                              DebugOutputMessage );
        return;
    }

    // Get the new image
    MovieClip* newResource = resMan->GetMovieClip( resourceName );
    if( newResource == NULL )
    {
        g_OutputMessage.Add( "ActionMovie::ChangeResource: Cannot get the new MovieClip!",
                              DebugOutputMessage );
        return;
    }

    if( m_ActionType == ACTION_DRAWINGELEMENT_MODIFY )
    {
        // Remove the old image
        movie->SetMovieClip( newResource );
    }
}
