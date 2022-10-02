//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        WatchPoint.cpp
//
// Subsystem:   Radical Foundation Technologies Watch Server
//
// Description:	This file contains the implementation of the watch server 
//				watch point objects.
//
// Revisions:	Jan 22 2000
//
// Note:        There is tons of duplicated code between the watch point
//              objects and a real mess. Sorry.  
//
//              Also no support for saving vectors and enumerations to file.
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "stdafx.h"
#include "WatchPoint.h"
#include "MainFrm.h"
#include "WatchView.h"
#include "EditBar.h"
#include "..\\..\\src\\radprotocols\\DebugWatchProtocol.hpp"

//=============================================================================
// Definitions 
//=============================================================================

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//=============================================================================
// Statics
//=============================================================================

//
// Maintains a linked list of all watch points
//
CWatchPoint* CWatchPoint::m_Head = NULL;

//=============================================================================
// Base Class CWatchPoint
//=============================================================================

CWatchPoint::CWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, WPDataType dataType )
    :
        m_pView( pView ),
        m_Key( key ),
        m_Callback( callback ),
        m_UserData( userData ),
        m_DataType( dataType ),
        m_ValueIsValid( false ),
        m_PresetIsValid( false )
{
    //
    // Save the name in local.
    //
    strcpy( m_Name, pName );

    //
    // Add ourself to the linked list of watch points. Order not relavent.
    //
    m_Next = m_Head;
    m_Head = this;
   
    //
    // Add ourself to the current view. Add this as the data.
    //
    m_TreeItem = m_pView->InsertItem( m_Name, pView->GetCurrentItem( ) );

    m_pView->SetItemData( m_TreeItem, (DWORD) this );

}

CWatchPoint::~CWatchPoint( )
{
    //
    // Find ourself in the linked list and remove ourself.
    //
    CWatchPoint** pPrevious = &m_Head;

    while( *pPrevious != this )
    {
        pPrevious = &((*pPrevious)->m_Next);
    }

    *pPrevious = m_Next;

    //
    // Remove name spaces from the tree in no watchpoints exist in
    // the tree.
    //
    HTREEITEM parent = m_pView->GetParentItem( m_TreeItem );

    //
    // Remove our item from the tree view.
    //
    m_pView->DeleteItem( m_TreeItem );

    m_pView->UpdateNameSpace( parent );
}

void CWatchPoint::DeleteAll( void )
{
    //
    // While the list is non null, remove the head item.
    //
    while( m_Head != NULL )
    {
        CWatchPoint* pWp = m_Head;
        delete pWp;
    }
}


void CWatchPoint::SaveAll( class CEditBar* pBar )
{
    //
    // Traverse the list, invoking save on each watchpoint
    //
    CWatchPoint* pWp = m_Head;

    while( pWp != NULL )
    {
        pWp->Save( pBar );
        pWp = pWp->m_Next;
    }
}




CWatchPoint* CWatchPoint::Find( void* key )
{
    //
    // Traverse list looking for the key.
    //
    CWatchPoint* pWp = m_Head;

    while( pWp != NULL )
    {
        if( pWp->m_Key == key )
        {
            break;
        }
        pWp = pWp->m_Next;
    }

    return( pWp );
}       

unsigned int CWatchPoint::RequestValues( CMainFrame* pFrame )
{
    //
    // Traverse list, asking each point to build a value request packet.
    // This may be refined in future to only those visible will be requested. Also
    // do not request value for a function type.
    //
    unsigned int Count = 0;

    CWatchPoint* pWp = m_Head;

    while( pWp != NULL )
    {
        if( pWp->m_DataType != WPDFunction )
        {
            if ( pWp->RequestValue( pFrame ) )
            {
                Count++;
            }
        }
        pWp = pWp->m_Next;
    }
    return( Count );
    
}       

bool CWatchPoint::RequestValue( CMainFrame* pFrame )
{
    ASSERT( m_TreeItem );

    //
    // Do Request value if only if item is visible to the user.
    //
    RECT rectView;
    RECT rectIntersect;
    RECT rectTreeItem;

    m_pView->GetClientRect( & rectView );

    if ( m_pView->GetItemRect( m_TreeItem, & rectTreeItem, false ) && IntersectRect( & rectIntersect, & rectTreeItem, & rectView ) )
    {
        //
        // Get memory for the request. If exists build packet 
        // and initiate transfer.
        // 
        WCRequestValue* p = (WCRequestValue*) pFrame->GetTxBuffer( sizeof( WCRequestValue ) );
    
        AfxTrace( "Requesting( %s )\n", m_Name );
        if( p != NULL )
        {        
            p->m_Command = WPCRequestValue;
            p->m_DataType = m_DataType;
            p->m_Address = m_Key;
    
            pFrame->InitiateTransmission( );
        }
        return true;
    }
    return false;
}

//=============================================================================
// CUIntWatchPoint
//=============================================================================

CUIntWatchPoint::CUIntWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, unsigned int max, unsigned int min, bool readOnly )
    :
        m_Max( max ),
        m_Min( min ),
        m_ReadOnly( readOnly ),
        CWatchPoint( pView, pName, key, callback, userData, WPDUnsignedInt )
{

}

void CUIntWatchPoint::SetValue( WCValue* pValue, class CEditBar* pBar )
{
    //
    // Make sure data packet type correct.
    //
    ASSERT( pValue->m_DataType == m_DataType  );
    
    //
    // Save value and update item text.
    //
    if( m_ValueIsValid && (m_Value == pValue->m_Attrib.m_ui.m_Value) )
    {
        //
        // Don't update if nothing changed.
        //
        return;
    } 

    m_Value = pValue->m_Attrib.m_ui.m_Value;

    char Outbuf[ 200 ];
    wsprintf( Outbuf, "%s - [ %u ]", m_Name, m_Value );

    m_pView->SetItemText( m_TreeItem, Outbuf );

    //
    // Check if active edit bar is us. Update the value if so.
    //
    if( m_pView->GetActiveWatchPoint( ) == this )
    {
        if( !m_ValueIsValid )
        {
            m_ValueIsValid = true;

            UpdateEditBar( pBar );
        }
        wsprintf( Outbuf, "%u", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );
    }        

     m_ValueIsValid = true;

}

void CUIntWatchPoint::UpdateEditBar( class CEditBar* pBar )
{
    //
    // Set the current editbar dialog type.
    //
    pBar->SetDataType( CEditBar::UnsignedInteger );

    //
    // Populate the dialg
    //
	pBar->SetName( m_Name );

    //
    // If value is valid, populate the preset and the current
    // value.
    //
    if( m_ValueIsValid )
    {
        //
        // Check if there is an initial value. If so set it.
        //
        char initialValue[ 200 ];
        if( m_pView->GetInitialValue( m_Name, m_TreeItem, initialValue ) )
        {
            pBar->m_InitialValue.SetWindowText( initialValue );
            pBar->m_SaveButton.EnableWindow( true );
            if( !m_PresetIsValid )
            {
                m_Preset = atoi( initialValue );
                m_PresetIsValid = true;
            }                      
        }
        else
        {
            pBar->m_SaveButton.EnableWindow( false );
        }
           
        if( !m_PresetIsValid )
        {
            m_Preset = m_Value;
            m_PresetIsValid = true;
        }                      

        unsigned int x = m_Preset;

        pBar->m_Slider.SetRange( m_Min, m_Max, TRUE );
        pBar->m_Slider.SetPos( x );
        m_Preset = x;

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%u", m_Preset );
        pBar->m_PresetValue.SetWindowText( Outbuf );
        wsprintf( Outbuf, "%u", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );

        //
        // Update the slider.
        //
        pBar->m_Slider.EnableWindow( true );
        pBar->m_UpdateButton.EnableWindow( true );
        pBar->m_PresetValue.EnableWindow( true );

    }
    else
    {
        pBar->m_Slider.EnableWindow( false );
        pBar->m_UpdateButton.EnableWindow( false );
        pBar->m_SaveButton.EnableWindow( false );
        pBar->m_PresetValue.EnableWindow( false );
    }
    pBar->SetReadOnly( m_ReadOnly );
}

void CUIntWatchPoint::Save( class CEditBar* pBar )
{
    if( m_PresetIsValid )
    {
        //
        // Make the preset the initial value and write the data to file. Only update 
        // initial value if we are the active watch point
        //
        char Outbuf[ 50 ];
        wsprintf( Outbuf, "%u", m_Preset );
        if( m_pView->SetInitialValue( m_Name, m_TreeItem, Outbuf ) )
        {
            if( m_pView->GetActiveWatchPoint( ) == this )
            {
                pBar->m_InitialValue.SetWindowText( Outbuf );
            }
        }
    }
}

void CUIntWatchPoint::UpdatePreset( class CEditBar* pBar )
{
    if( m_ValueIsValid )
    {

        m_Preset = pBar->m_Slider.GetPos( );

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%u", m_Preset );

        pBar->m_PresetValue.SetWindowText( Outbuf );
    }
}

