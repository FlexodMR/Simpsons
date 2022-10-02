// MemWndState.h: interface for the CMemWndState class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MEMWNDSTATE_H__5F811D43_5127_4748_A9A0_92F1EEFED571__INCLUDED_)
#define AFX_MEMWNDSTATE_H__5F811D43_5127_4748_A9A0_92F1EEFED571__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CMemWndState;

typedef TRef< CMemWndState > CMemWndStatePtr;

//
// allow us to save the state of the windows and restore them later,
// it also applies to frame window where it has child window
//
class CMemWndState : 
    public CObject,
    public CMFCRefCount
{
	DECLARE_DYNCREATE( CMemWndState )
public:

    void Initialize( const CRuntimeClass * pClassInfo, unsigned int uWndID, const int nWndState, const CRect & rcWndRect );

    const CRuntimeClass * GetWindowType( ) const;

    unsigned int GetWndID( ) const;

    void SetWndState( const int nWndState );

    int GetWndState( ) const;

    bool IsMaximized( ) const;

    bool IsMinimized( ) const;

    bool IsNormalized( ) const;

    void SetWndRect( const CRect & rcWndRect );

    const CRect & GetWndRect( ) const;

    const list< CMemWndState * > & GetChildWndList( ) const;
    //
    // child window state list
    //
    void AddChildWndState( CMemWndState * pChildWndState );

    const CMemWndState * GetFirstChildWndState( ) const;

    const CMemWndState * GetNextChildWndState( ) const;

    const CMemWndState * GetPrevChildWndState( ) const;

    const CMemWndState * GetLastChildWndState( ) const;

    const CMemWndState * FindChildWndState( const CRuntimeClass * pClassInfo, unsigned int uWndID ) const;

    CMemWndState * FindChildWndState( const CRuntimeClass * pClassInfo, unsigned int uWndID );

#if defined(_DEBUG) || defined(_AFXDLL)
    // Diagnostic Support
    virtual void AssertValid() const;
    virtual void Dump(CDumpContext& dc) const;
#endif

protected:

    CMemWndState();

    virtual ~CMemWndState();

    const CMemWndState * GetCurrentReadIterator( ) const;

private:

    const CRuntimeClass *   m_pWndClassType;        // type of the window we are using

    unsigned int            m_uWndID;               // ID of the window

    int                     m_nCmdShow;             // SW_SHOWMAXIMIZED, SW_SHOWMINIMIZED, SW_SHOWNORMAL is used

    CRect                   m_rcWndPosition;        // Where the window is, if it is SW_SHOWNORMAL

    list< CMemWndStatePtr >  m_aryChildWndState;     // list of child window state

    mutable list< CMemWndStatePtr >::const_iterator  m_ReadIterator;
};

#endif // !defined(AFX_MEMWNDSTATE_H__5F811D43_5127_4748_A9A0_92F1EEFED571__INCLUDED_)
