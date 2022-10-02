//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// PluginManager.cpp: implementation of the CPluginManager class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"

#include "radtuner.h"
#include "MainFrm.h"
#include "PluginManager.h"
#include "PluginBase.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

int CPluginManager::ms_nInstanceCount = 0;

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////


//===========================================================================
// CPluginManager::CPluginManager
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CPluginManager::CPluginManager()
{
    // can only have 1 instance
    ASSERT(ms_nInstanceCount < 1);
    ms_nInstanceCount++;
}


//===========================================================================
// CPluginManager::~CPluginManager
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CPluginManager::~CPluginManager()
{
    ms_nInstanceCount--;
}
// Is the DLL file a valid plugin

//===========================================================================
// CPluginManager::IsValidPlugin
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* szDllFile
// 
// Return: bool 
//===========================================================================
bool CPluginManager::IsValidPlugin(const char* szDllFile)
{
    if (!::PathFileExists(szDllFile))
    {
        return(false);
    }

    HMODULE hDllModule = ::LoadLibraryEx(szDllFile, NULL, NULL);

    if (hDllModule == NULL)
    {
        return(false);
    }

    bool bRet = false;

    FUNC_CREATEPLUGIN *pCreatePluginInstance = (FUNC_CREATEPLUGIN *)::GetProcAddress(hDllModule, "CreatePluginInstance");
    if (pCreatePluginInstance != NULL)
    {
        bRet = true;
    }
    VERIFY(FreeLibrary(hDllModule));
    return(bRet);
}

// Is the DLL already loaded in the program

//===========================================================================
// CPluginManager::IsDLLLoaded
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* szDllFile
// 
// Return: bool 
//===========================================================================
bool CPluginManager::IsDLLLoaded(const char* szDllFile) const
{


    return(false);
}

// load a DLL as a plugin

//===========================================================================
// CPluginManager::LoadPlugin
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* szDllFile
// 
// Return: bool 
//===========================================================================
bool CPluginManager::LoadPlugin(const char* szDllFile)
{
    if (!::PathFileExists(szDllFile))
    {
        return(false);
    }

    HMODULE hDllModule = ::LoadLibraryEx(szDllFile, NULL, NULL);

    if (hDllModule == NULL)
    {
        return(false);
    }

    // let's Create a plugin
    FUNC_CREATEPLUGIN* pCreatePluginInstance = (FUNC_CREATEPLUGIN*)::GetProcAddress(hDllModule, "CreatePluginInstance");

    if (pCreatePluginInstance != NULL)
    {
        // must be mainframe
        ASSERT(theApp.m_pMainWnd->IsKindOf(RUNTIME_CLASS(CMainFrame)));

        CMainFrame *pMainFrame = (CMainFrame*)theApp.m_pMainWnd;
        CWorkSpaceBar* pWorkSpacePanel = pMainFrame->GetWorkSpacePtr();
        COutputBar* pOutputPanel = pMainFrame->GetOutputBarPtr();
        CWorkSpaceDoc* pWorkSpace = pMainFrame->GetWorkSpaceDocPtr();

        CPluginBase *pPlugin = (*pCreatePluginInstance)(pWorkSpacePanel, pOutputPanel, pMainFrame, pWorkSpace);
        if (pPlugin != NULL)
        {
            return(LoadPlugin(pPlugin, hDllModule));
        }
    }
    else
    {
        VERIFY(FreeLibrary(hDllModule));
        return(false);
    }

    return(false);
}


//===========================================================================
// CPluginManager::LoadPlugin
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CPluginBase* pPlugin
//             HMODULE hDllModule
// 
// Return: bool 
//===========================================================================
bool CPluginManager::LoadPlugin(CPluginBase* pPlugin, HMODULE hDllModule)
{
    ASSERT(pPlugin);

    _PLUGIN_DATA Data;
    Data.hDllModule = hDllModule;
    Data.pPlugin = pPlugin;
    m_vecPlugin.push_back(Data);

    return(true);
}

// unload a plugin, specify by index of the plugin

//===========================================================================
// CPluginManager::UnloadPlugin
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const int nIndex
// 
// Return: bool 
//===========================================================================
bool CPluginManager::UnloadPlugin(const int nIndex)
{
    ASSERT(m_vecPlugin.size() > nIndex);

    delete m_vecPlugin[nIndex].pPlugin;
    
    if (m_vecPlugin[nIndex].hDllModule != NULL)
    {
        VERIFY(FreeLibrary(m_vecPlugin[nIndex].hDllModule));
    }

    m_vecPlugin.erase(&m_vecPlugin[nIndex]);

    return(true);
}


//===========================================================================
// CPluginManager::GetPluginCount
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CPluginManager::GetPluginCount() const
{
    return(m_vecPlugin.size());
}


//===========================================================================
// CPluginManager::GetPluginPtrAt
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const int nIndex
// 
// Return: CPluginBase* 
//===========================================================================
CPluginBase* CPluginManager::GetPluginPtrAt(const int nIndex) const
{
    ASSERT(m_vecPlugin.size() > nIndex);

    return(m_vecPlugin[nIndex].pPlugin);
}
