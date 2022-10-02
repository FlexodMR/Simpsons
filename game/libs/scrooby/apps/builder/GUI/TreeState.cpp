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

//===========================================================================
// Includes
//===========================================================================

#include "..\stdafx.h"
#include "TreeState.h"

#include <stack>

#include "Strings\PCString.h"

#include "..\FeData\Helpers\OutputMessage.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// TreeState::TreeState
//===========================================================================
// Description: TreeState's constructor
//
// Constraints:    None
//
// Parameters:    None.
//
// Return:      Nothing
//
//===========================================================================

TreeState::TreeState() :
m_ExpandTreeRootNode( NULL ),
m_SelectionListHeadNode( NULL ),
m_ScrollPosHorz( 0 ),
m_ScrollPosVert( 0 )
{
}


//===========================================================================
// TreeState::~TreeState
//===========================================================================
// Description: TreeState's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TreeState::~TreeState()
{
    ClearExpandTree( m_ExpandTreeRootNode );
    m_ExpandTreeRootNode = NULL;
    ClearSelectionList();
}


//===========================================================================
// TreeState::Store
//===========================================================================
// Description: This stores the state of the tree.
//
// Constraints:    None
//
// Parameters:    tree - the tree to get the information from to store.
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TreeState::Store( CTreeCtrl& tree )
{
    bool toReturn = true;
    if( !StoreExpands( tree ) )
    {
        toReturn = false;
    }

    if( !StoreSelection( tree ) )
    {
        toReturn = false;
    }

    if( !StoreScroll( tree ) )
    {
        toReturn = false;
    }

    /*
    FeData::g_OutputMessage.Add( "--> EXPAND TREE <--", FeData::DebugOutputMessage );
    DumpExpandTree( m_ExpandTreeRootNode );

    FeData::g_OutputMessage.Add( "--> SELECTION LIST <--", FeData::DebugOutputMessage );
    DumpSelectionList();
    */

    return toReturn;
}


//===========================================================================
// TreeState::Restore
//===========================================================================
// Description: This restores the state of the tree to the state determined
//              durring the last store.
//
// Constraints:    None
//
// Parameters:    tree - the tree to restore.
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TreeState::Restore( CTreeCtrl& tree )
{
    bool toReturn = true;
    if( !RestoreExpands( tree ) )
    {
        toReturn = false;
    }

    if( !RestoreSelection( tree ) )
    {
        toReturn = false;
    }

    if( !RestoreScroll( tree ) )
    {
        toReturn = false;
    }

    return toReturn;
}


//===========================================================================
// TreeState::StoreExpands
//===========================================================================
// Description: This stores the expand state of the tree.
//
// Constraints:    None
//
// Parameters:    tree - the tree to get the information from to store.
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TreeState::StoreExpands( CTreeCtrl& tree )
{
    // First make sure the tree is cleared.
    ClearExpandTree( m_ExpandTreeRootNode );
    m_ExpandTreeRootNode = NULL;

    UINT state;
    std::stack< HTREEITEM >      openParentsItem;
    std::stack< TreeExpandStateNode* > openParentsNode;


    HTREEITEM root = tree.GetRootItem();
    if( tree.ItemHasChildren( root ) )
    {
        state = tree.GetItemState( root, TVIS_OVERLAYMASK );
        if( state & TVIS_EXPANDED )
        {
            m_ExpandTreeRootNode = new TreeExpandStateNode();
            if( m_ExpandTreeRootNode == NULL )
            {
                FeData::g_OutputMessage.Add( "TreeState::Store: Out of Memory!",
                                             FeData::ErrorOutputMessage );
                return false;

            }

            m_ExpandTreeRootNode->m_Name = tree.GetItemText( root );

            openParentsItem.push( root );
            openParentsNode.push( m_ExpandTreeRootNode );
        }
    }


    while( !openParentsItem.empty() )
    {
        HTREEITEM element = openParentsItem.top();
        openParentsItem.pop();
        
        TreeExpandStateNode* parentNode = openParentsNode.top();
        openParentsNode.pop();
        
        element = tree.GetChildItem( element );
        while( element != NULL )        
        {
            if( tree.ItemHasChildren( element ) )
            {
                state = tree.GetItemState( element, TVIS_OVERLAYMASK );
                if( state & TVIS_EXPANDED )
                {
                    TreeExpandStateNode* currentNode = new TreeExpandStateNode();
                    if( currentNode == NULL )
                    {
                        FeData::g_OutputMessage.Add( "TreeState::StoreExpands: Out of Memory!",
                                                     FeData::ErrorOutputMessage );
                        ClearExpandTree( m_ExpandTreeRootNode );
                        m_ExpandTreeRootNode = NULL;
                        return false;

                    }

                    currentNode->m_Name = tree.GetItemText( element );

                    openParentsItem.push( element );
                    openParentsNode.push( currentNode );

                    parentNode->m_Children.push_back( currentNode );
                }
            }
            element = tree.GetNextSiblingItem( element );
        }
    } 
    return true;
}



