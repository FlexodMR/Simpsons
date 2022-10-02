// GUIItem.h: interface for the CGUIItem class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_GUIITEM_H__43785130_86C8_45C0_B6F6_AA0BAB1A0704__INCLUDED_)
#define AFX_GUIITEM_H__43785130_86C8_45C0_B6F6_AA0BAB1A0704__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CGUIItem
{
public:
    CGUIItem( ) { }
    virtual ~CGUIItem( ) { }

    virtual const CString & GetItemDisplayText( ) const = 0
    {
        return ms_strEmpty;
    }

    virtual unsigned int GetPropertyItemCount( ) const
    {
        return 1;
    }

    virtual const CString GetPropertyItemName( unsigned int uIndex ) const
    {
        return ms_strEmpty;
    }

    virtual const CString GetPropertyItemValue( unsigned int uIndex ) const
    {
        return ms_strEmpty;
    }

protected:

    static CString ms_strEmpty;
};

#endif // !defined(AFX_GUIITEM_H__43785130_86C8_45C0_B6F6_AA0BAB1A0704__INCLUDED_)
