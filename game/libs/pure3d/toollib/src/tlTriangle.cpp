/*===========================================================================
    File:: tlTriangle.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlTriangle.hpp"
#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#include "tlColour.hpp"
#include "tlString.hpp"
#include "tlVertex.hpp"
#include "pddi/pddienum.hpp"
#include "tlMatrix.hpp"
#include "tlImage.hpp"
#include "tlPrimGroup.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlTriMeshIntersect.hpp"
#include "tlLight.hpp"
#include "tlTexture.hpp"
#include "tlPlane.hpp"
#include "tlTriangleIntersect.hpp"
#include "tlBSPTree.hpp"
#include "tlSegment.hpp"

#define LIGHT_MAPPING   1
#define NOT_LIGHTED     -1
#define MAX( a, b )         a > b ? a : b
#define MIN( a, b )         a < b ? a : b

#define INFLATE5_THRESHOLD       16
#define INFLATE4_THRESHOLD       32
#define INFLATE3_THRESHOLD       64

#define EQUAL( a, b )     ( ( a > b - 1.e-5 ) && ( a < b + 1.e-5  ) )

tlTriangle::tlTriangle() : 
    material(NULL), 
    vertexShader(NULL),
    vertexFormat(PDDI_V_C),
    mark(0),
    prim(NULL)
        
{
    vertices[0] = vertices[1] = vertices[2] = NULL;
}

tlTriangle::tlTriangle(const char* mat, tlVertex* verts[3]) :
    material(strnew(mat)),
    vertexShader(NULL),
    vertexFormat(PDDI_V_C),
    mark(0),
    prim(NULL)
{
    vertices[0] = verts[0];
    vertices[1] = verts[1];
    vertices[2] = verts[2];
}

tlTriangle::tlTriangle(const tlTriangle *tri) :
    material(strnew(tri->GetMaterial())),
    vertexShader(strnew(tri->GetVertexShader())),
    vertexFormat(tri->GetVertexFormat()),
    mark(tri->mark),
    prim(tri->prim)
{
    vertices[0] = tri->vertices[0]->Clone();
    vertices[1] = tri->vertices[1]->Clone();
    vertices[2] = tri->vertices[2]->Clone();
}

tlTriangle::tlTriangle(const tlTriangle &tri) :
    material(strnew(tri.GetMaterial())),
    vertexShader(strnew(tri.GetVertexShader())),
    vertexFormat(tri.GetVertexFormat()),
    mark(tri.mark),
    prim(tri.prim)
{
    vertices[0] = tri.vertices[0]->Clone();
    vertices[1] = tri.vertices[1]->Clone();
    vertices[2] = tri.vertices[2]->Clone();
}

tlTriangle::~tlTriangle()
{
    strdelete(material);
    strdelete(vertexShader);
}

void tlTriangle::Copy(const tlTriangle *tri)
{
    SetMaterial(strnew(tri->GetMaterial())),
    SetVertexShader(strnew(tri->GetVertexShader())),
    SetVertexFormat(tri->GetVertexFormat());
    vertices[0] = tri->vertices[0]->Clone();
    vertices[1] = tri->vertices[1]->Clone();
    vertices[2] = tri->vertices[2]->Clone();
    mark = tri->mark;
    prim = tri->prim;
}

const tlVertex* 
tlTriangle::GetVertex(int i) const
{
    assert( (i >= 0) && (i < 3));
    return vertices[i];
}

void tlTriangle::SetVertex(int i, tlVertex* v)
{
    vertices[i] = v;
}

void tlTriangle::Scale(float x, float y, float z)
{  
    vertices[0]->ScaleCoord(x, y, z);
    vertices[1]->ScaleCoord(x, y, z);
    vertices[2]->ScaleCoord(x, y, z);
}

void tlTriangle::Translate(float x, float y, float z)
{  
    vertices[0]->TranslateCoord(x, y, z);
    vertices[1]->TranslateCoord(x, y, z);
    vertices[2]->TranslateCoord(x, y, z);
}

void tlTriangle::Transform(tlMatrix &m)
{  
    vertices[0]->TransformCoord(m);
    vertices[1]->TransformCoord(m);
    vertices[2]->TransformCoord(m);
}

void tlTriangle::SetMaterial(const char* mat)
{
    material = strnew(mat);
}

void tlTriangle::SetVertexShader(const char* sh)
{
    vertexShader = strnew(sh);
}

int
tlTriangle::Compare(const tlTriangle& a)
{  
    int result = strcmp(material, a.material);

    if(result == 0)
    {
        const char * vs = vertexShader ? vertexShader : "";
        const char * avs = a.vertexShader ? a.vertexShader : "";
        result = strcmp(vs, avs);
    }

    if(result == 0)
    {
        if(vertexFormat != a.vertexFormat)
        {
            result = (vertexFormat < a.vertexFormat) ? -1 : 1;
        }
    }

    if(result == 0)
    {
        result = vertices[0]->Compare(*a.vertices[0]);
    }

    if(result == 0)
    {
        result = vertices[1]->Compare(*a.vertices[1]);
    }

    if(result == 0)
    {
        result = vertices[2]->Compare(*a.vertices[2]);
    }
    return result;
}

int
tlTriangle::CompareCoord(const tlTriangle& a)
{  
    int result;
    result = vertices[0]->CompareCoord(*a.vertices[0]);
    
    if(result == 0)
    {
        result = vertices[1]->CompareCoord(*a.vertices[1]);
    }
    if(result == 0)
    {
        result = vertices[2]->CompareCoord(*a.vertices[2]);
    }
    return result;
}

void tlTriangle::FlipFacing(void)
{
    tlVertex *temp = vertices[0];
    vertices[0] = vertices[1];
    vertices[1] = temp;
}

void
tlTriangle::Subdivide(tlTriangle* newtriangles)
{
    tlVertex *v01 = vertices[0]->Interpolate(vertices[1], 0.5);
    tlVertex *v12 = vertices[1]->Interpolate(vertices[2], 0.5);
    tlVertex *v20 = vertices[2]->Interpolate(vertices[0], 0.5);

    for(int i = 0 ; i < 4; i++)
    {
        newtriangles[i].SetMaterial(GetMaterial());
        newtriangles[i].SetVertexShader(GetVertexShader());
        newtriangles[i].SetVertexFormat(GetVertexFormat());
    }

    newtriangles[0].vertices[0] = vertices[0]->Clone();
    newtriangles[0].vertices[1] = v01->Clone();
    newtriangles[0].vertices[2] = v20->Clone();

    newtriangles[1].vertices[0] = vertices[1]->Clone();
    newtriangles[1].vertices[1] = v12->Clone();
    newtriangles[1].vertices[2] = v01->Clone();

    newtriangles[2].vertices[0] = vertices[2]->Clone();
    newtriangles[2].vertices[1] = v20->Clone();
    newtriangles[2].vertices[2] = v12->Clone();

    newtriangles[3].vertices[0] = v01->Clone();
    newtriangles[3].vertices[1] = v12->Clone();
    newtriangles[3].vertices[2] = v20->Clone();

    delete v01;
    delete v12;
    delete v20;
}   

int
tlTriangle::SplitEdges(tlTriangle* newtriangles, bool edges[3])
{
    tlVertex *v01 = vertices[0]->Interpolate(vertices[1], 0.5);
    tlVertex *v12 = vertices[1]->Interpolate(vertices[2], 0.5);
    tlVertex *v20 = vertices[2]->Interpolate(vertices[0], 0.5);

    int splittype = (int)edges[0] + (((int)edges[1])<<1) + (((int)edges[2])<<2);
    int count = 0;

    switch(splittype)
    {
        case 0:
            count = 1;
            break;
        case 1:
        case 2:
        case 4:
            count = 2;
            break;
        case 3:
        case 5:
        case 6:
            count = 3;
            break;
        case 7:
            count = 4;
            break;
        default:
            assert(0);
    }

    for(int i = 0 ; i < count; i++)
    {
        newtriangles[i].SetMaterial(GetMaterial());
        newtriangles[i].SetVertexShader(GetVertexShader());
        newtriangles[i].SetVertexFormat(GetVertexFormat());
    }

    switch(splittype)
    {
        case 0:
            newtriangles[0].vertices[0] = vertices[0]->Clone();
            newtriangles[0].vertices[1] = vertices[1]->Clone();
            newtriangles[0].vertices[2] = vertices[2]->Clone();
            break;

        case 1:
            newtriangles[0].vertices[0] = vertices[0]->Clone();
            newtriangles[0].vertices[1] = v01->Clone();
            newtriangles[0].vertices[2] = vertices[2]->Clone();
            
            newtriangles[1].vertices[0] = v01->Clone();
            newtriangles[1].vertices[1] = vertices[1]->Clone();
            newtriangles[1].vertices[2] = vertices[2]->Clone();
            break;

        case 2:
            newtriangles[0].vertices[0] = vertices[0]->Clone();
            newtriangles[0].vertices[1] = vertices[1]->Clone();
            newtriangles[0].vertices[2] = v12->Clone();
            
            newtriangles[1].vertices[0] = vertices[0]->Clone();
            newtriangles[1].vertices[1] = v12->Clone();
            newtriangles[1].vertices[2] = vertices[2]->Clone();
            break;

        case 3:
            newtriangles[0].vertices[0] = v01->Clone();
            newtriangles[0].vertices[1] = vertices[1]->Clone();
            newtriangles[0].vertices[2] = v12->Clone();
            
            if(Length(vertices[0]->GetCoord() - v12->GetCoord()) < Length(v01->GetCoord() - vertices[2]->GetCoord()))
            {
                newtriangles[1].vertices[0] = vertices[0]->Clone();
                newtriangles[1].vertices[1] = v01->Clone();
                newtriangles[1].vertices[2] = v12->Clone();

                newtriangles[2].vertices[0] = vertices[0]->Clone();
                newtriangles[2].vertices[1] = v12->Clone();
                newtriangles[2].vertices[2] = vertices[2]->Clone();
            } else {
                newtriangles[1].vertices[0] = vertices[0]->Clone();
                newtriangles[1].vertices[1] = v01->Clone();
                newtriangles[1].vertices[2] = vertices[2]->Clone();

                newtriangles[2].vertices[0] = v01->Clone();
                newtriangles[2].vertices[1] = v12->Clone();
                newtriangles[2].vertices[2] = vertices[2]->Clone();
            }            
            break;

        case 4:
            newtriangles[0].vertices[0] = vertices[0]->Clone();
            newtriangles[0].vertices[1] = vertices[1]->Clone();
            newtriangles[0].vertices[2] = v20->Clone();
            
            newtriangles[1].vertices[0] = v20->Clone();
            newtriangles[1].vertices[1] = vertices[1]->Clone();
            newtriangles[1].vertices[2] = vertices[2]->Clone();
            break;

        case 5:
            newtriangles[0].vertices[0] = vertices[0]->Clone();
            newtriangles[0].vertices[1] = v01->Clone();
            newtriangles[0].vertices[2] = v20->Clone();
            
            if(Length(v01->GetCoord() - vertices[2]->GetCoord()) < Length(v20->GetCoord() - vertices[1]->GetCoord()))
            {
                newtriangles[1].vertices[0] = v01->Clone();
                newtriangles[1].vertices[1] = vertices[2]->Clone();
                newtriangles[1].vertices[2] = v20->Clone();

                newtriangles[2].vertices[0] = v01->Clone();
                newtriangles[2].vertices[1] = vertices[1]->Clone();
                newtriangles[2].vertices[2] = vertices[2]->Clone();
            } else {
                newtriangles[1].vertices[0] = v01->Clone();
                newtriangles[1].vertices[1] = vertices[1]->Clone();
                newtriangles[1].vertices[2] = v20->Clone();

                newtriangles[2].vertices[0] = v20->Clone();
                newtriangles[2].vertices[1] = vertices[1]->Clone();
                newtriangles[2].vertices[2] = vertices[2]->Clone();
            }            
            break;

        case 6:
            newtriangles[0].vertices[0] = v20->Clone();
            newtriangles[0].vertices[1] = v12->Clone();
            newtriangles[0].vertices[2] = vertices[2]->Clone();
            
            if(Length(vertices[1]->GetCoord() - v20->GetCoord()) < Length(v12->GetCoord() - vertices[0]->GetCoord()))
            {
                newtriangles[1].vertices[0] = vertices[0]->Clone();
                newtriangles[1].vertices[1] = vertices[1]->Clone();
                newtriangles[1].vertices[2] = v20->Clone();

                newtriangles[2].vertices[0] = v20->Clone();
                newtriangles[2].vertices[1] = vertices[1]->Clone();
                newtriangles[2].vertices[2] = v12->Clone();
            } else {
                newtriangles[1].vertices[0] = vertices[0]->Clone();
                newtriangles[1].vertices[1] = vertices[1]->Clone();
                newtriangles[1].vertices[2] = v12->Clone();

                newtriangles[2].vertices[0] = vertices[0]->Clone();
                newtriangles[2].vertices[1] = v12->Clone();
                newtriangles[2].vertices[2] = v20->Clone();
            }            
            break;

        case 7:

            newtriangles[0].vertices[0] = vertices[0]->Clone();
            newtriangles[0].vertices[1] = v01->Clone();
            newtriangles[0].vertices[2] = v20->Clone();

            newtriangles[1].vertices[0] = vertices[1]->Clone();
            newtriangles[1].vertices[1] = v12->Clone();
            newtriangles[1].vertices[2] = v01->Clone();

            newtriangles[2].vertices[0] = vertices[2]->Clone();
            newtriangles[2].vertices[1] = v20->Clone();
            newtriangles[2].vertices[2] = v12->Clone();

            newtriangles[3].vertices[0] = v01->Clone();
            newtriangles[3].vertices[1] = v12->Clone();
            newtriangles[3].vertices[2] = v20->Clone();
            break;

        default:
            assert(0);
            break;
    }


    delete v01;
    delete v12;
    delete v20;

    return count;
}   

float
tlTriangle::Area() const
{
    // This is from Graphics Gems I pg. 20
    const tlPoint& v0 = vertices[0]->GetCoord();
    const tlPoint& v1 = vertices[1]->GetCoord();
    const tlPoint& v2 = vertices[2]->GetCoord();

    return Length(CrossProd(v0,v1) + CrossProd(v1,v2) + CrossProd(v2,v0)) * 0.5f;
}

float
tlTriangle::EdgeLength(int edge) const
{
    const tlPoint& v0 = vertices[0]->GetCoord();
    const tlPoint& v1 = vertices[1]->GetCoord();
    const tlPoint& v2 = vertices[2]->GetCoord();

    switch(edge)
    {
        case 0:
            return Length(v0 - v1);
        case 1:
            return Length(v1 - v2);
        case 2:
            return Length(v2 - v0);
        default:
            assert(0);
    }
    return 0.0f;
}

void
tlTriangle::WrapUV(float min, float max)
{
    float distance = (float) floor(max - min);
    for(int i = 0; i < tlVertex::MAX_VERT_UV; i++)
    {
        tlUV uv = vertices[0]->GetUV(i);
        float umin = uv.u;
        float umax = uv.u;
        float vmin = uv.v;
        float vmax = uv.v;
        float uoffset = 0.0f;
        float voffset = 0.0f;
        int j;
        for(j = 1; j < 3; j++)
        {
            uv = vertices[j]->GetUV(i);
            if(uv.u < umin) { umin = uv.u; }
            if(uv.u > umax) { umax = uv.u; }
            if(uv.v < vmin) { vmin = uv.v; }
            if(uv.v > vmax) { vmax = uv.v; }
        }
        umin -= min;
        umax -= min;
        vmin -= min;
        vmax -= min;
        if(floor(umin/distance) == floor(umax/distance))
        {
            uoffset = -(float)floor(umin/distance) * distance;
        }
        else
        {
            uoffset = -(float)floor(umin);
        }

        if(floor(vmin/distance) == floor(vmax/distance))
        {
            voffset = -(float)floor(vmin/distance) * distance;
        }
        else
        {
            voffset = -(float)floor(vmin);
        }

        for(j = 0; j < 3; j++)
        {
            uv = vertices[j]->GetUV(i);
            uv.u += uoffset;
            uv.v += voffset;
            vertices[j]->SetUV(i, uv);
        }
    }
} 

void
tlTriangle::SetTangentBinormal()
{
    // get the equation of the line between P1 and P2 (y = mx + b)
    // determine m

    float ratio;
    float Piu, Piv;

    // Tangent/Binormal should be calculated from UVSet #1.
    // If triangle doesn't support two UVSets, then revert to UVSet #0
    int useUVSet = 1;
    if ( !( this->GetVertexFormat() & PDDI_V_UVCOUNT2 ) ) useUVSet = 0;

    // if delta u is 0 then there is nothing to do...we have the 
    // binormal
    if((vertices[2]->GetUV(useUVSet).u - vertices[1]->GetUV(useUVSet).u) == 0)
    {
        ratio = 0;
    }
    else
    {
        float m = (vertices[2]->GetUV(useUVSet).v - vertices[1]->GetUV(useUVSet).v)/
                     (vertices[2]->GetUV(useUVSet).u - vertices[1]->GetUV(useUVSet).u);

        // determine b
        float b = vertices[1]->GetUV(useUVSet).v - (m * vertices[1]->GetUV(useUVSet).u);

        // determine Pi, the point of intersection along the line P1P2
        Piu = vertices[0]->GetUV(useUVSet).u;
        Piv = (m * Piu) + b;

        // find the ratio of Pi along the line P1P2
        float duP2P1 = vertices[2]->GetUV(useUVSet).u - vertices[1]->GetUV(useUVSet).u;
        float dvP2P1 = vertices[2]->GetUV(useUVSet).v - vertices[1]->GetUV(useUVSet).v;
        float duPiP1 = Piu - vertices[1]->GetUV(useUVSet).u;
        float dvPiP1 = Piv - vertices[1]->GetUV(useUVSet).v;

        tlPoint2D P2P1(duP2P1, dvP2P1);
        tlPoint2D PiP1(duPiP1, dvPiP1);

        float lenP2P1 = Length(P2P1);
        float lenPiP1 = Length(PiP1);

        ratio = lenPiP1/lenP2P1;
    }

    // find the point Pi in the xyz world
    tlPoint Pi = vertices[1]->GetCoord() + (ratio * (vertices[2]->GetCoord() - vertices[1]->GetCoord()));

    // get the binormal in the triangles plane
    tlPoint triBinormal;
    if(vertices[0]->GetUV(useUVSet).v > Piv)
    {
        triBinormal = vertices[0]->GetCoord() - Pi;
    }
    else
    {
        triBinormal = Pi - vertices[0]->GetCoord();
    }

    // Compute the binormal and tangent in the tangent plane 
    // for all three vertices in the tri
    for (int i = 0; i < 3; i++)
    {
        // binormal
        tlPoint normal = vertices[i]->GetNormal();
        tlPoint binormal = CrossProd(CrossProd(normal, triBinormal), normal);
        binormal = Normalize(binormal);
        vertices[i]->SetBinormal(binormal);

        // tangent
        tlPoint tangent;
        if(vertices[1]->GetUV(useUVSet).u < vertices[2]->GetUV(useUVSet).u)
        {
            tangent = CrossProd(normal, binormal);
        }
        else
        {
            tangent = CrossProd(binormal, normal);
        }

        tangent = Normalize(tangent);
        vertices[i]->SetTangent(tangent);
    }
}

bool tlTriangle::operator==( const tlTriangle& tri )
{
     return( Compare( tri ) == 0 );
}
//----------------------------------------------------------------------------
//          Calculate the face normal of the triangle
//----------------------------------------------------------------------------
tlPoint tlTriangle::CalcFaceNormal( )   const
{
     tlPoint v1 = vertices[ 1 ]->GetCoord( ) - vertices[ 0 ]->GetCoord( );
     tlPoint v2 = vertices[ 2 ]->GetCoord( ) - vertices[ 0 ]->GetCoord( );

     tlPoint n = CrossProd(v1,v2);
     
     return Normalize( n );;
}

//-----------------------------------------------------------------------------
//          Set up the light map space for the triangle
//          uAxis:  u axis of UV space
//          vAxis:  v axis of UV space
//          nAxis:  normal vector
//-----------------------------------------------------------------------------
void tlTriangle::SetupLightMapSpace( tlPoint &uAxis, tlPoint &vAxis, tlPoint &nAxis, tlPoint &origin ) const
{

    nAxis = CalcFaceNormal( );

    tlPoint v = vertices[ 0 ]->GetCoord( );
    tlPlane plane( nAxis, v );

    tlPoint v1( 0.f, 0.f, 0.f ), v2( 1.f, 0.f, 0.f );
    tlPoint xAxis( 1, 0, 0 ), mxAxis( -1, 0, 0 );

  
    if( nAxis.Equal( xAxis, 1.0e-3f ) || nAxis.Equal( mxAxis, 1.0e-3f ) ){
        v2.x = 0.f;
        v2.y = 1.f;
    }


    tlPoint ints1, ints2;

    plane.Intersect( v1, nAxis, &ints1 );
    plane.Intersect( v2, nAxis, &ints2 );

    origin = ints1;
    uAxis = ints2 - ints1;
    uAxis = Normalize( uAxis );

    vAxis = CrossProd(nAxis,uAxis);
/*

    nAxis = CalcFaceNormal( );
    tlPoint xAxis( 1, 0, 0 ), yAxis( 0, 1, 0 ), zAxis( 0, 0, 1 );
    tlPoint mxAxis( -1, 0, 0 ), myAxis( 0, -1, 0 ), mzAxis( 0, 0, -1 );
    

    origin = vertices[ 0 ]->GetCoord( );

    
    if( nAxis.Equal( xAxis, 1.0e-3 ) || nAxis.Equal( mxAxis, 1.0e-3 ) )
        uAxis = yAxis;
    else if( nAxis.Equal( yAxis, 1.0e-3 ) || nAxis.Equal( myAxis, 1.0e-3 ) )
        uAxis = zAxis;
    else if( nAxis.Equal( zAxis, 1.0e-3 ) || nAxis.Equal( mzAxis, 1.0e-3 ) )
        uAxis = xAxis;
    else{
         tlPoint v1, v2, v3;

         v1 = vertices[ 1 ]->GetCoord( ) - vertices[ 0 ]->GetCoord( );
         v2 = vertices[ 2 ]->GetCoord( ) - vertices[ 1 ]->GetCoord( );
         v3 = vertices[ 0 ]->GetCoord( ) - vertices[ 2 ]->GetCoord( );

         float l1, l2, l3;
         l1 = v1.Length( );
         l2 = v2.Length( );
         l3 = v3.Length( );

         if( l1 >= l2 && l1 >= l3 ){
              uAxis = Normalize( v1 );
              origin = vertices[ 0 ]->GetCoord( );
         }
         else if( l2 >= 1l && l2 >= l3 ){
              uAxis = Normalize( v2 );
              origin = vertices[ 1 ]->GetCoord( );
         }
         else{
              uAxis = Normalize( v3 );
              origin = vertices[ 2 ]->GetCoord( );
         }
    }

    vAxis = nAxis^uAxis;
*/
/*

     nAxis = CalcFaceNormal( );
     tlPoint v1, v2, v3;

     v1 = vertices[ 1 ]->GetCoord( ) - vertices[ 0 ]->GetCoord( );
     v2 = vertices[ 2 ]->GetCoord( ) - vertices[ 1 ]->GetCoord( );
     v3 = vertices[ 0 ]->GetCoord( ) - vertices[ 2 ]->GetCoord( );

     float l1, l2, l3;
     l1 = v1.Length( );
     l2 = v2.Length( );
     l3 = v3.Length( );

     if( l1 >= l2 && l1 >= l3 ){
          uAxis = Normalize( v1 );
          origin = vertices[ 0 ]->GetCoord( );
     }

     else if( l2 >= 1l && l2 >= l3 ){
          uAxis = Normalize( v2 );
          origin = vertices[ 1 ]->GetCoord( );
     }
     else{
          uAxis = Normalize( v3 );
          origin = vertices[ 2 ]->GetCoord( );
     }

     vAxis = nAxis^uAxis;
*/
}

