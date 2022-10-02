//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles BoxDrawingElement actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONBoxDrawingElement_H
#define __ACTIONBoxDrawingElement_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "ActionDrawingElement.h"
#include "..\..\FeData\Helpers\EnumConversion.h"

//=============================================================================
// Forward References
//=============================================================================
namespace FeData
{
    class BoxDrawingElement;
}

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles BoxDrawingElement actions.
//
// Constraints: None
//
//=============================================================================

class ActionBoxDrawingElement : public ActionDrawingElement  
{
    public:
        ActionBoxDrawingElement( FeData::Page* page, 
                                 FeData::DrawingElement* drawingElement,
                                 FeData::PageElement* parent,
                                 int elementIndex,
                                 ActionDrawingElementEnum type );
        virtual ~ActionBoxDrawingElement();

    protected:

        virtual void DoModify() = 0;
        virtual void UndoModify() = 0;

        virtual bool MakeNewDrawingElement( FeData::BaseFactory* objectFactory ) = 0;

        virtual void GetDefaultBoxDrawingElementSettings( const FeData::BoxDrawingElement* box );
        virtual void GetOldBoxDrawingElementSettings();
        virtual void SetOldBoxDrawingElementSettings();
        virtual void SetNewBoxDrawingElementSettings();

        int m_OldX;
        int m_OldY;
        int m_OldWidth;
        int m_OldHeight;
        int m_OldRed;
        int m_OldGreen;
        int m_OldBlue;
        int m_OldAlpha;
        FeData::JustificationEnum m_OldJustificationHorizontal;
        FeData::JustificationEnum m_OldJustificationVertical;
        FeData::TranslucencyEnum m_OldTranslucency;
        double m_OldRotation;

        int m_NewX;
        int m_NewY;
        int m_NewWidth;
        int m_NewHeight;
        FeData::JustificationEnum m_NewJustificationHorizontal;
        FeData::JustificationEnum m_NewJustificationVertical;
        int m_NewRed;
        int m_NewGreen;
        int m_NewBlue;
        int m_NewAlpha;
        FeData::TranslucencyEnum m_NewTranslucency;
        double m_NewRotation;

    private:
        // Create this methods as private so they can not be used
        ActionBoxDrawingElement(const ActionBoxDrawingElement &right);
        const ActionBoxDrawingElement & operator = (const ActionBoxDrawingElement &right);
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
