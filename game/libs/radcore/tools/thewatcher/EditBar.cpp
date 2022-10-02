//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        EditBar.cpp
//
// Subsystem:   Radical Foundation Technologies Watch Server
//
// Description:	This file contains the implementation in the watch server 
//				editbar
//
// Revisions:	Jan 16, 2000
//
// Usage:       
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "stdafx.h"
#include "EditBar.h"
#include "MainFrm.h"
#include "resource.h"

//=============================================================================
// Local Definitions
//=============================================================================

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//=============================================================================
// Static Definitions
//=============================================================================

//=============================================================================
// Contructor
//=============================================================================

CEditBar::CEditBar
(
	CMainFrame* pFrame
)
	:
        m_pDialogBar( NULL ),
		m_pFrame( pFrame )
{
    //
    // Set up initial view of the data.
    //
    SetDataType( Undefined );
}

//=============================================================================
// Destructor
//=============================================================================

CEditBar::~CEditBar( void )
{
    if( m_pDialogBar != NULL )
    {
        m_SaveButton.Detach( ); 
        m_UpdateButton.Detach( );
		m_Name.Detach( );
		m_CurrentValue.Detach( );
		m_InitialValue.Detach( );
		m_PresetValue.Detach( );
		m_Slider.Detach( );
        m_Boolean.Detach( );
        m_Enum.Detach( );
        m_FunctionButton.Detach( );

        m_InitialValueX.Detach( );
	    m_InitialValueY.Detach( );
	    m_InitialValueZ.Detach( );
	    m_CurrentValueX.Detach( );
	    m_CurrentValueY.Detach( );
	    m_CurrentValueZ.Detach( );
	    m_PresetValueX.Detach( );
	    m_PresetValueY.Detach( );
	    m_PresetValueZ.Detach( );
	    m_SliderX.Detach( );
	    m_SliderY.Detach( );
	    m_SliderZ.Detach( );

        delete m_pDialogBar;
    }
}

//=============================================================================
// GetVisible
//=============================================================================

bool CEditBar::GetVisible( void )
{
    return( (m_pDialogBar->GetStyle( ) & WS_VISIBLE) != 0 );
}

//=============================================================================
// SetVisible
//=============================================================================

void CEditBar::SetVisible( bool visible )
{
	m_pFrame->ShowControlBar(m_pDialogBar, visible, FALSE);
	m_pFrame->RecalcLayout();
}

//=============================================================================
// SetDataType
//=============================================================================

void CEditBar::SetDataType( DataType dataType )
{
    //
    // Save the data type.
    //
    m_DataType = dataType;

    //
    // Destroy existing dialog bar if exists and save its state.
    //
    unsigned int existingStyle = CBRS_TOP | CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_GRIPPER;
    BOOL    isFloating = FALSE;
    bool    isVisible = TRUE;
    CRect   position;
    if( m_pDialogBar != NULL && m_pDialogBar->GetSafeHwnd( ) != NULL )
    {
        isVisible = GetVisible( );
        existingStyle = m_pDialogBar->GetBarStyle( );
        isFloating = m_pDialogBar->IsFloating( );
        m_pDialogBar->GetWindowRect( &position );

		//
		// Detach all controls
		//			
        m_SaveButton.Detach( );
        m_UpdateButton.Detach( );
		m_Name.Detach( );
		m_CurrentValue.Detach( );
		m_InitialValue.Detach( );
		m_PresetValue.Detach( );
		m_Slider.Detach( );
        m_Boolean.Detach( );
        m_FunctionButton.Detach( );

        m_Enum.Detach( );

        m_InitialValueX.Detach( );
	    m_InitialValueY.Detach( );
	    m_InitialValueZ.Detach( );
	    m_CurrentValueX.Detach( );
	    m_CurrentValueY.Detach( );
	    m_CurrentValueZ.Detach( );
	    m_PresetValueX.Detach( );
	    m_PresetValueY.Detach( );
	    m_PresetValueZ.Detach( );
	    m_SliderX.Detach( );
	    m_SliderY.Detach( );
	    m_SliderZ.Detach( );


        delete m_pDialogBar;
    }

    //
    // Create a new one and initialize. Disable update presets during construction or 
    // things behave very weird.
    //
    m_pFrame->m_DisablePresetUpdate = true;    

    m_pDialogBar = new CDialogBar( );
 
   	if( !m_pDialogBar->Create( m_pFrame, m_DataType, existingStyle, m_DataType ) )
    {
         ASSERT( FALSE );
	}

    //
    // Attach controls to dialog if control is present.
    // 
	CWnd* cWnd;
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_UPDATE ) ) )
	{		
	    m_UpdateButton.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_SAVE ) ) )
	{		
	    m_SaveButton.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_NAME ) ) )
	{		
	    m_Name.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_INITIAL ) ) )
	{		
	    m_InitialValue.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_CURRENT ) ) )
	{		
	    m_CurrentValue.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_SLIDER ) ) )
	{		
	    m_Slider.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_BOOLEAN ) ) )
	{		
	    m_Boolean.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_ENUM ) ) )
	{		
	    m_Enum.Attach( cWnd->m_hWnd );
	}	

	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_FUNCTION ) ) )
	{		
	    m_FunctionButton.Attach( cWnd->m_hWnd );
	}	


	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_CURRENTX ) ) )
	{		
	    m_CurrentValueX.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_CURRENTY ) ) )
	{		
	    m_CurrentValueY.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_CURRENTZ ) ) )
	{		
	    m_CurrentValueZ.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_PRESET ) ) )
	{		
	    m_PresetValue.Attach( cWnd->m_hWnd );
	}	


	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_INITIALX ) ) )
	{		
	    m_InitialValueX.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_INITIALY ) ) )
	{		
	    m_InitialValueY.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_INITIALZ ) ) )
	{		
	    m_InitialValueZ.Attach( cWnd->m_hWnd );
	}	

	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_SLIDERX ) ) )
	{		
	    m_SliderX.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_SLIDERY ) ) )
	{		
	    m_SliderY.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_SLIDERZ ) ) )
	{		
	    m_SliderZ.Attach( cWnd->m_hWnd );
	}	

	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_PRESETX ) ) )
	{		
	    m_PresetValueX.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_PRESETY ) ) )
	{		
	    m_PresetValueY.Attach( cWnd->m_hWnd );
	}	
	if( NULL != (cWnd = m_pDialogBar->GetDlgItem( IDC_PRESETZ ) ) )
	{		
	    m_PresetValueZ.Attach( cWnd->m_hWnd );
	}	

    //
    // Enable docking as with the old dialog.
    //
  	m_pDialogBar->EnableDocking( CBRS_ALIGN_ANY );
    if( isFloating )
    {
        CPoint point( position.left - 2, position.top - 18 );
    	m_pFrame->FloatControlBar( m_pDialogBar, point  ); 
    }
    else
    {
    	m_pFrame->DockControlBar( m_pDialogBar, (UINT) 0, &position );
    }

    SetVisible( isVisible );

    m_pFrame->m_DisablePresetUpdate = false;    
}


