//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles ActionPage actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ActionPage_H
#define __ActionPage_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "Action.h"
#include "..\SelectionList.h"

//=============================================================================
// Forward References
//=============================================================================

namespace FeData
{
    class PageFile;
}

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

enum ActionPageEnum
{
    ACTION_PAGE_ADD,
    ACTION_PAGE_DELETE
};

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

class ActionPage : public Action  
{
    public:
        ActionPage( FeData::Screen* screen, 
                    FeData::PageFile* pageFile,
                    ActionPageEnum actionType,
                    SelectionList* selectionList = NULL );
        virtual ~ActionPage();

        virtual void Do();
        virtual void Undo();

    private:
        // Create this methods as private so they can not be used
        ActionPage(const ActionPage &right);
        const ActionPage & operator = (const ActionPage &right);

        FeData::PageFile* m_PageFile;
        int m_PageFileIndex;
        bool m_Exportable;
        ActionPageEnum m_ActionType;

        bool m_PageFileInHierarchy;

        SelectionList* m_SelectionList;
        SelectionList m_OldSelectionList;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
