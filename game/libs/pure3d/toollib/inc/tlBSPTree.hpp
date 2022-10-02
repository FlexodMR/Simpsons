//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLBSPTREENODE_HPP
#define _TLBSPTREENODE_HPP

#include "tlBox.hpp"

class tlBox;
class tlRay;
class tlTriangle;
class tlTriangleIntersect;
class tlPoint;


enum tlCutPlaneAxis{
    AXISX,
    AXISY,
    AXISZ,   
};


enum tlCutPlaneTestResult{
    FIRST,
    SECOND,
    BOTH,
    NONE,
};

class tlBSPTreeCutPlane{

public:
    tlBSPTreeCutPlane( );
    ~tlBSPTreeCutPlane( );

    tlCutPlaneAxis GetAxis( ){ return axis; };
    float GetValue( ){ return value; };
    tlBox  GetBox( ){ return box; };

    void SetValue( float f ){ value = f; };
    void SetAxis( tlCutPlaneAxis a ){ axis = a; };
    void SetBox( tlBox b ){ box = b; };

    tlCutPlaneTestResult Position( tlTriangleIntersect * pTri ) const; 
    tlCutPlaneTestResult Position( tlPoint point ) const;

    tlBox GetFirstHalfSpace(  );
    tlBox GetSecondHalfSpace(  );
    

protected:   
    tlCutPlaneAxis axis;            //which axis the cut plane intersected.
    float value;                    //the value of the axis
    tlBox  box;                     //bounding box of the cut plane;  

};

class tlBSPTree;

class tlBSPTreeNode 
{

public:
    tlBSPTreeNode( );
    ~tlBSPTreeNode( );
    bool IsLeaf( ) const { return ( pLeft == NULL && pRight == NULL ); };
    
    tlCutPlaneTestResult Position( tlTriangleIntersect * pTri ) const;

    void Append( tlTriangleIntersect *pTri );

    tlBSPTreeNode * Left( ){ return pLeft; };
    tlBSPTreeNode * Right( ){ return pRight; };

    void SetLeft( tlBSPTreeNode * node ){ pLeft = node; };
    void SetRight( tlBSPTreeNode * node ){ pRight = node; };
    void SetTree( tlBSPTree *tree ) { pTree = tree; }

    bool InFirstHalf( tlPoint point );
    bool InSecondHalf( tlPoint point );

    bool BlockTest( tlRay ray, bool bTestStart );
    tlColour TranslucencyTest( tlRay ray, bool bTestStart );
    void Free( );

    bool Cut( tlRay ray, tlPoint & ints );


    tlTable< tlTriangleIntersect *> contents;       //contain all triangles falling into this space
    tlBSPTreeCutPlane  plane;

protected:
    
    tlBSPTreeNode *pLeft;           //left child tree
    tlBSPTreeNode *pRight;          //right child tree
    tlBSPTree *pTree;
    
};


class tlBSPTree
{
public:
    tlBSPTree( );
    ~tlBSPTree( );

    void Free( );
    void SetRoot( tlBSPTreeNode *node ){ if( root ) Free( ); root = node; };

    bool BlockTest( tlRay ray );
    tlColour TranslucencyTest( tlRay ray );
    tlBSPTreeNode * Construct( tlTable<tlTriangleIntersect *> &tris, tlBox box, tlPoint threshold );
    tlBSPTreeCutPlane GetCutPlane( tlTable<tlTriangleIntersect *> tris, tlBox box );

    void SetIntersection( const tlPoint &point, tlTriangle *tri );
    tlPoint GetLastIntersectPoint() const;
    tlTriangle *GetLastIntersectTri() const;
    unsigned long TestID() {return mTestID;}

protected:
    bool BlockTest( tlRay ray, tlBSPTreeNode *node, bool bTestStart );
    tlColour TranslucencyTest( tlRay ray, tlBSPTreeNode *node, bool bTestStart );
    tlBSPTreeNode *root;
    tlPoint lastIntersectPoint;
    tlTriangle *lastIntersectTri;
    unsigned long mTestID; // Unique id for each intersection test.
};
#endif


    

