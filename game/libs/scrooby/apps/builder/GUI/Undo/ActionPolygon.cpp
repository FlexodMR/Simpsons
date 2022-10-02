//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles Polygon actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"

#include "ActionPolygon.h"

#include "..\Property Dialogs\PrimPropDlg.h"

#include "..\..\FeData\NamedElements\Polygon.h"
#include "..\..\FeData\Factories\BaseFactory.h"
#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\Helpers\ResourceManager.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\Project.h"

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
// ActionPolygon::ActionPolygon
//===========================================================================
// Description: ActionPolygon's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionPolygon::ActionPolygon( FeData::Page* page, 
                              FeData::DrawingElement* drawingElement,
                              FeData::PageElement* parent,
                              int elementIndex,
                              CPoint* polygonPoints,
                              int polygonCount,
                              ActionDrawingElementEnum type ) :
ActionDrawingElement( page, drawingElement, parent, elementIndex, type ),
m_OldVertexList(),
m_OldTranslucency( FeData::Normal ),
m_OldPolygonCount( 0 ),
m_NewVertexList(),
m_NewTranslucency( FeData::Normal ),
m_NewPolygonCount( 0 )
{
    using namespace FeData;
    
    switch( m_ActionType )
    {
        case ACTION_DRAWINGELEMENT_ADD:
        {
            if( (m_Page == NULL) || (drawingElement != NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionPolygon::ActionPolygon: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            if( (polygonPoints == NULL) || (polygonCount == 0) )
            {
                m_ActionValid = false;
                return;
            }

            m_Type = "Polygon Add";
           
            NameManager nameManager;
            nameManager.GenerateUniquePolygonName( m_NewName, m_Page );

            m_NewPolygonCount = polygonCount;

            // Make sure we don't have to many vertexes
            if( m_NewPolygonCount > g_MaxNumberOfPolygonVertexes )
            {
                g_OutputMessage.Add( "ActionPolygon::ActionPolygon: To many vertexes in the new polygon, the number was cut!",
                                      DebugOutputMessage );
                m_NewPolygonCount = g_MaxNumberOfPolygonVertexes - 1;
            }

            // Copy the vertexes over
            for( int i = 0; i < m_NewPolygonCount; i++ )
            {
                m_NewVertexList[ i ].SetX( polygonPoints[i].x );
                m_NewVertexList[ i ].SetY( polygonPoints[i].y );
            }
            break;
        }

        case ACTION_DRAWINGELEMENT_MODIFY:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) )
            {
                g_OutputMessage.Add( "ActionPolygon::ActionPolygon: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Polygon Modify";

            // Get the old settings.
            GetOldPolygonSettings();
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
                g_OutputMessage.Add( "ActionPolygon::ActionPolygon: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Polygon Delete";
        
            // Get the old settings.
            GetOldPolygonSettings();
            break;
        }

        case ACTION_DRAWINGELEMENT_DUPLICATE:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionPolygon::ActionPolygon: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Polygon Duplicate";
        
            // Get the old settings to use durring the creation of the new element.
            GetOldPolygonSettings();

            NameManager nameManager;
            nameManager.GenerateUniqueDrawingElementCopyName( m_DrawingElement, m_OldName, m_Page );
            
            // No longer need the drawing element to copy from
            m_DrawingElement = NULL;
            break;
        }

        default:
        {
            g_OutputMessage.Add( "ActionPolygon::ActionPolygon: Invalid drawing element action type!",
                                  DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }
}


//===========================================================================
// ActionPolygon::ActionPolygon
//===========================================================================
// Description: ActionPolygon's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionPolygon::~ActionPolygon()
{

}


void ActionPolygon::DoModify()
{
    using namespace FeData;

    FeData::Polygon* polygon = dynamic_cast<FeData::Polygon*>( m_DrawingElement );
    if( polygon == NULL )
    {
        g_OutputMessage.Add( "ActionPolygon::DoModify: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }


    // Make sure there are enough vertices
    while( polygon->GetNumberOfVertexes() < m_NewPolygonCount )
    {
        Project* project = polygon->GetPage()->GetProject();
        BaseFactory* baseFactory = project->GetObjectFactory();
        Vertex* vertex = baseFactory->NewVertex();
        if( vertex == NULL )
        {
            g_OutputMessage.Add( "ActionPolygon::DoModify: Out of Memory!",
                                 ErrorOutputMessage );
            return;
        }
        polygon->AddVertex( vertex );
    }


    // Make sure there are not to many vertices
    while( polygon->GetNumberOfVertexes() > m_NewPolygonCount )
    {
        polygon->RemoveVertex( 0 );
    }


    // Set the name
    polygon->SetName( m_NewName );


    // Copy the vertexes over
    for( int i = 0; i < m_NewPolygonCount; i++ )
    {
        polygon->SetVertexXY( i, m_NewVertexList[i].GetX(), m_NewVertexList[i].GetY() );

        polygon->SetVertexRed(   i, m_NewVertexList[ i ].GetRed() );
        polygon->SetVertexGreen( i, m_NewVertexList[ i ].GetGreen() );
        polygon->SetVertexBlue(  i, m_NewVertexList[ i ].GetBlue() );
        polygon->SetVertexAlpha( i, m_NewVertexList[ i ].GetAlpha() );
    }
}


void ActionPolygon::UndoModify()
{
    using namespace FeData;

    FeData::Polygon* polygon = dynamic_cast<FeData::Polygon*>( m_DrawingElement );
    if( polygon == NULL )
    {
        g_OutputMessage.Add( "ActionPolygon::UndoModify: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }


    // Make sure there are enough vertices
    while( polygon->GetNumberOfVertexes() < m_OldPolygonCount )
    {
        Project* project = polygon->GetPage()->GetProject();
        BaseFactory* baseFactory = project->GetObjectFactory();
        Vertex* vertex = baseFactory->NewVertex();
        if( vertex == NULL )
        {
            g_OutputMessage.Add( "ActionPolygon::UndoModify: Out of Memory!",
                                 ErrorOutputMessage );
            return;
        }
        polygon->AddVertex( vertex );
    }


    // Make sure there are not to many vertices
    while( polygon->GetNumberOfVertexes() > m_OldPolygonCount )
    {
        polygon->RemoveVertex( 0 );
    }


    // Set the name
    polygon->SetName( m_OldName );


    // Copy the vertexes over
    for( int i = 0; i < m_OldPolygonCount; i++ )
    {
        polygon->SetVertexXY( i, m_OldVertexList[i].GetX(), m_OldVertexList[i].GetY() );

        polygon->SetVertexRed(   i, m_OldVertexList[ i ].GetRed() );
        polygon->SetVertexGreen( i, m_OldVertexList[ i ].GetGreen() );
        polygon->SetVertexBlue(  i, m_OldVertexList[ i ].GetBlue() );
        polygon->SetVertexAlpha( i, m_OldVertexList[ i ].GetAlpha() );
    }
}


bool ActionPolygon::MakeNewDrawingElement( FeData::BaseFactory* objectFactory )
{
    m_DrawingElement = objectFactory->NewPolygon();
    if( m_DrawingElement == NULL )
    {
        FeData::g_OutputMessage.Add( "ActionPolygon::MakeNewDrawingElement: Out of Memory!",
                                     FeData::ErrorOutputMessage );
        return false;
    }

    return true;
}


void ActionPolygon::GetOldPolygonSettings()
{
    using namespace FeData;

    FeData::Polygon* polygon = dynamic_cast<FeData::Polygon*>( m_DrawingElement );
    if( polygon == NULL )
    {
        g_OutputMessage.Add( "ActionPolygon::GetOldPolygonSettings: Invalid drawing element type!",
                              DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    m_OldName = polygon->GetName();

    m_OldPolygonCount = polygon->GetNumberOfVertexes();

    // Make sure we don't have to many vertexes
    if( m_OldPolygonCount > g_MaxNumberOfPolygonVertexes )
    {
        g_OutputMessage.Add( "ActionPolygon::ActionPolygon: To many vertexes in the new polygon, the number was cut!",
                              DebugOutputMessage );
        m_OldPolygonCount = g_MaxNumberOfPolygonVertexes - 1;
    }

    // Copy the vertexes over
    for( int i = 0; i < m_OldPolygonCount; i++ )
    {
        m_OldVertexList[ i ] = *(polygon->GetVertex( i ));
    }
}


void ActionPolygon::GetNewSettingsFromDialog()
{
    using namespace FeData;

    int i;

    CPrimPropDlg dlg;
    dlg.SetName( m_OldName );
    dlg.SetPage( m_Page );
//    dlg.m_nTranslucent = m_d.nTranslucent;
    dlg.m_size = CSize( m_Page->GetResolutionWidth(),  
                        m_Page->GetResolutionHeight() );

    for( i = 0; i < g_MaxNumberOfPolygonVertexes; i++ )
    {
        if( i < m_OldPolygonCount )
        {
            dlg.m_nPosX[i] = m_OldVertexList[ i ].GetX();
            dlg.m_nPosY[i] = m_OldVertexList[ i ].GetY();
            dlg.m_clr[i]   = RGB( m_OldVertexList[ i ].GetRed(), 
                                  m_OldVertexList[ i ].GetGreen(), 
                                  m_OldVertexList[ i ].GetBlue() );
            dlg.m_nAlpha[i] = m_OldVertexList[ i ].GetAlpha();
        }
        else
        {
            dlg.m_nPosX[i] = -1;
            dlg.m_nPosY[i] = -1;
            dlg.m_clr[i] = 0;
            dlg.m_nAlpha[i] = 0;
        }
    }

    if( dlg.DoModal() != IDOK )
    {
        m_ActionValid = false;
        return;
    }


    // Find the number of vertices
    m_NewPolygonCount = g_MaxNumberOfPolygonVertexes;
    for( i = 0; i < g_MaxNumberOfPolygonVertexes; i++ )
    {
        if( (dlg.m_nPosX[i] == -1) || (dlg.m_nPosY[i] == -1) )
        {
            m_NewPolygonCount = i;
            break;
        }
    }

    if( m_NewPolygonCount < g_MinNumberOfPolygonVertexes )
    {
        g_OutputMessage.Add( "Polygons must have at least 3 vertices.",
                             WarningOutputMessage );
        m_ActionValid = false;
        return;
    }


    bool changeMade = false;
    if( (m_NewPolygonCount != m_OldPolygonCount) ||
        (strcmp( dlg.m_strName, m_OldName ) != 0) )
    {
        changeMade = true;
    }

    // Change the vertices if a change has been made
    for( i = 0; (!changeMade) && (i < m_NewPolygonCount); i++ )
    {
        if(    (dlg.m_nPosX[i]  != m_OldVertexList[ i ].GetX()) ||
            (dlg.m_nPosY[i]  != m_OldVertexList[ i ].GetY()) ||
            (dlg.m_clr[i]    != RGB( m_OldVertexList[ i ].GetRed(), 
                                     m_OldVertexList[ i ].GetGreen(), 
                                     m_OldVertexList[ i ].GetBlue() )) ||
            (dlg.m_nAlpha[i] != m_OldVertexList[ i ].GetAlpha()) )
        {
            changeMade = true;
        }
    }


    // Did something change?
    if( changeMade )
    {
        m_NewName = dlg.m_strName;
               
        for( i = 0; i < m_NewPolygonCount; i++ )
        {
            m_NewVertexList[ i ].SetX( dlg.m_nPosX[i] );
            m_NewVertexList[ i ].SetY( dlg.m_nPosY[i] );
            m_NewVertexList[ i ].SetRed(   GetRValue( dlg.m_clr[i] ) ); 
            m_NewVertexList[ i ].SetGreen( GetGValue( dlg.m_clr[i] ) ); 
            m_NewVertexList[ i ].SetBlue(  GetBValue( dlg.m_clr[i] ) );
            m_NewVertexList[ i ].SetAlpha( dlg.m_nAlpha[i] );
        }

        m_ActionValid = true;
    }
    else
    {
        // No change so don't do anything
        m_ActionValid = false;
    }
}