void CUIntWatchPoint::PresetValidate( class CEditBar* pBar )
{
    //
    // Get the text. If not valid reset it to our current setting.
    // Otherwise update slider.
    //

    char    buffer[ 100 ];
    pBar->m_PresetValue.GetWindowText( buffer, sizeof(buffer ) );
   
    if( strlen( buffer ) == 0 ) 
    {
        pBar->m_Slider.SetPos( m_Preset);
        UpdatePreset( pBar );
        return;
    }

    unsigned int value = atoi( buffer );
    if( (value >= m_Min) && (value <= m_Max) )
    { 
        m_Preset = value;
        pBar->m_Slider.SetPos( value);

    }
    else
    {
        pBar->m_Slider.SetPos( m_Preset);
        UpdatePreset( pBar );
    }
  
}

void CUIntWatchPoint::WriteValue( CMainFrame* pFrame )
{
    WCWriteValue* p = (WCWriteValue*) pFrame->GetTxBuffer( sizeof( WCWriteValue ) );
    
    if( p != NULL )
    {        
        p->m_Command = WPCWriteValue;
        p->m_DataType = m_DataType;
        p->m_Address = m_Key;
        p->m_Callback = m_Callback;
        p->m_UserData = m_UserData;
        p->m_Attrib.m_ui.m_Value = m_Preset;    
        pFrame->InitiateTransmission( );
    }
}

bool CUIntWatchPoint::IsReadOnly( )
{
    return m_ReadOnly;
}

//=============================================================================
// CIntWatchPoint
//=============================================================================

CIntWatchPoint::CIntWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, int max, int min, bool readOnly )
    :
        m_Max( max ),
        m_Min( min ),
        m_ReadOnly( readOnly ),
        CWatchPoint( pView, pName, key, callback, userData, WPDInt )
{

}

void CIntWatchPoint::SetValue( WCValue* pValue, class CEditBar* pBar )
{
    //
    // Make sure data packet type correct.
    //
    ASSERT( pValue->m_DataType == m_DataType  );

    if( m_ValueIsValid && (m_Value == pValue->m_Attrib.m_i.m_Value) )
    {
        //
        // Don't update if nothing changed.
        //
        return;
    } 
   
    //
    // Save value and update item text.
    //
    m_Value = pValue->m_Attrib.m_i.m_Value;

    char Outbuf[ 200 ];
    wsprintf( Outbuf, "%s - [ %d ]", m_Name, m_Value );

    m_pView->SetItemText( m_TreeItem, Outbuf );

    //
    // Check if active edit bar is us. Update the value if so.
    //
    if( m_pView->GetActiveWatchPoint( ) == this )
    {
        if( !m_ValueIsValid )
        {
            m_ValueIsValid = true;

            UpdateEditBar( pBar );
        }
        wsprintf( Outbuf, "%d", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );
    }        

     m_ValueIsValid = true;

}

void CIntWatchPoint::UpdateEditBar( class CEditBar* pBar )
{
    //
    // Set the current editbar dialog type.
    //
    pBar->SetDataType( CEditBar::UnsignedInteger );

    //
    // Populate the dialg
    //
	pBar->SetName( m_Name );

    //
    // If value is valid, populate the preset and the current
    // value.
    //
    if( m_ValueIsValid )
    {
        //
        // Check if there is an initial value. If so set it.
        //
        char initialValue[ 200 ];
        if( m_pView->GetInitialValue( m_Name, m_TreeItem, initialValue ) )
        {
            pBar->m_InitialValue.SetWindowText( initialValue );
            pBar->m_SaveButton.EnableWindow( true );
            if( !m_PresetIsValid )
            {
                m_Preset = atoi( initialValue );
                m_PresetIsValid = true;
            }                      
        }
        else
        {
            pBar->m_SaveButton.EnableWindow( false );
        }
           
        if( !m_PresetIsValid )
        {
            m_Preset = m_Value;
            m_PresetIsValid = true;
        }                      

        int x = m_Preset;

        pBar->m_Slider.SetRange( m_Min, m_Max, TRUE );
        pBar->m_Slider.SetPos( x );
        m_Preset = x;

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%d", m_Preset );
        pBar->m_PresetValue.SetWindowText( Outbuf );
        wsprintf( Outbuf, "%d", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );

        //
        // Update the slider.
        //
        pBar->m_Slider.EnableWindow( true );
        pBar->m_UpdateButton.EnableWindow( true );
        pBar->m_PresetValue.EnableWindow( true );

    }
    else
    {
        pBar->m_Slider.EnableWindow( false );
        pBar->m_UpdateButton.EnableWindow( false );
        pBar->m_SaveButton.EnableWindow( false );
        pBar->m_PresetValue.EnableWindow( false );
    }
    pBar->SetReadOnly( m_ReadOnly );
}

void CIntWatchPoint::UpdatePreset( class CEditBar* pBar )
{
    if( m_ValueIsValid )
    {

        m_Preset = pBar->m_Slider.GetPos( );

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%d", m_Preset );

        pBar->m_PresetValue.SetWindowText( Outbuf );
    }
}

void CIntWatchPoint::PresetValidate( class CEditBar* pBar )
{
    //
    // Get the text. If not valid reset it to our current setting.
    // Otherwise update slider.
    //

    char    buffer[ 100 ];
    pBar->m_PresetValue.GetWindowText( buffer, sizeof(buffer ) );
   
    if( strlen( buffer ) == 0 ) 
    {
        pBar->m_Slider.SetPos( m_Preset);
        UpdatePreset( pBar );
        return;
    }

    int value = atoi( buffer );
    if( (value >= m_Min) && (value <= m_Max) )
    { 
        m_Preset = value;
        pBar->m_Slider.SetPos( value);

    }
    else
    {
        pBar->m_Slider.SetPos( m_Preset);
        UpdatePreset( pBar );
    }
  
}

void CIntWatchPoint::WriteValue( CMainFrame* pFrame )
{
    WCWriteValue* p = (WCWriteValue*) pFrame->GetTxBuffer( sizeof( WCWriteValue ) );
    
    if( p != NULL )
    {        
        p->m_Command = WPCWriteValue;
        p->m_DataType = m_DataType;
        p->m_Address = m_Key;
        p->m_Callback = m_Callback;
        p->m_UserData = m_UserData;
        p->m_Attrib.m_i.m_Value = m_Preset;    
        pFrame->InitiateTransmission( );
    }
}

void CIntWatchPoint::Save( class CEditBar* pBar )
{
    if( m_PresetIsValid )
    {
        //
        // Make the preset the initial value and write the data to file. Only update 
        // initial value if we are the active watch point
        //
        char Outbuf[ 50 ];
        wsprintf( Outbuf, "%d", m_Preset );
        if( m_pView->SetInitialValue( m_Name, m_TreeItem, Outbuf ) )
        {
            if( m_pView->GetActiveWatchPoint( ) == this )
            {
                pBar->m_InitialValue.SetWindowText( Outbuf );
            }
        }
    }
}

bool CIntWatchPoint::IsReadOnly( )
{
    return m_ReadOnly;
}

//=============================================================================
// CUShortWatchPoint
//=============================================================================

CUShortWatchPoint::CUShortWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, unsigned short max, unsigned short min, bool readOnly )
    :
        m_Max( max ),
        m_Min( min ),
        m_ReadOnly( readOnly ),
        CWatchPoint( pView, pName, key, callback, userData, WPDUnsignedShort )
{

}

void CUShortWatchPoint::SetValue( WCValue* pValue, class CEditBar* pBar )
{
    //
    // Make sure data packet type correct.
    //
    ASSERT( pValue->m_DataType == m_DataType  );

    if( m_ValueIsValid && (m_Value == pValue->m_Attrib.m_us.m_Value) )
    {
        //
        // Don't update if nothing changed.
        //
        return;
    } 

    
    //
    // Save value and update item text.
    //
    m_Value = pValue->m_Attrib.m_us.m_Value;

    char Outbuf[ 200 ];
    wsprintf( Outbuf, "%s - [ %hu ]", m_Name, m_Value );

    m_pView->SetItemText( m_TreeItem, Outbuf );

    //
    // Check if active edit bar is us. Update the value if so.
    //
    if( m_pView->GetActiveWatchPoint( ) == this )
    {
        if( !m_ValueIsValid )
        {
            m_ValueIsValid = true;

            UpdateEditBar( pBar );
        }
        wsprintf( Outbuf, "%hu", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );
    }        

     m_ValueIsValid = true;

}

