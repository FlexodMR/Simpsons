//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "toollib.hpp"
#include "tlBSPTree.hpp"

#define THRESHOLD   25
#define TOLERANCE   5e-3
#define EQUAL( a, b )       ( a > b - TOLERANCE && a < b + TOLERANCE )
const int FTINY = int( 1.0e-3f );
const tlColour COLOUR_BLACK(0.0f, 0.0f, 0.0f, 1.0f);
const tlColour COLOUR_WHITE(1.0f, 1.0f, 1.0f, 1.0f);

tlBSPTreeNode::tlBSPTreeNode( )
    : pLeft( NULL ),
      pRight( NULL ),
      pTree( NULL )
{

}

tlBSPTreeNode::~tlBSPTreeNode( )
{
}

void tlBSPTreeNode::Append( tlTriangleIntersect *pTri )
{
    contents.Append( pTri );
}

void tlBSPTreeNode::Free( )
{
    if( pLeft ){
        pLeft->Free( );
        delete pLeft;
        pLeft = NULL;
    }

    if( pRight ){
        pRight->Free( );
        delete pRight;
        pRight = NULL;
    }

}

bool tlBSPTreeNode::BlockTest( tlRay ray, bool bTestStart )
{
    float len = ray.Length( );
    for( int i = 0; i < contents.Count( ); ++i ){
        float t = len;
        if( contents[ i ]->Intersect( ray, 0.f, t ) == true ){
            if( !bTestStart )
            {
                if( pTree != NULL )
                {
                    tlPoint intersection( ray.Start() + t * ray.Direction() );
                    pTree->SetIntersection( intersection, contents[ i ] );
                }
                return true;
            }
            else{

                tlPoint dir = ray.Direction( );
                tlPoint normal = contents[ i ]->FaceNormal( );

                float dotT = t * DotProd(dir,normal);

                if( !EQUAL( dotT, 0 ) )       //if the intersection is the start point, then it is not a real intersection, we skip it
                {
                    if( pTree != NULL )
                    {
                        tlPoint intersection( ray.Start() + t * ray.Direction() );
                        pTree->SetIntersection( intersection, contents[ i ] );
                    }
                    return true;
                }
            }
        }
    }
    return false;

}