tlMatrix tlTriangle::MatrixToLightMapSpace( ) const
{
     tlPoint uAxis, vAxis, nAxis, origin;        //u, v, n axis;
     SetupLightMapSpace( uAxis, vAxis, nAxis, origin ); 

     tlMatrix matrix;
     matrix.IdentityMatrix( );

     //translate to origin
     matrix.Translate( origin );

     tlMatrix tmp;
     tmp.IdentityMatrix( );
     tmp.SetRow( 0, uAxis );
     tmp.SetRow( 1, vAxis );
     tmp.SetRow( 2, nAxis );

     matrix = tmp*matrix;

     return matrix;
}

//-----------------------------------------------------------------------------
///         Build light map  for this triangle
//-----------------------------------------------------------------------------
tlTexture * tlTriangle::BuildLightMap( const tlTable<tlLight *> &lights, const tlTable<tlPrimGroupMesh *> &geometries, 
                                      const tlTable<tlTriMeshIntersect *>&trimeshes, const tlPhotonMap *photonMap,
                                      float exposure, float filter, int du, int dv, float sampleDensity, bool bIntensityOnly)
{
     //triangle normal
     tlPoint normal = CalcFaceNormal( );

     //matrix transform vector from light-map space to world-space
     tlMatrix matrix = MatrixToLightMapSpace( );

     //the matrix from world to UVN space;
     tlMatrix inverse = Inverse( matrix );

     float width, height;
     tlPoint corner;

     //transform to UVN space;        
     //Calculate the UV of triangle's vertex on light map space;
     CalcUVInLightMapSpace( inverse, corner, width, height );
     SetLightMapUV( inverse, corner, width, height, du, dv );
     
     //determine the minimum dimension which is power of 2 for the light map
     if( sampleDensity > 0. ){        //specified density
            du = (int)(width/sampleDensity);
            dv = (int)(height/sampleDensity);
     }

     float gapU = width/du;
     float gapV = height/dv;

     tlPlane plane( GetVertex( 0 )->GetCoord( ), GetVertex( 1 )->GetCoord( ),
                         GetVertex( 2 )->GetCoord( ) );

     int i;

     //mark all lights that won't light current plane
     for( i = 0; i < lights.Count( ); ++i ){
          if( lights[ i ]->IsLighted( plane ) == false )
                lights[ i ]->Mark( NOT_LIGHTED );
     }

     tlImage *img = new tlImage( du, dv, 24 );

     // Center sampling
     corner.x += 0.5f * gapU;
     corner.y += 0.5f * gapV;
     tlPoint current = corner;

     tlTriangle tri = Inflate( 0.1f );

     for(  i = 0; i < dv; ++i ){
          for( int j = 0; j < du; ++j ){            
                //first transform the sample back to world space
                //since sample contains the UVN space coord.
                tlPoint sample = current;
                sample = sample * matrix;
                tlColour intensity( 0.0f, 0.0f, 0.0f );           
            
                if( photonMap != NULL ) 
                {
                    intensity = photonMap->Irradiance( sample, normal );
                }      

                if( photonMap == NULL || photonMap->IsPrimaryIgnored() )
                {
                    //calc the contribution from each lights
                    for( int k = 0; k < lights.Count( ); ++k ){

                        //if this light does not contribute to the triangle, then 
                        //skip to next one
                        if( lights[ k ]->GetMark( ) == NOT_LIGHTED )
                            continue;
                
                        bool bInShadow = false;

                        //if lights[ k ] is enabled to cast shadow, then 
                        //we test if the lights are blocked by geometry or not
                        if( lights[ k ]->CastShadow( ) == true ){
                            bool blocked = false;
                            int meshIdx = -1;

                            //if this point is not lighted by this light
                            //go to next sampling point
                            if( !( lights[ k ]->IsLighted( sample ) ) )
                                continue;

                            //test if the light is blocked by a mesh or not
                            for( int t = 0; t < geometries.Count( ); ++t ){
                                //if the mesh is marked, we are creating light map 
                                //for it right now, or the mesh
                                //is not casting shadow
                                if( geometries[ t ]->GetMark( ) == LIGHT_MAPPING || geometries[ t ]->CastShadow( ) == false ){
                                    if( geometries[ t ]->GetMark( ) == LIGHT_MAPPING  )
                                        meshIdx = t;
                                }
                                else{       //test the ray-blocking for rest meshes
                                    //create the mesh for testing intersection
                                    tlTriMeshIntersect *mi = trimeshes[t ];
                                    if( lights[ k ]->InShadow( sample, *mi ) ){
                                        blocked = true;
                                        break;
                                    }

                                }
                            }

                            //a light is not blocked by any mesh that don't contain current
                            //triangle, then we should test if the light is blocked by the mesh
                            //that contains this triangle.
                            if( blocked == false ){
                        
                                //test if self blocking only when the mesh is not null
                                //and the mesh does cast shadow
                                if( meshIdx != -1 && geometries[ meshIdx ]->CastShadow( ) == true  ){
                                    //mesh must not be NULL now
                        
                                    tlTriMeshIntersect *tmpMesh = trimeshes[ meshIdx  ];

                                    //mark the triangle in the tmpMesh as LIGHT_MAPPING
                                    int oldMark = tmpMesh->GetMark( );

                                    tmpMesh->MarkTriangle( this, LIGHT_MAPPING );

                                    bInShadow = lights[ k ]->InShadow( sample, *tmpMesh, LIGHT_MAPPING );                    

                                    //reset the  mark
                                    tmpMesh->MarkTriangle( this, oldMark );
                                }

                            }
                            else
                                bInShadow = true;
                        }
        
                        //test if tmpTri is this or is NULL
                        if( bInShadow == false ){    //lights[ i ] does contribute
                            normal = NormalAtPoint( sample );
                            if( bIntensityOnly )
                                intensity = intensity + lights[ k ]->DiffuseLightIntensity( sample, normal );
                            else
                                intensity = intensity + lights[ k ]->DiffuseLight( sample, normal );
                        }
                    }
                }
            
                intensity = intensity * ::powf( 2.0f, exposure );
                img->SetPixel( j, i, intensity );

                current.x += gapU;       //move to  texel on next column
            }
            current.y += gapV;           //move to next texel on raw;
            current.x = corner.x;
            // current.x = corner.x;
     }
  
     //mark all lights that won't light current plane to none
     for( i = 0; i < lights.Count( ); ++i ){
          if( lights[ i ]->GetMark(  ) == NOT_LIGHTED )
                lights[ i ]->Mark( 0 );
     }

          //filter the light map if required

    if( filter != 0.0f )
    {
        img->Blur( filter );
    }

     tlTexture *texture = new tlTexture( *img );

     delete img;

     return texture;

}


