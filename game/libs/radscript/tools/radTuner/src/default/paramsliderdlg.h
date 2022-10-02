#if !defined(AFX_PARAMSLIDERDLG_H__5665C8C9_A408_429C_B076_7157DFAC1C80__INCLUDED_)
#define AFX_PARAMSLIDERDLG_H__5665C8C9_A408_429C_B076_7157DFAC1C80__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "ScriptDoc.h"
#include "ScriptObject.h"
#include "ScriptMethod.h"
#include "FileTreeCtrl.h"

// paramsliderdlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CParamSliderDlg dialog

class CParamSliderDlg : public CDialog
{
// Construction
public:

    // construct a slider from presistent data
    static CParamSliderDlg * CreateFromFile( CWorkSpaceDoc * pWorkSpace, const CString & strDocName, const CString & strObjName, const CString & strMetName, const long nMetIdx, const int nParamIndex,
                    CFileTreeCtrl * pTree2Update, CString & strTitle, int nXPos, int nYPos, CWnd * pParent );

    CParamSliderDlg(CWnd* pParent = NULL);   // standard constructor

    float GetParamValue( )
    {
        return ( (float)( m_sldSlider.GetRangeMax( ) - m_nSliderValue ) * m_fltStep ) + m_fltMin;
    }

    void SetParamValue( float fltValue )
    {
        m_strValue.Format( "%f", fltValue );
        m_strValue.TrimRight( "0" );
        m_nSliderValue = ( m_fltMax - fltValue ) / m_fltStep;
    }

    BOOL Create( CWnd * pParent )
    {
        return CDialog::Create( IDD, pParent );
    }

    void RCCCall( );

    // this will initalize Dialog from File

    void Initalize(
                    CScriptParam * pScriptParam, float fltMax, float fltMin, float fltStep,
                    CFileTreeCtrl * pTree2Update, HTREEITEM hMet, HTREEITEM hObj, HTREEITEM hDoc,
                    const CString & strTitle = CString( "Untitled" )
                  )
    {
        m_pScriptParam  = pScriptParam;
        m_fltMax        = fltMax;
        m_fltMin        = fltMin;
        m_fltStep       = fltStep;
        m_pTree2Update  = pTree2Update;
        m_hMet          = hMet;
        m_hObj          = hObj;
        m_hDoc          = hDoc;

        ASSERT( m_pScriptParam && m_pTree2Update );
        ASSERT( fltMax > fltMin );
        ASSERT( fltStep > 0.0f );

        m_strTitle = strTitle;

        SetParamValue( atof( pScriptParam->ConvertValueToText( ) ) );
    }

    void SetTitleText( const CString & strText )
    {
        m_strTitle = strText;
        if ( GetSafeHwnd( ) != NULL )
        {
            UpdateData( FALSE );
        }
    }

    CString GetTitleText( ) const
    {
        return m_strTitle;
    }

    CScriptParam * GetScriptParam( )
    {
        return m_pScriptParam;
    }

// Dialog Data
	//{{AFX_DATA(CParamSliderDlg)
	enum { IDD = IDD_DIALOG_PARAM_SLIDER };
	CSliderCtrl	m_sldSlider;
	int		m_nSliderValue;
	CString	m_strValue;
	CString	m_strTitle;
	//}}AFX_DATA

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CParamSliderDlg)
	public:
	virtual BOOL DestroyWindow();
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CParamSliderDlg)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	virtual BOOL OnInitDialog();
	afx_msg void OnDestroy();
	afx_msg void OnClose();
	afx_msg void OnCustomdrawSliderValue(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnContextMenu(CWnd* pWnd, CPoint point);
	afx_msg void OnUpdateSliderTitletext(CCmdUI* pCmdUI);
	afx_msg void OnSliderTitletext();
	afx_msg void OnSliderAutoupdate();
	afx_msg void OnUpdateSliderAutoupdate(CCmdUI* pCmdUI);
	afx_msg void OnReleasedcaptureSliderValue(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnMove(int x, int y);
	afx_msg void OnUpdateSliderDescription(CCmdUI* pCmdUI);
	afx_msg void OnSliderDescription();
	afx_msg void OnButtonRevert();
	afx_msg void OnSliderEntervaluemanually();
	afx_msg void OnUpdateSliderEntervaluemanually(CCmdUI* pCmdUI);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

private:
    // the pointer to the script parameter so we can update that later
    CScriptParam *      m_pScriptParam;

    // definition for the slider bar
    float               m_fltMax;
    float               m_fltMin;
    float               m_fltStep;

    float               m_fltOrginalValue;

    // allow us to keep track of item in the tree, and update back when value is changed
    CFileTreeCtrl *     m_pTree2Update;
    HTREEITEM           m_hMet;
    HTREEITEM           m_hObj;
    HTREEITEM           m_hDoc;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PARAMSLIDERDLG_H__5665C8C9_A408_429C_B076_7157DFAC1C80__INCLUDED_)
