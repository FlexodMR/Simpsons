//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles MultiText actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONPURE3DOBJECT_H
#define __ACTIONPURE3DOBJECT_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "ActionBoxDrawingElement.h"
#include "..\..\FeData\Helpers\EnumConversion.h"

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
// Description: This handles MultiText actions.
//
// Constraints: None
//
//=============================================================================

class ActionPure3dObject : public ActionBoxDrawingElement  
{
    public:
        ActionPure3dObject( FeData::Page* page, 
                         FeData::DrawingElement* drawingElement,
                         FeData::PageElement* parent,
                         int elementIndex,
                         ActionDrawingElementEnum type );
        virtual ~ActionPure3dObject();

    protected:
        virtual void DoModify();
        virtual void UndoModify();

        virtual bool MakeNewDrawingElement( FeData::BaseFactory* objectFactory );

    private:
        // Create this methods as private so they can not be used
        ActionPure3dObject(const ActionPure3dObject &right);
        const ActionPure3dObject & operator = (const ActionPure3dObject &right);

        void GetOldPure3dObjectSettings();
        void GetNewSettingsFromDialog();
        void ChangeResource( PascalCString& resourceName );

        void GetOldResourceName();
        PascalCString m_OldResourceName;
        PascalCString m_NewResourceName;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