//-----------------------------------------------------------------------------
///         Build light map  for this triangle
//-----------------------------------------------------------------------------
tlTexture * tlTriangle::BuildLightMap( const tlTable<tlLight *> &lights, 
                                      tlBSPTree *tritree, const tlPhotonMap *photonMap,
                                      float exposure, float filter, int du, int dv, float sampleDensity, bool bIntensityOnly)
{
    tlTriangleIntersect triInts( this );

    float delta;

    if( du <= INFLATE5_THRESHOLD )
        delta = 0.5f;
    else if( du <= INFLATE4_THRESHOLD )
        delta = 0.45f;
    else
        delta = 0.4f;

    tlTriangle outline = this->Inflate( delta );
    tlTriangleIntersect triOut( outline );


     //triangle normal
     tlPoint normal = CalcFaceNormal( );

     //matrix transform vector from light-map space to world-space
     tlMatrix matrix = MatrixToLightMapSpace( );

     //the matrix from world to UVN space;
     tlMatrix inverse = Inverse( matrix );

     float width, height;
     tlPoint corner;

     //transform to UVN space;        
     //Calculate the UV of triangle's vertex on light map space;
     CalcUVInLightMapSpace( inverse, corner, width, height );
     SetLightMapUV( inverse, corner, width, height, du, dv );
     
     //determine the minimum dimension which is power of 2 for the light map
     if( sampleDensity > 0. ){        //specified density
            du = (int)(width/sampleDensity);
            dv = (int)(height/sampleDensity);
     }

     float gapU = width/du;
     float gapV = height/dv;

     tlPlane plane( GetVertex( 0 )->GetCoord( ), GetVertex( 1 )->GetCoord( ),
                         GetVertex( 2 )->GetCoord( ) );

     int i;

     //mark all lights that won't light current plane
     for( i = 0; i < lights.Count( ); ++i ){
          if( lights[ i ]->IsLighted( plane ) == false )
                lights[ i ]->Mark( NOT_LIGHTED );
     }

     tlImage *img = new tlImage( du, dv, 24 );

     int mindim = du > dv ? dv : du;

     delta = 3.f/mindim;

     delta = delta > 0.15f ? delta : 0.15f;

     tlTriangle tri = Inflate( delta );     //inflate the testing triangle of normal to reduce artifact

     // Center sampling
     corner.x += 0.5f * gapU;
     corner.y += 0.5f * gapV;

     tlPoint current = corner;

     for(  i = 0; i < dv; ++i ){
          for( int j = 0; j < du; ++j ){            
                //first transform the sample back to world space
                //since sample contains the UVN space coord.
                tlPoint sample = current;
                sample = sample * matrix;
                tlColour intensity( 0.0f, 0.0f, 0.0f );           
            
                bool bTest = true;

                //we calc the point that falls into the triangle only
                //if sample point lies out of the outline triangle
                //we skip the lighting test
                if( triOut.ContainPoint( sample ) == false ){ 
                    bTest = false;
//                   intensity.red = intensity.blue = intensity.green = 1.f;
                }
                else if( triInts.ContainPoint( sample ) == false){  
                //sample point falls between outline and inline triangle,                    
                    sample = FindMappedPoint( sample );
                }

                if( bTest ){
                    if( photonMap != NULL ) 
                    {
                        intensity = photonMap->Irradiance( sample, normal );
                    }      

                    if( photonMap == NULL || photonMap->IsPrimaryIgnored() )
                    {
                        //calc the contribution from each lights
                        for( int k = 0; k < lights.Count( ); ++k ){

                            //if this light does not contribute to the triangle, then 
                            //skip to next one
                            if( lights[ k ]->GetMark( ) == NOT_LIGHTED )
                                continue;
                
                            bool bInShadow = false;

                            //if lights[ k ] is enabled to cast shadow, then 
                            //we test if the lights are blocked by geometry or not
                            if( lights[ k ]->CastShadow( ) == true ){                                
                                
                                //if this point is not lighted by this light
                                //go to next sampling point
                                if( !( lights[ k ]->IsLighted( sample ) ) )
                                    continue;

                                bInShadow = lights[ k ]->InShadow( sample, tritree );
                            }
        
                            //test if tmpTri is this or is NULL
                            if( bInShadow == false ){    //lights[ i ] does contribute
                                normal = NormalAtPoint( sample );
                                if( bIntensityOnly )
                                    intensity = intensity + lights[ k ]->DiffuseLightIntensity( sample, normal );
                                else
                                    intensity = intensity + lights[ k ]->DiffuseLight( sample, normal );
                            }
                        }
                    }
                }
            
                const tlPrimGroup *primGroup = GetPrimGroup();
                if( primGroup )
                {
                    const tlShader *shader = primGroup->GetShaderPtr();
                    
                    if( shader && shader->HasColourParam( "DIFF" ) )
                    {
                        const tlColour materialDiffuseColour( shader->GetColourParam( "DIFF" ) );
                        intensity = intensity * materialDiffuseColour;
                    }
                }
                
                intensity = intensity * ::powf( 2.0f, exposure );
                img->SetPixel( j, i, intensity );

                current.x += gapU;       //move to  texel on next column
            }
            current.y += gapV;           //move to next texel on raw;
            current.x = corner.x;
            // current.x = corner.x;
     }
  
     //mark all lights that won't light current plane to none
     for( i = 0; i < lights.Count( ); ++i ){
          if( lights[ i ]->GetMark(  ) == NOT_LIGHTED )
                lights[ i ]->Mark( 0 );
     }

    if( filter != 0.0f )
    {
        img->Blur( filter );
    }


     tlTexture *texture = new tlTexture( *img );

     delete img;

     return texture;

}


