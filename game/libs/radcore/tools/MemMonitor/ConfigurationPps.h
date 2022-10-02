#if !defined(AFX_CONFIGURATIONPPS_H__8BB229A2_C5BC_455E_88EB_CAC59DA199DF__INCLUDED_)
#define AFX_CONFIGURATIONPPS_H__8BB229A2_C5BC_455E_88EB_CAC59DA199DF__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ConfigurationPps.h : header file
//
#include "ConfigColourPpg.h"
#include "ConfigTargetPpg.h"
#include "ConfigFilePpg.h"
#include "ConfigSymbolFilePpg.h"

/////////////////////////////////////////////////////////////////////////////
// CConfigurationPps
class CConfigurationPps;

typedef TRef< CConfigurationPps > CConfigurationPpsPtr;

class CConfigurationPps :
    public CPropertySheetEx,
    public CMFCRefCount
{
    DECLARE_DYNCREATE(CConfigurationPps)

// Construction
protected:
    CConfigurationPps( );

public:

	void Initialize( CMemSessionDataManager * pData, bool bWizardMode = false );

    void Terminate( );
/*
    CConfigFilePpg & GetFilePpg( )
    {
        return m_ppgFile;
    }
*/
    CConfigTargetPpg & GetTargetPpg( )
    {
        return m_ppgTarget;
    }

    CConfigColourPpg & GetColourPpg( )
    {
        return m_ppgColour;
    }

    CConfigSymbolFilePpg & GetSymbolPpg( )
    {
        return m_ppgSymbol;
    }

protected:

    virtual void DoDataExchange( CDataExchange* pDX );

private:

    CMemConfiguration * m_pConfigDoc;

//    CConfigFilePpg      m_ppgFile;
    CConfigTargetPpg    m_ppgTarget;
    CConfigColourPpg    m_ppgColour;
    CConfigSymbolFilePpg m_ppgSymbol;

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CConfigurationPps)
	public:
	virtual int DoModal();
	//}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CConfigurationPps();

    // Generated message map functions
protected:
    //{{AFX_MSG(CConfigurationPps)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	//}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CONFIGURATIONPPS_H__8BB229A2_C5BC_455E_88EB_CAC59DA199DF__INCLUDED_)