//===========================================================================
// TreeState::RestoreExpands
//===========================================================================
// Description: This restores the expand state of the tree.
//
// Constraints:    None
//
// Parameters:    tree - the tree to restore.
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TreeState::RestoreExpands( CTreeCtrl& tree )
{
    // Restore the state
    HTREEITEM root = tree.GetRootItem();
    tree.Expand( root, TVE_COLLAPSE );

    if( m_ExpandTreeRootNode == NULL )
    {
        return true;
    }

    std::stack< HTREEITEM >      openParentsItem;
    std::stack< TreeExpandStateNode* > openParentsNode;

    if( tree.GetItemText( root ) == m_ExpandTreeRootNode->m_Name )
    {
        openParentsItem.push( root );
        openParentsNode.push( m_ExpandTreeRootNode );
    }

    while( !openParentsItem.empty() )
    {
        HTREEITEM element = openParentsItem.top();
        openParentsItem.pop();
        
        TreeExpandStateNode* parentNode = openParentsNode.top();
        openParentsNode.pop();
        
        tree.Expand( element, TVE_EXPAND );
 
        element = tree.GetChildItem( element );
        while( element != NULL )        
        {
            if( tree.ItemHasChildren( element ) )
            {
                for( int i = 0; i < parentNode->m_Children.size(); i++ )
                {
                    TreeExpandStateNode* currentNode = parentNode->m_Children[i];
                    if( tree.GetItemText( element ) == currentNode->m_Name )
                    {
                        openParentsItem.push( element );
                        openParentsNode.push( currentNode );
                    }
                }
            }
            element = tree.GetNextSiblingItem( element );
        }
    } 
    return true;
}


//===========================================================================
// TreeState::StoreSelection
//===========================================================================
// Description: This stores the selection state of the tree.
//
// Constraints:    None
//
// Parameters:    tree - the tree to get the information from to store.
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TreeState::StoreSelection( CTreeCtrl& tree )
{
    ClearSelectionList();

    HTREEITEM element = tree.GetSelectedItem();
    HTREEITEM root = tree.GetRootItem();
    if( (element == NULL) || (root == NULL) )
    {
        return true;
    }

    TreeSelectionStateNode* tempNode;

    // Add all the items below the root
    while( (element != root) && (element != NULL) )
    {
        
        tempNode = new TreeSelectionStateNode;
        if( tempNode == NULL )
        {
            FeData::g_OutputMessage.Add( "TreeState::StoreSelection: Out of Memory!",
                                         FeData::ErrorOutputMessage );
            ClearSelectionList();
            return false;
        }   

        tempNode->m_Name = tree.GetItemText( element );
        tempNode->m_Next = m_SelectionListHeadNode;
        m_SelectionListHeadNode = tempNode;

        element = tree.GetParentItem( element );
    }

    // Add the root
    tempNode = new TreeSelectionStateNode;
    if( tempNode == NULL )
    {
        FeData::g_OutputMessage.Add( "TreeState::StoreSelection: Out of Memory!",
                                     FeData::ErrorOutputMessage );
        ClearSelectionList();
        return false;
    }   

    tempNode->m_Name = tree.GetItemText( root );
    tempNode->m_Next = m_SelectionListHeadNode;
    m_SelectionListHeadNode = tempNode;
    return true;
}