void tlTriangle::CalcUVInLightMapSpace( const tlMatrix & matrix, tlPoint & corner, float &width, float &height ) const
{
     tlPoint v1 = vertices[ 0 ]->GetCoord( );
     tlPoint v2 = vertices[ 1 ]->GetCoord( );
     tlPoint v3 = vertices[ 2 ]->GetCoord( );

     //transform triangle's vertex to light map space
     v1 = v1*matrix;
     v2 = v2*matrix;
     v3 = v3*matrix;

     float minu, minv, maxu, maxv;

     
     minu = MIN( v1.x, v2.x );
     minu = MIN( minu, v3.x );
     
     minv = MIN( v1.y, v2.y );
     minv = MIN( minv, v3.y );

     maxu = MAX( v1.x, v2.x );
     maxu = MAX( maxu, v3.x );

     maxv = MAX( v1.y, v2.y );
     maxv = MAX( maxv, v3.y );

     corner.x = minu;
     corner.y = minv;

     width = maxu - minu;
     height = maxv - minv;

     //increase the bounding box by 20% to reduce the aliasing along
     //the edge of two neiboured triangles
     float deltau, deltav;
     deltau = 0.1f*width;
     deltav = 0.1f*height;

     corner.x -= deltau;
     corner.y -= deltav;

     width *= 1.2f;
     height *= 1.2f;

}

