/*===========================================================================
    File:: tlPrimGroupMesh.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLPRIMGROUPMESH_HPP
#define _TLPRIMGROUPMESH_HPP

#include "../../pddi/pddienum.hpp"
#include "tlBox.hpp"
#include "tlColour.hpp"
#include "tlEntity.hpp"
#include "tlPoint.hpp"
#include "tlPrimGroup.hpp"
#include "tlSphere.hpp"
#include "tlTable.hpp"
#include "tlUV.hpp"
#include "tlPhotonMap.hpp"
#include "tlExpressionOffsets.hpp"
#include "tlLoadManager.hpp"

class tlTriMesh;
class tlVertex;
class tlInventory;
class tlTriMeshIntersect;
class tlDataChunk;
class tlInventory;

//*****************************************************************************
// tlPrimGroupMesh
//*****************************************************************************
class tlPrimGroupMesh : public tlEntity
{
public:
    tlPrimGroupMesh();
    explicit tlPrimGroupMesh(const tlTriMesh& trimesh);
    explicit tlPrimGroupMesh(tlDataChunk* ch);
    tlPrimGroupMesh( const tlPrimGroupMesh & mesh );
    virtual ~tlPrimGroupMesh();

    // Chunk reading / writing code
    virtual void LoadFromChunk(tlDataChunk* ch);
    virtual tlDataChunk* Chunk();

    // Legacy chunk code
    virtual void LoadFromChunk16(tlDataChunk* ch)               { assert(0); }
    virtual tlDataChunk* Chunk16()                              { assert(0); return NULL; }


    tlPrimGroupMesh * Rebuild( bool bMerge = false, int maxNumVertices = -1 );
    void Rebuild( tlPrimGroupMesh * newMesh, bool bMerge = false, int maxNumVertices = -1 );

    // general methods
    virtual void UpdateBounds();
    // If you don't want to limit number of vertices/triangles per strip just use the default arguments.
    int ConvertTrianglesToTriangleStrips( float &averageVReuse, float &averageLen, unsigned long  &numOfReuse, int maxNumOfVertsPerStrip = 0, int maxNumOfTrisPerStrip = 0, bool bInnerMerge = true, bool bOptimizeXBox = false, bool bDiscardIrregular = true, unsigned int cacheSize = 16  );   
    // Some video cards have vertex cache of length 2 or more.
    // To take addvantage of this we try to order triangles in such way
    // that as many triangles as possible are followed by their adjacent triangles.
    // (We try to order triangles as if they were in a triangle strip, but we don't
    //  write them out as triangles strips, but as a list of triangles)
    void ReorderTriangles();
    
    // converts all vertices to indexed vertices
    // - useful when requiring referencing of what indices vertices used to be at
    //   (eg. re-setting vertex animations after tristripping)
    virtual void AddIndices();

    // Convert to non-indexed prims
    virtual void Deindex();
    virtual void Index( );

    int NumVertices() const;
    tlVertex* GetVertex(int i);
    const tlVertex* GetVertex(int i) const;
    void SetVertex(int i, const tlVertex* vert);

    int NumPrimGroups() const              { return primgroups.Count(); }
    tlPrimGroup* GetPrimGroup(int i) const { return primgroups[i]; }
    void AddPrimGroup(tlPrimGroup* pg)     { primgroups.Append(pg); }
    void SetPrimGroups(tlTable<tlPrimGroup*> const pgTbl) { primgroups = pgTbl; }
    void SortPrimGroups( void );

//    tlPrimGroup* SplitPrimGroup( int index, const int* pIndices, int numIndices );

    void Scale(float x, float y, float z);
    void ComputeFaceNormals();
    void ComputeVertexNormals();

    void Translate(float x, float y, float z);
    void Transform(tlMatrix &m);

    const tlBox& Box() const       { return bbox; }
    const tlSphere& Sphere() const { return bsphere; }

    bool  CastShadow( ) const        { return bCastShadow; }
    void  SetCastShadow( bool flag ) { bCastShadow = flag; }

    // combine primgroups that have the same shader
    int  MergePrimGroups();

    // combine tristrip primgroups that have the same shader
    int  MergeStrips( int maximumVerts = -1 );
    int  MergeStripsRegardlessShader( int maximumVerts = -1 );

    void ResolveReferences(tlInventory* inv); 
    void MarkReferences(int m);

    void BuildLightMap( tlTable< tlLight *>lights, tlTable< tlPrimGroupMesh *> geometries, 
                       tlTable<tlTriMeshIntersect *> &trimeshes, const tlPhotonMap *photonMap, 
                       float exposure, bool bIntensityOnly = false );
    bool IsInAPlane( );

    void                        SetExprOffsets(tlExpressionOffsets* exprOffsets);
    tlExpressionOffsets*        GetExprOffsets(void) { return exprOffsets; }

    // Added by Bryan Ewert on 02 May 2002
    // To support Hongzhi's "version detection means run-time tMesh with vertex animation" hack.
    void        SetHasVertexAnimation( bool bHasVA = true, int primGroup = 0, tlAnimationGroup* pGroup = NULL );
    unsigned long GetVersion() const { return version; }

    // Find all vertex-anim keys from inventory, and assigned to primgroup
    bool BindVertexAnimKeys( tlInventory &inventory );

protected:
    tlTable<tlPrimGroup *>      primgroups;
    tlTable<tlPoint>            faceNormals;
    tlExpressionOffsets*        exprOffsets;
    tlBox bbox;
    tlSphere bsphere;
    unsigned long version;       //for keeping version reading from file
    
    unsigned long vertexFormat;  // this is stored only for legacy file format
    bool bCastShadow;

    bool Is2GroupMergable( tlPrimGroup *group1, tlPrimGroup *group2 );
    void StitchStripsFromSrcToDest( tlPrimGroup *stripSrc, tlPrimGroup *stripDest );
    int  Internal_StitchStripsFromSrcToDest( tlTable<unsigned long int> & stripSrc, tlTable<unsigned long int> &stripDest );
    int Internal_SearchForNearestStrip( tlPrimGroup &primgroup, tlTable<unsigned long int> & strip, tlTable< tlTable<unsigned long int>  *> &triStrips );
    int SearchForNearestStrip( tlPrimGroup &primgroup,  tlTable<tlPrimGroup *> & primgroups, int start  );

    int SearchForNearestStripRegardlessShader( tlPrimGroup &primgroup,  tlTable<tlPrimGroup *> & primgroups, int start  );
    bool Is2GroupMergableRegardlessShader( tlPrimGroup *group1, tlPrimGroup *group2 );
    void SplitUpStripsAndOptimize( tlTable< tlTable<unsigned long> * >allStrips, tlTable<unsigned long> &outStrips , int cacheSize );

};

//*****************************************************************************
// tlPrimGroupMeshLoader
//*****************************************************************************
class tlPrimGroupMeshLoader : public tlEntityLoader
{
public:
    tlPrimGroupMeshLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif

