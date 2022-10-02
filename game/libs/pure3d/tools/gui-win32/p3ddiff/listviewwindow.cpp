//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <windows.h>

#include "listviewwindow.hpp"
#include "treeviewwindow.hpp"
#include "filewrapper.hpp"
#include "winmain.hpp"
#include "resource.h"

LONG P3DList_PrevWndProc = 0;

tlDataChunk* P3DList_SrcChunk = 0;  // currently selected chunk at the source list
tlDataChunk* P3DList_DstChunk = 0;  // currently selected chunk at the source list

static int P3DList_MaxWidth = 0; // maximum listbox item width
static int P3DList_SrcFieldOffsets[1024];
static int P3DList_DstFieldOffsets[1024];
static int P3DList_LastDiffChunk;        //the index of last different data chunk

//------------------------------------------------------------------------
void P3DList_Clear( bool bSrcList)
{
    P3DList_Fill(0, bSrcList);
}


//------------------------------------------------------------------------
void P3DList_Fill(tlDataChunk* chunk, bool bSrcList )
{

    if( bSrcList == true )
          P3DList_SrcChunk = chunk;
    else 
         P3DList_DstChunk = chunk;

    int count;

    if ( chunk != 0 )
    {
        count = 0;

        for (int i = 0; i < chunk->GetFieldCount(); ++i)
        {
            if( bSrcList )
                P3DList_SrcFieldOffsets[i] = count;
            else
                P3DList_DstFieldOffsets[i] = count;
            ++count;

            if (chunk->GetFieldIsArray(i))
            {
                count += chunk->GetFieldArrayCount(i);
            }
        }

        if( bSrcList )
            P3DList_SrcFieldOffsets[chunk->GetFieldCount()] = count;
        else
            P3DList_DstFieldOffsets[chunk->GetFieldCount()] = count;
    }
    else
    {
        count = 0;
    }

    P3DList_MaxWidth = 0;

    if( bSrcList ){
          SendMessage(P3DWin_SrcList, LB_SETHORIZONTALEXTENT, P3DList_MaxWidth, 0);

          SendMessage(P3DWin_SrcList, LB_SETCOUNT, count, 0);
          UpdateWindow(P3DWin_SrcList);
    }
    else{
          SendMessage(P3DWin_DstList, LB_SETHORIZONTALEXTENT, P3DList_MaxWidth, 0);

          SendMessage(P3DWin_DstList, LB_SETCOUNT, count, 0);
          UpdateWindow(P3DWin_DstList);
    }
}