void tlTriangle::SetLightMapUV( const tlMatrix & matrix, const tlPoint & corner, const float &width, const float &height, int du, int dv )
{

     int uvidx = GetVertexFormat( );
     uvidx &= 15;

     if( uvidx > 0 )
          --uvidx;

     tlUV uv;

     tlPoint v1 = vertices[ 0 ]->GetCoord( );
     tlPoint v2 = vertices[ 1 ]->GetCoord( );
     tlPoint v3 = vertices[ 2 ]->GetCoord( );

     //transform triangle's vertex to light map space
     v1 = v1*matrix;
     v2 = v2*matrix;
     v3 = v3*matrix;

     tlTriangle tri( this );

     //uv coord of light map for vertex 1
     uv.u = ( v1.x - corner.x )/width;
     uv.v = ( v1.y - corner.y )/height;

     tlPoint t1( uv.u, uv.v, 0.f );
     tri.vertices[ 0 ]->SetCoord( t1 );
     vertices[ 0 ]->SetUV( uvidx, uv );

     //uv coor of light map for vertex 2
     uv.u = ( v2.x - corner.x )/width;
     uv.v = ( v2.y - corner.y )/height;
     
     tlPoint t2( uv.u, uv.v, 0.f );
     tri.vertices[ 1 ]->SetCoord( t2 );
     vertices[ 1 ]->SetUV( uvidx, uv );

     //uv coor of light map for vertex 2
     uv.u = ( v3.x - corner.x )/width;
     uv.v = ( v3.y - corner.y )/height;
     
     tlPoint t3( uv.u, uv.v, 0.f );
     tri.vertices[ 2 ]->SetCoord( t3 );
     vertices[ 2 ]->SetUV( uvidx, uv );

     //deflate the triangle by half pixel to reduce artifacts
     tri = tri.Inflate( -(.5f/du) );
     uv.u = tri.vertices[ 0 ]->GetCoord( ).x;
     uv.v = tri.vertices[ 0 ]->GetCoord( ).y;
     vertices[ 0 ]->SetUV( uvidx, uv );

     uv.u = tri.vertices[ 1 ]->GetCoord( ).x;
     uv.v = tri.vertices[ 1 ]->GetCoord( ).y;
     vertices[ 1 ]->SetUV( uvidx, uv );

     uv.u = tri.vertices[ 2 ]->GetCoord( ).x;
     uv.v = tri.vertices[ 2 ]->GetCoord( ).y;
     vertices[ 2 ]->SetUV( uvidx, uv );


}