//=============================================================================
// OnSaveUpdate
//=============================================================================

void CEditBar::OnUpdateSave( CCmdUI *pCmdUI )
{	
	//
	// This member is need to disable the button. Not exactly sure why
	// but examples did it this way.
	//
	CWnd* pBar;
	if( (pBar = m_pDialogBar->GetDlgItem( pCmdUI->m_nID ) ) == NULL )
	{
		pCmdUI->ContinueRouting();
		return; 
	}

	if( pBar->GetStyle( ) & WS_DISABLED )
	{
		pCmdUI->Enable( false  );
	}
	else
	{
		pCmdUI->Enable( true  );
	}
}

//=============================================================================
// OnUpdateUpdate
//=============================================================================

void CEditBar::OnUpdateUpdate( CCmdUI *pCmdUI )
{	
	//
	// This member is need to disable the button. Not exactly sure why
	// but examples did it this way.
	//
	CWnd* pBar;
	if( (pBar = m_pDialogBar->GetDlgItem( pCmdUI->m_nID ) ) == NULL )
	{
		pCmdUI->ContinueRouting();
		return; 
	}

	if( pBar->GetStyle( ) & WS_DISABLED )
	{
		pCmdUI->Enable( false  );
	}
	else
	{
		pCmdUI->Enable( true  );
	}
}

//=============================================================================
// OnUpdateUpdate
//=============================================================================

void CEditBar::OnUpdateBoolean( CCmdUI *pCmdUI )
{	
	//
	// This member is need to disable the button. Not exactly sure why
	// but examples did it this way.
	//
	CWnd* pBar;
	if( (pBar = m_pDialogBar->GetDlgItem( pCmdUI->m_nID ) ) == NULL )
	{
		pCmdUI->ContinueRouting();
		return; 
	}

	if( pBar->GetStyle( ) & WS_DISABLED )
	{
		pCmdUI->Enable( false  );
	}
	else
	{
		pCmdUI->Enable( true  );
	}
}

//=============================================================================
// SetName
//=============================================================================

void CEditBar::SetName( const char* pName )
{
	m_Name.SetWindowText( pName );
}

void CEditBar::SetReadOnly( bool readOnly )
{
    if ( m_UpdateButton.GetSafeHwnd( ) )
    {
        m_UpdateButton.EnableWindow( ! readOnly );
    }
    if ( m_PresetValue.GetSafeHwnd( ) )
    {
        m_PresetValue.EnableWindow( ! readOnly );
    }
    if ( m_Slider.GetSafeHwnd( ) )
    {
        m_Slider.EnableWindow( ! readOnly );
    }
    if ( m_Boolean.GetSafeHwnd( ) )
    {
        m_Boolean.EnableWindow( ! readOnly );
    }
    if ( m_Enum.GetSafeHwnd( ) )
    {
        m_Enum.EnableWindow( ! readOnly );
    }
    if ( m_PresetValueX.GetSafeHwnd( ) )
    {
        m_PresetValueX.EnableWindow( ! readOnly );
    }
    if ( m_PresetValueY.GetSafeHwnd( ) )
    {
        m_PresetValueY.EnableWindow( ! readOnly );
    }
    if ( m_PresetValueZ.GetSafeHwnd( ) )
    {
        m_PresetValueZ.EnableWindow( ! readOnly );
    }
    if ( m_SliderX.GetSafeHwnd( ) )
    {
        m_SliderX.EnableWindow( ! readOnly );
    }
    if ( m_SliderY.GetSafeHwnd( ) )
    {
        m_SliderY.EnableWindow( ! readOnly );
    }
    if ( m_SliderZ.GetSafeHwnd( ) )
    {
        m_SliderZ.EnableWindow( ! readOnly );
    }
}