// Perform a ray intersection test with colour and translucency.  The returned colour
// is the initial ray colour modified by the ray intersections.
tlColour tlBSPTreeNode::TranslucencyTest( tlRay ray, bool bTestStart )
{
    tlColour transColour(1.0f, 1.0f, 1.0f, 0.0f);
    
    float len = ray.Length( );
    for( int i = 0; i < contents.Count( ); ++i ){
        float t = len;
        if( contents[ i ]->Intersect( ray, 0.f, t ) == true ){
            if( !bTestStart )
            {                
                if( contents[i]->GetPrimGroup() )
                {
                    
                    tlShader *shader = contents[i]->GetPrimGroup()->GetShaderPtr();

                    if(shader && shader->GetIntParam("BLMD") == PDDI_BLEND_ALPHA)
                    {
                        // Ensure ray intersection occurs only once per trianlge.
                        // if(contents[i]->GetMark() == pTree->TestID())
                        tlPrimGroup *prim = const_cast<tlPrimGroup*>(contents[i]->GetPrimGroup());
                        if(prim->GetMark() == pTree->TestID())
                        {
                            continue;
                        }
                        else
                        {
                            prim->Mark( pTree->TestID() );
                        }
                        
                        float alpha = 1.0f;
                        tlTexture *texture = NULL;
                        tlPoint intersection( ray.Start() + t * ray.Direction() );
                        static const UV_IDX = 0;
                        tlUV uv = contents[i]->UVAtPoint(intersection, UV_IDX);

                        tlColour c = contents[i]->VtxColourAtPoint(intersection);
                        alpha = rmt::Clamp( c.alpha, 0.0f, 1.0f );
                        
                        texture = shader->GetTexturePtr();

                        if(texture)
                        {
                            tlColour textureColour = texture->GetTexel(uv.u, uv.v);
                            alpha *= rmt::Clamp( textureColour.alpha, 0.0f, 1.0f );
                            c = c * textureColour;
                        }
                        
                        transColour = ( transColour * 
                            ( ( c * alpha ) + 
                            ( COLOUR_WHITE * ( 1.0f - alpha ) ) ) ) *
                            ( 1.0f - alpha );

                    }
                    else
                    {
                        transColour = COLOUR_BLACK;
                    }
                }
                //else
                //{
                //    transColour = COLOUR_BLACK;
                //}
            }
            else{

                tlPoint dir = ray.Direction( );
                tlPoint normal = contents[ i ]->FaceNormal( );

                float dotT = t * DotProd(dir,normal);

                if( !EQUAL( dotT, 0 ) )       //if the intersection is the start point, then it is not a real intersection, we skip it
                {
                    if( contents[i]->GetPrimGroup() )
                    {
                        tlShader *shader = contents[i]->GetPrimGroup()->GetShaderPtr();
                        
                        if(shader && shader->GetIntParam("BLMD") == PDDI_BLEND_ALPHA)
                        {
                            // Ensure ray intersection occurs only once per trianlge.
                            tlPrimGroup *prim = const_cast<tlPrimGroup*>(contents[i]->GetPrimGroup());
                            // if(contents[i]->GetPrimGroup()->GetMark() == pTree->TestID())
                            if(prim->GetMark() == pTree->TestID())
                            {
                                continue;
                            }
                            else
                            {
                                prim->Mark( pTree->TestID() );
                            }
                            
                            float alpha = 1.0f;
                            tlTexture *texture = NULL;
                            tlPoint intersection( ray.Start() + t * ray.Direction() );
                            static const UV_IDX = 0;
                            tlUV uv = contents[i]->UVAtPoint(intersection, UV_IDX);
                            
                            tlColour c = contents[i]->VtxColourAtPoint(intersection);
                            alpha = rmt::Clamp( c.alpha, 0.0f, 1.0f );
                            
                            texture = shader->GetTexturePtr();
                            
                            if(texture)
                            {
                                tlColour textureColour = texture->GetTexel(uv.u, uv.v);
                                alpha *= rmt::Clamp( textureColour.alpha, 0.0f, 1.0f );
                                c = c * textureColour;
                            }
                            
                            transColour = ( transColour * 
                                ( ( c * alpha ) + 
                                ( COLOUR_WHITE * ( 1.0f - alpha ) ) ) ) *
                                ( 1.0f - alpha );
                        }
                        else
                        {
                            transColour = COLOUR_BLACK;
                        }
                    }
                    //else
                    //{
                    //    transColour = COLOUR_BLACK;
                    //}
                }                
            }
            if(transColour.red < FTINY && transColour.green < FTINY &&
                transColour.blue < FTINY )
            {
                break;
            }
        }
    }

    return transColour;
}
///---------------------------------------------------------------------------
///         if the cut plane cut the ray, return true
///         ints contains the intersected point or the tested point
///---------------------------------------------------------------------------
bool tlBSPTreeNode::Cut( tlRay ray, tlPoint & ints )
{
    tlPoint start = ray.Start( );
    tlPoint dir = ray.Direction( );

    float t;
    float pa, da;

    tlPoint low, high;

    low = plane.GetBox( ).low;
    high = plane.GetBox( ).high;

    switch( plane.GetAxis( ) ){
    case AXISX: 
        pa = start.x; 
        da = dir.x;
    break;

    case AXISY: 
        pa = start.y; 
        da = dir.y;
    break;

    case AXISZ: 
        pa = start.z; 
        da = dir.z;
    break;
    }

    if( da == 0.f ){        // ray is parellel to the plane
        ints = start;       //we return the start point of the ray as the FAKE intersected point
        return false;
    }

    t = (plane.GetValue( ) - pa )/da;

    ints = start + dir*t;

    bool bWithinRay;

    //test if the intersection falls within the ray
    if( ray.Type( ) == tlRay::Finite )
        bWithinRay = t > 0.f && t < ray.Length( );  //don't test for equal case, if the intersection falls on end point, it is not taken as a cut
    else
        bWithinRay = t >= 0.f;

    if( !bWithinRay )
        return false;
    else{       //now test if the intersection falls into the cut plane area
       float value = plane.GetValue( );

       switch( plane.GetAxis( ) ){
        case AXISX: 
            ints.x = value;
            low.x = value;
            high.x = value;
        break;

        case AXISY: 
            ints.y = value;
            low.y = value;
            high.y = value;
        break;

        case AXISZ: 
            ints.z = value;
            low.z = value;
            high.z = value;
        break;
       }

       tlBox box;

       box.low = low;
       box.high = high;

       return box.Contain( ints );
    }



}