tlPoint tlTriangle::CalcLightMapSize( int du, int dv, float sDen ) const
{
     tlPoint dim;

     if( sDen < 0. ){
          dim.x = (float)du;
          dim.y = (float)dv;
          return dim;
     }
     else{       
         //matrix transform vector from light-map space to world-space
          tlMatrix matrix = MatrixToLightMapSpace( );

          //the matrix from world to UVN space;
          tlMatrix inverse = Inverse( matrix );

          float width, height;
          tlPoint corner;

          //transform to UVN space;        
          //Calculate the UV of triangle's vertex on light map space;
          CalcUVInLightMapSpace( inverse, corner, width, height );
     
 
          dim.x = float((int)(width/(float)sDen));
          dim.y = float((int)(height/(float)sDen));

          return dim;
     }
}

//------------------------------------------------------------------------------------
//          modulate two texture of the triangle into single one
//          dstTex holds the merged texture
//------------------------------------------------------------------------------------
void tlTriangle::Modulate2Textures( int srcChannel, tlTexture &srcTex, int dstChannel, tlTexture & dstTex ) const
{    
     tlUV src1 = GetVertex( 0 )->GetUV( srcChannel );
     tlUV src2 = GetVertex( 1 )->GetUV( srcChannel );
     tlUV src3 = GetVertex( 2 )->GetUV( srcChannel );

     tlUV dst1 = GetVertex( 0 )->GetUV( dstChannel );
     tlUV dst2 = GetVertex( 1 )->GetUV( dstChannel );
     tlUV dst3 = GetVertex( 2 )->GetUV( dstChannel );


     tlTriangle srcTri;
     tlVertex v1, v2, v3;
     v1.SetCoord( tlPoint( src1.u, src1.v, 0.f ) );
     v2.SetCoord( tlPoint( src2.u, src2.v, 0.f ) );
     v3.SetCoord( tlPoint( src3.u, src3.v, 0.f ) );
     srcTri.SetVertex( 0, &v1 );
     srcTri.SetVertex( 1, &v2 );
     srcTri.SetVertex( 2, &v3 );

     tlTriangle dstTri;
     tlVertex v4, v5, v6;
     v4.SetCoord( tlPoint( dst1.u, dst1.v, 0.f ) );
     v5.SetCoord( tlPoint( dst2.u, dst2.v, 0.f ) );
     v6.SetCoord( tlPoint( dst3.u, dst3.v, 0.f ) );
     dstTri.SetVertex( 0, &v4 );
     dstTri.SetVertex( 1, &v5 );
     dstTri.SetVertex( 2, &v6 );


     tlTriangleIntersect triangle( &dstTri );
     tlImage *image = dstTex.GetImage( 0 );

     for( int j = 0; j < dstTex.GetHeight( ); ++j ){
          for( int i = 0; i < dstTex.GetWidth( ); ++i ){            
                float dstU = (float)i/( dstTex.GetWidth( ) - 1 );
                float dstV = (float)j/( dstTex.GetHeight( ) - 1 );
                tlPoint dstP( dstU, dstV, 0.f );

                if( triangle.ContainPoint( dstP ) ){
                     tlPoint srcP = dstTri.FindPointInMappedTriangle( dstP, srcTri );
                
                     tlColour dstTexel = dstTex.GetTexel( dstU, dstV );
                     tlColour srcTexel = srcTex.GetTexel( srcP.x, srcP.y );

                     dstTexel = dstTexel * srcTexel;

                     //set the texel to the first image of dstTex                
                     image->SetPixel( i, j, dstTexel );
                }
          }
     }
}

