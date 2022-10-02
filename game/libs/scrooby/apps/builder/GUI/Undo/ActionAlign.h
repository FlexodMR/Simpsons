//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles align actions.
//
// Authors:     Victor Medrano
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONALIGN_H
#define __ACTIONALIGN_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "Action.h"

//=============================================================================
// Forward References
//=============================================================================

class SelectionList;

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

enum AlignEnum
{
    ALIGN_AT_TOP,
    ALIGN_AT_VCENTER,
    ALIGN_AT_BOTTOM,
    ALIGN_AT_LEFT,
    ALIGN_AT_HCENTER,
    ALIGN_AT_RIGHT
};

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles move actions.
//
// Constraints: None
//
//=============================================================================

class ActionAlign : public Action  
{
    public:
        ActionAlign( FeData::Screen* screen, 
                    SelectionList* selectionList, 
                    AlignEnum type );
        virtual ~ActionAlign();

        virtual void Do();
        virtual void Undo();

    private:
        // Create this methods as private so they can not be used
        ActionAlign(const ActionAlign &right);
        const ActionAlign & operator = (const ActionAlign &right);
 
        SelectionList* m_SelectionList;
        FeData::ElementList< AlignDelta > m_AlignList;

};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
