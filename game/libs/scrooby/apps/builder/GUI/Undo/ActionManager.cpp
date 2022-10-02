// ActionManager.cpp: implementation of the ActionManager class.
//
//////////////////////////////////////////////////////////////////////

#include "ActionManager.h"
#include "Action.h"
#include "..\..\stdafx.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\Screen.h"

ActionManager g_ActionManager;

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

ActionManager::ActionManager() :
m_UndoNumber( 0 ),
m_RedoNumber( 0 ),
m_UndoStart( 0 ),
m_RedoStart( 0 ),
m_SavedNumber( 0 ),
m_HaveToRebuildTree( false ),
m_HaveToRefreshLayoutView( false ),
m_HaveToRefreshTreeSelection( false ),
m_EmptyString( "" )
{
    for( int i = 0; i < m_MaxNumberOfActions; i++ )
    {
        m_UndoActions[ i ] = NULL;
        m_RedoActions[ i ] = NULL; 
    }
}  // ActionManager::ActionManager()


ActionManager::~ActionManager()
{
    /*
    for( int i = 0; i < m_MaxNumberOfActions; i++ )
    {
        if( m_UndoActions[ i ] != NULL )
        {
            delete m_UndoActions[ i ];
            m_UndoActions[ i ] = NULL;
        }

        if( m_RedoActions[ i ] != NULL )
        {
            delete m_RedoActions[ i ];
            m_RedoActions[ i ] = NULL;
        }
    }*/

    int i;
    for( i = m_UndoNumber - 1; i >= 0; i-- )
    {
        RemoveUndoAt( i );
    }

    for( i = m_RedoNumber - 1; i >= 0; i-- )
    {
        RemoveRedoAt( i );
    }
}  // ActionManager::~ActionManager()


void ActionManager::Do( Action* action )
{
    //
    // Do the action
    //
    action->Do();
    m_HaveToRebuildTree = action->HaveToRebuildTree();
    m_HaveToRefreshLayoutView = action->HaveToRefreshLayoutView();
    m_HaveToRefreshTreeSelection = action->HaveToRefreshTreeSelection();

    //
    // Add it to the undo list
    //
    AddUndo( action );


    //
    // Tell the page and/or screen that a change was done
    //
    FeData::Page* page = action->GetPage();
    if( page != NULL )
    {
        page->IncrementChangeNumber();
    }

    FeData::Screen* screen = action->GetScreen();
    if( screen != NULL )
    {
        screen->IncrementChangeNumber();
    }


    //
    // Can we ever get back to the saved state
    //
    if( m_UndoNumber <= m_SavedNumber )
    {
        m_SavedNumber = -1;
    }
    
    //
    // Clear the redo list
    //
    for( int i = 0; i < m_RedoNumber; i++ )
    {
        if( m_RedoActions[ i ] != NULL )
        {
            delete m_RedoActions[ i ];
            m_RedoActions[ i ] = NULL;
        }
    }

    m_RedoNumber = 0;

}  // ActionManager::Add


void ActionManager::Undo()
{
    if( m_UndoNumber > 0 )
    {
        //
        // Remove action from action stack
        //
        m_UndoNumber--;

        int index = (m_UndoStart + m_UndoNumber) % m_MaxNumberOfActions;
        Action* action = m_UndoActions[ index ];
        m_UndoActions[ index ] = NULL;

        //
        // Undo the action
        //
        action->Undo();
        m_HaveToRebuildTree = action->HaveToRebuildTree();
        m_HaveToRefreshLayoutView = action->HaveToRefreshLayoutView();
        m_HaveToRefreshTreeSelection = action->HaveToRefreshTreeSelection();

        //
        // Add the action to the redo stack
        //
        AddRedo( action );

        //
        // Tell the page and/or screen that a change was done
        //
        FeData::Page* page = action->GetPage();
        if( page != NULL )
        {
            page->IncrementChangeNumber();
        }

        FeData::Screen* screen = action->GetScreen();
        if( screen != NULL )
        {
            screen->IncrementChangeNumber();
        }
    }
    
}  // ActionManager::Undo


void ActionManager::Redo()
{
    if( m_RedoNumber > 0 )
    {
        m_RedoNumber--;
        Action* action = m_RedoActions[ m_RedoNumber ];

        action->Do();
        m_HaveToRebuildTree = action->HaveToRebuildTree();
        m_HaveToRefreshLayoutView = action->HaveToRefreshLayoutView();
        m_HaveToRefreshTreeSelection = action->HaveToRefreshTreeSelection();

        m_RedoActions[ m_RedoNumber ] = NULL;
      
        AddUndo( action );

        //
        // Tell the page and/or screen that a change was done
        //
        FeData::Page* page = action->GetPage();
        if( page != NULL )
        {
            page->IncrementChangeNumber();
        }

        FeData::Screen* screen = action->GetScreen();
        if( screen != NULL )
        {
            screen->IncrementChangeNumber();
        }
    }
}  // ActionManager::Redo


bool ActionManager::HaveUndo()
{
    return (m_UndoNumber != 0);
}  // ActionManager::HaveUndo


