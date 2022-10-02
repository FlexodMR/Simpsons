//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the SelectionList class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __SELECTIONLIST_H
#define __SELECTIONLIST_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "..\FeData\Helpers\ElementList.h"
#include "..\FeData\Helpers\TokenList.h"
#include "..\FeData\NamedElements\DrawingElement.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class BoxDrawingElement;
    class DrawingContext;
    class Group;
    class Polygon;
    class Screen;
}

class CDC;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

typedef struct AlignDeltaStruct
{
    int dx;
    int dy;
}
AlignDelta;

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used store file names.
//
// Constraints: None
//
//===========================================================================

class SelectionList
{
    public:
        SelectionList();
        virtual ~SelectionList();

        void SetScreen( FeData::Screen* screen );

        const SelectionList & operator = (SelectionList &right);

        bool Add( FeData::DrawingElement* newElement );
        bool Remove( FeData::DrawingElement* removeElement );
        bool Remove( int index );
        void Clear();

        int GetNumberOfElements();
        FeData::DrawingElement* GetElement( int index );

        bool PointInSelection( int x, int y );
        FeData::DrawingElement* GetDrawingElementUnderLocation( int x, int y );

        bool DrawSelection( CDC* theCDC, float zoom );
        bool MoveSelection( int moveX, int moveY );
        bool AlignSelection( FeData::ElementList< AlignDelta >& m_AlignList, bool bReverse );

        bool AddToTokenList( FeData::TokenList& tokenList );

    protected:

    private:
        SelectionList(const SelectionList &right);

        bool DrawElement( CDC* theCDC, FeData::DrawingElement* element, float zoom );
        bool DrawElementBox( CDC* theCDC, FeData::DrawingElement* box, float zoom );
        bool DrawElementGroup( CDC* theCDC, FeData::Group* group, float zoom );
        bool DrawElementPolygon( CDC* theCDC, FeData::Polygon* polygon, float zoom );

        // Data members
        FeData::ElementList< FeData::DrawingElement > m_List;
        FeData::Screen* m_Screen;
};


//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