//------------------------------------------------------------------------
static void P3DList_GetFieldIndex(HWND hwnd, int itemID, int* field_idx, int* array_idx)
{
    tlDataChunk *listChunk;

    int *fieldOffset = NULL;

    if( hwnd == P3DWin_SrcList ){
         listChunk = P3DList_SrcChunk;
         fieldOffset = P3DList_SrcFieldOffsets;
    }
    else{
         listChunk = P3DList_DstChunk;
         fieldOffset = P3DList_DstFieldOffsets;
    }

    if ((listChunk != 0) && (itemID >= 0))
    {
        for (int i = 0; i <= listChunk->GetFieldCount(); ++i)
        {
            if (itemID == fieldOffset[i])
            {
                if (field_idx != 0)
                    *field_idx = i;
                if (array_idx != 0)
                    *array_idx = -1;
                return;
            }
            else if (itemID < fieldOffset[i])
            {
                if ((i > 0) && (itemID > fieldOffset[i-1]))
                {
                    if (field_idx != 0)
                        *field_idx = i-1;
                    if (array_idx != 0)
                        *array_idx = itemID - fieldOffset[i-1] - 1;
                    return;
                }
            }
        }
    }

    if (field_idx != 0)
        *field_idx = -1;
    if (array_idx != 0)
        *array_idx = -1;
}
//------------------------------------------------------------------------
//      Compare a item with its correspondent item to see if 
//      they are different or not
//------------------------------------------------------------------------
static bool P3DList_IsItemDifferent( HWND hWnd, int field_idx, int array_idx)
{
     tlDataChunk *srcChunk = 0;
     tlDataChunk *dstChunk = 0;

     if( hWnd == P3DWin_SrcList ){
          srcChunk = P3DList_SrcChunk;
          dstChunk = P3DList_DstChunk;
     }
     else{
          srcChunk = P3DList_DstChunk;
          dstChunk = P3DList_SrcChunk;
     }

     // no compared chunk, return false
     if( !dstChunk || !srcChunk )
          return false;

     if (srcChunk->GetFieldIsArray(field_idx)){
          if (array_idx < 0)  //array title, so should be same always
                return false;
          else{
                //extra array entry in src chunk; return true(different) always
                if( array_idx >= dstChunk->GetFieldArrayCount( field_idx ) )
                     return true;

                char srcTmp[256];
                char dstTmp[256];

                srcChunk->GetFieldArrayValue(field_idx, array_idx, srcTmp, sizeof(srcTmp));
                dstChunk->GetFieldArrayValue(field_idx, array_idx, dstTmp, sizeof(dstTmp));

                if( strcmp( srcTmp, dstTmp ) == 0  )  //array's items are the same
                     return false;
                else
                     return true;
          }
     }
     else{
          char srcTmp[256];
          char dstTmp[256];

          srcChunk->GetFieldValue(field_idx, srcTmp, sizeof(srcTmp));
          dstChunk->GetFieldValue(field_idx, dstTmp, sizeof(dstTmp));

          if( strcmp( srcTmp, dstTmp ) == 0  )  //array's items are the same
                return false;
          else
                return true;
     }
}
//------------------------------------------------------------------------
static void P3DList_DrawItem( HWND hWnd, HDC hDC, RECT* rect, bool focus, bool selected,
                                      int field_idx, int array_idx)
{
    char buf[1024];
    buf[0] = 0;

    tlDataChunk *listChunk;

    if( hWnd == P3DWin_SrcList )
         listChunk = P3DList_SrcChunk;
    else
         listChunk = P3DList_DstChunk;

    if ((listChunk != 0) && (listChunk->GetFieldCount() > 0))
    {
        const char* ftype = listChunk->GetFieldType(field_idx);
        if (ftype == 0) ftype = "NULL";

        if (listChunk->GetFieldIsArray(field_idx))
        {
            if (array_idx < 0)
            {
                const char* fname = listChunk->GetFieldName(field_idx);
                if (fname == 0) fname = "NULL";

                sprintf(buf, "%s %s[%d] =", ftype, fname,
                                                     listChunk->GetFieldArrayCount(field_idx));
            }
            else
            {
                char tmp[256];
                listChunk->GetFieldArrayValue(field_idx, array_idx, tmp, sizeof(tmp));

                if (strcmp(ftype, "string") == 0)
                {
                    sprintf(buf, "    [%d] = \"%s\"", array_idx, tmp);
                }
                else
                {
                    sprintf(buf, "    [%d] = %s", array_idx, tmp);
                }
            }
        }
        else
        {
            const char* fname = listChunk->GetFieldName(field_idx);
            if (fname == 0) fname = "NULL";

            char tmp[256];
            if (!listChunk->GetFieldValue(field_idx, tmp, sizeof(tmp)))
            {
                strcpy(tmp, "<ERROR>");
            }

            if (strcmp(ftype, "string") == 0)
            {
                sprintf(buf, "%s %s = \"%s\"", ftype, fname, tmp);
            }
            else
            {
                sprintf(buf, "%s %s = %s", ftype, fname, tmp);
            }
        }
    }

    SIZE sz;
    GetTextExtentPoint32(hDC, buf, strlen(buf), &sz);
    if (sz.cx > P3DList_MaxWidth)
    {
        P3DList_MaxWidth = sz.cx;
        SendMessage(hWnd, LB_SETHORIZONTALEXTENT, P3DList_MaxWidth, 0);
    }

    FillRect(hDC, rect, (HBRUSH)(COLOR_WINDOW+1));
    
    if( P3DList_IsItemDifferent( hWnd, field_idx, array_idx ) == false )
          DrawText(hDC, buf, -1, rect, DT_LEFT | DT_TOP | DT_NOPREFIX |
                                          DT_SINGLELINE);
    else{

         COLORREF oldClr = SetTextColor( hDC, RGB( 255, 0, 0 ) );
         DrawText(hDC, buf, -1, rect, DT_LEFT | DT_TOP | DT_NOPREFIX |
                                          DT_SINGLELINE);
         SetTextColor( hDC, oldClr );
    }


    if (focus)
        DrawFocusRect(hDC, rect);
}


//-------------------------------------------------------------------------
struct P3DList_EditFieldInitStruct
{
    tlDataChunk* chunk;
    int field_idx;
    int array_idx;
    char new_val[256];
};

