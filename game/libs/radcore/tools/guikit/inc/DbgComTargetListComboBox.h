
#ifndef DBGCOMTARGETLISTCOMBOBOX_H
#define DBGCOMTARGETLISTCOMBOBOX_H

#pragma once

#include <afxtempl.h>
#include <raddebugcommunication.hpp>
// CDbgComTargetListComboBox

//=============================================================================
// class CDbgComTargetListComboBox
//=============================================================================
//
// Description: ComboBox that populated with debugcommunication targets
//              if user can select a target, OnSelectTarget will get called.
//
//=============================================================================

#undef AFX_DATA
#define AFX_DATA AFX_EXT_DATA

class AFX_EXT_CLASS CDbgComTargetListComboBox : public CComboBox
{
    DECLARE_DYNCREATE(CDbgComTargetListComboBox)
public:

    CDbgComTargetListComboBox();

    virtual ~CDbgComTargetListComboBox();

    // Return the Debug Comm default target name
    CString GetDefaultTargetName( ) const;

    CString GetSelectedTargetName( ) const;

    // Select the target by name
    void SelectTarget( const CString & strTargetName );

    // Event handle when a target has been selected
    virtual void OnSelectTarget( const CString & strTargetName );

protected:

    static void TargetEnumCallBack( void* context, const radDbgComTargetName pName, const radDbgComIPAddress pIpAddress, unsigned short port, bool InUse );

private:

    IRadDbgComTargetTable *    m_pDbgComTargetTable;

    // List of target names
    CArray< CString >   m_aryTargetNameList;

    //
    // message mapping
    //
    DECLARE_MESSAGE_MAP()

public:

    afx_msg void OnCbnSelchange();
    afx_msg void OnCbnDropdown();
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
};

#undef AFX_DATA
#define AFX_DATA


#endif // DBGCOMTARGETLISTCOMBOBOX_H