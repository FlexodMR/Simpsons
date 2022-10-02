// PluginManager.h: interface for the CPluginManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_PLUGINMANAGER_H__886ACF85_A7E7_4DA2_88F8_4EE715A043F0__INCLUDED_)
#define AFX_PLUGINMANAGER_H__886ACF85_A7E7_4DA2_88F8_4EE715A043F0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "stdafx.h"

class CPluginBase;                  // base class for plugin system
class CWorkSpaceBar;
class COutputBar;
class CMainFrame;
class CWorkSpaceDoc;

class CPluginManager
{
public:

    CPluginManager();
	virtual ~CPluginManager();

    // Is the DLL file a valid plugin
    virtual bool IsValidPlugin(const char* szDllFile);
    // Is the DLL already loaded in the program
    virtual bool IsDLLLoaded(const char* szDllFile) const;

    // load a DLL as a plugin
    virtual bool LoadPlugin(const char* szDllFile);
    virtual bool LoadPlugin(CPluginBase* pPlugin, HMODULE hDllModule);
    // unload a plugin, specify by index of the plugin
    virtual bool UnloadPlugin(const int nIndex);

    virtual int GetPluginCount() const;
    virtual CPluginBase* GetPluginPtrAt(const int nIndex) const;

private:

    struct _PLUGIN_DATA
    {
        CPluginBase* pPlugin;
        HMODULE hDllModule;
    };

    // list of plugin in the system
    vector<_PLUGIN_DATA>            m_vecPlugin;
    // number of PluginManager created, only one can be created
    static int                      ms_nInstanceCount;
};

typedef CPluginBase* (FUNC_CREATEPLUGIN)(CWorkSpaceBar* pWorkSpacePanel, COutputBar* pOutputPanel, CMainFrame* pMainFrame, CWorkSpaceDoc* pWorkSpace);

#endif // !defined(AFX_PLUGINMANAGER_H__886ACF85_A7E7_4DA2_88F8_4EE715A043F0__INCLUDED_)
