#if !defined(AFX_MEMCELLVIEWCONFIGDLG_H__36D1FE0B_7925_4B8E_85E9_F0FF5457074F__INCLUDED_)
#define AFX_MEMCELLVIEWCONFIGDLG_H__36D1FE0B_7925_4B8E_85E9_F0FF5457074F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemCellViewConfigDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMemCellViewConfigDlg dialog

class CMemCellViewConfigDlg :
    public CDialog
{
// Construction
public:
	CMemCellViewConfigDlg(CWnd* pParent = NULL);   // standard constructor

    void Initialize( unsigned int uBytesPerCell, unsigned int uCellPerRow, unsigned int uCellSizeX, unsigned int uCellSizeY )
    {
        m_uBytesPerCell = uBytesPerCell;
        m_uCellPerRow = uCellPerRow;
        m_uCellSizeX = uCellSizeX;
        m_uCellSizeY = uCellSizeY;
    }

    unsigned int GetBytesPerCell( ) const
    {
        return m_uBytesPerCell;
    }

    unsigned int GetCellPerRow( ) const
    {
        return m_uCellPerRow;
    }

    CSize GetCellSize( ) const
    {
        return CSize( m_uCellSizeX, m_uCellSizeY );
    }
private:
// Dialog Data
	//{{AFX_DATA(CMemCellViewConfigDlg)
	enum { IDD = IDD_DIALOG_CELLVIEW_CONFIG };
	UINT	m_uBytesPerCell;
	UINT	m_uCellPerRow;
	UINT	m_uCellSizeX;
	UINT	m_uCellSizeY;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemCellViewConfigDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CMemCellViewConfigDlg)
	virtual void OnOK();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMCELLVIEWCONFIGDLG_H__36D1FE0B_7925_4B8E_85E9_F0FF5457074F__INCLUDED_)