tlCutPlaneTestResult tlBSPTreeNode::Position( tlTriangleIntersect *pTri ) const
{

    return plane.Position( pTri );

}

bool tlBSPTreeNode::InFirstHalf( tlPoint point )
{
    tlBox space = plane.GetFirstHalfSpace( );

    return space.Contain( point );
}

bool tlBSPTreeNode::InSecondHalf( tlPoint point )
{
    tlBox space = plane.GetSecondHalfSpace( );

    return space.Contain( point );
}

tlBSPTreeCutPlane::tlBSPTreeCutPlane( )
    : axis( AXISX ),
      value( 0. )
{
    box.Invalidate();
}


tlBSPTreeCutPlane::~tlBSPTreeCutPlane( )
{
}


tlCutPlaneTestResult tlBSPTreeCutPlane::Position( tlTriangleIntersect *pTri ) const
{

    tlCutPlaneTestResult pr1 = Position( pTri->GetVertex( 0 )->GetCoord( ) );
    tlCutPlaneTestResult pr2 = Position( pTri->GetVertex( 1 )->GetCoord( ) );
    tlCutPlaneTestResult pr3 = Position( pTri->GetVertex( 2 )->GetCoord( ) );

    if( (pr1 == pr2) && (pr2 == pr3)  )    //all vertex of pTri lie in the same side of cut plane
        return pr1;
    else{
        /*  Further optimization could be done here:
            1. Test the intersection between pTri and cut plane
            2. If there is intersection return both
            3. otherwise, testing on the other four plane except of the cut plane of the bounding box
               of the space, and found out any intersection line L
            4. Test which side L is to the cut plane
            5. return the side
        */           
        return BOTH;                
    }

}

tlCutPlaneTestResult tlBSPTreeCutPlane::Position( tlPoint point ) const
{
    float testee;
    switch( axis ){
        case AXISX:        testee = point.x;
        break;

        case AXISY:        testee = point.y;
        break;

        case AXISZ:        testee = point.z;
        break;

        default:
            assert( 0 );
    }

    if( testee > value )
        return FIRST;           //first half with always greater value
    else if( testee < value )
        return SECOND;
    else
        return BOTH;            //on the plane

}


///
///     second half is the lower half below the cut plane
///
tlBox tlBSPTreeCutPlane::GetSecondHalfSpace(  )
{
    tlBox space = box;

    switch( axis ){
    case AXISX:     space.high.x = value;
    break;

    case AXISY:     space.high.y = value;
    break;

    case AXISZ:     space.high.z = value;
    break;
    }

    return space;
}

///
///     first half is the upper half above the cut plane
///
tlBox tlBSPTreeCutPlane::GetFirstHalfSpace(  )
{
    tlBox space = box;

    switch( axis ){
    case AXISX:     space.low.x = value;
    break;

    case AXISY:     space.low.y = value;
    break;

    case AXISZ:     space.low.z = value;
    break;
    }

    return space;

}


tlBSPTree::tlBSPTree( )
    : root( NULL ),
      lastIntersectTri( NULL ),
      mTestID( 0 )
{
}

tlBSPTree::~tlBSPTree( )
{
    Free( );
}

void tlBSPTree::Free( )
{
    if( root == NULL )
        return;

    root->Free( );

    root = NULL;
}

