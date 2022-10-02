//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   GUI Helper
//
// Description: This contains the TreeState class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __TREESTATE_H
#define __TREESTATE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include <vector>
#include "Strings\PCString.h"

//===========================================================================
// Forward References
//===========================================================================

class CTreeCtrl;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

typedef struct TreeExpandStateNode
{
    PascalCString m_Name;
    std::vector< TreeExpandStateNode* > m_Children; 
} TreeExpandStateNode;


typedef struct TreeSelectionStateNode
{
    PascalCString m_Name;
    TreeSelectionStateNode* m_Next; 
} TreeSelectionStateNode;

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to store and restore the state of a tree.
//
// Constraints: None
//
//===========================================================================

class TreeState
{
    public:
        TreeState();
        virtual ~TreeState();

        bool Store( CTreeCtrl& tree );
        bool Restore( CTreeCtrl& tree );

    protected:

    private:
        TreeState( TreeState &right);
        const TreeState & operator = (TreeState &right);


        bool StoreExpands( CTreeCtrl& tree );
        bool RestoreExpands( CTreeCtrl& tree );

        bool StoreSelection( CTreeCtrl& tree );
        bool RestoreSelection( CTreeCtrl& tree );

        bool StoreScroll( CTreeCtrl& tree );
        bool RestoreScroll( CTreeCtrl& tree );



        void ClearExpandTree( TreeExpandStateNode* currentNode );
        void ClearSelectionList();

        void DumpExpandTree( TreeExpandStateNode* currentNode );
        void DumpSelectionList();

        TreeExpandStateNode* m_ExpandTreeRootNode;
        TreeSelectionStateNode* m_SelectionListHeadNode;

        int m_ScrollPosHorz;
        int m_ScrollPosVert;
};


//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion


