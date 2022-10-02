#pragma once

#ifndef _UNDOCLASSES_H_
#define _UNDOCLASSES_H_


#include "StdAfx.h"

class CXObject;
class CXConDoc;
class CXDisplay;
class CXLayer;
class CXOverlay;
class CXScreen;
class CXResource;
class CXContext;

/////////////////////////////////////////////////////////////////////////////
// Undo Object

enum
{
    UNDO_MODIFY,
    UNDO_ADD,
    UNDO_DELETE,
    UNDO_MOVE,
    UNDO_MULTI,
};

class CUndoObject : public CObject
{
public:
    CUndoObject(CXObject* pObject, int nAction);
    virtual ~CUndoObject();

    virtual void Reset(CXConDoc* pDoc) = 0;

    CXObject* m_pObject;
    int m_nAction;
    int m_nIndex;
};

typedef CTypedPtrArray<CObArray, CUndoObject*> CUndoArray;


class CUndoMove : public CUndoObject
{
public:
    CUndoMove(CXObject* pObject, BOOL bMoveUp);
    virtual ~CUndoMove() {}
    virtual void Reset(CXConDoc* pDoc);
    BOOL m_bMoveUp;
};


class CUndoMulti : public CUndoObject
{
public:
    CUndoMulti(CXDisplay* pDisplay);
    virtual ~CUndoMulti();
    virtual void Reset(CXConDoc* pDoc);
    CObArray m_arObject;
};

class CUndoResource : public CUndoObject
{
public:
    CUndoResource(CXResource* pResource, int nAction, int nIndex = 0);
    virtual ~CUndoResource() {}
    virtual void Reset(CXConDoc* pDoc);
};

class CUndoContext : public CUndoObject
{
public:
 CUndoContext(CXContext* pContext, int nAction);
 virtual ~CUndoContext() {}
 virtual void Reset(CXConDoc* pDoc);
};


class CUndoLayer : public CUndoObject
{
public:
    CUndoLayer(CXLayer* pLayer, int nAction);
    virtual ~CUndoLayer() {}
    virtual void Reset(CXConDoc* pDoc);
};

class CUndoOverlay : public CUndoObject
{
public:
    CUndoOverlay(CXOverlay* pOverlay, int nAction);
    virtual ~CUndoOverlay() {}
    virtual void Reset(CXConDoc* pDoc);
};

class CUndoScreen : public CUndoObject
{
public:
    CUndoScreen(CXScreen* pScreen, int nAction);
    virtual ~CUndoScreen() {}
    virtual void Reset(CXConDoc* pDoc);
    BOOL m_bOverlayChange;
};

#endif
