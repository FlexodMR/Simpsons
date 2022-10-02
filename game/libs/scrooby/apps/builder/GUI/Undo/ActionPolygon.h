//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles Polygon actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONPolygon_H
#define __ACTIONPolygon_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "ActionDrawingElement.h"
#include "..\..\FeData\Helpers\EnumConversion.h"
#include "..\..\FeData\Helpers\Vertex.h"

//=============================================================================
// Forward References
//=============================================================================

class CPoint;

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

const int g_MinNumberOfPolygonVertexes = 3;
const int g_MaxNumberOfPolygonVertexes = 4;

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles Polygon actions.
//
// Constraints: None
//
//=============================================================================

class ActionPolygon : public ActionDrawingElement  
{
    public:
        ActionPolygon( FeData::Page* page, 
                       FeData::DrawingElement* drawingElement,
                       FeData::PageElement* parent,
                       int elementIndex,
                       CPoint* polygonPoints,
                       int polygonCount,
                       ActionDrawingElementEnum type );
        virtual ~ActionPolygon();

    protected:

        virtual void DoModify();
        virtual void UndoModify();

        virtual bool MakeNewDrawingElement( FeData::BaseFactory* objectFactory );

        FeData::Vertex m_OldVertexList[ g_MaxNumberOfPolygonVertexes ];
        FeData::TranslucencyEnum m_OldTranslucency;
        int m_OldPolygonCount;

        FeData::Vertex m_NewVertexList[ g_MaxNumberOfPolygonVertexes ];
        FeData::TranslucencyEnum m_NewTranslucency;
        int m_NewPolygonCount;

    private:
        // Create this methods as private so they can not be used
        ActionPolygon(const ActionPolygon &right);
        const ActionPolygon & operator = (const ActionPolygon &right);

        void GetOldPolygonSettings();
        void GetNewSettingsFromDialog();
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
