// PluginBase.h: interface for the CPluginBase class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_PLUGINBASE_H__A2A7E852_E1F5_4049_8354_2F026E390A13__INCLUDED_)
#define AFX_PLUGINBASE_H__A2A7E852_E1F5_4049_8354_2F026E390A13__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
#include "stdafx.h"

class CPluginManager;

class CPluginBase  
{
public:
    virtual int GetLeftViewWndCount() const;
    virtual CWnd* GetLeftViewWndPtrAt(const int nIdx) const;

    virtual int GetOutputWndCount() const;
    virtual CWnd* GetOutputWndPtrAt(const int nIdx) const;

    virtual CWorkSpaceBar* GetWorkSpacePanelPtr() const;
    virtual COutputBar* GetOutputPanelPtr() const;
    virtual CMainFrame* GetMainFramePtr() const;
    virtual CWorkSpaceDoc* GetWorkSpaceDocPtr() const;

protected:
    friend class CPluginManager;
	// Can only be managed by CPluginManager
    CPluginBase(CWorkSpaceBar* pWorkSpacePanel, COutputBar* pOutputPanel, CMainFrame* pMainFrame, CWorkSpaceDoc* pWorkSpaceDoc);
	virtual ~CPluginBase();

    // unused constructor
    CPluginBase();
    CPluginBase(const CPluginBase &oPlugin);

private:

    struct _OUTPUTWND_DATA
    {
        CWnd    *pWnd;      // the window pointer
        int     nID;        // the ID asscioated with the window
    };

    struct _LEFTVIEWWND_DATA
    {
        CWnd    *pWnd;      // the window pointer
        int     nID;        // the ID asscioated with the window
    };

    CWorkSpaceBar*                  m_pWorkSpacePanel;  // workspace panel
    COutputBar*                     m_pOutputPanel;     // output panel
    CMainFrame*                     m_pMainFrame;       // main frame
    CWorkSpaceDoc*                  m_pWorkSpaceDoc;       // workspace document
    vector<_OUTPUTWND_DATA>         m_vecOutputWnd;     // list of output window
    vector<_LEFTVIEWWND_DATA>       m_vecLeftViewWnd;   // list of left view window
};

#endif // !defined(AFX_PLUGINBASE_H__A2A7E852_E1F5_4049_8354_2F026E390A13__INCLUDED_)