//---------------------------------------------------------------------------------------
//          point is inside this triangle
//          this function finds the mapping point inside
//          the mapped triangle
//---------------------------------------------------------------------------------------
tlPoint tlTriangle::FindPointInMappedTriangle( tlPoint point, tlTriangle & mappedTri )
{
     tlPoint v0 = GetVertex( 0 )->GetCoord( );
     tlPoint v1 = GetVertex( 1 )->GetCoord( );
     tlPoint v2 = GetVertex( 2 )->GetCoord( );

     tlPoint dir = point - v0;
     float l = dir.Length( );

     dir = Normalize( dir );

     tlPoint p1, p2;
     
     p1 = v1 - v0;
     p2 = v2 - v1;

     float determine;
     determine = dir.x * p2.y - dir.y*p2.x;

     float t = (p1.x*p2.y - p1.y*p2.x)/determine;


     tlPoint mv0 = mappedTri.GetVertex( 0 )->GetCoord( );
     tlPoint mv1 = mappedTri.GetVertex( 1 )->GetCoord( );
     tlPoint mv2 = mappedTri.GetVertex( 2 )->GetCoord( );

     tlPoint mid1, mid2;
     l /= t;

     
     mid1 = v0 + l*( v1 - v0 );      // point on edge( v0-v1 )
     mid2 = v0 + l*( v2 - v0 );      // point on edge( v0-v2 )

     tlPoint mmid1, mmid2;
     
     mmid1 = mv0 + l*( mv1 - mv0 );
     mmid2 = mv0 + l*( mv2 - mv0 );

     point = point - mid1;
     l = point.Length( );
     mid2 = mid2 - mid1;
     t = mid2.Length( );

     l /= t;
     tlPoint mapP = mmid1 + l*(mmid2 - mmid1);

     return mapP;
}


tlPoint tlTriangle::NormalAtPoint( const tlPoint &p ) const
{
    tlPoint n0, n1, n2;

    n0 = vertices[ 0 ]->GetNormal( );
    n1 = vertices[ 1 ]->GetNormal( );
    n2 = vertices[ 2 ]->GetNormal( );

    if( n0.Equal( n1, 1e-3f ) && n0.Equal( n2, 1e-3f ) )
        return ( n0 + n1 + n2 )/3.f;
    else{   //interpolate to find out the normal at a specific point
        float e1 = EdgeLength( 1 );
        float h0 = Area( )/e1;

        tlTriangle tri( this );
        tri.vertices[ 0 ]->SetCoord( p );

        float h1 = tri.Area( )/e1;

        tlPoint mid, v0, dir;

        v0 = vertices[ 0 ]->GetCoord( );
        dir = p - v0;

        float l1 = dir.Length( );
        dir = Normalize( dir );

        if( EQUAL( h0, h1 ) )
            return( vertices[ 0 ]->GetNormal( ) );

        float l0 = l1 * h0/(h0 - h1 );
        
        mid = v0 + dir * l0;

        mid = mid - vertices[ 1 ]->GetCoord( );

        float e1f = mid.Length( );

        tlPoint n;

        n = n1 + ( n2 - n1 )*e1f/e1;

        n = n + ( n0 - n )*h1/h0;

        return Normalize( n );
    }
}

tlPoint tlTriangle::Centroid( )
{
    tlPoint v0, v1, v2;

    v0 = vertices[ 0 ]->GetCoord( );
    v1 = vertices[ 1 ]->GetCoord( );
    v2 = vertices[ 2 ]->GetCoord( );

    tlPoint mid = ( v0 + v1 + v2 )/3.f;

    return mid;
}