bool tlBSPTree::BlockTest( tlRay ray )
{
    mTestID++;
    
    lastIntersectTri = NULL;
    
    if( !root )
        return false;

    return BlockTest( ray, root, true );

}
///----------------------------------------------------------------------------------
//      if bCompareStart is true, the intersected point should be compared
//      with the start point ray, if they are the same, the intersected point
//      is skipped
bool tlBSPTree::BlockTest( tlRay ray, tlBSPTreeNode *node, bool bCompareStart )
{

    if( node == NULL )
        return false;

    if( node->IsLeaf( ) ){
        return node->BlockTest( ray, bCompareStart );
    }
    else{       //branch node
        tlPoint ints;

        bool bCut = node->Cut( ray, ints );
        bool bBlocked = false;

        if( bCut ){         //split ray to two segments

            //we test on the end segment first, since the end segment 
            //is closer to the light source, 
            //the start point of the ray is the sample point to be lightmapped
            tlRay endRay( ints, ray.Type( ) == tlRay::Finite ? ray.End( ) : ray.Direction( ), tlColour( 0, 0, 0 ), ray.Type( ) );           //second half ints -- end

            tlPoint testee;

            //find out the tested point on the end segment of the ray, in case
            //the end point of the ray is out of the bounding box of all tested
            //triangles                        
            testee = ints + ray.Direction( )*1.f;
 

            //now test if the intersection point coincides with the start point
            //if they are, we should inheritate bCompareStart
            bool bTestStart = false;
            if( ints.Equal( ray.Start( ), 1.e-6f ) )
                bTestStart = bCompareStart;

            if( node->plane.Position( testee ) == FIRST )
                bBlocked = BlockTest( endRay, node->Left( ), bTestStart );       //the end segment of ray should not compare ints with start point
            else
                bBlocked = BlockTest( endRay, node->Right( ), bTestStart );


            if( bBlocked )      //find a intersection, return
                return true;

            tlRay startRay( ray.Start( ), ints, tlColour( 0, 0, 0 ) );       //first half start--ints

            testee = ( ray.Start( ) + ints )/2.f;
            if( node->InFirstHalf( testee ) )
                bBlocked = BlockTest( startRay, node->Left( ), bCompareStart );
            else
                bBlocked = BlockTest( startRay, node->Right( ), bCompareStart );


        }
        else{       //ray falls  into  one of the half space
            tlPoint testee;

            testee = ( ray.Start( ) + ints )/2.f;

            tlCutPlaneTestResult result = node->plane.Position( testee );

            if( result == BOTH ){       //testee is on cut plane, then we test on a point some distance away from testee along the ray direction
                testee = testee + ray.Direction( )*1.f;
                result = node->plane.Position( testee );
            }

            if( result == FIRST )
                bBlocked = BlockTest( ray, node->Left( ), bCompareStart );
            else 
                bBlocked = BlockTest( ray, node->Right( ), bCompareStart );           
        }

        return bBlocked;
    }
}

tlColour tlBSPTree::TranslucencyTest( tlRay ray )
{
    mTestID++;
    
    if( !root )
        return COLOUR_WHITE;

    return TranslucencyTest( ray, root, true );

}
///----------------------------------------------------------------------------------
//      if bCompareStart is true, the intersected point should be compared
//      with the start point ray, if they are the same, the intersected point
//      is skipped
tlColour tlBSPTree::TranslucencyTest( tlRay ray, tlBSPTreeNode *node, bool bCompareStart )
{
    tlColour rayColour = ray.Colour();
    tlColour transColour = COLOUR_WHITE;

    if( node == NULL )
        return transColour;

    if( node->IsLeaf( ) ){
        transColour = node->TranslucencyTest( ray, bCompareStart );
    }
    else{       //branch node
        tlPoint ints;

        bool bCut = node->Cut( ray, ints );

        if( bCut ){         //split ray to two segments

            //we test on the end segment first, since the end segment 
            //is closer to the light source, 
            //the start point of the ray is the sample point to be lightmapped
            tlRay endRay( ints, ray.Type( ) == tlRay::Finite ? ray.End( ) : ray.Direction( ), transColour, ray.Type( ) );           //second half ints -- end

            tlPoint testee;

            //find out the tested point on the end segment of the ray, in case
            //the end point of the ray is out of the bounding box of all tested
            //triangles                        
            testee = ints + ray.Direction( )*1.f;
 

            //now test if the intersection point coincides with the start point
            //if they are, we should inheritate bCompareStart
            bool bTestStart = false;
            if( ints.Equal( ray.Start( ), 1.e-6f ) )
                bTestStart = bCompareStart;

            if( node->plane.Position( testee ) == FIRST )
                transColour = transColour * TranslucencyTest( endRay, node->Left( ), bTestStart );       //the end segment of ray should not compare ints with start point
            else
                transColour = transColour * TranslucencyTest( endRay, node->Right( ), bTestStart );


            if( transColour.red < FTINY && transColour.green < FTINY && transColour.blue < FTINY )
            {  //find a intersection, return
                return COLOUR_BLACK;
            }

            tlRay startRay( ray.Start( ), ints, transColour);       //first half start--ints

            testee = ( ray.Start( ) + ints )/2.f;
            if( node->InFirstHalf( testee ) )
                transColour = transColour * TranslucencyTest( startRay, node->Left( ), bCompareStart );
            else
                transColour = transColour * TranslucencyTest( startRay, node->Right( ), bCompareStart );


        }
        else{       //ray falls  into  one of the half space
            tlPoint testee;

            testee = ( ray.Start( ) + ints )/2.f;

            tlCutPlaneTestResult result = node->plane.Position( testee );

            if( result == BOTH ){       //testee is on cut plane, then we test on a point some distance away from testee along the ray direction
                testee = testee + ray.Direction( )*1.f;
                result = node->plane.Position( testee );
            }

            if( result == FIRST )
                transColour = transColour * TranslucencyTest( ray, node->Left( ), bCompareStart );
            else 
                transColour = transColour * TranslucencyTest( ray, node->Right( ), bCompareStart );           
        }

    }

    return transColour;
}

