#include "xResource.h"
#include "xUtil.h"
#include "UndoClasses.h"
#include "XConDoc.h"
#include "TabView.h"
#include "OverlayDlg.h"
#include "ScreenDlg.h"
#include "ResourceDlg.h"

/////////////////////////////////////////////////////////////////////////////
// CXResource

IMPLEMENT_DYNAMIC(CXResource, CXObjectName)

void CXResource::DeleteResource()
{
    int nIndex = FindObjectInArray(m_pDocument->GetObjectArray(GetType()), this);

    m_pDocument->GetTabView()->GetPage(RESOURCE_PAGE)->DeleteObj(this);
    m_pDocument->DeleteDocItem(this);

    m_pDocument->AddUndoObject(new CUndoResource(this, UNDO_DELETE, nIndex));
}

void CXResource::AddUndoObjectModify()
{
    m_pDocument->AddUndoObject(new CUndoResource(this, UNDO_MODIFY));
}