//===========================================================================
// TreeState::RestoreSelection
//===========================================================================
// Description: This restores the selection state of the tree.
//
// Constraints:    None
//
// Parameters:    tree - the tree to restore.
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TreeState::RestoreSelection( CTreeCtrl& tree )
{
    if( m_SelectionListHeadNode == NULL )
    {
        return true;
    }

    HTREEITEM element = tree.GetRootItem();
    if( element == NULL )
    {
        return false;
    }

    TreeSelectionStateNode* currentNode = m_SelectionListHeadNode;


    // Is the root selected
    if( currentNode->m_Next == NULL )
    {
        if( tree.GetItemText( element ) == currentNode->m_Name  )
        {
            tree.SelectItem( element );
            return true;
        }
        else
        {
            return false;
        }
    }

    // Check the children
    currentNode = currentNode->m_Next; 
    while( currentNode != NULL )
    {
        HTREEITEM childElement = tree.GetChildItem( element );
        bool found = false;
        while( !found && (childElement != NULL) )        
        {
            if( tree.GetItemText( childElement ) == currentNode->m_Name )
            {
                if( currentNode->m_Next == NULL )
                {
                    tree.SelectItem( childElement );
                    return true;
                }
                else
                {
                    element = childElement;
                    found = true;
                }
            }
            else
            {
                childElement = tree.GetNextSiblingItem( childElement );
            }
        }

        if( !found )
        {
            return false;
        }

        currentNode = currentNode->m_Next;
    }

    return false;
}


//===========================================================================
// TreeState::StoreScroll
//===========================================================================
// Description: This stores the scroll state of the tree.
//
// Constraints:    None
//
// Parameters:    tree - the tree to get the information from to store.
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TreeState::StoreScroll( CTreeCtrl& tree )
{
    m_ScrollPosHorz = tree.GetScrollPos( SB_HORZ );
    m_ScrollPosVert = tree.GetScrollPos( SB_VERT );
    return true;
}


//===========================================================================
// TreeState::RestoreScroll
//===========================================================================
// Description: This restores the scroll state of the tree.
//
// Constraints:    None
//
// Parameters:    tree - the tree to restore.
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TreeState::RestoreScroll( CTreeCtrl& tree )
{
    tree.SetScrollPos( SB_HORZ, m_ScrollPosHorz );
    tree.SetScrollPos( SB_VERT, m_ScrollPosVert );
    return true;
}


//===========================================================================
// TreeState::ClearExpandTree
//===========================================================================
// Description: This clears the expand tree.
//
// Constraints:    None
//
// Parameters:    currentNode - the current node to clear
//
// Return:      Nothing
//
//===========================================================================

void TreeState::ClearExpandTree( TreeExpandStateNode* currentNode )
{
    if( currentNode == NULL )
    {
        return;
    }

    // Clear all the children
    for( int i = 0; i < currentNode->m_Children.size(); i++ )
    {
        ClearExpandTree( currentNode->m_Children[i] );
    }

    // Delete the current node
    delete currentNode;
}


//===========================================================================
// TreeState::ClearSelectionList
//===========================================================================
// Description: This clears the selection list.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void TreeState::ClearSelectionList()
{
    while( m_SelectionListHeadNode != NULL )
    {
        TreeSelectionStateNode* tempNode = m_SelectionListHeadNode->m_Next;
        delete m_SelectionListHeadNode;
        m_SelectionListHeadNode = tempNode;
    }
}


//===========================================================================
// TreeState::DumpExpandTree
//===========================================================================
// Description: This dumps the expand tree to the output window.
//
// Constraints:    None
//
// Parameters:    currentNode - the current node to DumpExpandTree
//
// Return:      Nothing
//
//===========================================================================

void TreeState::DumpExpandTree( TreeExpandStateNode* currentNode )
{
    if( currentNode == NULL )
    {
        return;
    }

    FeData::g_OutputMessage.Add( currentNode->m_Name, FeData::DebugOutputMessage );

    for( int i = 0; i < currentNode->m_Children.size(); i++ )
    {
        DumpExpandTree( currentNode->m_Children[i] );
    }
}


//===========================================================================
// TreeState::DumpSelectionList
//===========================================================================
// Description: This dumps the selection list to the output window.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void TreeState::DumpSelectionList()
{
    TreeSelectionStateNode* currentNode = m_SelectionListHeadNode;
    while( currentNode != NULL )
    {
        FeData::g_OutputMessage.Add( currentNode->m_Name, FeData::DebugOutputMessage );
        currentNode = currentNode->m_Next;
    }
}