static BOOL CALLBACK P3DList_EditFieldProc(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
{
    switch(msg)
    {
        case WM_INITDIALOG:
        {
            RECT rc, rcOwner, rcDlg;
            GetWindowRect(P3DWin_Main, &rcOwner);
            GetWindowRect(hwnd, &rcDlg);
            CopyRect(&rc, &rcOwner);

            OffsetRect(&rcDlg, -rcDlg.left, -rcDlg.top);
            OffsetRect(&rc, -rc.left, -rc.top);
            OffsetRect(&rc, -rcDlg.right, -rcDlg.bottom);
 
            SetWindowPos(hwnd, HWND_TOP,
                             rcOwner.left + (rc.right / 2),
                             rcOwner.top + (rc.bottom / 2),
                             0, 0, SWP_NOSIZE);

            P3DList_EditFieldInitStruct* efs = (P3DList_EditFieldInitStruct*)lparam;
            SetWindowLong(hwnd, DWL_USER, (LONG)efs);

            char buf[256];

            if (efs->array_idx >= 0)
            {
                sprintf(buf, "Edit Field - %s %s[%d]", efs->chunk->GetFieldType(efs->field_idx),
                                                                    efs->chunk->GetFieldName(efs->field_idx),
                                                                    efs->array_idx);
                SetWindowText(hwnd, buf);
                buf[0] = 0;
                efs->chunk->GetFieldArrayValue(efs->field_idx, efs->array_idx, buf, 255);
            }
            else
            {
                sprintf(buf, "Edit Field - %s %s", efs->chunk->GetFieldType(efs->field_idx),
                                                              efs->chunk->GetFieldName(efs->field_idx));
                SetWindowText(hwnd, buf);
                buf[0] = 0;
                efs->chunk->GetFieldValue(efs->field_idx, buf, 255);
            }

            SetDlgItemText(hwnd, IDC_EDIT_ORIG, buf);
            SetDlgItemText(hwnd, IDC_EDIT_NEW, buf);

            SendMessage(GetDlgItem(hwnd, IDC_EDIT_NEW), EM_SETLIMITTEXT, 255, 0);

            return TRUE;
        }

        case WM_COMMAND:
        {   
            P3DList_EditFieldInitStruct* efs =
                (P3DList_EditFieldInitStruct*)GetWindowLong(hwnd, DWL_USER);

            switch(LOWORD(wparam))
            {
                case IDOK:
                {
                    char tmp[256];
                    tmp[0] = 0;

                    GetDlgItemText(hwnd, IDC_EDIT_ORIG, tmp, 255);
                    GetDlgItemText(hwnd, IDC_EDIT_NEW, efs->new_val, 255);

                    if (strcmp(tmp, efs->new_val) != 0)
                    {
                        EndDialog(hwnd, 1);
                    }
                    else
                    {
                        EndDialog(hwnd, 0);
                    }
                    return TRUE;
                }

                case IDCANCEL:
                {
                    efs->new_val[0] = 0;
                    EndDialog(hwnd, 0);
                    return TRUE;
                }
            }

            break;
        }

    }

    return FALSE;
}


//------------------------------------------------------------------------
LRESULT CALLBACK P3DList_Proc(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
{
    switch(msg)
    {
        case WM_MEASUREITEM:
        {
             if( hwnd == P3DWin_SrcList || hwnd == P3DWin_DstList ){
                 SIZE sz;
                 HDC hdc = GetDC(hwnd);
                 GetTextExtentPoint32(hdc, "M", 1, &sz);
                 ReleaseDC(hwnd, hdc);

                 //maxWidth = sz.cx;
                 MEASUREITEMSTRUCT* mis = (MEASUREITEMSTRUCT*)lparam;
                 mis->itemWidth = 100; // does this matter?
                 mis->itemHeight = sz.cy;
                 mis->itemData = 0;    // does this matter?
             }
             return TRUE;
        }

        case WM_DRAWITEM:
        {
            DRAWITEMSTRUCT* dis = (DRAWITEMSTRUCT*)lparam;
            int itemID = (int)dis->itemID;
            int field_idx, array_idx;

            P3DList_GetFieldIndex(dis->hwndItem, itemID, &field_idx, &array_idx);
            P3DList_DrawItem(dis->hwndItem, dis->hDC, &dis->rcItem,
                                  ((dis->itemState & ODS_FOCUS) != 0),
                                  ((dis->itemState & ODS_SELECTED) != 0),
                                  field_idx, array_idx);

            return TRUE;
        }

        case WM_VKEYTOITEM:
        {
          if( (HWND)lparam == P3DWin_SrcList || (HWND)lparam == P3DWin_DstList ){
                switch (LOWORD(wparam))
                {
                    case VK_RETURN:
                    {
                        int itemID = HIWORD(wparam);
                        return -2;
                    }

                    case VK_TAB:
                    {
                        SetFocus(P3DWin_Tree);
                        return -2;
                    }

                }         
                return -1;
          }
          break;
        }

        case WM_COMMAND:
        {
            if ((HWND)lparam == hwnd)
            {
                switch (HIWORD(wparam))
                {
                    case LBN_DBLCLK:
                    {
                        int itemID = SendMessage(hwnd, LB_GETCARETINDEX, 0, 0);
                        return TRUE;
                        
                    }
                }
            }
            return FALSE;
        }

        case WM_VSCROLL:
        {
             CallWindowProc( (WNDPROC) P3DList_PrevWndProc, hwnd, msg, wparam, lparam);

             if( P3DList_SrcChunk !=0 && P3DList_DstChunk !=0 ){
                  if( hwnd == P3DWin_SrcList ){                 
                        int topIndex = SendMessage( P3DWin_SrcList, LB_GETTOPINDEX, 0L, 0L );                  
                        SendMessage( P3DWin_DstList, LB_SETTOPINDEX, (WPARAM)topIndex, 0L );                 
                  }
                  else{
                        int topIndex = SendMessage( P3DWin_DstList, LB_GETTOPINDEX, 0L, 0L );
                        SendMessage( P3DWin_SrcList, LB_SETTOPINDEX, (WPARAM)topIndex, 0L );
                  }
             }
             return false;

        }
                  
    }

    return CallWindowProc( (WNDPROC) P3DList_PrevWndProc, hwnd, msg, wparam, lparam);
}

void P3DList_GoToLastDiffField( )
{
     if( P3DList_SrcChunk == 0 || P3DList_DstChunk == 0 )
          return;

     int field_idx, array_idx;
     int selectIdx = ::SendMessage( P3DWin_SrcList, LB_GETCARETINDEX, 0L, 0L );

     int srcCount = ::SendMessage( P3DWin_SrcList, LB_GETCOUNT, 0L, 0L );
     int dstCount = ::SendMessage( P3DWin_DstList, LB_GETCOUNT, 0L, 0L );

     HWND hList;
     int count;
     if( srcCount > dstCount ){
          hList = P3DWin_SrcList;
          count = srcCount;
     }
     else{
          hList = P3DWin_DstList;
          count = dstCount;
     }
     int next = -1;
     int i = selectIdx - 1;                    

     while( i >= 0 ){
          P3DList_GetFieldIndex( hList, i, &field_idx, &array_idx );
          if( P3DList_IsItemDifferent( hList, field_idx, array_idx ) ){
                next = i;
                break;                            
          }
          --i;                        
     }

     if( next != -1 ){
          ::SetFocus( P3DWin_SrcList );
          ::SendMessage( P3DWin_SrcList, LB_SETCURSEL, (WPARAM)i, 0L );
          ::SendMessage( P3DWin_DstList, LB_SETCURSEL, (WPARAM)i, 0L );
     }

}

void P3DList_GoToNextDiffField( )
{
     if( P3DList_SrcChunk == 0 || P3DList_DstChunk == 0 )
          return;

     int field_idx, array_idx;
     int selectIdx = ::SendMessage( P3DWin_SrcList, LB_GETCARETINDEX, 0L, 0L );

     int srcCount = ::SendMessage( P3DWin_SrcList, LB_GETCOUNT, 0L, 0L );
     int dstCount = ::SendMessage( P3DWin_DstList, LB_GETCOUNT, 0L, 0L );

     HWND hList;
     int count;
     if( srcCount > dstCount ){
          hList = P3DWin_SrcList;
          count = srcCount;
     }
     else{
          hList = P3DWin_DstList;
          count = dstCount;
     }
     int next = -1;
     int i = selectIdx + 1;                    

     while( i < count ){
          P3DList_GetFieldIndex( hList, i, &field_idx, &array_idx );
          if( P3DList_IsItemDifferent( hList, field_idx, array_idx ) ){
                next = i;
                break;                            
          }
          ++i;                        
     }

     if( next != -1 ){
          ::SetFocus( P3DWin_SrcList );
          ::SendMessage( P3DWin_SrcList, LB_SETCURSEL, (WPARAM)i, 0L );
          ::SendMessage( P3DWin_DstList, LB_SETCURSEL, (WPARAM)i, 0L );
     }

}


// End of file.

