//=============================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This is the main class that manages all the actions of project.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONMANAGER_H
#define __ACTIONMANAGER_H


//=============================================================================
// Nested Includes
//=============================================================================

#include "Strings\PCString.h"

//=============================================================================
// Forward References
//=============================================================================

class Action;

namespace FeData
{
    class Page;
    class Screen;
}

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================


//=============================================================================
// Interface Definitions
//=============================================================================


//=============================================================================
//
// Description: This is the main class that manages all the actions of project.
//
// Constraints: None
//
//=============================================================================

class ActionManager
{
    public:
        ActionManager();
        virtual ~ActionManager();

        void Do( Action* action );
        void Undo();
        void Redo();

        bool HaveUndo();
        bool HaveRedo();

        bool ActionDone();

        void JustSaved();

        const PascalCString& GetNextUndoType();
        const PascalCString& GetNextRedoType();
        
        bool HaveToRebuildTreeAfterUndo();
        bool HaveToRebuildTreeAfterRedo();
        bool HaveToRebuildTree();
        bool HaveToRefreshLayoutView();
        bool HaveToRefreshTreeSelection();

        void ClearActionsOfPage( FeData::Page* page );
        void ClearActionsOfScreen( FeData::Screen* screen );

        void DumpLists();
    
    private:
        // Create this methods as private so they can not be used
        ActionManager(const ActionManager &right);
        const ActionManager & operator = (const ActionManager &right);

        void AddUndo( Action* action );
        void AddRedo( Action* action );
    
        void RemoveUndoAt( int index );
        void RemoveRedoAt( int index );

        enum 
        {
            m_MaxNumberOfActions = 100
        };

        Action* m_UndoActions[m_MaxNumberOfActions];
        Action* m_RedoActions[m_MaxNumberOfActions];
    
        int  m_UndoNumber;
        int  m_RedoNumber;

        int  m_UndoStart;
        int  m_RedoStart;

        int  m_SavedNumber;

        bool m_HaveToRebuildTree;
        bool m_HaveToRefreshLayoutView;
        bool m_HaveToRefreshTreeSelection;

        PascalCString m_EmptyString;
};

//=======================================================================
// Global Instance
//=======================================================================
extern ActionManager g_ActionManager;


//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