bool ActionManager::HaveRedo()
{
    return (m_RedoNumber != 0);
}  // ActionManager::HaveRedo


bool ActionManager::ActionDone()
{
    TRACE2( "ActionDone (%d != %d) => ", 
            m_UndoNumber, 
            m_SavedNumber );

    TRACE1( "%s\n", (m_UndoNumber != m_SavedNumber) ? "true" : "false" );

    return (m_UndoNumber != m_SavedNumber); // || m_RolledOver);
}  // ActionManager::ActionDone


void ActionManager::JustSaved()
{
    m_SavedNumber = m_UndoNumber;
}  // ActionManager::JustSaved


const PascalCString& ActionManager::GetNextUndoType()
{
    if( m_UndoNumber > 0 )
    {
        int index = (m_UndoStart + m_UndoNumber - 1) % m_MaxNumberOfActions;
        return m_UndoActions[ index ]->GetType();
    }
    else
    {
        return m_EmptyString;
    }
}  // ActionManager::GetNextUndoType


const PascalCString& ActionManager::GetNextRedoType()
{
    if( m_RedoNumber > 0 )
    {
        return m_RedoActions[ m_RedoNumber - 1 ]->GetType();
    }
    else
    {
        return m_EmptyString;
    }
}  // ActionManager::GetNextRedoType


bool ActionManager::HaveToRebuildTreeAfterUndo()
{
    if( m_UndoNumber > 0 )
    {
        int index = (m_UndoStart + m_UndoNumber - 1) % m_MaxNumberOfActions;
        Action* action = m_UndoActions[ index ];
        return action->HaveToRebuildTree();
    }

    return false;
}  // ActionManager::HaveToRebuildTreeAfterUndo


bool ActionManager::HaveToRebuildTreeAfterRedo()
{
    if( m_RedoNumber > 0 )
    {
        Action* action = m_RedoActions[ m_RedoNumber - 1 ];
        return action->HaveToRebuildTree();
    }

    return false;
}  // ActionManager::HaveToRebuildTreeAfterRedo


bool ActionManager::HaveToRebuildTree()
{
    return m_HaveToRebuildTree;
}  // ActionManager::HaveToRebuildTree


bool ActionManager::HaveToRefreshLayoutView()
{
    return m_HaveToRefreshLayoutView;
}  // ActionManager::HaveToRefreshLayoutView


bool ActionManager::HaveToRefreshTreeSelection()
{
    return m_HaveToRefreshTreeSelection;
}  // ActionManager::HaveToRefreshTreeSelection


void ActionManager::ClearActionsOfPage( FeData::Page* page )
{
    if( page == NULL )
    {
        return;
    }

    TRACE( "ActionManager::ClearActionsOfPage: " );
    TRACE( page->GetName() );
    TRACE( "\n" );

    int i;
    for( i = m_UndoNumber - 1; i >= 0; i-- )
    {
        int index = (m_UndoStart + i) % m_MaxNumberOfActions;

        Action* action = m_UndoActions[ index ];
        if( action->GetPage() == page )
        {
            RemoveUndoAt( i );
        }
    }

    for( i = m_RedoNumber - 1; i >= 0; i-- )
    {
        Action* action = m_RedoActions[ i ];
        if( action->GetPage() == page )
        {
            RemoveRedoAt( i );
        }
    }
}  // ActionManager::ClearActionsOfPage


void ActionManager::ClearActionsOfScreen( FeData::Screen* screen )
{
    if( screen == NULL )
    {
        return;
    }

    TRACE( "ActionManager::ClearActionsOfScreen: " );
    TRACE( screen->GetName() );
    TRACE( "\n" );

    int i;
    bool done = false;

    // Each time we find a screen, we have to start again at the beginning.
    // This is because the remove may change the array and things can get
    // ugly.
    while( !done )
    {
        bool arrayChanged = false;

        for( i = m_UndoNumber - 1; (!arrayChanged) && (i >= 0); i-- )
        {
            int index = (m_UndoStart + i) % m_MaxNumberOfActions;

            Action* action = m_UndoActions[ index ];
            if( action->GetScreen() == screen )
            {
                RemoveUndoAt( i );
                arrayChanged = true;
            }
        }

        if( !arrayChanged )
        {
            done = true;
        }
    }


    // Each time we find a screen, we have to start again at the beginning.
    // This is because the remove may change the array and things can get
    // ugly.
    done = false;

    while( !done )
    {
        bool arrayChanged = false;

        for( i = m_RedoNumber - 1; i >= 0; i-- )
        {
            Action* action = m_RedoActions[ i ];
            if( action->GetScreen() == screen )
            {
                RemoveRedoAt( i );
                arrayChanged = true;
            }
        }

        if( !arrayChanged )
        {
            done = true;
        }
    }
}  // ActionManager::ClearActionsOfScreen



