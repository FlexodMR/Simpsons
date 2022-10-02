//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles Rename actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONRENAME_H
#define __ACTIONRENAME_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "Action.h"

//=============================================================================
// Forward References
//=============================================================================

namespace FeData
{
    class NamedElement;
}

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles Rename actions.
//
// Constraints: None
//
//=============================================================================

class ActionRename : public Action  
{
    public:
        ActionRename( FeData::Page* page, 
                      FeData::NamedElement* element, 
                      PascalCString& newName );
        virtual ~ActionRename();

        virtual void Do();
        virtual void Undo();

    private:
        // Create this methods as private so they can not be used
        ActionRename(const ActionRename &right);
        const ActionRename & operator = (const ActionRename &right);

        FeData::NamedElement* m_Element;
        PascalCString m_NewName;
        PascalCString m_OldName;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
