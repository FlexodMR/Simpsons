//=============================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles movie actions.
//
// Authors:     Ian Gipson
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONMOVIE_H
#define __ACTIONMOVIE_H

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

class ActionMovie : public ActionBoxDrawingElement  
{
    public:
        ActionMovie( FeData::Page* page, 
                         FeData::DrawingElement* drawingElement,
                         FeData::PageElement* parent,
                         int elementIndex,
                         ActionDrawingElementEnum type );
        virtual ~ActionMovie();

    protected:
        virtual void DoModify();
        virtual void UndoModify();

        virtual bool MakeNewDrawingElement( FeData::BaseFactory* objectFactory );

    private:
        // Create this methods as private so they can not be used
        ActionMovie(const ActionMovie &right);
        const ActionMovie & operator = (const ActionMovie &right);

        void GetOldResourceName();
        void GetOldMovieSettings();
        void GetNewSettingsFromDialog();
        void ChangeResource( PascalCString& resourceName );

        PascalCString m_OldResourceName;
        PascalCString m_NewResourceName;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