void CUShortWatchPoint::UpdateEditBar( class CEditBar* pBar )
{
    //
    // Set the current editbar dialog type.
    //
    pBar->SetDataType( CEditBar::UnsignedShort );

    //
    // Populate the dialg
    //
	pBar->SetName( m_Name );

    //
    // If value is valid, populate the preset and the current
    // value.
    //
    if( m_ValueIsValid )
    {

       //
        // Check if there is an initial value. If so set it.
        //
        char initialValue[ 200 ];
        if( m_pView->GetInitialValue( m_Name, m_TreeItem, initialValue ) )
        {
            pBar->m_InitialValue.SetWindowText( initialValue );
            pBar->m_SaveButton.EnableWindow( true );
            if( !m_PresetIsValid )
            {
                m_Preset = atoi( initialValue );
                m_PresetIsValid = true;
            }                      
        }
        else
        {
            pBar->m_SaveButton.EnableWindow( false );
        }
           
        if( !m_PresetIsValid )
        {
            m_Preset = m_Value;
            m_PresetIsValid = true;
        }                      

        unsigned short x = m_Preset;

        ASSERT( m_Max >= m_Min );
        pBar->m_Slider.SetRange( m_Min, m_Max, TRUE );
        pBar->m_Slider.SetPos( x );
        m_Preset = x;

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%hu", m_Preset );
        pBar->m_PresetValue.SetWindowText( Outbuf );
        wsprintf( Outbuf, "%hu", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );

        //
        // Update the slider.
        //
        pBar->m_Slider.EnableWindow( true );
        pBar->m_UpdateButton.EnableWindow( true );
        pBar->m_PresetValue.EnableWindow( true );

    }
    else
    {
        pBar->m_Slider.EnableWindow( false );
        pBar->m_UpdateButton.EnableWindow( false );
        pBar->m_SaveButton.EnableWindow( false );
        pBar->m_PresetValue.EnableWindow( false );
    }
    pBar->SetReadOnly( m_ReadOnly );
}

void CUShortWatchPoint::UpdatePreset( class CEditBar* pBar )
{
    if( m_ValueIsValid )
    {

        m_Preset = pBar->m_Slider.GetPos( );

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%hu", m_Preset );

        pBar->m_PresetValue.SetWindowText( Outbuf );
    }
}

void CUShortWatchPoint::PresetValidate( class CEditBar* pBar )
{
    //
    // Get the text. If not valid reset it to our current setting.
    // Otherwise update slider.
    //

    char    buffer[ 100 ];
    pBar->m_PresetValue.GetWindowText( buffer, sizeof(buffer ) );
   
    if( strlen( buffer ) == 0 ) 
    {
        pBar->m_Slider.SetPos( m_Preset);
        UpdatePreset( pBar );
        return;
    }

    unsigned short value = atoi( buffer );
    if( (value >= m_Min) && (value <= m_Max) )
    { 
        m_Preset = value;
        pBar->m_Slider.SetPos( value);

    }
    else
    {
        pBar->m_Slider.SetPos( m_Preset);
        UpdatePreset( pBar );
    }
  
}

void CUShortWatchPoint::WriteValue( CMainFrame* pFrame )
{
    WCWriteValue* p = (WCWriteValue*) pFrame->GetTxBuffer( sizeof( WCWriteValue ) );
    
    if( p != NULL )
    {        
        p->m_Command = WPCWriteValue;
        p->m_DataType = m_DataType;
        p->m_Address = m_Key;
        p->m_Callback = m_Callback;
        p->m_UserData = m_UserData;
        p->m_Attrib.m_us.m_Value = m_Preset;    
        pFrame->InitiateTransmission( );
    }
}

void CUShortWatchPoint::Save( class CEditBar* pBar )
{
    if( m_PresetIsValid )
    {
        //
        // Make the preset the initial value and write the data to file. Only update 
        // initial value if we are the active watch point
        //
        char Outbuf[ 50 ];
        wsprintf( Outbuf, "%hu", m_Preset );
        if( m_pView->SetInitialValue( m_Name, m_TreeItem, Outbuf ) )
        {
            if( m_pView->GetActiveWatchPoint( ) == this )
            {
                pBar->m_InitialValue.SetWindowText( Outbuf );
            }
        }
    }
}

bool CUShortWatchPoint::IsReadOnly( )
{
    return m_ReadOnly;
}

//=============================================================================
// CShortWatchPoint
//=============================================================================

CShortWatchPoint::CShortWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, short max, short min, bool readOnly )
    :
        m_Max( max ),
        m_Min( min ),
        m_ReadOnly( readOnly ),
        CWatchPoint( pView, pName, key, callback, userData, WPDShort )
{

}

void CShortWatchPoint::SetValue( WCValue* pValue, class CEditBar* pBar )
{
    //
    // Make sure data packet type correct.
    //
    ASSERT( pValue->m_DataType == m_DataType  );

    if( m_ValueIsValid && (m_Value == pValue->m_Attrib.m_s.m_Value) )
    {
        //
        // Don't update if nothing changed.
        //
        return;
    } 

    
    //
    // Save value and update item text.
    //
    m_Value = pValue->m_Attrib.m_s.m_Value;

    char Outbuf[ 200 ];
    wsprintf( Outbuf, "%s - [ %d ]", m_Name, m_Value );

    m_pView->SetItemText( m_TreeItem, Outbuf );

    //
    // Check if active edit bar is us. Update the value if so.
    //
    if( m_pView->GetActiveWatchPoint( ) == this )
    {
        if( !m_ValueIsValid )
        {
            m_ValueIsValid = true;

            UpdateEditBar( pBar );
        }
        wsprintf( Outbuf, "%d", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );
    }        

     m_ValueIsValid = true;

}

void CShortWatchPoint::UpdateEditBar( class CEditBar* pBar )
{
    //
    // Set the current editbar dialog type.
    //
    pBar->SetDataType( CEditBar::Short );

    //
    // Populate the dialg
    //
	pBar->SetName( m_Name );

    //
    // If value is valid, populate the preset and the current
    // value.
    //
    if( m_ValueIsValid )
    {
      //
        // Check if there is an initial value. If so set it.
        //
        char initialValue[ 200 ];
        if( m_pView->GetInitialValue( m_Name, m_TreeItem, initialValue ) )
        {
            pBar->m_InitialValue.SetWindowText( initialValue );
            pBar->m_SaveButton.EnableWindow( true );
            if( !m_PresetIsValid )
            {
                m_Preset = atoi( initialValue );
                m_PresetIsValid = true;
            }                      
        }
        else
        {
            pBar->m_SaveButton.EnableWindow( false );
        }
           
        if( !m_PresetIsValid )
        {
            m_Preset = m_Value;
            m_PresetIsValid = true;
        }                      

        short x = m_Preset;

        pBar->m_Slider.SetRange( m_Min, m_Max, TRUE );
        pBar->m_Slider.SetPos( x );
        m_Preset = x;

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%d", m_Preset );
        pBar->m_PresetValue.SetWindowText( Outbuf );
        wsprintf( Outbuf, "%d", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );

        //
        // Update the slider.
        //
        pBar->m_Slider.EnableWindow( true );
        pBar->m_UpdateButton.EnableWindow( true );
        pBar->m_PresetValue.EnableWindow( true );
    }
    else
    {
        pBar->m_Slider.EnableWindow( false );
        pBar->m_UpdateButton.EnableWindow( false );
        pBar->m_SaveButton.EnableWindow( false );
        pBar->m_PresetValue.EnableWindow( false );
    }
    pBar->SetReadOnly( m_ReadOnly );
}

void CShortWatchPoint::UpdatePreset( class CEditBar* pBar )
{
    if( m_ValueIsValid )
    {

        m_Preset = pBar->m_Slider.GetPos( );
    
        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%d", m_Preset );

        pBar->m_PresetValue.SetWindowText( Outbuf );
    }
}

void CShortWatchPoint::PresetValidate( class CEditBar* pBar )
{
    //
    // Get the text. If not valid reset it to our current setting.
    // Otherwise update slider.
    //

    char    buffer[ 100 ];
    pBar->m_PresetValue.GetWindowText( buffer, sizeof(buffer ) );
   
    if( strlen( buffer ) == 0 ) 
    {
        pBar->m_Slider.SetPos( m_Preset);
        UpdatePreset( pBar );
        return;
    }

    short value = atoi( buffer );
    if( (value >= m_Min) && (value <= m_Max) )
    { 
        m_Preset = value;
        pBar->m_Slider.SetPos( value);

    }
    else
    {
        pBar->m_Slider.SetPos( m_Preset);
        UpdatePreset( pBar );
    }
  
}

void CShortWatchPoint::WriteValue( CMainFrame* pFrame )
{
    WCWriteValue* p = (WCWriteValue*) pFrame->GetTxBuffer( sizeof( WCWriteValue ) );
    
    if( p != NULL )
    {        
        p->m_Command = WPCWriteValue;
        p->m_DataType = m_DataType;
        p->m_Address = m_Key;
        p->m_Callback = m_Callback;
        p->m_UserData = m_UserData;
        p->m_Attrib.m_s.m_Value = m_Preset;    
        pFrame->InitiateTransmission( );
    }
}

void CShortWatchPoint::Save( class CEditBar* pBar )
{
    if( m_PresetIsValid )
    {
        //
        // Make the preset the initial value and write the data to file. Only update 
        // initial value if we are the active watch point
        //
        char Outbuf[ 50 ];
        wsprintf( Outbuf, "%d", m_Preset );
        if( m_pView->SetInitialValue( m_Name, m_TreeItem, Outbuf ) )
        {
            if( m_pView->GetActiveWatchPoint( ) == this )
            {
                pBar->m_InitialValue.SetWindowText( Outbuf );
            }
        }
    }
}

bool CShortWatchPoint::IsReadOnly( )
{
    return m_ReadOnly;
}

//=============================================================================
// CUCharWatchPoint
//=============================================================================

CUCharWatchPoint::CUCharWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, unsigned char max, unsigned char min, bool readOnly )
    :
        m_Max( max ),
        m_Min( min ),
        m_ReadOnly( readOnly ),
        CWatchPoint( pView, pName, key, callback, userData, WPDUnsignedChar )
{

}

void CUCharWatchPoint::SetValue( WCValue* pValue, class CEditBar* pBar )
{
    //
    // Make sure data packet type correct.
    //
    ASSERT( pValue->m_DataType == m_DataType  );

    if( m_ValueIsValid && (m_Value == pValue->m_Attrib.m_uc.m_Value) )
    {
        //
        // Don't update if nothing changed.
        //
        return;
    } 
    
    //
    // Save value and update item text.
    //
    m_Value = pValue->m_Attrib.m_uc.m_Value;

    char Outbuf[ 200 ];
    wsprintf( Outbuf, "%s - [ %hu ]", m_Name, m_Value );

    m_pView->SetItemText( m_TreeItem, Outbuf );

    //
    // Check if active edit bar is us. Update the value if so.
    //
    if( m_pView->GetActiveWatchPoint( ) == this )
    {
        if( !m_ValueIsValid )
        {
            m_ValueIsValid = true;

            UpdateEditBar( pBar );
        }
        wsprintf( Outbuf, "%hu", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );
    }        

     m_ValueIsValid = true;

}

void CUCharWatchPoint::UpdateEditBar( class CEditBar* pBar )
{
    //
    // Set the current editbar dialog type.
    //
    pBar->SetDataType( CEditBar::UnsignedChar );

    //
    // Populate the dialg
    //
	pBar->SetName( m_Name );

    //
    // If value is valid, populate the preset and the current
    // value.
    //
    if( m_ValueIsValid )
    {

      //
        // Check if there is an initial value. If so set it.
        //
        char initialValue[ 200 ];
        if( m_pView->GetInitialValue( m_Name, m_TreeItem, initialValue ) )
        {
            pBar->m_InitialValue.SetWindowText( initialValue );
            pBar->m_SaveButton.EnableWindow( true );
            if( !m_PresetIsValid )
            {
                m_Preset = atoi( initialValue );
                m_PresetIsValid = true;
            }                      
        }
        else
        {
            pBar->m_SaveButton.EnableWindow( false );
        }
           
        if( !m_PresetIsValid )
        {
            m_Preset = m_Value;
            m_PresetIsValid = true;
        }                      

        unsigned char x = m_Preset;

        pBar->m_Slider.SetRange( m_Min, m_Max, TRUE );
        pBar->m_Slider.SetPos( x );
        m_Preset = x;

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%hu", m_Preset );
        pBar->m_PresetValue.SetWindowText( Outbuf );
        wsprintf( Outbuf, "%hu", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );

        //
        // Update the slider.
        //
        pBar->m_Slider.EnableWindow( true );
        pBar->m_UpdateButton.EnableWindow( true );
        pBar->m_PresetValue.EnableWindow( true );

    }
    else
    {
        pBar->m_Slider.EnableWindow( false );
        pBar->m_UpdateButton.EnableWindow( false );
        pBar->m_SaveButton.EnableWindow( false );
        pBar->m_PresetValue.EnableWindow( false );
    }
    pBar->SetReadOnly( m_ReadOnly );
}

void CUCharWatchPoint::UpdatePreset( class CEditBar* pBar )
{
    if( m_ValueIsValid )
    {

        m_Preset = pBar->m_Slider.GetPos( );

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%hu", m_Preset );

        pBar->m_PresetValue.SetWindowText( Outbuf );
    }
}

void CUCharWatchPoint::PresetValidate( class CEditBar* pBar )
{
    //
    // Get the text. If not valid reset it to our current setting.
    // Otherwise update slider.
    //

    char    buffer[ 100 ];
    pBar->m_PresetValue.GetWindowText( buffer, sizeof(buffer ) );
   
    if( strlen( buffer ) == 0 ) 
    {
        pBar->m_Slider.SetPos( m_Preset);
        UpdatePreset( pBar );
        return;
    }

    unsigned char value = atoi( buffer );
    if( (value >= m_Min) && (value <= m_Max) )
    { 
        m_Preset = value;
        pBar->m_Slider.SetPos( value);

    }
    else
    {
        pBar->m_Slider.SetPos( m_Preset);
        UpdatePreset( pBar );
    }
  
}

void CUCharWatchPoint::WriteValue( CMainFrame* pFrame )
{
    WCWriteValue* p = (WCWriteValue*) pFrame->GetTxBuffer( sizeof( WCWriteValue ) );
    
    if( p != NULL )
    {        
        p->m_Command = WPCWriteValue;
        p->m_DataType = m_DataType;
        p->m_Address = m_Key;
        p->m_Callback = m_Callback;
        p->m_UserData = m_UserData;
        p->m_Attrib.m_uc.m_Value = m_Preset;    
        pFrame->InitiateTransmission( );
    }
}

void CUCharWatchPoint::Save( class CEditBar* pBar )
{
    if( m_PresetIsValid )
    {
        //
        // Make the preset the initial value and write the data to file. Only update 
        // initial value if we are the active watch point
        //
        char Outbuf[ 50 ];
        wsprintf( Outbuf, "%hu", m_Preset );
        if( m_pView->SetInitialValue( m_Name, m_TreeItem, Outbuf ) )
        {
            if( m_pView->GetActiveWatchPoint( ) == this )
            {
                pBar->m_InitialValue.SetWindowText( Outbuf );
            }
        }
    }
}

bool CUCharWatchPoint::IsReadOnly( )
{
    return m_ReadOnly;
}

//=============================================================================
// CCharWatchPoint
//=============================================================================

CCharWatchPoint::CCharWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, char max, char min, bool readOnly )
    :
        m_Max( max ),
        m_Min( min ),
        m_ReadOnly( readOnly ),
        CWatchPoint( pView, pName, key, callback, userData, WPDUnsignedChar )
{

}

void CCharWatchPoint::SetValue( WCValue* pValue, class CEditBar* pBar )
{
    //
    // Make sure data packet type correct.
    //
    ASSERT( pValue->m_DataType == m_DataType  );
   
    if( m_ValueIsValid && (m_Value == pValue->m_Attrib.m_c.m_Value) )
    {
        //
        // Don't update if nothing changed.
        //
        return;
    } 

 
    //
    // Save value and update item text.
    //
    m_Value = pValue->m_Attrib.m_c.m_Value;

    char Outbuf[ 200 ];
    wsprintf( Outbuf, "%s - [ %d ]", m_Name, m_Value );

    m_pView->SetItemText( m_TreeItem, Outbuf );

    //
    // Check if active edit bar is us. Update the value if so.
    //
    if( m_pView->GetActiveWatchPoint( ) == this )
    {
        if( !m_ValueIsValid )
        {
            m_ValueIsValid = true;

            UpdateEditBar( pBar );
        }
        wsprintf( Outbuf, "%d", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );
    }        

     m_ValueIsValid = true;

}

void CCharWatchPoint::UpdateEditBar( class CEditBar* pBar )
{
    //
    // Set the current editbar dialog type.
    //
    pBar->SetDataType( CEditBar::Char );

    //
    // Populate the dialg
    //
	pBar->SetName( m_Name );

    //
    // If value is valid, populate the preset and the current
    // value.
    //
    if( m_ValueIsValid )
    {
      //
        // Check if there is an initial value. If so set it.
        //
        char initialValue[ 200 ];
        if( m_pView->GetInitialValue( m_Name, m_TreeItem, initialValue ) )
        {
            pBar->m_InitialValue.SetWindowText( initialValue );
            pBar->m_SaveButton.EnableWindow( true );
            if( !m_PresetIsValid )
            {
                m_Preset = atoi( initialValue );
                m_PresetIsValid = true;
            }                      
        }
        else
        {
            pBar->m_SaveButton.EnableWindow( false );
        }
           
        if( !m_PresetIsValid )
        {
            m_Preset = m_Value;
            m_PresetIsValid = true;
        }                      

        char x = m_Preset;

        pBar->m_Slider.SetRange( m_Min, m_Max, TRUE );
        pBar->m_Slider.SetPos( x );
        m_Preset = x;

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%d", m_Preset );
        pBar->m_PresetValue.SetWindowText( Outbuf );
        wsprintf( Outbuf, "%d", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );

        //
        // Update the slider.
        //
        pBar->m_Slider.EnableWindow( true );
        pBar->m_UpdateButton.EnableWindow( true );
        pBar->m_PresetValue.EnableWindow( true );

    }
    else
    {
        pBar->m_Slider.EnableWindow( false );
        pBar->m_UpdateButton.EnableWindow( false );
        pBar->m_SaveButton.EnableWindow( false );
        pBar->m_PresetValue.EnableWindow( false );
    }
    pBar->SetReadOnly( m_ReadOnly );
}

void CCharWatchPoint::UpdatePreset( class CEditBar* pBar )
{
    if( m_ValueIsValid )
    {

        m_Preset = pBar->m_Slider.GetPos( );

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%d", m_Preset );

        pBar->m_PresetValue.SetWindowText( Outbuf );
    }
}

void CCharWatchPoint::PresetValidate( class CEditBar* pBar )
{
    //
    // Get the text. If not valid reset it to our current setting.
    // Otherwise update slider.
    //

    char    buffer[ 100 ];
    pBar->m_PresetValue.GetWindowText( buffer, sizeof(buffer ) );
   
    if( strlen( buffer ) == 0 ) 
    {
        pBar->m_Slider.SetPos( m_Preset);
        UpdatePreset( pBar );
        return;
    }

    char value = atoi( buffer );
    if( (value >= m_Min) && (value <= m_Max) )
    { 
        m_Preset = value;
        pBar->m_Slider.SetPos( value);

    }
    else
    {
        pBar->m_Slider.SetPos( m_Preset);
        UpdatePreset( pBar );
    }
  
}

void CCharWatchPoint::WriteValue( CMainFrame* pFrame )
{
    WCWriteValue* p = (WCWriteValue*) pFrame->GetTxBuffer( sizeof( WCWriteValue ) );
    
    if( p != NULL )
    {        
        p->m_Command = WPCWriteValue;
        p->m_DataType = m_DataType;
        p->m_Address = m_Key;
        p->m_Callback = m_Callback;
        p->m_UserData = m_UserData;
        p->m_Attrib.m_c.m_Value = m_Preset;    
        pFrame->InitiateTransmission( );
    }
}

void CCharWatchPoint::Save( class CEditBar* pBar )
{
    if( m_PresetIsValid )
    {
        //
        // Make the preset the initial value and write the data to file. Only update 
        // initial value if we are the active watch point
        //
        char Outbuf[ 50 ];
        wsprintf( Outbuf, "%d", m_Preset );
        if( m_pView->SetInitialValue( m_Name, m_TreeItem, Outbuf ) )
        {
            if( m_pView->GetActiveWatchPoint( ) == this )
            {
                pBar->m_InitialValue.SetWindowText( Outbuf );
            }
        }
    }
}

bool CCharWatchPoint::IsReadOnly( )
{
    return m_ReadOnly;
}

//=============================================================================
// CFloatWatchPoint
//=============================================================================

CFloatWatchPoint::CFloatWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, float max, float min, bool readOnly )
    :
        m_Max( max ),
        m_Min( min ),
        m_NoRecursion( false ),
        m_ReadOnly( readOnly ),
        CWatchPoint( pView, pName, key, callback, userData, WPDFloat )
{

}

void CFloatWatchPoint::SetValue( WCValue* pValue, class CEditBar* pBar )
{
    //
    // Make sure data packet type correct.
    //
    ASSERT( pValue->m_DataType == m_DataType  );
 
    if( m_ValueIsValid && (m_Value == pValue->m_Attrib.m_f.m_Value) )
    {
        //
        // Don't update if nothing changed.
        //
        return;
    } 
   
    //
    // Save value and update item text.
    //
    m_Value = pValue->m_Attrib.m_f.m_Value;

    char Outbuf[ 200 ];
    sprintf( Outbuf, "%s - [ %f ]", m_Name, m_Value );

    m_pView->SetItemText( m_TreeItem, Outbuf );

    //
    // Check if active edit bar is us. Update the value if so.
    //
    if( m_pView->GetActiveWatchPoint( ) == this )
    {
        if( !m_ValueIsValid )
        {
            m_ValueIsValid = true;

            UpdateEditBar( pBar );
        }
        sprintf( Outbuf, "%f", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );
    }        

     m_ValueIsValid = true;

}

void CFloatWatchPoint::UpdateEditBar( class CEditBar* pBar )
{
    //
    // Set the current editbar dialog type.
    //
    pBar->SetDataType( CEditBar::Float );

    //
    // Populate the dialg
    //
	pBar->SetName( m_Name );

    //
    // If value is valid, populate the preset and the current
    // value. 
    //
    if( m_ValueIsValid )
    {

        //
        // Check if there is an initial value. If so set it.
        //
        char initialValue[ 200 ];
        if( m_pView->GetInitialValue( m_Name, m_TreeItem, initialValue ) )
        {
            pBar->m_InitialValue.SetWindowText( initialValue );
            pBar->m_SaveButton.EnableWindow( true );
            if( !m_PresetIsValid )
            {
                m_Preset = (float) atof( initialValue );
                m_PresetIsValid = true;
            }                      
        }
        else
        {
            pBar->m_SaveButton.EnableWindow( false );
        }
           
        if( !m_PresetIsValid )
        {
            m_Preset = m_Value;
            m_PresetIsValid = true;
        }                      

        float x = m_Preset;

        pBar->m_Slider.SetRange( 0, 1000, TRUE );

        int x2 = (int) ( (m_Value - m_Min) * 1000.0 / (m_Max - m_Min) );
        pBar->m_Slider.SetPos( x2 );

        m_Preset = x;

        char Outbuf[ 200 ];
        sprintf( Outbuf, "%f", m_Preset );
        pBar->m_PresetValue.SetWindowText( Outbuf );
        sprintf( Outbuf, "%f", m_Value );
        pBar->m_CurrentValue.SetWindowText( Outbuf );

        //
        // Update the slider.
        //
        pBar->m_Slider.EnableWindow( true );
        pBar->m_UpdateButton.EnableWindow( true );
        pBar->m_PresetValue.EnableWindow( true );

    }
    else
    {
        pBar->m_Slider.EnableWindow( false );
        pBar->m_UpdateButton.EnableWindow( false );
        pBar->m_SaveButton.EnableWindow( false );
        pBar->m_PresetValue.EnableWindow( false );
    }
    pBar->SetReadOnly( m_ReadOnly );
}

void CFloatWatchPoint::UpdatePreset( class CEditBar* pBar )
{
    if( m_ValueIsValid )
    {
        m_Preset = (float)(((m_Max - m_Min) * (float) pBar->m_Slider.GetPos( ) / 1000.0 ) + m_Min);

        char Outbuf[ 200 ];
        sprintf( Outbuf, "%f", m_Preset );

        m_NoRecursion = true;

        pBar->m_PresetValue.SetWindowText( Outbuf );

        m_NoRecursion = false;
    }
}

void CFloatWatchPoint::PresetValidate( class CEditBar* pBar )
{
    //
    // Get the text. If not valid reset it to our current setting.
    // Otherwise update slider.
    //
    if( m_NoRecursion )
    {
        return;
    }

    char    buffer[ 100 ];
    pBar->m_PresetValue.GetWindowText( buffer, sizeof(buffer ) );
   
    if( strlen( buffer ) == 0 ) 
    {
        int x = (int) ( (m_Preset - m_Min) * 1000.0 / (m_Max - m_Min) );

        pBar->m_Slider.SetPos( x );
        UpdatePreset( pBar );
        return;
    }

    float value = (float) atof( buffer );
    if( (value >= m_Min) && (value <= m_Max) )
    { 
        m_Preset = value;
        int x = (int) ( (m_Preset - m_Min) * 1000.0 / (m_Max - m_Min) );

        pBar->m_Slider.SetPos( x );

    }
    else
    {
        int x = (int) ( (m_Preset - m_Min) * 1000.0 / (m_Max - m_Min) );

        pBar->m_Slider.SetPos( x );
        UpdatePreset( pBar );
    }
  
}

void CFloatWatchPoint::WriteValue( CMainFrame* pFrame )
{
    WCWriteValue* p = (WCWriteValue*) pFrame->GetTxBuffer( sizeof( WCWriteValue ) );
    
    if( p != NULL )
    {        
        p->m_Command = WPCWriteValue;
        p->m_DataType = m_DataType;
        p->m_Address = m_Key;
        p->m_Callback = m_Callback;
        p->m_UserData = m_UserData;
        p->m_Attrib.m_f.m_Value = m_Preset;    
        pFrame->InitiateTransmission( );
    }
}

void CFloatWatchPoint::Save( class CEditBar* pBar )
{
    if( m_PresetIsValid )
    {
        //
        // Make the preset the initial value and write the data to file. Only update 
        // initial value if we are the active watch point
        //
        char Outbuf[ 50 ];
        sprintf( Outbuf, "%f", m_Preset );
        if( m_pView->SetInitialValue( m_Name, m_TreeItem, Outbuf ) )
        {
            if( m_pView->GetActiveWatchPoint( ) == this )
            {
                pBar->m_InitialValue.SetWindowText( Outbuf );
            }
        }
    }
}

bool CFloatWatchPoint::IsReadOnly( )
{
    return m_ReadOnly;
}

//=============================================================================
// CVectorWatchPoint
//=============================================================================

