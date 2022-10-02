#ifndef __WORLD_SCENE_H__
#define __WORLD_SCENE_H__

#include <p3d/pure3d.hpp>
#include <render/Culling/UseArray.h>
#include <render/Culling/SpatialTreeIter.h>
#include <render/DSG/IntersectDSG.h>
#include <render/DSG/StaticPhysDSG.h>
#include <render/DSG/StaticEntityDSG.h>

/////////////////////////////////////////////////////////////////////////
// This class couples renderables (currently tGeometries) and such to 
// the Spatial Graphs used to maintain them.
// 
// Currently it handles:
//    -the collection of renderables (tGeometry)
//    -the generation of a Spatial Tree
//       -whose topology is influenced by the spatial distribution of 
//          primgroups
//    -the rendering of all elements within the tree marked for render
//    
/////////////////////////////////////////////////////////////////////////
class WorldScene 
{
public:
   WorldScene();
   ~WorldScene();

   ////////////////////////////////////////////////////////////
   // Pure3D Data Reference Interface
   ////////////////////////////////////////////////////////////
   //const char* GetStaticInventorySection();

   ////////////////////////////////////////////////////////////
   // Manipulation Interface
   ////////////////////////////////////////////////////////////
   void Init( int nRenderables );
   void Add( tGeometry* pGeometry );
   void Add( IntersectDSG* ipIntersectDSG );
   void Add( StaticPhysDSG* ipStaticPhysDSG );
   void Add( StaticEntityDSG* ipStaticEntityDSG );
   void GenerateSpatialReps();

   void Render( unsigned int viewIndex );

   ////////////////////////////////////////////////////////////
   // Public Tree Masks
   ////////////////////////////////////////////////////////////
   enum
   {
      msClear        = 0x00,
      msVisible0     = 0x01,
      msVisible1     = 0x02,
      msVisible2     = 0x04,
      msVisible3     = 0x08,
      msStaticPhys   = 0x0f
   };

   ////////////////////////////////////////////////////////////
   // Public Members
   ////////////////////////////////////////////////////////////
   SpatialTreeIter<StaticEntityDSG,StaticPhysDSG,IntersectDSG> mStaticTreeWalker;

protected:
   ////////////////////////////////////////////////////////////
   // State Methods
   ////////////////////////////////////////////////////////////
   bool IsPreTreeGen();
   bool IsPostTreeGen();

   ////////////////////////////////////////////////////////////
   // Helper Methods
   ////////////////////////////////////////////////////////////
   void GenerateDisplayList();
   int  PosnInDisplayList( tUID iUID );
   void AddToDisplayList( tGeometry* ipGeo );
   void ClearDisplayList();
   void RenderDisplayList();
   int  CountNumShaders();
   void GenerateStaticTree();
   void PopulateStaticTree();

   void PlaceStaticGeo(       tGeometry*        pGeometry );
   void PlaceStaticIntersect( IntersectDSG*     ipIntersectDSG );
   void PlaceStaticEntity(    StaticEntityDSG*  ipStaticEntity );
   void PlaceStaticPhys(      StaticPhysDSG*    ipStaticPhys );
   bool IsNotInScene( tGeometry*       pGeometry );
   bool IsNotInScene( IntersectDSG*    ipIntersectDSG );
   bool IsNotInScene( StaticEntityDSG* ipStaticEntity );
   bool IsNotInScene( StaticPhysDSG*   ipStaticPhys );

   void MarkCameraVisible( tPointCamera* pCam, unsigned int iFilter );
   void BuildFrustumPlanes( tPointCamera* pCam, FixedArray<rmt::Vector4>& orCamPlanes );

   void RenderScene( unsigned int iFilter );

   ////////////////////////////////////////////////////////////
   // Private Members
   ////////////////////////////////////////////////////////////
   SpatialTree<StaticEntityDSG,StaticPhysDSG,IntersectDSG>* mpStaticTree;
   UseArray<tGeometry*>    mStaticGeos;
   UseArray<IntersectDSG*> mStaticIntersects;
   UseArray<StaticEntityDSG*> mStaticEntities;
   UseArray<StaticPhysDSG*> mStaticPhys;

   ReserveArray< ReserveArray<tPrimGroup*> > mDisplayList;
   ReserveArray<tUID>                        mDisplayListKey;
   
   tShader* mpDefaultShader; 
#ifdef DEBUGWATCH
   unsigned int mDebugMarkTiming, mDebugWalkTiming, mDebugRenderTiming;
    bool mDebugSimCollisionVolumeDrawing;
    bool mDebugSimStatsDisplay;
    int mDebugWatchNumCollisionPairs;
#endif
   ////////////////////////////////////////////////////////////
   // Private Statics
   ////////////////////////////////////////////////////////////
};

#endif