tlUV tlTriangle::UVAtPoint(const tlPoint& point, int uvIdx) const
{
    tlUV uv( 0.0, 0.0 );
    if( uvIdx >= tlVertex::MAX_VERT_UV )
    {
        return uv;
    }

    // Get the vertices of the intersected triangle.
    const tlVertex *v0 = GetVertex( 0 );
    const tlVertex *v1 = GetVertex( 1 );
    const tlVertex *v2 = GetVertex( 2 );
    
    const tlPoint *p0 = &v0->GetCoord();
    const tlPoint *p1 = &v1->GetCoord();
    const tlPoint *p2 = &v2->GetCoord();
    
    // Barycentric coordinates are used to determine the u,v coordinates
    // of the intesected point.  This is determine by the ratio of sub-triangles
    // areas to the total area of the intesected triangle.
    // It might be faster to find triangle areas using Heron's Formula
    // http://mathworld.wolfram.com/HeronsFormula.html
    // area0 is the area of triangle( p0, p1, point ).
    // area1 is the area of triangle( p1, p2, point ).
    // area2 is the area of triangle( p2, p0, point ).
    // area is the area of the intersected triangle, the sum of the other areas.
    float area0 = ::Length( ::CrossProd( *p1, *p2 ) + ::CrossProd( *p2, point ) +
                            ::CrossProd( point, *p1) ) / 2.0f;
    float area1 = ::Length( ::CrossProd( *p2, *p0 ) + ::CrossProd( *p0, point ) +
                            ::CrossProd( point, *p2) ) / 2.0f;
    float area2 = ::Length( ::CrossProd( *p0, *p1 ) + ::CrossProd( *p1, point ) +
                            ::CrossProd( point, *p0) ) / 2.0f;
    float area  = area0 + area1 + area2;
    float areaCheck = ::Length( ::CrossProd( *p0, *p1 ) + ::CrossProd( *p1,*p2) +
                                ::CrossProd( *p2,*p0) ) / 2.0f;
    
    tlUV pUV0 = ( area0 / area ) * v0->GetUV( uvIdx );
    tlUV pUV1 = ( area1 / area ) * v1->GetUV( uvIdx );
    tlUV pUV2 = ( area2 / area ) * v2->GetUV( uvIdx );
    uv = pUV0 + pUV1 + pUV2;

    return uv;
}

tlColour tlTriangle::VtxColourAtPoint(const tlPoint& point) const
{
    tlColour result(1.0f, 1.0f, 1.0f, 1.0f);

    // Make sure valid vertex colours exist.
    if((GetVertex( 0 )->VertexFormat() & PDDI_V_COLOUR) != PDDI_V_COLOUR)
    {
        return result;
    }

    // Get the vertices of the intersected triangle.
    const tlVertex *v0 = GetVertex( 0 );
    const tlVertex *v1 = GetVertex( 1 );
    const tlVertex *v2 = GetVertex( 2 );
    
    const tlPoint *p0 = &v0->GetCoord();
    const tlPoint *p1 = &v1->GetCoord();
    const tlPoint *p2 = &v2->GetCoord();
    
    // Barycentric coordinates are used to determine the u,v coordinates
    // of the intesected point.  This is determine by the ratio of sub-triangles
    // areas to the total area of the intesected triangle.
    // It might be faster to find triangle areas using Heron's Formula
    // http://mathworld.wolfram.com/HeronsFormula.html
    // area0 is the area of triangle( p0, p1, point ).
    // area1 is the area of triangle( p1, p2, point ).
    // area2 is the area of triangle( p2, p0, point ).
    // area is the area of the intersected triangle, the sum of the other areas.
    float area0 = ::Length( ::CrossProd( *p1, *p2 ) + ::CrossProd( *p2, point ) +
                            ::CrossProd( point, *p1) ) / 2.0f;
    float area1 = ::Length( ::CrossProd( *p2, *p0 ) + ::CrossProd( *p0, point ) +
                            ::CrossProd( point, *p2) ) / 2.0f;
    float area2 = ::Length( ::CrossProd( *p0, *p1 ) + ::CrossProd( *p1, point ) +
                            ::CrossProd( point, *p0) ) / 2.0f;
    float area  = area0 + area1 + area2;
    float areaCheck = ::Length( ::CrossProd( *p0, *p1 ) + ::CrossProd( *p1,*p2) +
                                ::CrossProd( *p2,*p0) ) / 2.0f;
    
    tlColour c0 = Scale4(v0->GetColour(), ( area0 / area ));
    tlColour c1 = Scale4(v1->GetColour(), ( area1 / area ));
    tlColour c2 = Scale4(v2->GetColour(), ( area2 / area ));

    result = c0 + c1 + c2;
    result.alpha = c0.alpha + c1.alpha + c2.alpha;

    return result;
}

tlTriangle tlTriangle::Inflate( float delta )
{

    tlTriangle tmp( this );

    tmp.vertices[ 0 ]->SetCoord( vertices[ 0 ]->GetNormal( ) );
    tmp.vertices[ 1 ]->SetCoord( vertices[ 1 ]->GetNormal( ) );
    tmp.vertices[ 2 ]->SetCoord( vertices[ 2 ]->GetNormal( ) );

    tlPoint nc = tmp.Centroid( );

    tlPoint v0, v1, v2;
    tlTriangle tri( this );

    
    v0 = ( tmp.vertices[ 0 ]->GetCoord(  ) - nc );
    v0 = nc + v0.Length( )*( 1.f + delta )*Normalize( v0 );

    v1 = ( tmp.vertices[ 1 ]->GetCoord(  ) - nc );
    v1 = nc + v1.Length( )*( 1.f + delta )*Normalize( v1 );

    v2 = ( tmp.vertices[ 2 ]->GetCoord(  ) - nc );
    v2 = nc + v2.Length( )*( 1.f + delta)*Normalize( v2 );

    //set the normal of tri, inflate the normal of the triangle
    tri.vertices[ 0 ]->SetNormal( v0  );
    tri.vertices[ 1 ]->SetNormal( v1  );
    tri.vertices[ 2 ]->SetNormal( v2  );

    tlPoint c = Centroid( );

    v0 = ( vertices[ 0 ]->GetCoord(  ) - c );
    v0 = c + v0.Length( )*( 1.f + delta )*Normalize( v0 );

    v1 = ( vertices[ 1 ]->GetCoord(  ) - c );
    v1 = c + v1.Length( )*( 1.f + delta )*Normalize( v1 );

    v2 = ( vertices[ 2 ]->GetCoord(  ) - c );
    v2 = c + v2.Length( )*( 1.f + delta )*Normalize( v2 );

    //now inflate the coord of the triangle
    tri.vertices[ 0 ]->SetCoord( v0 );
    tri.vertices[ 1 ]->SetCoord( v1 );
    tri.vertices[ 2 ]->SetCoord( v2 );

    return tri;

}


tlPoint tlTriangle::FindMappedPoint( tlPoint p  )
{

    static count = 0;
    tlSegment s0( vertices[ 0 ]->GetCoord( ), vertices[ 1 ]->GetCoord( ) );
    tlSegment s1( vertices[ 1 ]->GetCoord( ), vertices[ 2 ]->GetCoord( ) );
    tlSegment s2( vertices[ 2 ]->GetCoord( ), vertices[ 0 ]->GetCoord( ) );


    tlPoint c = Centroid( );

    tlSegment s( c, p );

    tlPoint ints;


    if( !s0.Intersect( s, ints ) ){
        if( !s1.Intersect( s, ints ) )
            if( !s2.Intersect( s, ints ) ){
                printf("No mapped point found: %d\n", count );
                ++count;
                ints = p;
            }
    }

    return ints;

//    return p;
}




