#if !defined(AFX_MEMERRORMSG_H__D69C87B9_E8BF_466D_9B03_4A514ADBA7CA__INCLUDED_)
#define AFX_MEMERRORMSG_H__D69C87B9_E8BF_466D_9B03_4A514ADBA7CA__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemErrorMsg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMemErrorMsg document
class CMemErrorMsg;
typedef TRef< CMemErrorMsg > CMemErrorMsgPtr;

class CMemErrorMsg :
    public CObject,
    public CMFCRefCount
{

protected:

    CMemErrorMsg( );           // protected constructor used by dynamic creation

    DECLARE_DYNCREATE( CMemErrorMsg )

public:

    enum MessageType
    {
        Message,
        Warning,
        Error,
        Command,        // does nothing, but has command in the Msg
    };

    void Initialize( const MessageType eType, const CString & strMsg, const void * pUserData, const CMFCRefCount * pRefObject = NULL );

    void SetSubTextEntry( const vector< CString > & arySubTextEntry );

    bool IsError( );

    bool IsWarning( );

    bool IsMessage( );

    bool IsCommand( );

    const CString & GetMsg( )const
    {
        return m_strMsg;
    }

    bool HasSubTextEntry( ) const
    {
        return m_arySubTextEntry.size( ) > 0;
    }

    const vector< CString > & GetSubTextEntry( ) const
    {
        return m_arySubTextEntry;
    }

private:

    MessageType             m_eType;
    CString                 m_strMsg;
    const void *            m_pUserData;

    TRef< CMFCRefCount >    m_pRefObject;

    vector< CString >       m_arySubTextEntry;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemErrorMsg)
	public:
	virtual void Serialize(CArchive& ar);   // overridden for document i/o
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMemErrorMsg();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMERRORMSG_H__D69C87B9_E8BF_466D_9B03_4A514ADBA7CA__INCLUDED_)
