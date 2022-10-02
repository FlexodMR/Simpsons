#pragma once

#ifndef __XUTIL_H
#define __XUTIL_H

#include "stdafx.h"

class CXObject;
class CObArray;

/////////////////////////////////////////////////////////////////////////////
// Helpers

BOOL IsMultiResourceObject(CXObject* pObject);

int FindObjectInArray(CObArray* pArray, CXObject* pObject);

void MoveObject(CObArray* pArray, CXObject* pObject, BOOL bMoveUp);


DWORD GetStringLengthBytes(LPCTSTR pszString);

void CopyString(BYTE** ppData, CString& str, BOOL bCopyFrom);

#define xcROUND_UP(Number,Base)        (((Number+(Base-1))/Base)*Base)

#endif
