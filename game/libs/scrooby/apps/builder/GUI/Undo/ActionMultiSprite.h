//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles MultiSprite actions.
//
// Authors:     Ian Gipson
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONMULTISPRITE_H
#define __ACTIONMULTISPRITE_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "ActionBoxDrawingElement.h"
#include <vector>

//=============================================================================
// Forward References
//=============================================================================

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles MultiSprite actions.
//
// Constraints: None
//
//=============================================================================

class ActionMultiSprite : public ActionBoxDrawingElement  
{
    public:
        ActionMultiSprite( FeData::Page* page, 
                           FeData::DrawingElement* drawingElement,
                           FeData::PageElement* parent,
                           int elementIndex,
                           ActionDrawingElementEnum type );
        virtual ~ActionMultiSprite();

    protected:
        virtual void DoModify();
        virtual void UndoModify();

        virtual bool AreOldAndNewListsEqual() const;
        void ChangeImages( std::vector< PascalCString > imageNames,
                           int selection );
        void GetOldImageNames();
        virtual bool MakeNewDrawingElement( FeData::BaseFactory* objectFactory );

    private:
        // Create this methods as private so they can not be used
        ActionMultiSprite(const ActionMultiSprite &right);
        const ActionMultiSprite & operator = (const ActionMultiSprite &right);

        void GetNewSettingsFromDialog();

        std::vector< PascalCString > m_OldImageNames;
        int m_OldSelection;

        std::vector< PascalCString > m_NewImageNames;
        int m_NewSelection;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
