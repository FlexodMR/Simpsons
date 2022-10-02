// FE Data TesterView.cpp : implementation of the CFEDataTesterView class
//

#include "stdafx.h"
#include "FE Data Tester.h"

#include "FE Data TesterDoc.h"
#include "FE Data TesterView.h"


#include "..\FeData\NamedElements\Page.h"
#include "..\FeData\NamedElements\Screen.h"
#include "..\FeData\DrawingContexts\GDIDrawingContext.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CFEDataTesterView

IMPLEMENT_DYNCREATE(CFEDataTesterView, CView)

BEGIN_MESSAGE_MAP(CFEDataTesterView, CView)
    //{{AFX_MSG_MAP(CFEDataTesterView)
        // NOTE - the ClassWizard will add and remove mapping macros here.
        //    DO NOT EDIT what you see in these blocks of generated code!
    //}}AFX_MSG_MAP
    // Standard printing commands
    ON_COMMAND(ID_FILE_PRINT, CView::OnFilePrint)
    ON_COMMAND(ID_FILE_PRINT_DIRECT, CView::OnFilePrint)
    ON_COMMAND(ID_FILE_PRINT_PREVIEW, CView::OnFilePrintPreview)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFEDataTesterView construction/destruction

CFEDataTesterView::CFEDataTesterView()
{
    // TODO: add construction code here

}

CFEDataTesterView::~CFEDataTesterView()
{
}

BOOL CFEDataTesterView::PreCreateWindow(CREATESTRUCT& cs)
{
    // TODO: Modify the Window class or styles here by modifying
    //  the CREATESTRUCT cs

    return CView::PreCreateWindow(cs);
}





/////////////////////////////////////////////////////////////////////////////
// CFEDataTesterView drawing

void CFEDataTesterView::OnDraw(CDC* pDC)
{
    CFEDataTesterDoc* pDoc = GetDocument();
    ASSERT_VALID(pDoc);

    FeData::GDIDrawingContext theDrawingContext;
    theDrawingContext.SetCDC( pDC );


    FeData::Page* page = pDoc->GetPage();


    if( page != NULL )
    {
        page->Draw( &theDrawingContext );
    }
    else
    {
        FeData::Screen* screen = pDoc->GetScreen();
        if( screen != NULL )
        {
            screen->Draw( &theDrawingContext );
        }
    }

}




/////////////////////////////////////////////////////////////////////////////
// CFEDataTesterView printing

BOOL CFEDataTesterView::OnPreparePrinting(CPrintInfo* pInfo)
{
    // default preparation
    return DoPreparePrinting(pInfo);
}

void CFEDataTesterView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
    // TODO: add extra initialization before printing
}

void CFEDataTesterView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
    // TODO: add cleanup after printing
}

/////////////////////////////////////////////////////////////////////////////
// CFEDataTesterView diagnostics

#ifdef _DEBUG
void CFEDataTesterView::AssertValid() const
{
    CView::AssertValid();
}

void CFEDataTesterView::Dump(CDumpContext& dc) const
{
    CView::Dump(dc);
}

CFEDataTesterDoc* CFEDataTesterView::GetDocument() // non-debug version is inline
{
    ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CFEDataTesterDoc)));
    return (CFEDataTesterDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CFEDataTesterView message handlers
