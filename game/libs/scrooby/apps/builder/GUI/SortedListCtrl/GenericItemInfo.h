// GenericItemInfo.h: interface for the CGenericItemInfo class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_GenericItemInfo_H__CBAA6794_F21D_11D1_9F9F_84E5D3000000__INCLUDED_)
#define AFX_GenericItemInfo_H__CBAA6794_F21D_11D1_9F9F_84E5D3000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "ItemInfo.h"

class CGenericItemInfo : public CItemInfo  
{
public:

    CGenericItemInfo(int iItem, char* Column1, char* Column2) :
        CItemInfo(iItem),
        m_Column1(Column1),
        m_Column2(Column2) {};

    virtual ~CGenericItemInfo() {};

    CString& GetColumn1() { return m_Column1; }
    CString& GetColumn2() { return m_Column2; }

private:

    CGenericItemInfo();

    CString m_Column1;
    CString m_Column2;

};

#endif // !defined(AFX_GenericItemInfo_H__CBAA6794_F21D_11D1_9F9F_84E5D3000000__INCLUDED_)