///-------------------------------------------------------------------------------------
///         threshold:      the minimum dimension of the bound volume of the node
///         if the box is smaller than threshold or the number of triangles of tris
///         is less than a TRHESHOLD, the split of space stops
///-------------------------------------------------------------------------------------
tlBSPTreeNode * tlBSPTree::Construct( tlTable<tlTriangleIntersect *> &tris, tlBox box, tlPoint threshold )
{
    
    if( tris.Count( ) == 0 )
        return NULL;

    tlBSPTreeNode * node = new tlBSPTreeNode;
    node->SetTree( this );

    if( tris.Count( ) <= THRESHOLD || ( box.Length( ) < threshold.x && box.Width( ) < threshold.y && box.Height( ) < threshold.z ) ){       //create a leaf node
        for( int i = 0; i < tris.Count( ); ++i )
            node->Append( tris[ i ] );

        return node;
    }
    else{       //create a branch node
        tlBSPTreeCutPlane plane = GetCutPlane( tris, box );

        node->plane = plane;

        tlTable< tlTriangleIntersect* >firstTable, secondTable;

        for( int i = tris.Count( ) - 1; i >= 0 ; --i ){
            tlCutPlaneTestResult pos = node->Position( tris[ i ] );
            
            if( pos == FIRST )
                firstTable.Append( tris[ i ] );
            else if( pos == SECOND )
                secondTable.Append( tris[ i ] );
            else if( pos == BOTH ){
                secondTable.Append( tris[ i ] );
                firstTable.Append( tris[ i ] );
            }
            else{           //should not arrive here
                assert( 0 );
            }
            
        }

        tris.Delete( 0, tris.Count( ) );

        tlBox firstHalf, secondHalf;

        firstHalf = plane.GetFirstHalfSpace(  );
        secondHalf = plane.GetSecondHalfSpace(  );

        node->SetLeft( Construct( firstTable, firstHalf, threshold ) );
        node->SetRight( Construct( secondTable, secondHalf, threshold ) );

        return node;
    }
}

tlBSPTreeCutPlane tlBSPTree::GetCutPlane( tlTable<tlTriangleIntersect *> tris, tlBox box )
{
    //here is a simple way to find the cut plane, we select the longest dimension as
    //the cut plane
    tlBSPTreeCutPlane plane;
    float x, y, z;
    x = box.high.x - box.low.x;
    y = box.high.y - box.low.y;
    z = box.high.z - box.low.z;

    if( x >= y && x >= z ){
        plane.SetAxis( AXISX );
        plane.SetValue( ( box.high.x + box.low.x )/2.f );
    }
    else if( y >= z && y >= x ){
        plane.SetAxis( AXISY );
        plane.SetValue( ( box.high.y + box.low.y )/2.f );
    }
    else{
        plane.SetAxis( AXISZ );
        plane.SetValue( ( box.high.z + box.low.z )/2.f );
    }

    plane.SetBox( box );

    return plane;

    //optimized one will select the one with the balanced number of triangles on 
    //each side of the plane

}

void tlBSPTree::SetIntersection( const tlPoint &point, tlTriangle *tri )
{
    lastIntersectPoint = point;
    lastIntersectTri   = tri;
}

tlPoint tlBSPTree::GetLastIntersectPoint() const
{
    return lastIntersectPoint;
}

tlTriangle *tlBSPTree::GetLastIntersectTri() const
{
    return lastIntersectTri;
}

