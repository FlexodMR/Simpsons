/*===========================================================================
    File:: tlPrimGroup.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLPRIMGROUP_HPP
#define _TLPRIMGROUP_HPP

#pragma warning( disable : 4786 )   // that annoying "identifier was truncated in the debug information" warning.

#include "../../pddi/pddienum.hpp"
#include "tlTable.hpp"
#include "tlString.hpp"
#include "tlExpressionOffsets.hpp"
#include <assert.h>

#include "tlOffsetList.hpp"

class tlDataChunk;
class tlVertex;
class tlMatrix;
class tlShader;
class tlInventory;
class tlPrimBuffer;
class tlTexture;
class tlLight;
class tlPrimGroupMesh;
class tlTriangle;
class tlTriMeshIntersect;
class tlPhotonMap;
class tlBSPTree;
class tlAnimationGroup;
class tlVertexAnimKey;

class tlPrimGroup 
{
public:
    tlPrimGroup();
    tlPrimGroup(tlTable<tlVertex*>&);
    tlPrimGroup(tlDataChunk*);
    tlPrimGroup( const tlPrimGroup &prm );
    virtual ~tlPrimGroup();

    virtual void LoadFromChunk(tlDataChunk* ch);
    virtual tlDataChunk* Chunk();

    int NumVertices() const { return vertexlist.Count(); }
    tlVertex* GetVertex(int i) { return vertexlist[i]; }
    const tlVertex* GetVertex(int i) const { return vertexlist[i]; }
    void SetVertex(int i, const tlVertex* vert);

    void Scale(float x, float y, float z);
    void Translate(float x, float y, float z);
    void Transform(tlMatrix &m);

    void FlipUVs();           // exchange U and V (for flipping textures on PS2)
    void FlipUV( int idx );   // exchange U and V (for flipping textures on PS2)

    void SetType(pddiPrimType pType)        { primType = pType; }
    pddiPrimType GetType() const            { return primType; }
    void SetVertexType(unsigned long vType) { vertexType = vType; }
    unsigned long GetVertexType() const     { return vertexType; }
    void SetShader(const char* sh);
    const char* GetShader() const           { return shader; }
    tlShader* GetShaderPtr() const          { return shaderPtr; }
    void SetMaterial(const char* mat)       { SetShader(mat); }
    const char* GetMaterial() const         { return shader; }
    void SetVertexShader(const char* sh);
    const char* GetVertexShader() const     { return vertexshader; }
    virtual void SetVertexCount(int i)      { vertexlist.SetCount(i); }
    int GetVertexCount() const              { return vertexlist.Count(); }
    tlTable<tlVertex*>& GetVertexList()     { return vertexlist; }
    tlTable<unsigned long int> & GetIndexList() { return indexlist; }
    void SetIndexList(const tlTable<unsigned long int> & newIndexList) { indexlist = newIndexList; }
    unsigned int GetIndex(int i) const          { return indexlist[i]; }   
    void SetIndex(int i, unsigned int value )   { indexlist[i] = value; }
    int GetIndexCount() const                   { return indexlist.Count(); }


    bool HasTriangles() const { return ((primType == PDDI_PRIM_TRIANGLES) ||
                                       (primType == PDDI_PRIM_TRISTRIP)); }
    bool IsLightMappable( ) const;
    bool IsInAPlane( ) const;
    int GetTriangleCount() const;
    void GetTriangle(int i, unsigned *v1, unsigned *v2, unsigned *v3) const;
    tlTriangle GetTriangle( int i ) const;
    tlTriangle * CloneTriangle( int i ) const;
    void Deindex();
    void Index( );

    // returns true if the triangles were appended
    bool AppendTriangles(const tlPrimGroup& other);

    virtual int Compare(const tlPrimGroup& other);     // returns -1, 0 or 1 (standard sort compare)
    bool operator==(tlPrimGroup&){ return false; }

    // The offsetIndices array _goes nowhere_ -- it is read by LoadFromChunk(), but never written in Chunk()
    // Their sole purpose is as a hint to add tlOffsetSkinVertices instead of tlSkinVertices.
    tlTable<int>&               GetOffsetIndices()          { return offsetindices;}
    void                        SetOffsetIndices(tlTable<int>& ind) { offsetindices = ind; }

    void                        SetExprOffsets( tlExpressionOffsets* pOffsets )   { exprOffsets = pOffsets; }
    tlExpressionOffsets*        GetExprOffsets(void )       { return exprOffsets; }
    void                        SetOffsetListPrimGroupIndex(long pgIndex);

    /// These are obsolete, and should only be used by the exporter
    void AddVertexOffsetList(tlOffsetList* pOffsetList) {offsetlists.Append(pOffsetList);}
    int GetNumOffsetLists() const { return offsetlists.Count(); }
    tlOffsetList* GetOffsetList(int index) const { return offsetlists[index]; };
    void RemoveVertexOffsetLists();
    int CloneVertexOffsetList( const tlPrimGroup* other, long primGroupIndex = 0 );

    // ** Note: Vertex Animation Group data is _not_ stored nor loaded
    //          with the tlPrimGroupChunk.  This is here specifically so
    //          the PrimGroup will keep track of the Vertex Animation
    //          Groups during export from Maya.
    //          Specifically, the Animation Group indexes must be adjusted
    //          when tlPrimGroupMesh::SortPrimGroups() is called from
    //          ExtractInventoryFromScene() in 'exportFunctions.cpp'
    void AddVertexAnimationGroup( tlAnimationGroup* pAnimationGroup ) { vertexAnimationGroups.Append( pAnimationGroup ); }
    int GetNumVertexAnimationGroups() const { return vertexAnimationGroups.Count(); }
    tlAnimationGroup* GetAnimationGroup( int index ) const { return vertexAnimationGroups[index]; };
    void RemoveVertexAnimationGroups( void );
    void SetVertexAnimationGroupIndex(long pgIndex);

    void InsertVertexAnimKey( tlVertexAnimKey *key );

    void AddInstanceInfo(int numInstances);  // used by p3ddeinstance

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);

    void BuildMemoryImage(tlPrimBuffer& buf);
    tlTexture * BuildLightMap( tlTable< tlLight *>&lights, tlTable< tlPrimGroupMesh *> &geometries, tlTable<tlTriMeshIntersect *> &trimeshes, 
                              const tlPhotonMap *tlPhotonMap, float exposure, tlTexture *grime, float filter = 0.0f, 
                              int du = 16, int dv = 16, float sampleDensity = -1.f, bool bIntensityOnly = false );

    tlTexture * BuildLightMap( tlTable< tlLight *>&lights, tlBSPTree *tritree, 
                              const tlPhotonMap *tlPhotonMap, float exposure, tlTexture *grime, float filter = 0.0f, 
                              int du = 16, int dv = 16, float sampleDensity = -1.f, bool bIntensityOnly = false );

    void MergeLightMapWithGrimeMap( tlTexture &grime, tlTexture &lightmap );   
    void CopyUV( int srcUVidx, int dstUVidx );

    unsigned GetMemoryImageSize()
    {
        return memoryimagevertexdescriptionsize + memoryimagevertexsize + memoryimageindexsize;
    }

    void DumpMemoryImage(tlPrimBuffer& buf, int verbosity);
    bool IsMemoryImaged() { return ismemoryimaged; }

    // only tlPrimGroupMesh should use this
    void LoadVertices(int vertstart, tlTable<tlVertex*> &vertices);
    tlTexture * PackLightMaps( tlTable<tlTexture *> textures );
    bool IsLightMapOversizedForTriList( int du, int dv, float sDen );

    //mark a flag
    void Mark( int flag ){ mark = flag; };
    int GetMark( ){ return mark; };

    //if both color and normal exists, keep normal while memory-imaging, if this flag is set
    void SetKeepNormal( bool flag ){ keepNormal = flag; };
    
protected:

    pddiPrimType primType;
    unsigned long vertexType;

    char* shader;
    tlShader* shaderPtr;
    char* vertexshader;
    int instanceCount;
    int instanceVertexCount;
    int instanceIndexCount;
    int mark;

    tlTable<tlVertex *> vertexlist;
    tlTable<unsigned long int> indexlist;
    tlTable<unsigned long int> matrixpalette;

    tlTable<tlOffsetList *> offsetlists;

    // This array _goes nowhere_ -- it is read by LoadFromChunk(), but never written in Chunk()
    tlTable<int> offsetindices;

    // See notes for AddVertexAnimationGroup() above.
    tlTable<tlAnimationGroup *> vertexAnimationGroups;

    //hold all the vertex animation keys
    tlTable<tlVertexAnimKey *> vertexAnimKeys;

    bool         ismemoryimaged;
    bool         keepNormal;
    unsigned int memoryimagevertexdescriptionsize;
    unsigned char* memoryimagevertexdescription;
    unsigned int memoryimagevertexsize;
    unsigned char* memoryimagevertex;
    unsigned int memoryimageindexsize;
    unsigned char* memoryimageindex;
    unsigned int memoryimagevertexdescriptionparam;
    unsigned int memoryimagevertexparam;
    unsigned int memoryimageindexparam;
    unsigned int memoryimageversion;

    void BuildMatrixPalette();

    tlTexture * BuildLightMapForTriangleList( tlTable< tlLight *>&lights, tlTable< tlPrimGroupMesh *> &geometries, 
                                             tlTable<tlTriMeshIntersect *> &trimeshes,
                                             const tlPhotonMap *tlPhotonMap, float exposure,  
                                             float filter = 0.0f, int du = 16, int dv = 16,  
                                             float sampleDensity = -1.f, bool bIntensityOnly = false );
    tlTexture * BuildLightMapForPlane( tlTable< tlLight *>&lights, tlTable< tlPrimGroupMesh *> &geometries, 
                                      tlTable<tlTriMeshIntersect *> &trimeshes,
                                      const tlPhotonMap *tlPhotonMap, float exposure, 
                                      float filter = 0.0f, int du = 16, int dv = 16,  
                                      float sampleDensity = -1.f, bool bIntensityOnly = false );

    //build light map use bsp tree for testing ray-blocking
    tlTexture * BuildLightMapForTriangleList( tlTable< tlLight *>&lights, 
                                             tlBSPTree *tritree,
                                             const tlPhotonMap *tlPhotonMap, float exposure,  
                                             float filter = 0.0f, int du = 16, int dv = 16,  
                                             float sampleDensity = -1.f, bool bIntensityOnly = false );
    tlTexture * BuildLightMapForPlane( tlTable< tlLight *>&lights,
                                      tlBSPTree *tritree,
                                      const tlPhotonMap *tlPhotonMap, float exposure, 
                                      float filter = 0.0f, int du = 16, int dv = 16,  
                                      float sampleDensity = -1.f, bool bIntensityOnly = false );
    void Modulate2Textures( int srcChannel, tlTexture &srcTex, int dstChannel, tlTexture & dstTex ) const;

    void Merge2Textures( int srcChannel, tlTexture &srcTex, int dstChannel, tlTexture & dstTex );
   
    
    tlDataChunk* VertexShaderChunk();
    tlDataChunk* PositionListChunk();
    tlDataChunk* NormalListChunk();
    tlDataChunk* TangentListChunk();
    tlDataChunk* BinormalListChunk();
    tlDataChunk* PackedNormalListChunk();
    tlDataChunk* UVListChunk(int channel);
    tlDataChunk* ColourListChunk();
    tlDataChunk* MultiColourListChunk(int channel);
    tlDataChunk* StripListChunk();
    tlDataChunk* IndexListChunk();
    tlDataChunk* MatrixListChunk();
    tlDataChunk* WeightListChunk();
    tlDataChunk* MatrixPaletteChunk();
    tlDataChunk* MemoryImageVertexDescriptionChunk();
    tlDataChunk* MemoryImageVertexChunk();
    tlDataChunk* MemoryImageIndexChunk();
    tlOffsetListChunk* OffsetListChunk(int index);
    

    void LoadVertexShader(tlDataChunk* ch);
    void LoadPositionList(tlDataChunk* ch);
    void LoadNormalList(tlDataChunk* ch);
    void LoadTangentList(tlDataChunk* ch);
    void LoadBinormalList(tlDataChunk* ch);
    void LoadPackedNormalList(tlDataChunk* ch);
    void LoadUVList(tlDataChunk* ch);
    void LoadColourList(tlDataChunk* ch);
    void LoadMultiColourList(tlDataChunk* ch);
    void LoadStripList(tlDataChunk* ch);
    void LoadIndexList(tlDataChunk* ch);
    void LoadMatrixList(tlDataChunk* ch);
    void LoadWeightList(tlDataChunk* ch);
    void LoadMatrixPalette(tlDataChunk* ch);
    void LoadOffsetList(tlDataChunk* ch);
    void LoadInstanceInfo(tlDataChunk* ch);
    void LoadMemoryImageVertexDescription(tlDataChunk* ch);
    void LoadMemoryImageVertex(tlDataChunk* ch);
    void LoadMemoryImageIndex(tlDataChunk* ch);
    int  GetOffsetListIndex(tlDataChunk* ch);
    
private:
     tlMatrix  MatrixToLightMapSpace( ) const;
     void SetupLightMapSpace( tlPoint &uAxis, tlPoint &vAxis, tlPoint &nAxis, tlPoint &origin ) const;
     void CalcUVInLightMapSpace( const tlMatrix & matrix, tlPoint & corner, float &width, float &height ) const;
     void SetLightMapUV( const tlMatrix & matrix, const tlPoint & corner, const float &width, const float &height );
     tlPoint CalcPlaneNormal( ) const;
     tlPoint CalcPackedLightMapSize( tlTable<tlPoint *> & texSizes );
     tlPoint CalcPackedLightMapSize( tlTable<tlTexture *> & textures );

     //Allows the primgroup to pass its offsetlists to this new 
     tlExpressionOffsets*                       exprOffsets;
};



#endif

