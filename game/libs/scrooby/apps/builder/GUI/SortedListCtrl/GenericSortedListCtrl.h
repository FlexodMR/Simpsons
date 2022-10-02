//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   GUI Helpers
//
// Description: This contains the CGenericSortedListCtrl class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __CGENERICSORTEDLISTCTRL_H
#define __CGENERICSORTEDLISTCTRL_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "SortedListCtrl.h"

//===========================================================================
// Forward References
//===========================================================================

class CItemInfo;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end CGenericSortedListCtrl resource.
//
// Constraints: None
//
//===========================================================================

class CGenericSortedListCtrl : public CSortedListCtrl
{
    public:
        CGenericSortedListCtrl();
        virtual ~CGenericSortedListCtrl();

        bool SetColumnHeadings( char* column1, char* column2 );
        bool InsertItem( char* column1, char* column2 );
        bool SelectItem( const char* lookForInColumn1 );

    protected:
        //{{AFX_MSG(CGenericSortedListCtrl)
            afx_msg void OnGetDispInfo(NMHDR* pNMHDR, LRESULT* pResult);
        //}}AFX_MSG

        int CompareItems(CItemInfo *pItemInfo1, CItemInfo *pItemInfo2);
        DECLARE_MESSAGE_MAP()

    private:

};

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

