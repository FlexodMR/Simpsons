//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles align actions.
//
// Authors:     Victor Medrano
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\SelectionList.h"
#include "ActionAlign.h"
#include "..\..\FeData\NamedElements\NamedElement.h"

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
// ActionAlign::ActionAlign
//===========================================================================
// Description: ActionMove's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionAlign::ActionAlign( FeData::Screen* screen, 
                        SelectionList* selectionList, 
                        AlignEnum type ):
Action( NULL, screen, "Move Align", false, true, false ),
m_SelectionList( selectionList )
{
    using namespace FeData;

    switch( type )
    {
        case ALIGN_AT_TOP:
        {
            int yTopmost = 0, yCurr;
            int numElements = m_SelectionList->GetNumberOfElements();

            // Find the bounding top
            for( int i = 0; i < numElements; i++ )
            {
                DrawingElement* elem = m_SelectionList->GetElement( i );
                // We need to set yCurr to zero before calling GetBoundingTop
                yCurr = 0;
                elem->GetBoundingTop( yCurr );
                if( yTopmost < yCurr )
                    yTopmost = yCurr;
            }

            // Set deltas
            for( i = 0; i < numElements; i++ )
            {
                DrawingElement* elem = m_SelectionList->GetElement( i );
                AlignDelta* align = new AlignDelta;
                if( align == NULL )
                {
                    g_OutputMessage.Add( "ActionAlign::ActionAlign - out of memory", ErrorOutputMessage );
                    m_ActionValid = false;
                    return;
                }

                // We need to set yCurr to zero before calling GetBoundingTop
                yCurr = 0;
                elem->GetBoundingTop( yCurr );
                align->dx = 0;
                align->dy = yTopmost - yCurr;
                m_AlignList.AddElementToBack( align );
            }
            break;
        }
        case ALIGN_AT_VCENTER:
        {
            int yTopmost = 0, yBottommost, yMid, yCurr;
            int numElements = m_SelectionList->GetNumberOfElements();

            // Find the bounding top
            for( int i = 0; i < numElements; i++ )
            {
                DrawingElement* elem = m_SelectionList->GetElement( i );

                // We need to set yCurr to y resolution before calling GetBoundingBottom
                yCurr = elem->GetYResolution();
                elem->GetBoundingBottom( yCurr );
                if( ( i == 0 ) || ( yBottommost > yCurr ) )
                    yBottommost = yCurr;

                // We need to set yCurr to zero before calling GetBoundingTop
                yCurr = 0;
                elem->GetBoundingTop( yCurr );
                if( yTopmost < yCurr )
                    yTopmost = yCurr;
            }

            // Find midpoint
            yMid = yBottommost + ( yTopmost - yBottommost ) / 2;

            // Set deltas
            for( i = 0; i < numElements; i++ )
            {
                DrawingElement* elem = m_SelectionList->GetElement( i );
                AlignDelta* align = new AlignDelta;
                if( align == NULL )
                {
                    g_OutputMessage.Add( "ActionAlign::ActionAlign - out of memory", ErrorOutputMessage );
                    m_ActionValid = false;
                    return;
                }

                // We need to set yBottommost to y resolution before calling GetBoundingBottom
                yBottommost = elem->GetYResolution();
                elem->GetBoundingBottom( yBottommost );

                // We need to set yTopmost to zero before calling GetBoundingTop
                yTopmost = 0;
                elem->GetBoundingTop( yTopmost );

                align->dy = yMid - ( yBottommost + ( yTopmost - yBottommost ) / 2 );
                align->dx = 0;
                m_AlignList.AddElementToBack( align );
            }
            break;
        }
        case ALIGN_AT_BOTTOM:
        {
            int yBottommost, yCurr;
            int numElements = m_SelectionList->GetNumberOfElements();

            // Find the bounding bottom
            for( int i = 0; i < numElements; i++ )
            {
                DrawingElement* elem = m_SelectionList->GetElement( i );
                // We need to set yCurr to y resolution before calling GetBoundingBottom
                yCurr = elem->GetYResolution();
                elem->GetBoundingBottom( yCurr );
                if( (i == 0) || (yBottommost > yCurr))
                    yBottommost = yCurr;
            }

            // Set deltas
            for( i = 0; i < numElements; i++ )
            {
                DrawingElement* elem = m_SelectionList->GetElement( i );
                AlignDelta* align = new AlignDelta;
                if( align == NULL )
                {
                    g_OutputMessage.Add( "ActionAlign::ActionAlign - out of memory", ErrorOutputMessage );
                    m_ActionValid = false;
                    return;
                }

                // We need to set yCurr to y resolution before calling GetBoundingBottom
                yCurr = elem->GetYResolution();
                elem->GetBoundingBottom( yCurr );
                align->dx = 0;
                align->dy = yBottommost - yCurr;
                m_AlignList.AddElementToBack( align );
            }
            break;
        }
        case ALIGN_AT_LEFT:
        {
            int xLeftmost, xCurr;
            int numElements = m_SelectionList->GetNumberOfElements();

            // Find the bounding left
            for( int i = 0; i < numElements; i++ )
            {
                DrawingElement* elem = m_SelectionList->GetElement( i );
                // We need to set xCurr to x resolution before calling GetBoundingLeft
                xCurr = elem->GetXResolution();
                elem->GetBoundingLeft( xCurr );
                if( ( i == 0 ) || ( xLeftmost > xCurr ) )
                    xLeftmost = xCurr;
            }

            // Set deltas
            for( i = 0; i < numElements; i++ )
            {
                DrawingElement* elem = m_SelectionList->GetElement( i );
                AlignDelta* align = new AlignDelta;
                if( align == NULL )
                {
                    g_OutputMessage.Add( "ActionAlign::ActionAlign - out of memory", ErrorOutputMessage );
                    m_ActionValid = false;
                    return;
                }

                // We need to set xCurr to x resolution before calling GetBoundingLeft
                xCurr = elem->GetXResolution();
                elem->GetBoundingLeft( xCurr );
                align->dx = xLeftmost - xCurr;
                align->dy = 0;
                m_AlignList.AddElementToBack( align );
            }
            break;
        }
        case ALIGN_AT_HCENTER:
        {
            int xRightmost = 0, xLeftmost, xMid, xCurr;
            int numElements = m_SelectionList->GetNumberOfElements();

            // Find the bounding top
            for( int i = 0; i < numElements; i++ )
            {
                DrawingElement* elem = m_SelectionList->GetElement( i );

                // We need to set xCurr to x resolution before calling GetBoundingLeft
                xCurr = elem->GetXResolution();
                elem->GetBoundingLeft( xCurr );
                if( ( i == 0 ) || ( xLeftmost > xCurr ) )
                    xLeftmost = xCurr;

                // We need to set xCurr to zero before calling GetBoundingRight
                xCurr = 0;
                elem->GetBoundingRight( xCurr );
                if( xRightmost < xCurr )
                    xRightmost = xCurr;
            }

            // Find midpoint
            xMid = xLeftmost + ( xRightmost - xLeftmost ) / 2;

            // Set deltas
            for( i = 0; i < numElements; i++ )
            {
                DrawingElement* elem = m_SelectionList->GetElement( i );
                AlignDelta* align = new AlignDelta;
                if( align == NULL )
                {
                    g_OutputMessage.Add( "ActionAlign::ActionAlign - out of memory", ErrorOutputMessage );
                    m_ActionValid = false;
                    return;
                }

                // We need to set xLeftmost to x resolution before calling GetBoundingLeft
                xLeftmost = elem->GetXResolution();
                elem->GetBoundingLeft( xLeftmost );

                // We need to set xRightmost to zero before calling GetBoundingRight
                xRightmost = 0;
                elem->GetBoundingRight( xRightmost );

                align->dx = xMid - ( xLeftmost + ( xRightmost - xLeftmost ) / 2 );
                align->dy = 0;
                m_AlignList.AddElementToBack( align );
            }
            break;
        }
        case ALIGN_AT_RIGHT:
        {
            int xRightmost = 0, xCurr;
            int numElements = m_SelectionList->GetNumberOfElements();

            // Find the bounding right
            for( int i = 0; i < numElements; i++ )
            {
                DrawingElement* elem = m_SelectionList->GetElement( i );
                // We need to set xCurr to zero before calling GetBoundingRight
                xCurr = 0;
                elem->GetBoundingRight( xCurr );
                if( xRightmost < xCurr )
                    xRightmost = xCurr;
            }

            // Set deltas
            for( i = 0; i < numElements; i++ )
            {
                DrawingElement* elem = m_SelectionList->GetElement( i );
                AlignDelta* align = new AlignDelta;
                if( align == NULL )
                {
                    g_OutputMessage.Add( "ActionAlign::ActionAlign - out of memory", ErrorOutputMessage );
                    m_ActionValid = false;
                    return;
                }

                // We need to set xCurr to zero before calling GetBoundingRight
                xCurr = 0;
                elem->GetBoundingRight( xCurr );
                align->dx = xRightmost - xCurr;
                align->dy = 0;
                m_AlignList.AddElementToBack( align );
            }
            break;
        }
    }
}


//===========================================================================
// ActionAlign::~ActionAlign
//===========================================================================
// Description: ActionAlign's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionAlign::~ActionAlign()
{
    while( m_AlignList.GetNumberOfElements() > 0 )
    {
        AlignDelta* align = m_AlignList.GetElement( 0 );
        if( align != NULL )
        {
            delete align;
        }
        m_AlignList.RemoveElement( 0 );
    }
}


//===========================================================================
// ActionAlign::Do
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

void ActionAlign::Do()
{
    if( m_SelectionList != NULL )
    {
        m_SelectionList->AlignSelection( m_AlignList, false );
    }
}


//===========================================================================
// ActionAlign::Undo
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

void ActionAlign::Undo()
{
    if( m_SelectionList != NULL )
    {
        m_SelectionList->AlignSelection( m_AlignList, true );
    }
}
