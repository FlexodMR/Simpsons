//=============================================================================
//
// File:        EditBar.h
//
// Subsystem:   Radical Foundation Technologies Watcher Server
//
// Description:	This file contains class definitions for the watcher server
//				editBar. Responsible for managing edit bar.
//
// Revisions:	Jan 16, 2000
//
// Usage:       
//
//=============================================================================

#ifndef EDITBAR_H
#define EDITBAR_H

//=============================================================================
// Include Files
//=============================================================================

#include "stdafx.h"
#include "MainFrm.h"
#include "resource.h"

//=============================================================================
// Class Declarations
//=============================================================================

//
// This class manages the edit bar. This class is responsible for managing a dialog
// allowing the user to edit values.
//
class CEditBar
{
	public:
	//
	// Contructor receives parent frame.
	// 
	CEditBar( CMainFrame* pFrame );
	~CEditBar( void );

	//
	// Members to get and set the visiblity state.
	//
	void SetVisible( bool visible );
	bool GetVisible( void );

    //
    // This enumeration govers the current display type in the edit bar. We make these
    // values the same as teh corresponding dialog id.
    //
	enum DataType
	{
		Undefined = IDD_UNDEFINED,
		UnsignedInteger = IDD_VALUE,
		Integer = IDD_VALUE,
        UnsignedShort = IDD_VALUE,
        Short= IDD_VALUE,
        UnsignedChar = IDD_VALUE,
        Char = IDD_VALUE,
        Boolean = IDD_BOOLEAN,
        Float = IDD_FLOAT,
        String = IDD_STRING,
        Enumeration = IDD_ENUMERATION,
        Vector = IDD_VECTOR,
        Function = IDD_FUNCTION
    };

	void SetDataType( DataType dataType );

    void SetReadOnly( bool readOnly );

	//
	// These memers are responsibe for fielding the control events and maintaining the
	// UI state.
	//
	void OnUpdateSave( CCmdUI* pCmdUI );

	void OnUpdateUpdate( CCmdUI* pCmdUI );

	void OnUpdateBoolean( CCmdUI* pCmdUI );
	//
	// Accessors for the dialog controls.
	//
	void SetName( const char* pName );

	private:

	//
	// This data member is our dialog bar which actually displays the controls.
	//	
	CDialogBar*	 m_pDialogBar;
	
	//
	// Holds parent frame.
	//
	CMainFrame*	m_pFrame;

    //
    // Maintains current data type.
    //
    DataType    m_DataType;
    
    public:
    // 
    // Buttons and control present on the dialogs
    //
	CButton		m_SaveButton;
	CButton		m_UpdateButton;
	CEdit		m_Name;
	CEdit		m_InitialValue;
	CEdit		m_CurrentValue;
	CEdit		m_PresetValue;
	CSliderCtrl	m_Slider;

    CButton     m_Boolean;

    CButton     m_FunctionButton;
 
    CComboBox   m_Enum;
    
	CEdit		m_InitialValueX;
	CEdit		m_InitialValueY;
	CEdit		m_InitialValueZ;
	CEdit		m_CurrentValueX;
	CEdit		m_CurrentValueY;
	CEdit		m_CurrentValueZ;
	CEdit		m_PresetValueX;
	CEdit		m_PresetValueY;
	CEdit		m_PresetValueZ;
	CSliderCtrl	m_SliderX;
	CSliderCtrl	m_SliderY;
	CSliderCtrl	m_SliderZ;

};

#endif 
