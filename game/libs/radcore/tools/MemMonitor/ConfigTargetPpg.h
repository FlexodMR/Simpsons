#if !defined(AFX_CONFIGTARGETPPG_H__E0084E0C_A052_40B9_8750_49D38E4EA722__INCLUDED_)
#define AFX_CONFIGTARGETPPG_H__E0084E0C_A052_40B9_8750_49D38E4EA722__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ConfigTargetPpg.h : header file
//
/////////////////////////////////////////////////////////////////////////////
// CConfigTargetPpg dialog

class CConfigTargetPpg :
    public CPropertyPageEx
{
    DECLARE_DYNCREATE(CConfigTargetPpg)

// Construction
public:

    CConfigTargetPpg();

    ~CConfigTargetPpg();

    void Initialize( IRadDbgComTargetTable * pTargetTable )
    {
        ASSERT( pTargetTable );
        m_pDbgComTargetTable = pTargetTable;
    }

    void SetTargetTable( IRadDbgComTargetTable * pTargetTable )
    {
        ASSERT( pTargetTable );
        m_pDbgComTargetTable = pTargetTable;
    }

    IRadDbgComTargetTable * GetTargetTable( )
    {
        return m_pDbgComTargetTable;
    }

protected:

    void PopulateTargetList( );

    void PopulateTargetEditor( );

    void RemoveSelectedTarget( );

    void AddNewTarget( );

    void SetSelectedTargetAsDefault( );

    static void OnEnumerateTarget( void* context, const radDbgComTargetName pName, const radDbgComIPAddress pIpAddress, unsigned short port, bool InUse );

    void UseIPControl( bool bUseIt );

private:

    struct _Target
    {
        CString strName;
        CString strTargetIP;
        int nPort;
    };

    vector< _Target >               m_aryTargetList;

    ref< IRadDbgComTargetTable >    m_pDbgComTargetTable;

// Dialog Data
    //{{AFX_DATA(CConfigTargetPpg)
	enum { IDD = IDD_PROPPAGE_TARGET };
	CListCtrl	m_lbxTargetList;
	CEdit	m_edtTargetIPName;
	CButton	m_chkIPName;
	CButton	m_chkIPAddr;
	CButton	m_butSetAsDefault;
    CIPAddressCtrl  m_ipTargetAddr;
    CButton m_butRemove;
    CButton m_butAdd;
    CString m_strTargetName;
	CString	m_strTargetIPName;
	short	m_nPort;
	//}}AFX_DATA


// Overrides
    // ClassWizard generate virtual function overrides
    //{{AFX_VIRTUAL(CConfigTargetPpg)
    public:
    virtual BOOL OnSetActive();
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CConfigTargetPpg)
    virtual BOOL OnInitDialog();
    afx_msg void OnButtonRemove();
    afx_msg void OnButtonAdd();
	afx_msg void OnButtonSetAsDefault();
	afx_msg void OnCheckIpAddr();
	afx_msg void OnCheckIpName();
	afx_msg void OnGetdispinfoListTargetList(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnClickListTargetList(NMHDR* pNMHDR, LRESULT* pResult);
	//}}AFX_MSG
    DECLARE_MESSAGE_MAP()

};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CONFIGTARGETPPG_H__E0084E0C_A052_40B9_8750_49D38E4EA722__INCLUDED_)
