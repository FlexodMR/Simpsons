//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// file: listviewwindow.cpp
// Greg Mayer
// Nov 26, 1998


//----------------
// system includes
//----------------
#include <windows.h>

//-----------------
// project includes
//-----------------
#include "listviewwindow.hpp"
#include "treeviewwindow.hpp"
#include "filewrapper.hpp"
#include "winmain.hpp"
#include "resource.h"

const int P3DList_VectorFieldsNum = 6;

tlDataChunk* P3DList_Chunk = 0;  // currently selected chunk
static int P3DList_MaxWidth = 0; // maximum listbox item width
static int P3DList_FieldOffsets[256];

struct VectorFieldDesc{
    char *typeName;             //toollib type name for this vector field
    int componentNum;           //number of components
    char *label1;               //label for first component on vector-editor-dialog
    char *label2;               //label for second component on vector-editor-dialog
    char *label3;               //label for third component on vector-editor-dialog
    char *label4;               //label for fourth component on vector-editor-dialog
    char *scanFormat;           //the format for scaning, the same as what's specified by GetFieldValue( ) function.
};

const VectorFieldDesc P3DList_VectorFields[ P3DList_VectorFieldsNum ] = {
    { "tlColour",       4, "Red:", "Green:", "Blue:", "Alpha:", "Red(%f), Green(%f), Blue(%f), Alpha(%f)" },
    { "tlColourOffset", 4, "Red:", "Green:", "Blue:", "Alpha:", "Red(%f), Green(%f), Blue(%f), Alpha(%f)" },
    { "tlPoint",        3, "X:",   "Y:",     "Z:",    "",       "%f, %f, %f" },
    { "tlQuat",         4, "X:",   "Y:",     "Z:",    "W:",     "%f, %f, %f, %f"   },
    { "tlUV",           2, "U:",   "V:",     "",      "",       "U(%f), V(%f)" },
    { "tlPoint2D",      2, "X:",   "Y:",     "",      "",       "%f, %f" }
};

    
//----------------
// local functions
//----------------

//------------------------------------------------------------------------
void P3DList_Clear()
{
    P3DList_Fill(0);
}


//------------------------------------------------------------------------
void P3DList_Fill(tlDataChunk* chunk)
{
    P3DList_Chunk = chunk;

    int count;

    if (P3DList_Chunk != 0)
    {
        count = 0;

        for (int i = 0; i < P3DList_Chunk->GetFieldCount(); ++i)
        {
            P3DList_FieldOffsets[i] = count;
            ++count;

            if (P3DList_Chunk->GetFieldIsArray(i))
            {
                count += P3DList_Chunk->GetFieldArrayCount(i);
            }
        }

        P3DList_FieldOffsets[P3DList_Chunk->GetFieldCount()] = count;
    }
    else
    {
        count = 0;
    }

    P3DList_MaxWidth = 0;
    SendMessage(P3DWin_List, LB_SETHORIZONTALEXTENT, P3DList_MaxWidth, 0);

    SendMessage(P3DWin_List, LB_SETCOUNT, count, 0);
    UpdateWindow(P3DWin_List);
}