CVectorWatchPoint::CVectorWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, float max, float min, bool readOnly )
    :
        m_Max( max ),
        m_Min( min ),
        m_NoRecursion( false ),
        m_ReadOnly( readOnly ),
        CWatchPoint( pView, pName, key, callback, userData, WPDVector )
{

}

void CVectorWatchPoint::SetValue( WCValue* pValue, class CEditBar* pBar )
{
    //
    // Make sure data packet type correct.
    //
    ASSERT( pValue->m_DataType == m_DataType  );

    if( m_ValueIsValid && (m_ValueX == pValue->m_Attrib.m_vector.m_x ) && 
        (m_ValueY == pValue->m_Attrib.m_vector.m_y ) && (m_ValueZ == pValue->m_Attrib.m_vector.m_z) )
    {
        //
        // Don't update if nothing changed.
        //
        return;
    } 

    
    //
    // Save value and update item text.
    //
    m_ValueX = pValue->m_Attrib.m_vector.m_x;
    m_ValueY = pValue->m_Attrib.m_vector.m_y;
    m_ValueZ = pValue->m_Attrib.m_vector.m_z;


    char Outbuf[ 200 ];
    sprintf( Outbuf, "%s - [ %f %f %f ]", m_Name, m_ValueX, m_ValueY, m_ValueZ );

    m_pView->SetItemText( m_TreeItem, Outbuf );

    //
    // Check if active edit bar is us. Update the value if so.
    //
    if( m_pView->GetActiveWatchPoint( ) == this )
    {
        if( !m_ValueIsValid )
        {
            m_ValueIsValid = true;

            UpdateEditBar( pBar );
        }
        sprintf( Outbuf, "%f", m_ValueX );
        pBar->m_CurrentValueX.SetWindowText( Outbuf );
        sprintf( Outbuf, "%f", m_ValueY );
        pBar->m_CurrentValueY.SetWindowText( Outbuf );
        sprintf( Outbuf, "%f", m_ValueZ );
        pBar->m_CurrentValueZ.SetWindowText( Outbuf );
     }        

     m_ValueIsValid = true;

}

void CVectorWatchPoint::UpdateEditBar( class CEditBar* pBar )
{
    //
    // Set the current editbar dialog type.
    //
    pBar->SetDataType( CEditBar::Vector );

    //
    // Populate the dialg
    //
	pBar->SetName( m_Name );

    //
    // If value is valid, populate the preset and the current
    // value. 
    //
    if( m_ValueIsValid )
    {
        m_PresetX = m_ValueX;
        m_PresetY = m_ValueY;
        m_PresetZ = m_ValueZ;

        pBar->m_SliderX.SetRange( 0, 1000, TRUE );
        pBar->m_SliderY.SetRange( 0, 1000, TRUE );
        pBar->m_SliderZ.SetRange( 0, 1000, TRUE );

        int x = (int) ( (m_ValueX - m_Min) * 1000.0 / (m_Max - m_Min) );
        pBar->m_SliderX.SetPos( x );
        x = (int) ( (m_ValueY - m_Min) * 1000.0 / (m_Max - m_Min) );
        pBar->m_SliderY.SetPos( x );
        x = (int) ( (m_ValueZ - m_Min) * 1000.0 / (m_Max - m_Min) );
        pBar->m_SliderZ.SetPos( x );


        char Outbuf[ 200 ];
        sprintf( Outbuf, "%f", m_ValueX );
        pBar->m_PresetValueX.SetWindowText( Outbuf );
        pBar->m_CurrentValueX.SetWindowText( Outbuf );

        sprintf( Outbuf, "%f", m_ValueY );
        pBar->m_PresetValueY.SetWindowText( Outbuf );
        pBar->m_CurrentValueY.SetWindowText( Outbuf );

        sprintf( Outbuf, "%f", m_ValueZ );
        pBar->m_PresetValueZ.SetWindowText( Outbuf );
        pBar->m_CurrentValueZ.SetWindowText( Outbuf );

        //
        // Update the slider.
        //
        pBar->m_SliderX.EnableWindow( true );
        pBar->m_SliderY.EnableWindow( true );
        pBar->m_SliderZ.EnableWindow( true );
        pBar->m_UpdateButton.EnableWindow( true );
        pBar->m_SaveButton.EnableWindow( false );
        pBar->m_PresetValueX.EnableWindow( true );
        pBar->m_PresetValueY.EnableWindow( true );
        pBar->m_PresetValueZ.EnableWindow( true );
    }
    else
    {
        pBar->m_SliderX.EnableWindow( false );
        pBar->m_SliderY.EnableWindow( false );
        pBar->m_SliderZ.EnableWindow( false );
        pBar->m_UpdateButton.EnableWindow( false );
        pBar->m_SaveButton.EnableWindow( false );
        pBar->m_PresetValueX.EnableWindow( false );
        pBar->m_PresetValueY.EnableWindow( false );
        pBar->m_PresetValueZ.EnableWindow( false );
    }
    pBar->SetReadOnly( m_ReadOnly );
}

void CVectorWatchPoint::UpdatePreset( class CEditBar* pBar )
{
    if( m_ValueIsValid )
    {
        char Outbuf[ 200 ];

        m_NoRecursion = true;

        m_PresetX = (float)(((m_Max - m_Min) * (float) pBar->m_SliderX.GetPos( ) / 1000.0 ) + m_Min);
        sprintf( Outbuf, "%f", m_PresetX );
        pBar->m_PresetValueX.SetWindowText( Outbuf );

        m_PresetY = (float)(((m_Max - m_Min) * (float) pBar->m_SliderY.GetPos( ) / 1000.0 ) + m_Min);
        sprintf( Outbuf, "%f", m_PresetY );
        pBar->m_PresetValueY.SetWindowText( Outbuf );

        m_PresetZ = (float)(((m_Max - m_Min) * (float) pBar->m_SliderZ.GetPos( ) / 1000.0 ) + m_Min);
        sprintf( Outbuf, "%f", m_PresetZ );
        pBar->m_PresetValueZ.SetWindowText( Outbuf );

        m_NoRecursion = false;
    }
}

void CVectorWatchPoint::PresetValidate( class CEditBar* pBar )
{
    //
    // Get the text. If not valid reset it to our current setting.
    // Otherwise update slider.
    //
    if( m_NoRecursion )
    {
        return;
    }

    char    buffer[ 100 ];
    float value;

    pBar->m_PresetValueX.GetWindowText( buffer, sizeof(buffer ) );
   
    if( strlen( buffer ) == 0 ) 
    {
        int x = (int) ( (m_PresetX - m_Min) * 1000.0 / (m_Max - m_Min) );

        pBar->m_SliderX.SetPos( x );
        UpdatePreset( pBar );
        return;
    }

    value = (float) atof( buffer );
    if( (value >= m_Min) && (value <= m_Max) )
    { 
        m_PresetX = value;
        int x = (int) ( (m_PresetX - m_Min) * 1000.0 / (m_Max - m_Min) );

        pBar->m_SliderX.SetPos( x );

    }
    else
    {
        int x = (int) ( (m_PresetX - m_Min) * 1000.0 / (m_Max - m_Min) );

        pBar->m_SliderX.SetPos( x );
        UpdatePreset( pBar );
    }


    pBar->m_PresetValueY.GetWindowText( buffer, sizeof(buffer ) );
   
    if( strlen( buffer ) == 0 ) 
    {
        int x = (int) ( (m_PresetY - m_Min) * 1000.0 / (m_Max - m_Min) );

        pBar->m_SliderY.SetPos( x );
        UpdatePreset( pBar );
        return;
    }

    value = (float) atof( buffer );
    if( (value >= m_Min) && (value <= m_Max) )
    { 
        m_PresetY = value;
        int x = (int) ( (m_PresetY - m_Min) * 1000.0 / (m_Max - m_Min) );

        pBar->m_SliderY.SetPos( x );

    }
    else
    {
        int x = (int) ( (m_PresetY - m_Min) * 1000.0 / (m_Max - m_Min) );

        pBar->m_SliderY.SetPos( x );
        UpdatePreset( pBar );
    }


    pBar->m_PresetValueZ.GetWindowText( buffer, sizeof(buffer ) );
   
    if( strlen( buffer ) == 0 ) 
    {
        int x = (int) ( (m_PresetZ - m_Min) * 1000.0 / (m_Max - m_Min) );

        pBar->m_SliderZ.SetPos( x );
        UpdatePreset( pBar );
        return;
    }

    value = (float) atof( buffer );
    if( (value >= m_Min) && (value <= m_Max) )
    { 
        m_PresetZ = value;
        int x = (int) ( (m_PresetZ - m_Min) * 1000.0 / (m_Max - m_Min) );

        pBar->m_SliderZ.SetPos( x );

    }
    else
    {
        int x = (int) ( (m_PresetZ - m_Min) * 1000.0 / (m_Max - m_Min) );

        pBar->m_SliderZ.SetPos( x );
        UpdatePreset( pBar );
    }
  
}

