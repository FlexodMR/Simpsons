// DefaultPlugin.h: interface for the CDefaultPlugin class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_DEFAULTPLUGIN_H__A58292F1_B9C0_4FBF_9BAC_E5DD59249B27__INCLUDED_)
#define AFX_DEFAULTPLUGIN_H__A58292F1_B9C0_4FBF_9BAC_E5DD59249B27__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "PluginBase.h"

class CDefaultPlugin : public CPluginBase  
{
public:


protected:
    friend class CPluginManager;
	// Can only be managed by CPluginManager
    CDefaultPlugin(CWorkSpaceBar* pWorkSpacePanel, COutputBar* pOutputPanel, CMainFrame* pMainFrame);
	virtual ~CDefaultPlugin();

    // unused constructor
    CDefaultPlugin();
    CDefaultPlugin(const CPluginBase &oPlugin);

};

#endif // !defined(AFX_DEFAULTPLUGIN_H__A58292F1_B9C0_4FBF_9BAC_E5DD59249B27__INCLUDED_)