int P3DList_GetItemID( int field_idx, int array_idx )
{
     
     if( P3DList_Chunk != 0 ){
          int count = 0;
          for( int i = 0; i < field_idx; ++i )
                count += P3DList_FieldOffsets[ i ];
                
          count += field_idx;

          if( array_idx >= 0 )
                count += array_idx + 1;

          return count;
     }
     else
          return -1;
}
//------------------------------------------------------------------------
static void P3DList_GetFieldIndex(int itemID, int* field_idx, int* array_idx)
{
    if ((P3DList_Chunk != 0) && (itemID >= 0))
    {
        for (int i = 0; i <= P3DList_Chunk->GetFieldCount(); ++i)
        {
            if (itemID == P3DList_FieldOffsets[i])
            {
                if (field_idx != 0)
                    *field_idx = i;
                if (array_idx != 0)
                    *array_idx = -1;
                return;
            }
            else if (itemID < P3DList_FieldOffsets[i])
            {
                if ((i > 0) && (itemID > P3DList_FieldOffsets[i-1]))
                {
                    if (field_idx != 0)
                        *field_idx = i-1;
                    if (array_idx != 0)
                        *array_idx = itemID - P3DList_FieldOffsets[i-1] - 1;
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

//-------------------------------------------------------------------------------
//      if the type of the field is one of tlPoint, tlColour, or tlUV
//      return true
static bool P3DList_IsVectorField( tlDataChunk *chunk, int field_idx )
{
     const char *type = chunk->GetFieldType( field_idx );

     for( int i = 0; i < P3DList_VectorFieldsNum; ++i ){
         if ( strcmp( type, P3DList_VectorFields[ i ].typeName ) == 0 )
            return true;
     }

     return false;
}
          
//------------------------------------------------------------------------
static void P3DList_DrawItem(HDC hDC, RECT* rect, bool focus, bool selected,
                                      int field_idx, int array_idx)
{
    char buf[1024];
    buf[0] = 0;

    if ((P3DList_Chunk != 0) && (P3DList_Chunk->GetFieldCount() > 0))
    {
        const char* ftype = P3DList_Chunk->GetFieldType(field_idx);
        if (ftype == 0) ftype = "NULL";

        if (P3DList_Chunk->GetFieldIsArray(field_idx))
        {
            if (array_idx < 0)
            {
                const char* fname = P3DList_Chunk->GetFieldName(field_idx);
                if (fname == 0) fname = "NULL";

                sprintf(buf, "%s %s[%d] =", ftype, fname,
                                                     P3DList_Chunk->GetFieldArrayCount(field_idx));
            }
            else
            {
                char tmp[256];
                P3DList_Chunk->GetFieldArrayValue(field_idx, array_idx, tmp, sizeof(tmp));

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
            const char* fname = P3DList_Chunk->GetFieldName(field_idx);
            if (fname == 0) fname = "NULL";

            char tmp[256];
            if (!P3DList_Chunk->GetFieldValue(field_idx, tmp, sizeof(tmp)))
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
        SendMessage(P3DWin_List, LB_SETHORIZONTALEXTENT, P3DList_MaxWidth, 0);
    }

    FillRect(hDC, rect, (HBRUSH)(COLOR_WINDOW+1));

    DrawText(hDC, buf, -1, rect, DT_LEFT | DT_TOP | DT_NOPREFIX |
                                          DT_SINGLELINE);

    if (focus)
        DrawFocusRect(hDC, rect);
}


//-------------------------------------------------------------------------
struct P3DList_EditScalarFieldInitStruct
{
    tlDataChunk* chunk;
    int field_idx;
    int array_idx;
    char new_val[256];
};

//-------------------------------------------------------------------------
struct P3DList_EditVectorFieldInitStruct
{
    tlDataChunk* chunk;
    int field_idx;
    int array_idx;
    int component_num;
    char label1[32];
    char label2[32];
    char label3[32];
    char label4[32];
    char new_val[256];
};

static void P3DList_FormatVectorValue( P3DList_EditVectorFieldInitStruct *efs, float vector[ 4 ] )
{
     const char *type;

     type = efs->chunk->GetFieldType( efs->field_idx );

     for( int i = 0; i < P3DList_VectorFieldsNum; ++i ){
         if ( strcmp( type, P3DList_VectorFields[ i ].typeName ) == 0 ){
             sprintf( efs->new_val, "%8.4f", vector[ 0 ] );
                
             char buffer[ 128 ];
             for( int j = 1; j < P3DList_VectorFields[ i ].componentNum; ++j ){
                 sprintf( buffer, ", %8.4f", vector[ j ] );
                 strcat( efs->new_val, buffer );
             }

             break;
         }
     }
}
    
static void P3DList_GetVectorValue( P3DList_EditVectorFieldInitStruct *efs, float vector[ 4 ] )
{
     const char *type;

     type = efs->chunk->GetFieldType( efs->field_idx );

     char buf[ 256 ];
     if (efs->array_idx >= 0){
          buf[0] = 0;
          efs->chunk->GetFieldArrayValue(efs->field_idx, efs->array_idx, buf, 255);
     }
     else{
          buf[0] = 0;
          efs->chunk->GetFieldValue(efs->field_idx, buf, 255);
     }

     for( int i = 0; i < P3DList_VectorFieldsNum; ++i ){
         if ( strcmp( type, P3DList_VectorFields[ i ].typeName ) == 0 ){
             switch( P3DList_VectorFields[ i ].componentNum ){
             case 2:
                sscanf( buf, P3DList_VectorFields[ i ].scanFormat, &vector[ 0 ], &vector[ 1 ] );
             break;

             case 3:
                 sscanf( buf, P3DList_VectorFields[ i ].scanFormat, &vector[ 0 ], &vector[ 1 ], &vector[ 2 ] );
             break;

             case 4:
                 sscanf( buf, P3DList_VectorFields[ i ].scanFormat, &vector[ 0 ], &vector[ 1 ], &vector[ 2 ], &vector[ 3 ] );
             break;
             }

             break;
         }
     }
}
static BOOL CALLBACK P3DList_EditScalarFieldProc(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
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

            P3DList_EditScalarFieldInitStruct* efs = (P3DList_EditScalarFieldInitStruct*)lparam;
            SetWindowLong(hwnd, DWL_USER, (LONG)efs);

            char buf[256];

            if (efs->array_idx >= 0)
            {
                sprintf(buf, "Edit Scalar Field - %s %s[%d]", efs->chunk->GetFieldType(efs->field_idx),
                                                                    efs->chunk->GetFieldName(efs->field_idx),
                                                                    efs->array_idx);
                SetWindowText(hwnd, buf);
                buf[0] = 0;
                efs->chunk->GetFieldArrayValue(efs->field_idx, efs->array_idx, buf, 255);
            }
            else
            {
                sprintf(buf, "Edit Scalar Field - %s %s", efs->chunk->GetFieldType(efs->field_idx),
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
            P3DList_EditScalarFieldInitStruct* efs =
                (P3DList_EditScalarFieldInitStruct*)GetWindowLong(hwnd, DWL_USER);

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
//-------------------------------------------------------------------------------------
//      Edit vector field of a chunk
static BOOL CALLBACK P3DList_EditVectorFieldProc(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
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

            P3DList_EditVectorFieldInitStruct* efs = (P3DList_EditVectorFieldInitStruct*)lparam;
            SetWindowLong(hwnd, DWL_USER, (LONG)efs);

            char buf[256];

            if (efs->array_idx >= 0)
            {
                sprintf(buf, "Edit Vector Field - %s %s[%d]", efs->chunk->GetFieldType(efs->field_idx),
                                                                    efs->chunk->GetFieldName(efs->field_idx),
                                                                    efs->array_idx);
                SetWindowText(hwnd, buf);
                buf[0] = 0;
                efs->chunk->GetFieldArrayValue(efs->field_idx, efs->array_idx, buf, 255);
            }
            else
            {
                sprintf(buf, "Edit Vector Field - %s %s", efs->chunk->GetFieldType(efs->field_idx),
                                                              efs->chunk->GetFieldName(efs->field_idx));
                SetWindowText(hwnd, buf);
                buf[0] = 0;
                efs->chunk->GetFieldValue(efs->field_idx, buf, 255);
            }

            float vector[ 4 ];         
            P3DList_GetVectorValue( efs, vector );

            //clear edit field
            int i;
            for( i = 0; i < 4; ++i ){
                SetDlgItemInt( hwnd, IDC_EDIT_OLDVC1 + i, 0, true );             
                SetDlgItemInt( hwnd, IDC_EDIT_NEWVC1 + i, 0, true );
            }


            for(  i = 0; i < efs->component_num; ++i ){
                 sprintf( buf, "%8.4f", vector[ i ] );
                 SetDlgItemText( hwnd, IDC_EDIT_OLDVC1 + i, buf ) ;             
                 SetDlgItemText( hwnd, IDC_EDIT_NEWVC1 + i, buf ) ;  
                 SendMessage(GetDlgItem(hwnd, IDC_EDIT_NEWVC1 + i ), EM_SETLIMITTEXT, 255, 0);
            }

            for( i = efs->component_num; i < 4; ++i )
                 SendDlgItemMessage( hwnd, IDC_EDIT_NEWVC1 + i, WM_ENABLE, FALSE, 0L );
                 
            SetDlgItemText( hwnd, IDC_LABEL_CMP1, efs->label1 );
            SetDlgItemText( hwnd, IDC_LABEL_CMP2, efs->label2 );
            SetDlgItemText( hwnd, IDC_LABEL_CMP3, efs->label3 );
            SetDlgItemText( hwnd, IDC_LABEL_CMP4, efs->label4 );                  

            return TRUE;
        }

        case WM_COMMAND:
        {   
            P3DList_EditVectorFieldInitStruct* efs =
                (P3DList_EditVectorFieldInitStruct*)GetWindowLong(hwnd, DWL_USER);

            switch(LOWORD(wparam))
            {
                case IDOK:
                {               
                    bool bDirty = false;
                    float vector[ 4 ];
                    for( int i = 0; i < efs->component_num; ++i ){
                          char tmp1[ 256 ], tmp2[ 256 ];

                          tmp1[ 0 ] = tmp2[ 0 ] = 0;

                          GetDlgItemText(hwnd, IDC_EDIT_OLDVC1 + i, tmp1, 255);
                          GetDlgItemText(hwnd, IDC_EDIT_NEWVC1 + i, tmp2, 255);

                          sscanf( tmp2, "%f", &vector[ i ] );
                          
                          if (strcmp(tmp1, tmp2) != 0){
                                bDirty = true;                        
                          }
                    }
                                        
                    P3DList_FormatVectorValue( efs, vector );               
                    EndDialog( hwnd, bDirty );
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

//-------------------------------------------------------------------------
void P3DList_EditVectorField(tlDataChunk* chunk, int field_idx, int array_idx)
{
    P3DList_EditVectorFieldInitStruct efs;
    efs.chunk = chunk;
    efs.field_idx = field_idx;
    efs.array_idx = array_idx;

    const char *type = chunk->GetFieldType( field_idx );

    for( int i = 0; i < P3DList_VectorFieldsNum; ++i ){
        if( strcmp( type, P3DList_VectorFields[ i ].typeName ) == 0 ){

             efs.component_num = P3DList_VectorFields[ i ].componentNum;
             strcpy( efs.label1, P3DList_VectorFields[ i ].label1 );
             strcpy( efs.label2, P3DList_VectorFields[ i ].label2 );
             strcpy( efs.label3, P3DList_VectorFields[ i ].label3 );
             strcpy( efs.label4, P3DList_VectorFields[ i ].label4 );

             break;
        }
    }
    
    if (DialogBoxParam(GetModuleHandle(NULL),
                             MAKEINTRESOURCE(IDD_EDIT_VECTOR_FIELD),
                             P3DWin_Main, DLGPROC(P3DList_EditVectorFieldProc),
                             (LPARAM)(&efs)))
    {
        // check to see if we should pop up a warning
        UINT state = GetMenuState(P3DWin_Menu, IDM_MODIFY_WARNING, 0);
        int rc = IDYES;

        if ((state & MF_CHECKED) != 0)
        {
            // TODO:  Go through entire P3D file and check to see if the original
            //        field value is being referenced in some way.  Popup the warning
            //        only if its being referenced.
            rc = MessageBox(P3DWin_Main,
                                 "Are you sure you wish to modify this field?\n"
                                 "This may have an impact on other chunks referencing it in this file.",
                                 "Confirm Modify",
                                 MB_YESNOCANCEL | MB_DEFBUTTON2 | MB_ICONWARNING);
        }

        if (rc == IDYES)
        {
            bool update_succeeded;

            if (array_idx >= 0)
            {
                update_succeeded =
                    chunk->SetFieldArrayValue(field_idx, array_idx, efs.new_val);
            }
            else
            {
                update_succeeded =
                    chunk->SetFieldValue(field_idx, efs.new_val);
            }

            if (update_succeeded)
            {
                P3DFile_SetDirty_Modified(true);

                P3DTree_UpdateSelected();

                int itemID = SendMessage(P3DWin_List, LB_GETCARETINDEX, 0, 0);
                P3DList_Fill(P3DList_Chunk);
                SendMessage(P3DWin_List, LB_SETCARETINDEX, itemID, MAKELPARAM(TRUE, 0));
            }
        }
    }

    SetFocus(P3DWin_List);
}

//-------------------------------------------------------------------------
void P3DList_EditScalarField(tlDataChunk* chunk, int field_idx, int array_idx)
{
    P3DList_EditScalarFieldInitStruct efs;
    efs.chunk = chunk;
    efs.field_idx = field_idx;
    efs.array_idx = array_idx;

    if (DialogBoxParam(GetModuleHandle(NULL),
                             MAKEINTRESOURCE(IDD_EDIT_SCALAR_FIELD),
                             P3DWin_Main, DLGPROC(P3DList_EditScalarFieldProc),
                             (LPARAM)(&efs)))
    {
        // check to see if we should pop up a warning
        UINT state = GetMenuState(P3DWin_Menu, IDM_MODIFY_WARNING, 0);
        int rc = IDYES;

        if ((state & MF_CHECKED) != 0)
        {
            // TODO:  Go through entire P3D file and check to see if the original
            //        field value is being referenced in some way.  Popup the warning
            //        only if its being referenced.
            rc = MessageBox(P3DWin_Main,
                                 "Are you sure you wish to modify this field?\n"
                                 "This may have an impact on other chunks referencing it in this file.",
                                 "Confirm Modify",
                                 MB_YESNOCANCEL | MB_DEFBUTTON2 | MB_ICONWARNING);
        }

        if (rc == IDYES)
        {
            bool update_succeeded;

            if (array_idx >= 0)
            {
                update_succeeded =
                    chunk->SetFieldArrayValue(field_idx, array_idx, efs.new_val);
            }
            else
            {
                update_succeeded =
                    chunk->SetFieldValue(field_idx, efs.new_val);
            }

            if (update_succeeded)
            {
                P3DFile_SetDirty_Modified(true);

                P3DTree_UpdateSelected();

                int itemID = SendMessage(P3DWin_List, LB_GETCARETINDEX, 0, 0);
                P3DList_Fill(P3DList_Chunk);
                SendMessage(P3DWin_List, LB_SETCARETINDEX, itemID, MAKELPARAM(TRUE, 0));
            }
        }
    }

    SetFocus(P3DWin_List);
}

//-------------------------------------------------------------------------
void P3DList_EditField(tlDataChunk* chunk, int field_idx, int array_idx)
{
    if (!chunk->GetFieldUpdatable(field_idx) ||
         (chunk->GetFieldIsArray(field_idx) && (array_idx < 0)))
    {
        MessageBeep(MB_ICONEXCLAMATION);
        return;
    }

    //check the field's type, if it is tlPoint, tlColour, tlUV
    //then we open the vector editor otherwise,  scalar editor is opened
    if( P3DList_IsVectorField( chunk, field_idx ) )
        P3DList_EditVectorField( chunk, field_idx, array_idx );
    else
        P3DList_EditScalarField( chunk, field_idx, array_idx );

}


//------------------------------------------------------------------------
LRESULT CALLBACK P3DList_Proc(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
{
    switch(msg)
    {
        case WM_MEASUREITEM:
        {
            SIZE sz;
            HDC hdc = GetDC(P3DWin_List);
            GetTextExtentPoint32(hdc, "M", 1, &sz);
            ReleaseDC(P3DWin_List, hdc);

            //maxWidth = sz.cx;
            MEASUREITEMSTRUCT* mis = (MEASUREITEMSTRUCT*)lparam;
            mis->itemWidth = 100; // does this matter?
            mis->itemHeight = sz.cy;
            mis->itemData = 0;    // does this matter?

            return TRUE;
        }

        case WM_DRAWITEM:
        {
            DRAWITEMSTRUCT* dis = (DRAWITEMSTRUCT*)lparam;
            int itemID = (int)dis->itemID;
            int field_idx, array_idx;

            P3DList_GetFieldIndex(itemID, &field_idx, &array_idx);
            P3DList_DrawItem(dis->hDC, &dis->rcItem,
                                  ((dis->itemState & ODS_FOCUS) != 0),
                                  ((dis->itemState & ODS_SELECTED) != 0),
                                  field_idx, array_idx);

            return TRUE;
        }

        case WM_VKEYTOITEM:
        {
            if ((HWND)lparam == P3DWin_List)
            {
                switch (LOWORD(wparam))
                {
                    case VK_RETURN:
                    case VK_F2:
                    {
                        int itemID = HIWORD(wparam);
                        int field_idx, array_idx;

                        P3DList_GetFieldIndex(itemID, &field_idx, &array_idx);
                        P3DList_EditField(P3DList_Chunk, field_idx, array_idx);

                        return -2;
                    }

                    case VK_TAB:
                    {
                        SetFocus(P3DWin_Tree);
                        return -2;
                    }
                }
            }

            return -1;
        }

        case WM_COMMAND:
        {
            if ((HWND)lparam == P3DWin_List)
            {
                switch (HIWORD(wparam))
                {
                    case LBN_DBLCLK:
                    {
                        int itemID = SendMessage(P3DWin_List, LB_GETCARETINDEX, 0, 0);
                        int field_idx, array_idx;

                        P3DList_GetFieldIndex(itemID, &field_idx, &array_idx);
                        P3DList_EditField(P3DList_Chunk, field_idx, array_idx);

                        return TRUE;
                    }
                }
            }
            return FALSE;
        }
    }

    return FALSE;
}


// End of file.