void CVectorWatchPoint::WriteValue( CMainFrame* pFrame )
{
    WCWriteValue* p = (WCWriteValue*) pFrame->GetTxBuffer( sizeof( WCWriteValue ) );
    
    if( p != NULL )
    {        
        p->m_Command = WPCWriteValue;
        p->m_DataType = m_DataType;
        p->m_Address = m_Key;
        p->m_Callback = m_Callback;
        p->m_UserData = m_UserData;
        p->m_Attrib.m_vector.m_x = m_PresetX;
        p->m_Attrib.m_vector.m_y = m_PresetY;
        p->m_Attrib.m_vector.m_z = m_PresetZ;
        pFrame->InitiateTransmission( );
    }
}

bool CVectorWatchPoint::IsReadOnly( )
{
    return m_ReadOnly;
}

//=============================================================================
// CBoolWatchPoint
//=============================================================================

CBoolWatchPoint::CBoolWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, bool readOnly )
    :
    m_ReadOnly( readOnly ),
    CWatchPoint( pView, pName, key, callback, userData, WPDBoolean )
{

}

void CBoolWatchPoint::SetValue( WCValue* pValue, class CEditBar* pBar )
{
    //
    // Make sure data packet type correct.
    //
    ASSERT( pValue->m_DataType == m_DataType  );

    if( m_ValueIsValid && (m_Value == (pValue->m_Attrib.m_bool.m_Value != 0 )) )
    {
        //
        // Don't update if nothing changed.
        //
        return;
    } 

    
    //
    // Save value and update item text.
    //
    m_Value = pValue->m_Attrib.m_bool.m_Value != 0;

    char Outbuf[ 200 ];
    wsprintf( Outbuf, "%s - [ %s ]", m_Name, m_Value ? "TRUE" : "FALSE" );

    m_pView->SetItemText( m_TreeItem, Outbuf );

    //
    // Check if active edit bar is us. Update the value if so.
    //
    if( m_pView->GetActiveWatchPoint( ) == this )
    {
        if( !m_ValueIsValid )
        {
            m_ValueIsValid = true;

            UpdateEditBar( pBar );
        }
        pBar->m_CurrentValue.SetWindowText( m_Value ? "TRUE" : "FALSE" );
    }        

    m_ValueIsValid = true;
}

void CBoolWatchPoint::UpdateEditBar( class CEditBar* pBar )
{

    //
    // Set the current editbar dialog type.
    //
    pBar->SetDataType( CEditBar::Boolean );

    //
    // Populate the dialg
    //
	pBar->SetName( m_Name );

    //
    // If value is valid, populate the preset and the current
    // value.
    //
    if( m_ValueIsValid )
    {
        //
        // Check if there is an initial value. If so set it.
        //
        char initialValue[ 200 ];
        if( m_pView->GetInitialValue( m_Name, m_TreeItem, initialValue ) )
        {
            pBar->m_InitialValue.SetWindowText( initialValue );
            pBar->m_SaveButton.EnableWindow( true );
            if( !m_PresetIsValid )
            {
                if( stricmp( initialValue, "true" ) == 0 )
                { 
                    m_Preset = true;
                }
                else
                {
                    m_Preset = false;
                }
    
                m_PresetIsValid = true;
            }                      
        }
        else
        {
            pBar->m_SaveButton.EnableWindow( false );
        }
           
        if( !m_PresetIsValid )
        {
            m_Preset = m_Value;
            m_PresetIsValid = true;
        }                      

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%s", m_Preset ? "TRUE" : "FALSE" );
        pBar->m_Boolean.SetWindowText( Outbuf );
        wsprintf( Outbuf, "%s", m_Value ? "TRUE" : "FALSE" );
        pBar->m_CurrentValue.SetWindowText( Outbuf );

        pBar->m_Boolean.EnableWindow( true );
        pBar->m_UpdateButton.EnableWindow( true );
    }
    else
    {
        pBar->m_Boolean.EnableWindow( false );
        pBar->m_UpdateButton.EnableWindow( false );
        pBar->m_SaveButton.EnableWindow( false );
    }
    pBar->SetReadOnly( m_ReadOnly );
}

void CBoolWatchPoint::UpdatePreset( class CEditBar* pBar )
{
    if( m_ValueIsValid )
    {
        m_Preset = !m_Preset;

        char Outbuf[ 200 ];
        wsprintf( Outbuf, "%s", m_Preset ? "TRUE" : "FALSE" );
        pBar->m_Boolean.SetWindowText( Outbuf );

    }
}

void CBoolWatchPoint::WriteValue( CMainFrame* pFrame )
{
    WCWriteValue* p = (WCWriteValue*) pFrame->GetTxBuffer( sizeof( WCWriteValue ) );
    
    if( p != NULL )
    {        
        p->m_Command = WPCWriteValue;
        p->m_DataType = m_DataType;
        p->m_Address = m_Key;
        p->m_Callback = m_Callback;
        p->m_UserData = m_UserData;
        p->m_Attrib.m_bool.m_Value = m_Preset;    
        pFrame->InitiateTransmission( );
    }
}

void CBoolWatchPoint::Save( class CEditBar* pBar )
{
    if( m_PresetIsValid )
    {
        //
        // Make the preset the initial value and write the data to file. Only update 
        // initial value if we are the active watch point
        //
        char Outbuf[ 50 ];
        wsprintf( Outbuf, "%s", m_Preset ? "true" : "false" );
        if( m_pView->SetInitialValue( m_Name, m_TreeItem, Outbuf ) )
        {
            if( m_pView->GetActiveWatchPoint( ) == this )
            {
                pBar->m_InitialValue.SetWindowText( Outbuf );
            }
        }
    }
}

bool CBoolWatchPoint::IsReadOnly( )
{
    return m_ReadOnly;
}

//=============================================================================
// CStringWatchPoint
//=============================================================================

CStringWatchPoint::CStringWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, unsigned int length, bool readOnly )
    :
    m_Length( length ),
    m_ReadOnly( readOnly ),
    CWatchPoint( pView, pName, key, callback, userData, WPDString )
{
    //
    // Allocate space for the string.
    //
    m_pValue = new char [ m_Length ];
    m_pPreset = new char [ m_Length ];

}

CStringWatchPoint::~CStringWatchPoint( void )
{
    delete [ ] m_pValue;
    delete [ ] m_pPreset;
}

void CStringWatchPoint::SetValue( WCValue* pValue, class CEditBar* pBar )
{
    //
    // Make sure data packet type correct.
    //
    ASSERT( pValue->m_DataType == m_DataType  );

    if( m_ValueIsValid && (0 == strcmp( m_pValue, (const char*)pValue + sizeof( WCValue ) ) ) )
    {
        //
        // Don't update if nothing changed.
        //
        return;
    } 


    
    //
    // Save value and update item text.
    //
    strcpy( m_pValue, (const char*)pValue + sizeof( WCValue ) );

    char Outbuf[ 2000 ];
    wsprintf( Outbuf, "%s - [ %s ]", m_Name, m_pValue );

    m_pView->SetItemText( m_TreeItem, Outbuf );

    //
    // Check if active edit bar is us. Update the value if so.
    //
    if( m_pView->GetActiveWatchPoint( ) == this )
    {
        if( !m_ValueIsValid )
        {
            m_ValueIsValid = true;

            UpdateEditBar( pBar );
        }
        pBar->m_CurrentValue.SetWindowText( m_pValue  );
    }        

     m_ValueIsValid = true;

}

void CStringWatchPoint::UpdateEditBar( class CEditBar* pBar )
{
    //
    // Set the current editbar dialog type.
    //
    pBar->SetDataType( CEditBar::String );

    //
    // Populate the dialg
    //
	pBar->SetName( m_Name );

    //
    // If value is valid, populate the preset and the current
    // value.
    //
    if( m_ValueIsValid )
    {
        pBar->m_PresetValue.SetLimitText( m_Length - 1 );
        pBar->m_PresetValue.SetWindowText( m_pValue );
        pBar->m_CurrentValue.SetWindowText( m_pValue );
        strcpy(m_pPreset, m_pValue);

        pBar->m_UpdateButton.EnableWindow( true );
        pBar->m_SaveButton.EnableWindow( false );
        pBar->m_PresetValue.EnableWindow( true );



        //
        // Check if there is an initial value. If so set it.
        //
        char initialValue[ 200 ];
        if( m_pView->GetInitialValue( m_Name, m_TreeItem, initialValue ) )
        {
            pBar->m_InitialValue.SetWindowText( initialValue );
            pBar->m_SaveButton.EnableWindow( true );
            if( !m_PresetIsValid )
            {
                strcpy( m_pPreset, initialValue );
                m_PresetIsValid = true;
            }                      
        }
        else
        {
            pBar->m_SaveButton.EnableWindow( false );
        }
           
        if( !m_PresetIsValid )
        {
            strcpy(m_pPreset, m_pValue);
            m_PresetIsValid = true;
        }                      

        pBar->m_PresetValue.SetLimitText( m_Length - 1 );

        pBar->m_PresetValue.SetWindowText( m_pPreset );
        pBar->m_CurrentValue.SetWindowText( m_pValue );

        pBar->m_UpdateButton.EnableWindow( true );
        pBar->m_PresetValue.EnableWindow( true );

    }
    else
    {
        pBar->m_UpdateButton.EnableWindow( false );
        pBar->m_SaveButton.EnableWindow( false );
        pBar->m_PresetValue.EnableWindow( false );
    }
    pBar->SetReadOnly( m_ReadOnly );
}

