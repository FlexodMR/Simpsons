//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles Sprite actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONSPRITE_H
#define __ACTIONSPRITE_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "ActionBoxDrawingElement.h"

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
// Description: This handles Sprite actions.
//
// Constraints: None
//
//=============================================================================

class ActionSprite : public ActionBoxDrawingElement  
{
    public:
        ActionSprite( FeData::Page* page, 
                      FeData::DrawingElement* drawingElement,
                      FeData::PageElement* parent,
                      int elementIndex,
                      ActionDrawingElementEnum type );
        virtual ~ActionSprite();

    protected:
        virtual void DoModify();
        virtual void UndoModify();

        virtual bool MakeNewDrawingElement( FeData::BaseFactory* objectFactory );

    private:
        // Create this methods as private so they can not be used
        ActionSprite(const ActionSprite &right);
        const ActionSprite & operator = (const ActionSprite &right);

        void GetOldImageName();
        void GetNewSettingsFromDialog();
        void ChangeImage( PascalCString& imageName );

        PascalCString m_OldImageName;
        PascalCString m_NewImageName;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
