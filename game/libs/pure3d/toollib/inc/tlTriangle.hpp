/*===========================================================================
    File:: tlTriangle.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLTRIANGLE_HPP
#define _TLTRIANGLE_HPP

#include "tlTable.hpp"

class tlColour;
class tlVertex;
class tlPoint;
class tlMatrix;
class tlTexture;
class tlLight;
class tlPrimGroup;
class tlPrimGroupMesh;
class tlTriMeshIntersect;
class tlUV;
class tlPhotonMap;
class tlBSPTree;

class tlTriangle 
{
public:
    tlTriangle();
    tlTriangle(const char* mat, tlVertex* verts[3]);
    tlTriangle(const tlTriangle *tri); // copy from pointer
    tlTriangle(const tlTriangle& tri);

    virtual ~tlTriangle();
    
    void Copy(const tlTriangle *tri); // copy from pointer

    // Accessors

    void  SetMaterial(const char* mat);
    const char* GetMaterial() const { return material; }

    void  SetVertexShader(const char* sh);
    const char* GetVertexShader() const { return vertexShader; }

    void  SetVertexFormat(unsigned long format) { vertexFormat = format; }
    unsigned long GetVertexFormat() const { return vertexFormat; }

    void  SetPrimGroup(const tlPrimGroup *primGroup) { prim = primGroup; }
    const tlPrimGroup* GetPrimGroup() const { return prim; }

    const tlVertex* GetVertex(int i) const;
    void SetVertex(int i, tlVertex* v);

    virtual int Compare(const tlTriangle& a);     // returns -1, 0 or 1 (standard sort compare)
    virtual int CompareCoord(const tlTriangle& a);     // returns -1, 0 or 1 (standard sort compare)

    void Scale(float x, float y, float z);
    void Translate(float x, float y, float z);
    void Transform(tlMatrix &m);
    void FlipFacing(void);

    void Subdivide(tlTriangle* newtriangles);  // divides the triangle into 4

    int SplitEdges(tlTriangle* newtriangles, bool edges[3]);  // splits the triangle on the specified edges, returning up to 4 tris

    void WrapUV(float min, float max);    // tries to make all the UV coordinates for this triangle
                                                      // greater than min and less than max
    tlPoint CalcFaceNormal( ) const;   
    tlPoint CalcLightMapSize( int du, int dv, float sDen ) const;

    tlTexture * BuildLightMap( const tlTable<tlLight *> &lights, const tlTable<tlPrimGroupMesh *> &geometries , 
                              const tlTable<tlTriMeshIntersect *> &trimeshes, const tlPhotonMap *photonMap,  
                              float exposure, float filter = 0.0f, int du = 16, int dv = 16, float sampleDensity = -1.0f, 
                              bool bIntensityOnly = false);

    tlTexture * BuildLightMap( const tlTable<tlLight *> &lights, 
                              tlBSPTree *tritree, const tlPhotonMap *photonMap,  
                              float exposure, float filter = 0.0f, int du = 16, int dv = 16, float sampleDensity = -1.0f, 
                              bool bIntensityOnly = false);

    void tlTriangle::Modulate2Textures( int srcChannel, tlTexture &srcTex, int dstChannel, tlTexture & dstTex ) const;

    void SetTangentBinormal();
    tlMatrix MatrixToLightMapSpace(  ) const;

    
    // Tag this entity with a value 
    void Mark(int m) { mark = m; }
    int GetMark() { return mark; }
    
    // Utility Methods

    float Area() const;  // The area of the triangle

    float EdgeLength(int edge) const;  // The length of an edge

    /*
    const tlPoint& Normal() const;
    bool Degenerate(float tolerance = 1e-6f,
                         float angle = 0.01745329252f);    //: Returns true if face is degenerate
                                                                      //  tolerance is for coincident vertices,
                                                                      //  angle is for colinear check (in radians)
    */
    bool operator==( const tlTriangle& tri );

    tlPoint NormalAtPoint( const tlPoint &p ) const;

    tlTriangle Inflate( float delta );
    tlPoint Centroid( );
    tlUV UVAtPoint(const tlPoint& point, int uvIdx) const;
    tlColour VtxColourAtPoint(const tlPoint& point) const;

protected:
    char* material;
    char* vertexShader;
    tlVertex* vertices[3];
    unsigned int vertexFormat;
    int mark;
    const tlPrimGroup *prim;

    bool ColinearCheck(float angle);
    void SetupLightMapSpace( tlPoint &uAxis, tlPoint &vAxis, tlPoint &nAxis, tlPoint &origin ) const;
    void CalcUVInLightMapSpace( const tlMatrix & matrix, tlPoint & corner, float &width, float &height ) const;
    void SetLightMapUV( const tlMatrix & matrix, const tlPoint & corner, const float &width, const float &height, int du, int dv );
    tlPoint FindPointInMappedTriangle( tlPoint point, tlTriangle & mappedTri );
    tlPoint FindMappedPoint( tlPoint p );
};

#endif