void CStringWatchPoint::PresetValidate( class CEditBar* pBar )
{
    //
    // Get the text in the preset. 
    //
    pBar->m_PresetValue.GetWindowText( m_pPreset, m_Length );
}

void CStringWatchPoint::WriteValue( CMainFrame* pFrame )
{
    unsigned int length = strlen( m_pPreset) + 1;

    //
    // Lets keep things align to 4 to prevent problems of ps2
    //
    if(( length & 0x03 ) != 0 )
    {
        length = (length & 0xfffffffc) + 0x4;        
    }  

    WCWriteValue* p = (WCWriteValue*) pFrame->GetTxBuffer( sizeof( WCWriteValue ) + length );
    
    if( p != NULL )
    {        
        p->m_Command = WPCWriteValue;
        p->m_DataType = m_DataType;
        p->m_Address = m_Key;
        p->m_Callback = m_Callback;
        p->m_UserData = m_UserData;
        p->m_Attrib.m_string.m_Length = length;
        strcpy( (char*) p + sizeof( WCWriteValue), m_pPreset );    
        pFrame->InitiateTransmission( );
    }
}

void CStringWatchPoint::Save( class CEditBar* pBar )
{
    if( m_PresetIsValid )
    {
        //
        // Make the preset the initial value and write the data to file. Only update 
        // initial value if we are the active watch point
        //
        if( m_pView->SetInitialValue( m_Name, m_TreeItem, m_pPreset ) )
        {
            if( m_pView->GetActiveWatchPoint( ) == this )
            {
                pBar->m_InitialValue.SetWindowText( m_pPreset );
            }
        }
    }
}

bool CStringWatchPoint::IsReadOnly( )
{
    return m_ReadOnly;
}

//=============================================================================
// CEnumWatchPoint
//=============================================================================

CEnumWatchPoint::CEnumWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, unsigned char* pEnumData, bool readOnly )
    :
    m_ReadOnly( readOnly ),
    CWatchPoint( pView, pName, key, callback, userData, WPDEnum )
{
    //
    // First determine how many enumeration entries have been provided.
    //
  	m_EnumCount = 0;
	unsigned char* pInfo = pEnumData;
	while( *pInfo != '\0' )
	{
		pInfo += (strlen( (const char*) pInfo ) + 1 + sizeof( int ));
        m_EnumCount++;
	}
    
    //
    // Allocate an array of enumeration elements.
    //
    m_pEnumArray = new EnumElement[ m_EnumCount ];    

    //
    // Fill the array.
    //
    for( unsigned int i = 0 ; i < m_EnumCount ; i++ )
    {
        unsigned int stringSize = strlen( (const char*) pEnumData ) + 1;

        m_pEnumArray[ i ].m_String = new char[ stringSize ];
        strcpy( m_pEnumArray[ i ].m_String, (const char*) pEnumData );
        pEnumData += stringSize;
      
        m_pEnumArray[ i ].m_Value = *((int*) pEnumData);

        pEnumData += sizeof( int );
    }

}

CEnumWatchPoint::~CEnumWatchPoint( void )
{
    for( unsigned int i = 0 ; i < m_EnumCount ; i++ )
    {
        delete [ ] m_pEnumArray[ i ].m_String;
    }

    delete [ ] m_pEnumArray;
}


void CEnumWatchPoint::SetValue( WCValue* pValue, class CEditBar* pBar )
{
    //
    // Make sure data packet type correct.
    //
    ASSERT( pValue->m_DataType == m_DataType  );

    if( m_ValueIsValid && (m_Value == pValue->m_Attrib.m_enum.m_Value) )
    {
        //
        // Don't update if nothing changed.
        //
        return;
    } 

    
    m_Value = pValue->m_Attrib.m_enum.m_Value;

    //
    // Find the value in the enumeration.
    //
    char Outbuf[ 200 ];
    unsigned int i;

    for( i = 0 ; i < m_EnumCount ; i++ )
    {
        if( m_pEnumArray[i].m_Value == m_Value )
        {
            wsprintf( Outbuf, "%s - [ %s ]", m_Name, m_pEnumArray[i].m_String );
            m_pView->SetItemText( m_TreeItem, Outbuf );
            break;
        }
    }
    if( i == m_EnumCount )
    {
        wsprintf( Outbuf, "%s - [ %s ]", m_Name, "Illegal Enumeration Value" );
        m_pView->SetItemText( m_TreeItem, Outbuf );
    }

    //
    // Check if active edit bar is us. Update the value if so.
    //
    if( m_pView->GetActiveWatchPoint( ) == this )
    {
        if( !m_ValueIsValid )
        {
            m_ValueIsValid = true;
    
            UpdateEditBar( pBar );
        }
        pBar->m_CurrentValue.SetWindowText( m_pEnumArray[i].m_String );
    }        

    m_ValueIsValid = true;

}

void CEnumWatchPoint::UpdateEditBar( class CEditBar* pBar )
{

    //
    // Set the current editbar dialog type.
    //
    pBar->SetDataType( CEditBar::Enumeration );

    //
    // Populate the dialg
    //
	pBar->SetName( m_Name );

    //
    // If value is valid, populate the preset and the current
    // value.
    //
    if( m_ValueIsValid )
    {
        char Outbuf[ 200 ];
        unsigned int i;     
   
        for( i = 0 ; i < m_EnumCount ; i++ )
        {
            pBar->m_Enum.AddString( m_pEnumArray[i].m_String );
        }

        for( i = 0 ; i < m_EnumCount ; i++ )
        {
            if( m_pEnumArray[i].m_Value == m_Value )
            {
                wsprintf( Outbuf, "%s",m_pEnumArray[i].m_String );
                break;
            }
        }
        
        pBar->m_Enum.SelectString( 0, Outbuf );
        pBar->m_CurrentValue.SetWindowText( Outbuf );
        m_Preset = m_Value;
        pBar->m_Enum.EnableWindow( true );
        pBar->m_UpdateButton.EnableWindow( true );
        pBar->m_SaveButton.EnableWindow( false );
    }
    else
    {
        pBar->m_Enum.EnableWindow( false );
        pBar->m_UpdateButton.EnableWindow( false );
        pBar->m_SaveButton.EnableWindow( false );
    }
    pBar->SetReadOnly( m_ReadOnly );
}

void CEnumWatchPoint::UpdatePreset( class CEditBar* pBar )
{
    if( m_ValueIsValid )
    {
        //
        // Get the current selected item and set it as the preset.
        //
        m_Preset = m_pEnumArray[ pBar->m_Enum.GetCurSel( ) ].m_Value;
    }
}

void CEnumWatchPoint::WriteValue( CMainFrame* pFrame )
{
    WCWriteValue* p = (WCWriteValue*) pFrame->GetTxBuffer( sizeof( WCWriteValue ) );
    
    if( p != NULL )
    {        
        p->m_Command = WPCWriteValue;
        p->m_DataType = m_DataType;
        p->m_Address = m_Key;
        p->m_Callback = m_Callback;
        p->m_UserData = m_UserData;
        p->m_Attrib.m_enum.m_Value = m_Preset;    
        pFrame->InitiateTransmission( );
    }
}

bool CEnumWatchPoint::IsReadOnly( )
{
    return m_ReadOnly;
}

//=============================================================================
// CFunctionWatchPoint
//=============================================================================

CFunctionWatchPoint::CFunctionWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData)
    :
        CWatchPoint( pView, pName, key, callback, userData, WPDFunction )
{

}

void CFunctionWatchPoint::SetValue( WCValue* pValue, class CEditBar* pBar )
{
    //
    // Should never be invoked.
    //
    ASSERT( false );
     m_ValueIsValid = true;

}

void CFunctionWatchPoint::UpdateEditBar( class CEditBar* pBar )
{
    //
    // Set the current editbar dialog type.
    //
    pBar->SetDataType( CEditBar::Function );

    //
    // Populate the button with the name
    //
	pBar->m_FunctionButton.SetWindowText( m_Name );
    pBar->m_FunctionButton.EnableWindow( true );
}


void CFunctionWatchPoint::WriteValue( CMainFrame* pFrame )
{
    WCWriteValue* p = (WCWriteValue*) pFrame->GetTxBuffer( sizeof( WCWriteValue ) );
    
    if( p != NULL )
    {        
        p->m_Command = WPCWriteValue;
        p->m_DataType = m_DataType;
        p->m_Address = m_Key;
        p->m_Callback = m_Callback;
        p->m_UserData = m_UserData;
        pFrame->InitiateTransmission( );
    }
}

bool CFunctionWatchPoint::IsReadOnly( )
{
    return true;
}