void ActionManager::AddUndo( Action* action )
{
    if( m_UndoNumber < m_MaxNumberOfActions )
    {
        // Add the new action
        int index = (m_UndoStart + m_UndoNumber) % m_MaxNumberOfActions;
        m_UndoActions[ index ] = action;
        m_UndoNumber++;
    }
    else
    {
        m_SavedNumber--;
        if( m_SavedNumber < 0 )
        {
            m_SavedNumber = - 1;
        }

        // Remove the oldest action
        delete m_UndoActions[ m_UndoStart ];

        // Add the new action
        m_UndoActions[ m_UndoStart ] = action;
        m_UndoStart = (m_UndoStart + 1) % m_MaxNumberOfActions;
    }
}  // ActionManager:AddUndo


void ActionManager::AddRedo( Action* action )
{
    //
    // Don't have to worry about roll over because there is never
    // more Redos them Undos.
    //
    if( m_RedoNumber < m_MaxNumberOfActions )
    {
        m_RedoActions[ m_RedoNumber ] = action;
        m_RedoNumber++;
    }
}  // ActionManager:AddRedo


void ActionManager::RemoveUndoAt( int index )
{
    int realIndex = (m_UndoStart + index) % m_MaxNumberOfActions;

    if( m_UndoActions[ realIndex ] )
    {
        delete m_UndoActions[ realIndex ];
        m_UndoActions[ realIndex ] = NULL;
    }

    m_UndoNumber--;

    for( int i = index; i < m_UndoNumber; i++ )
    {
        realIndex = (m_UndoStart + i) % m_MaxNumberOfActions;
        int nextIndex = (realIndex + 1) % m_MaxNumberOfActions;
        m_UndoActions[ realIndex ] = m_UndoActions[ nextIndex ];
        m_UndoActions[ nextIndex ] = NULL;
    }

}  // ActionManager::RemoveUndoAt


void ActionManager::RemoveRedoAt( int index )
{
    if( m_RedoActions[ index ] != NULL )
    {
        delete m_RedoActions[ index ];
        m_RedoActions[ index ] = NULL;
    }

    m_RedoNumber--;

    for( int i = index; i < m_RedoNumber; i++ )
    {
        m_RedoActions[ i ] = m_RedoActions[ i + 1 ];
        m_RedoActions[ i + 1 ] = NULL;
    }
}  // ActionManager::RemoveRedoAt


void ActionManager::DumpLists()
{
    char buffer[ 1024 ];
    int i;

    FeData::Screen* screen;
    FeData::Page* page;
    FeData::g_OutputMessage.Add( "------------------------> Undo List <------------------------",
                                 FeData::DebugOutputMessage );
    for( i = m_UndoNumber - 1; i >= 0; i-- )
    {
        int realIndex = (m_UndoStart + i) % m_MaxNumberOfActions;

        if( m_UndoActions[ realIndex ] == NULL )
        {
            sprintf( buffer,
                     "%5d *** Undo Action is NULL ***", 
                     realIndex );
        }
        else
        {
            screen = m_UndoActions[ realIndex ]->GetScreen();
            page   = m_UndoActions[ realIndex ]->GetPage();

            PascalCString screenName( "NULL" );
            PascalCString pageName( "NULL" );

            if( screen != NULL )
            {
                screenName = screen->GetName();
            }

            if( page != NULL )
            {
                pageName = page->GetName();
            }

            char* screenNamePtr = screenName;
            char* pageNamePtr   = pageName;

            char* bufferPtr = buffer;

            bufferPtr += sprintf( bufferPtr,
                                  "%d \t ", 
                                  i );

            bufferPtr += sprintf( bufferPtr,
                                  "%s \t ", 
                                  m_UndoActions[ realIndex ]->GetType() );

            bufferPtr += sprintf( bufferPtr,
                                  "%s \t ", 
                                  pageNamePtr );

            bufferPtr += sprintf( bufferPtr,
                                  "%s", 
                                  screenNamePtr );
        }

        FeData::g_OutputMessage.Add( buffer, 
                                     FeData::DebugOutputMessage );
    }


    FeData::g_OutputMessage.Add( "------------------------> Redo List <------------------------",
                                 FeData::DebugOutputMessage );
    for( i = m_RedoNumber - 1; i >= 0; i-- )
    {
        if( m_RedoActions[ i ] == NULL )
        {
            sprintf( buffer,
                     "%d *** Redo Action is NULL ***", 
                     i );
        }
        else
        {
            screen = m_RedoActions[ i ]->GetScreen();
            page   = m_RedoActions[ i ]->GetPage();

            PascalCString screenName( "NULL" );
            PascalCString pageName( "NULL" );

            if( screen != NULL )
            {
                screenName = screen->GetName();
            }

            if( page != NULL )
            {
                pageName = page->GetName();
            }

            char* screenNamePtr = screenName;
            char* pageNamePtr   = pageName;

            char* bufferPtr = buffer;

            bufferPtr += sprintf( bufferPtr,
                                  "%d \t ", 
                                  i );

            bufferPtr += sprintf( bufferPtr,
                                  "%s \t ", 
                                  m_RedoActions[ i ]->GetType() );

            bufferPtr += sprintf( bufferPtr,
                                  "%s \t ", 
                                  pageNamePtr );

            bufferPtr += sprintf( bufferPtr,
                                  "%s", 
                                  screenNamePtr );
        }

        FeData::g_OutputMessage.Add( buffer, 
                                     FeData::DebugOutputMessage );
    }
}