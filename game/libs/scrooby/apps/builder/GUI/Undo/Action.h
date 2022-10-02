//=============================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This is the base class for all actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTION_H
#define __ACTION_H


//=============================================================================
// Nested Includes
//=============================================================================

#include "Strings\PCString.h"

//=============================================================================
// Forward References
//=============================================================================

namespace FeData
{
    class Screen;
    class Page;
}

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

//=============================================================================
// Interface Definitions
//=============================================================================


//=============================================================================
//
// Description: This is the base class for all actions.
//
// Constraints: None
//
//=============================================================================

class Action  
{
    public:
        Action( FeData::Page* page, 
                FeData::Screen* screen, 
                char* type,
                bool haveToRebuildTree,
                bool haveToRefreshLayoutView,
                bool haveToRefreshTreeSelection );
        virtual ~Action();

        virtual void Do() = 0;
        virtual void Undo() = 0;

        virtual const PascalCString& GetType();
        virtual FeData::Page* GetPage();
        virtual FeData::Screen* GetScreen();

        virtual bool HaveToRebuildTree();
        virtual bool HaveToRefreshLayoutView();
        virtual bool HaveToRefreshTreeSelection();

        virtual bool IsActionValid();

    protected:
        FeData::Page* m_Page;
        FeData::Screen* m_Screen;
        PascalCString m_Type;

        bool m_HaveToRebuildTree;
        bool m_HaveToRefreshLayoutView;
        bool m_HaveToRefreshTreeSelection;

        bool m_ActionValid;

    private:
        // Create this methods as private so they can not be used
        Action(const Action &right);
        const Action & operator = (const Action &right);

};


//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
