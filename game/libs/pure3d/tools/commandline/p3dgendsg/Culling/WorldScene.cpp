#include <WorldScene.h>
#include <SpatialTreeFactory.h>

#include <Matrix3f.h>
#include <camera/supercammanager.h>

#include <raddebugwatch.hpp>
#include <radtime.hpp>

#include <worldsim/worldphysicsmanager.h>

#ifdef DEBUGWATCH
#include <simcollision/collisiondisplay.hpp>
#include <simcommon/simutility.hpp>
#endif

//For debug section
//#include <render/culling/../debuginfo.hpp"
//#include <render/culling/../../profiler/profiler.hpp"
//For test debugging (camera)
//#include <render/culling/../../main/globals.hpp"
//#include <render/culling/../../main/gamesettings.hpp"
//#include <render/culling/../../worldsim/supercam.hpp"
//#include <render/culling/../../worldsim/player.hpp"

//static Vector3f TODO_GRANULARITY(160.0f, 2000.0f, 160.0f);
//static Vector3f TODO_GRANULARITY(240.0f, 2000.0f, 240.0f);
//static Vector3f TODO_GRANULARITY(10.0f, 2000.0f, 10.0f);
//static Vector3f TODO_GRANULARITY(200.0f, 2000.0f, 200.0f);
#ifdef RAD_GAMECUBE
static Vector3f TODO_GRANULARITY(40.0f, 2000.0f, 40.0f);
#else
static Vector3f TODO_GRANULARITY(20.0f, 2000.0f, 20.0f);
#endif
//static Vector3f TODO_GRANULARITY(120.0f, 2000.0f, 120.0f);

////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
WorldScene::WorldScene() 
: mpStaticTree(NULL)
{
   mpDefaultShader = NULL;
#ifdef DEBUGWATCH
   radDbgWatchAddUnsignedInt( &mDebugMarkTiming, "Debug Mark micros", "WorldScene", NULL, NULL );
   radDbgWatchAddUnsignedInt( &mDebugWalkTiming, "Debug Walk micros", "WorldScene", NULL, NULL );
   radDbgWatchAddUnsignedInt( &mDebugRenderTiming, "Debug Render micros", "WorldScene", NULL, NULL );

    // toggle collision volume drawing on and off
    mDebugSimCollisionVolumeDrawing = false;
    radDbgWatchAddBoolean(&mDebugSimCollisionVolumeDrawing, "Sim Collision Volume Drawing", "Physics Debug", NULL, NULL);

    mDebugSimStatsDisplay = false;
    radDbgWatchAddBoolean(&mDebugSimStatsDisplay, "Sim Stats Display", "Physics Debug", NULL, NULL);
        
    mDebugWatchNumCollisionPairs = 0;
    radDbgWatchAddInt(&mDebugWatchNumCollisionPairs, "Num Collision Pairs", "Physics Debug", NULL, NULL );
#endif
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
WorldScene::~WorldScene()
{
   rAssert(false);
   //unsafe destruction 
   for( int i=mStaticGeos.mUseSize-1; i>-1; i-- )
   {
      mStaticGeos[i]->Release();
   }

   mpDefaultShader->Release();

#ifdef DEBUGWATCH
   radDbgWatchDelete(&mDebugMarkTiming);
   radDbgWatchDelete(&mDebugWalkTiming);
   radDbgWatchDelete(&mDebugRenderTiming);
#endif
}
////////////////////////////////////////////////////////////////////
// Init will intialise the WorldScene Object:
//    -Tells WorldScene at maximum how many nRenderables will be 
//       Add'ed
//    -Is a neccessary precursor to any and all other calls to this
//       object
////////////////////////////////////////////////////////////////////
void WorldScene::Init( int nRenderables )
{
   rAssert( IsPreTreeGen() );

   mStaticGeos.Allocate( nRenderables );
   mStaticIntersects.Allocate( nRenderables );
   mStaticEntities.Allocate( nRenderables );
   mStaticPhys.Allocate( nRenderables );
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
void WorldScene::Add( tGeometry* pGeometry )
{
   pGeometry->AddRef();
   if( IsNotInScene( pGeometry ))
   {
      mStaticGeos.Add(pGeometry);
   }

   if( IsPostTreeGen() )
   {
      PlaceStaticGeo( pGeometry );
   }
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
void WorldScene::Add( IntersectDSG* ipIntersectDSG )
{
   ipIntersectDSG->AddRef();
   if( IsNotInScene( ipIntersectDSG ))
      mStaticIntersects.Add(ipIntersectDSG);

   if( IsPostTreeGen() )
   {
      PlaceStaticIntersect( ipIntersectDSG );
   }
}
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
void WorldScene::Add( StaticPhysDSG* ipStaticPhysDSG )
{
   ipStaticPhysDSG->AddRef();
   if( IsNotInScene( ipStaticPhysDSG ))
      mStaticPhys.Add(ipStaticPhysDSG);

   if( IsPostTreeGen() )
   {
      PlaceStaticPhys( ipStaticPhysDSG );
   }
}
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
void WorldScene::Add( StaticEntityDSG* ipStaticEntityDSG )
{
   ipStaticEntityDSG->AddRef();
   if( IsNotInScene( ipStaticEntityDSG ))
      mStaticEntities.Add(ipStaticEntityDSG);

   if( IsPostTreeGen() )
   {
      PlaceStaticEntity( ipStaticEntityDSG );
   }
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
bool WorldScene::IsNotInScene( tGeometry* pGeometry )
{
   for( int i=mStaticGeos.mUseSize-1; i>-1; i-- )
   {
      if( mStaticGeos[i]->GetUID() == pGeometry->GetUID() )
         return false;
   }
   return true;
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
bool WorldScene::IsNotInScene( IntersectDSG* ipIntersectDSG )
{
   for( int i=mStaticIntersects.mUseSize-1; i>-1; i-- )
   {
      if( mStaticIntersects[i]->GetUID() == ipIntersectDSG->GetUID() )
         return false;
   }
   return true;
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
bool WorldScene::IsNotInScene( StaticEntityDSG* ipStaticEntity )
{
   for( int i=mStaticEntities.mUseSize-1; i>-1; i-- )
   {
      if( mStaticEntities[i]->GetUID() == ipStaticEntity->GetUID() )
         return false;
   }
   return true;
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
bool WorldScene::IsNotInScene( StaticPhysDSG* ipStaticPhys )
{
   for( int i=mStaticPhys.mUseSize-1; i>-1; i-- )
   {
      if( mStaticPhys[i]->GetUID() == ipStaticPhys->GetUID() )
         return false;
   }
   return true;
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
void WorldScene::GenerateSpatialReps()
{
/*
   mpDefaultShader = p3d::find<tShader>("OakL_m");
   tTexture* pTexture = p3d::find<tTexture>("OakL.bmp");
   for(int j=mStaticGeos.mUseSize-1; j>-1; j--)
   {
      for( int i=mStaticGeos[j]->GetNumPrimGroup()-1; i>-1; i-- )
      {
//         mStaticGeos[j]->GetShader(i)->SetTexture(PDDI_SP_BASETEX, pTexture);
         if( mStaticGeos[j]->GetShader(i)->GetType() == mpDefaultShader->GetType() )
         {
        //    mStaticGeos[j]->SetShader(i, mpDefaultShader);
         }
      }
   }
   */
   rAssert( IsPreTreeGen() );

   GenerateDisplayList();

   GenerateStaticTree();
   PopulateStaticTree();
}
//========================================================================
// WorldScene::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void WorldScene::RenderScene( unsigned int iFilter )
{
    static int sMaxDebugGeoCount = 0;
    int DebugRenderGeoCount = 0;
    int DebugRenderNodeCount = 0;
    int DebugRenderLeafCount = 0;

    mStaticTreeWalker.SetIterFilter( iFilter );
    ClearDisplayList();
//////////////////////////////////////////////////////////////////////////
#ifdef DEBUGWATCH
    unsigned int t0,t1,tRenderAcc=0;
    t0 = radTimeGetMicroseconds();
#endif
//////////////////////////////////////////////////////////////////////////
    //For all the visible nodes in the tree
    for( mStaticTreeWalker.MoveToFirst(); mStaticTreeWalker.NotDone(); mStaticTreeWalker.MoveToNext() )
    {
        ReserveArray<StaticEntityDSG*>& rNodeElems = mStaticTreeWalker.rCurrent().mSpatialElems;

        DebugRenderNodeCount++;
        if( mStaticTreeWalker.IsCurrentLeaf() )
        {
            DebugRenderLeafCount++;
        }
        else
        {
            //rAssert( mStaticTreeWalker.pCurrent()->mSpatialElems.mSize    == 0 );
            //rAssert( mStaticTreeWalker.pCurrent()->mSpatialElems.mUseSize == 0 );
            rAssert( mStaticTreeWalker.pCurrent()->mIntersectElems.mSize    == 0 );
            rAssert( mStaticTreeWalker.pCurrent()->mIntersectElems.mUseSize == 0 );
        }

        //      if( BEGIN_DEBUGINFO_SECTION( "CullDebug" ) )
        //      {
        //mStaticTreeWalker.DisplayCurrentBoundingBox( tColour(255,255,0) );
        //      }
        //      END_DEBUGINFO_SECTION; 

#if 1
//////////////////////////////////////////////////////////////////////////
        //Debug Collision volumes
//////////////////////////////////////////////////////////////////////////        
        /*
        ReserveArray<StaticPhysDSG*>& rCollisionElems = mStaticTreeWalker.rCurrent().mDynamicElems;
        for( int i=rCollisionElems.mUseSize-1; i>-1; i-- )
        {
           rCollisionElems[i]->DisplayBoundingBox();

        }
        */

#ifdef DEBUGWATCH

        // call to martin's sim display        
        if(mDebugSimCollisionVolumeDrawing)
        {
            sim::DisplayCollisionObjects(GetWorldPhysicsManager()->mCollisionManager);
        }

        if(mDebugSimStatsDisplay)
        {
            // this makes things grind to a fucking halt
            sim::SimStats::DisplayStats();            
        }

        mDebugWatchNumCollisionPairs = GetWorldPhysicsManager()->mCollisionManager->GetCollisionObjectPairList(0)->GetSize();


#endif
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
#endif
        //For all the Used slots in the node's T array
        for(  int i=rNodeElems.mUseSize-1; i>-1; i-- )
        {
            //rNodeElems[i]->Display();
            AddToDisplayList(rNodeElems[i]->mpGeo());
            DebugRenderGeoCount++;
        }
    }
    
//////////////////////////////////////////////////////////////////////////
#ifdef DEBUGWATCH
            t1 = radTimeGetMicroseconds();
#endif
//////////////////////////////////////////////////////////////////////////
   RenderDisplayList();
//////////////////////////////////////////////////////////////////////////
#ifdef DEBUGWATCH
            tRenderAcc += radTimeGetMicroseconds()-t1;
#endif
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
#ifdef DEBUGWATCH
    t1 = radTimeGetMicroseconds();
    mDebugWalkTiming = t1-t0; 
    mDebugRenderTiming = tRenderAcc; 
#endif
//////////////////////////////////////////////////////////////////////////

    if(DebugRenderGeoCount > sMaxDebugGeoCount )
      sMaxDebugGeoCount = DebugRenderGeoCount;
   //Assert: we are not drawing more geometries that we have 
   //(ie, drawing everything twice or something)
   rAssert( DebugRenderGeoCount <= mStaticGeos.mUseSize );
}
//========================================================================
// WorldScene::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void WorldScene::Render(  unsigned int viewIndex )
{
    //mStaticTreeWalker.MarkTree( msVisible );
    mStaticTreeWalker.AndTree( msClear );
    //mStaticTreeWalker.OrTree( msVisible );
    //BEGIN_PROFILE("Mark Camera")

    tPointCamera* pCam;

//////////////////////////////////////////////////////////////////////////
#ifdef DEBUGWATCH
    unsigned int t0, t1;
#endif
//////////////////////////////////////////////////////////////////////////
    switch( viewIndex )
    {
    case 0:
        {
//////////////////////////////////////////////////////////////////////////
#ifdef DEBUGWATCH
            t0 = radTimeGetMicroseconds();
#endif
//////////////////////////////////////////////////////////////////////////
            pCam = (tPointCamera*)GetSuperCamManager()->GetSCC(0)->GetCamera();
            MarkCameraVisible( pCam, msVisible0 );
//////////////////////////////////////////////////////////////////////////
#ifdef DEBUGWATCH
            t1 = radTimeGetMicroseconds();
            mDebugMarkTiming = t1-t0;
#endif
//////////////////////////////////////////////////////////////////////////
            RenderScene( msVisible0 );
            break;
        }
    case 1:
        {
            pCam = (tPointCamera*)GetSuperCamManager()->GetSCC(1)->GetCamera();
            MarkCameraVisible( pCam, msVisible1 );
            RenderScene( msVisible1 );
            break;
        }
    default:
        {
            rAssertMsg(false, "Only supporting 1 or 2 players right now.");
            break;
        }
    }

    //END_PROFILE("Mark Camera")



}

////////////////////////////////////////////////////////////////////
//-------------------Private--------------------------------------//
////////////////////////////////////////////////////////////////////
//========================================================================
// WorldScene::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void WorldScene::GenerateDisplayList()
{
   int i,j, DListPosn;
   tUID DListUID;

   i=CountNumShaders();
   mDisplayListKey.Reserve(i);
   mDisplayListKey.Allocate();
   mDisplayList.Reserve(i);
   mDisplayList.Allocate();

   for(i=mStaticGeos.mUseSize-1; i>-1; i--)
   {
      for(j=mStaticGeos[i]->GetNumShader()-1; j>-1; j--)
      {
         DListUID  = mStaticGeos[i]->GetShader(j)->GetUID();
         DListPosn = PosnInDisplayList(DListUID); 
         if( DListPosn == -1)
         {
            mDisplayListKey.Add(DListUID);
            mDisplayList.AddUse(1);
            mDisplayList[mDisplayList.mUseSize-1].Reserve(1);
         }
         else
         {
            mDisplayList[DListPosn].Reserve(1);
         }
      }
   }

   for(i=mDisplayList.mUseSize-1; i>-1; i--)
   {
      mDisplayList[i].Allocate();
   }
}
//========================================================================
// WorldScene::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
int WorldScene::CountNumShaders()
{
   int i, count=0;
   for(i=mStaticGeos.mUseSize-1; i>-1; i--)
   {
      count += mStaticGeos[i]->GetNumShader();
   }
   return count;
}
//========================================================================
// WorldScene::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
int WorldScene::PosnInDisplayList( tUID iUID )
{
   for(int i=mDisplayListKey.mUseSize-1; i>-1; i--)
   {
      if( mDisplayListKey[i] == iUID )
         return i;
   }
   return -1;
}
//========================================================================
// WorldScene::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void WorldScene::AddToDisplayList( tGeometry* ipGeo )
{
   tPrimGroup* pPrimGroup;
   for(int i=ipGeo->GetNumPrimGroup()-1; i>-1; i--)
   {
      pPrimGroup = ipGeo->GetPrimGroup(i);
      mDisplayList[ PosnInDisplayList(pPrimGroup->GetShader()->GetUID()) ].Add(pPrimGroup);
   }
}
//========================================================================
// WorldScene::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
/*void WorldScene::AddToDisplayList( tGeometry* ipGeo )
{
   int i, index;
   tPrimGroup* pPrimGroup;

   for(i=ipGeo->GetNumPrimGroup()-1; i>-1; i--)
   {
      pPrimGroup  = ipGeo->GetPrimGroup(i);
      index       = PosnInDisplayList(pPrimGroup->GetShader()->GetUID());

      mDisplayList[index].Add(pPrimGroup);
   }
}*/
//========================================================================
// WorldScene::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void WorldScene::RenderDisplayList()
{
   int i,j;
   for(i=mDisplayList.mUseSize-1; i>-1; i--)
   {
      for(j=mDisplayList[i].mUseSize-1; j>-1; j--)
      {
         mDisplayList[i][j]->Display();
      }
   }
}
//========================================================================
// WorldScene::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void WorldScene::ClearDisplayList()
{
   for(int i=mDisplayList.mUseSize-1; i>-1; i--)
   {
      mDisplayList[i].ClearUse();
   }
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
void WorldScene::GenerateStaticTree()
{
   Bounds3f WorldBounds;
   rmt::Box3D BBox;
   SpatialTreeFactory<StaticEntityDSG,StaticPhysDSG,IntersectDSG> StaticTF;

   StaticTF.Reset( (mStaticIntersects.mUseSize+mStaticGeos.mUseSize) * 2 +2);

   mStaticGeos[0]->GetBoundingBox( &BBox ); WorldBounds.mMin.SetTo( BBox.low ); WorldBounds.mMax.SetTo( BBox.high ); 

   ///////////////////////////////////////////////////////////////////////
   // Seed the TreeFactory with data from all the drawable elements
   ///////////////////////////////////////////////////////////////////////
   for( int i=mStaticGeos.mUseSize-1; i>-1; i-- )
   {
      mStaticGeos[i]->GetBoundingBox( &BBox );
      StaticTF.Seed( ((Vector3f&)BBox.low), 0 ); 
      StaticTF.Seed( ((Vector3f&)BBox.high), mStaticGeos[i]->GetNumPrimGroup() ); 
      WorldBounds.Accumulate( (Vector3f&)BBox.low );
      WorldBounds.Accumulate( (Vector3f&)BBox.high );
      //used to use low, but that'll lead to more bad volume intersects
   }
   ///////////////////////////////////////////////////////////////////////
   // Seed the TreeFactory with data from all the intersect elements
   ///////////////////////////////////////////////////////////////////////
   for( int i=mStaticIntersects.mUseSize-1; i>-1; i-- )
   {
      mStaticIntersects[i]->GetBoundingBox( &BBox );
      StaticTF.Seed( ((Vector3f&)BBox.low), 0 ); 
      StaticTF.Seed( ((Vector3f&)BBox.high), mStaticIntersects[i]->GetNumPrimGroup() ); 
      WorldBounds.Accumulate( (Vector3f&)BBox.low );
      WorldBounds.Accumulate( (Vector3f&)BBox.high );
      //used to use low, but that'll lead to more bad volume intersects
   }

   //Add a coupla bounding seeds; bound correction to handle
   //p3dsplit/modified, which subdivides from the origin
   WorldBounds.mMin.x = rmt::Floor(WorldBounds.mMin.x/TODO_GRANULARITY.x)*TODO_GRANULARITY.x;
   WorldBounds.mMin.y = rmt::Floor(WorldBounds.mMin.y/TODO_GRANULARITY.y)*TODO_GRANULARITY.y;
   WorldBounds.mMin.z = rmt::Floor(WorldBounds.mMin.z/TODO_GRANULARITY.z)*TODO_GRANULARITY.z;
   StaticTF.Seed( WorldBounds.mMin, 0 );
   StaticTF.Seed( WorldBounds.mMax, 0 );

   ///////////////////////////////////////////////////////////////////////
   // TreeFactory: Grow a Tree, damn you! 
   ///////////////////////////////////////////////////////////////////////
   TODO_GRANULARITY.y = WorldBounds.mMax.y - WorldBounds.mMin.y;
   StaticTF.Generate( TODO_GRANULARITY );

   StaticTF.ExtractTree( &mpStaticTree );

   mStaticTreeWalker.SetToRoot( *mpStaticTree );
}
////////////////////////////////////////////////////////////////////
// TODO: this can be per-function templatized for all member types
////////////////////////////////////////////////////////////////////
void WorldScene::PopulateStaticTree()
{
   BoxPts DrawableSP;
   rmt::Box3D  BBox;
#if 1 //sort as boxes
   rmt::Vector EpsilonOffset(0.01f,0.01f,0.01f);

   for( int i=mStaticEntities.mUseSize-1; i>-1; i-- )
   {
      mStaticEntities[i]->GetBoundingBox( &BBox );
      
      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      DrawableSP.mBounds.mMin.Add(EpsilonOffset);
      DrawableSP.mBounds.mMax.Sub(EpsilonOffset);

      mStaticTreeWalker.ReservePlaceT( (ISpatialProxyAA&)DrawableSP, 1 );
   }
   for( int i=mStaticPhys.mUseSize-1; i>-1; i-- )
   {
      mStaticPhys[i]->GetBoundingBox( &BBox );
      
      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      DrawableSP.mBounds.mMin.Add(EpsilonOffset);
      DrawableSP.mBounds.mMax.Sub(EpsilonOffset);

      mStaticTreeWalker.ReservePlaceD( (ISpatialProxyAA&)DrawableSP, 1 );
   }
   for( int i=mStaticIntersects.mUseSize-1; i>-1; i-- )
   {
      mStaticIntersects[i]->GetBoundingBox( &BBox );
      
      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      DrawableSP.mBounds.mMin.Add(EpsilonOffset);
      DrawableSP.mBounds.mMax.Sub(EpsilonOffset);
      
      mStaticTreeWalker.ReservePlaceI( (ISpatialProxyAA&)DrawableSP, 1 );
   }
//////////////////////////////////////////////////////////////////////////
   mStaticTreeWalker.AllocateAllReservations();
//////////////////////////////////////////////////////////////////////////
   for( int i=mStaticEntities.mUseSize-1; i>-1; i-- )
   {
      mStaticEntities[i]->GetBoundingBox( &BBox );
      
      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      DrawableSP.mBounds.mMin.Add(EpsilonOffset);
      DrawableSP.mBounds.mMax.Sub(EpsilonOffset);
      
      mStaticTreeWalker.Place( (ISpatialProxyAA&)DrawableSP, mStaticEntities[i] );
   }
   for( int i=mStaticPhys.mUseSize-1; i>-1; i-- )
   {
      mStaticPhys[i]->GetBoundingBox( &BBox );
      
      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      DrawableSP.mBounds.mMin.Add(EpsilonOffset);
      DrawableSP.mBounds.mMax.Sub(EpsilonOffset);
      
      mStaticTreeWalker.Place( (ISpatialProxyAA&)DrawableSP, mStaticPhys[i] );
   }
   for( int i=mStaticIntersects.mUseSize-1; i>-1; i-- )
   {
      mStaticIntersects[i]->GetBoundingBox( &BBox );
      
      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      DrawableSP.mBounds.mMin.Add(EpsilonOffset);
      DrawableSP.mBounds.mMax.Sub(EpsilonOffset);
      
      mStaticTreeWalker.Place( (ISpatialProxyAA&)DrawableSP, mStaticIntersects[i] );
   }
   
#else //sort as centroid points (to compensate for tearing in p3dsplit)
   for( int i=mStaticEntities.mUseSize-1; i>-1; i-- )
   {
      mStaticEntities[i]->GetBoundingBox( &BBox );
      
      BBox.low.Add( BBox.high );
      ((Vector3f&)BBox.low).Mult( 0.5f );
      BBox.high = BBox.low;

      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      
      mStaticTreeWalker.ReservePlaceT( (ISpatialProxyAA&)DrawableSP, 1 );
   }
   for( int i=mStaticPhys.mUseSize-1; i>-1; i-- )
   {
      mStaticPhys[i]->GetBoundingBox( &BBox );
      
      BBox.low.Add( BBox.high );
      ((Vector3f&)BBox.low).Mult( 0.5f );
      BBox.high = BBox.low;

      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      
      mStaticTreeWalker.ReservePlaceD( (ISpatialProxyAA&)DrawableSP, 1 );
   }
   for( int i=mStaticIntersects.mUseSize-1; i>-1; i-- )
   {
      mStaticIntersects[i]->GetBoundingBox( &BBox );
      
      BBox.low.Add( BBox.high );
      ((Vector3f&)BBox.low).Mult( 0.5f );
      BBox.high = BBox.low;

      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      
      mStaticTreeWalker.ReservePlaceI( (ISpatialProxyAA&)DrawableSP, 1 );
   }
//////////////////////////////////////////////////////////////////////////
   mStaticTreeWalker.AllocateAllReservations();
//////////////////////////////////////////////////////////////////////////
   for( int i=mStaticEntities.mUseSize-1; i>-1; i-- )
   {
      mStaticEntities[i]->GetBoundingBox( &BBox );
      
      BBox.low.Add( BBox.high );
      ((Vector3f&)BBox.low).Mult( 0.5f );
      BBox.high = BBox.low;

      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      
      mStaticTreeWalker.Place( (ISpatialProxyAA&)DrawableSP, mStaticEntities[i] );
   }
   for( int i=mStaticPhys.mUseSize-1; i>-1; i-- )
   {
      mStaticPhys[i]->GetBoundingBox( &BBox );
      
      BBox.low.Add( BBox.high );
      ((Vector3f&)BBox.low).Mult( 0.5f );
      BBox.high = BBox.low;

      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      
      mStaticTreeWalker.Place( (ISpatialProxyAA&)DrawableSP, mStaticPhys[i] );
   }
   for( int i=mStaticIntersects.mUseSize-1; i>-1; i-- )
   {
      mStaticIntersects[i]->GetBoundingBox( &BBox );
      
      BBox.low.Add( BBox.high );
      ((Vector3f&)BBox.low).Mult( 0.5f );
      BBox.high = BBox.low;

      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      
      mStaticTreeWalker.Place( (ISpatialProxyAA&)DrawableSP, mStaticIntersects[i] );
   }
#endif
/*
#if 1 //sort as boxes
   rmt::Vector EpsilonOffset(0.01f,0.01f,0.01f);

   for( int i=mStaticGeos.mUseSize-1; i>-1; i-- )
   {
      mStaticGeos[i]->GetBoundingBox( &BBox );
      
      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      DrawableSP.mBounds.mMin.Add(EpsilonOffset);
      DrawableSP.mBounds.mMax.Sub(EpsilonOffset);

      mStaticTreeWalker.ReservePlaceT( (ISpatialProxyAA&)DrawableSP, 1 );
   }
   for( int i=mStaticIntersects.mUseSize-1; i>-1; i-- )
   {
      mStaticIntersects[i]->GetBoundingBox( &BBox );
      
      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      DrawableSP.mBounds.mMin.Add(EpsilonOffset);
      DrawableSP.mBounds.mMax.Sub(EpsilonOffset);
      
      mStaticTreeWalker.ReservePlaceI( (ISpatialProxyAA&)DrawableSP, 1 );
   }
//////////////////////////////////////////////////////////////////////////
   mStaticTreeWalker.AllocateAllReservations();
//////////////////////////////////////////////////////////////////////////
   for( int i=mStaticGeos.mUseSize-1; i>-1; i-- )
   {
      mStaticGeos[i]->GetBoundingBox( &BBox );
      
      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      DrawableSP.mBounds.mMin.Add(EpsilonOffset);
      DrawableSP.mBounds.mMax.Sub(EpsilonOffset);
      
      mStaticTreeWalker.Place( (ISpatialProxyAA&)DrawableSP, mStaticGeos[i] );
   }
   for( int i=mStaticIntersects.mUseSize-1; i>-1; i-- )
   {
      mStaticIntersects[i]->GetBoundingBox( &BBox );
      
      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      DrawableSP.mBounds.mMin.Add(EpsilonOffset);
      DrawableSP.mBounds.mMax.Sub(EpsilonOffset);
      
      mStaticTreeWalker.Place( (ISpatialProxyAA&)DrawableSP, mStaticIntersects[i] );
   }
   
#else //sort as centroid points (to compensate for tearing in p3dsplit)
   for( int i=mStaticGeos.mUseSize-1; i>-1; i-- )
   {
      mStaticGeos[i]->GetBoundingBox( &BBox );
      
      BBox.low.Add( BBox.high );
      ((Vector3f&)BBox.low).Mult( 0.5f );
      BBox.high = BBox.low;

      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      
      mStaticTreeWalker.ReservePlaceT( (ISpatialProxyAA&)DrawableSP, 1 );
   }
   for( int i=mStaticIntersects.mUseSize-1; i>-1; i-- )
   {
      mStaticIntersects[i]->GetBoundingBox( &BBox );
      
      BBox.low.Add( BBox.high );
      ((Vector3f&)BBox.low).Mult( 0.5f );
      BBox.high = BBox.low;

      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      
      mStaticTreeWalker.ReservePlaceI( (ISpatialProxyAA&)DrawableSP, 1 );
   }
//////////////////////////////////////////////////////////////////////////
   mStaticTreeWalker.AllocateAllReservations();
//////////////////////////////////////////////////////////////////////////
   for( int i=mStaticGeos.mUseSize-1; i>-1; i-- )
   {
      mStaticGeos[i]->GetBoundingBox( &BBox );
      
      BBox.low.Add( BBox.high );
      ((Vector3f&)BBox.low).Mult( 0.5f );
      BBox.high = BBox.low;

      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      
      mStaticTreeWalker.Place( (ISpatialProxyAA&)DrawableSP, mStaticGeos[i] );
   }
   for( int i=mStaticIntersects.mUseSize-1; i>-1; i-- )
   {
      mStaticIntersects[i]->GetBoundingBox( &BBox );
      
      BBox.low.Add( BBox.high );
      ((Vector3f&)BBox.low).Mult( 0.5f );
      BBox.high = BBox.low;

      DrawableSP.mBounds.mMin.SetTo( BBox.low );
      DrawableSP.mBounds.mMax.SetTo( BBox.high );
      
      mStaticTreeWalker.Place( (ISpatialProxyAA&)DrawableSP, mStaticIntersects[i] );
   }
#endif
*/
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
void WorldScene::PlaceStaticGeo( tGeometry* pGeometry )
{
   rAssert(false);
   //This currently fails because PopulateStaticTree doesn't 
   //reserve any extra places for geo to be added
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
void WorldScene::PlaceStaticIntersect( IntersectDSG* ipIntersectDSG )
{
   rAssert(false);
   //This currently fails because PopulateStaticTree doesn't 
   //reserve any extra places for geo to be added
}
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
void WorldScene::PlaceStaticEntity(    StaticEntityDSG*  ipStaticEntity )
{
   rAssert(false);
   //This currently fails because PopulateStaticTree doesn't 
   //reserve any extra places for stuff to be added
}
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
void WorldScene::PlaceStaticPhys(      StaticPhysDSG*    ipStaticPhys )
{
   rAssert(false);
   //This currently fails because PopulateStaticTree doesn't 
   //reserve any extra places for stuff to be added
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
bool WorldScene::IsPreTreeGen()
{
   if( mpStaticTree == NULL )
      return true;
   else
      return false;
}
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
bool WorldScene::IsPostTreeGen()
{
   if( mpStaticTree == NULL )
      return false;
   else
      return true;
}
////////////////////////////////////////////////////////////////////
// TODO: Move this type of functionality elsewhere
//       I think WorldScene Should just maintain the data interfaces
//       and management, not state of said data nor manipulation 
//       thereof
///////////////////////////////////////////////////////////////////
void WorldScene::MarkCameraVisible( tPointCamera* pCam, unsigned int iFilter )
{
   HexahedronP ViewVolSP;

//   tPointCamera* pCam  = (tPointCamera*)p3d::context->GetView()->GetCamera();
//     tPointCamera* pCam  = (tPointCamera*)GetSuperCamManager()->GetSCC(0)->GetCamera();
#if 1

   rmt::Vector4 WorldPlane;
//   float WorldPlaneNorm;


   //Do a hackey box approximation to the frustum, 
   //cuz tCamera doesn't properly provide a decent projection matrix


   Bounds3f FrustumBBox;
   Vector3f CamPosn, ViewVector, FarPlaneExtentVect;
   pCam->GetPosition(&CamPosn);
   pCam->GetTarget(&ViewVector); ViewVector.Sub( CamPosn ); ViewVector.Normalize(); //ViewVector.Mult( 200.0f );

   FarPlaneExtentVect.CrossProduct(ViewVector,rmt::Vector(0.0f,1.0f,0.0f));
   FarPlaneExtentVect.Mult( 50.0f ); //200
   //ViewVector.Mult(7.0f);
   // ViewVector.Mult(16.0f); cut back for new art
   //ViewVector.Mult(4.0f); 
   ViewVector.Mult(180.0f); 

   FrustumBBox.mMin = CamPosn; FrustumBBox.mMin.y -= 10.0f;
   FrustumBBox.mMax = CamPosn;

   FrustumBBox.Accumulate( CamPosn.x + ViewVector.x + FarPlaneExtentVect.x,
                           CamPosn.y + ViewVector.y + FarPlaneExtentVect.y,
                           CamPosn.z + ViewVector.z + FarPlaneExtentVect.z );

   FrustumBBox.Accumulate( CamPosn.x + ViewVector.x - FarPlaneExtentVect.x,
                           CamPosn.y + ViewVector.y - FarPlaneExtentVect.y,
                           CamPosn.z + ViewVector.z - FarPlaneExtentVect.z );

   ViewVolSP.SetPlane( HexahedronP::msBack,     0.0f, -1.0f,  0.0f,         FrustumBBox.mMin.y);
   ViewVolSP.SetPlane( HexahedronP::msFront,    0.0f,  1.0f,  0.0f, (-1.0f)*FrustumBBox.mMax.y);
   ViewVolSP.SetPlane( HexahedronP::msLeft,    -1.0f,  0.0f,  0.0f,         FrustumBBox.mMin.x);
   ViewVolSP.SetPlane( HexahedronP::msRight,    1.0f,  0.0f,  0.0f, (-1.0f)*FrustumBBox.mMax.x);
   ViewVolSP.SetPlane( HexahedronP::msTop,      0.0f,  0.0f, -1.0f,         FrustumBBox.mMin.z);
   ViewVolSP.SetPlane( HexahedronP::msBottom,   0.0f,  0.0f,  1.0f, (-1.0f)*FrustumBBox.mMax.z);

#else
   FixedArray< rmt::Vector4 > CamPlanes; CamPlanes.Allocate(6);
   // ViewVector.Mult(16.0f); cut back for new art
   pCam->SetFarPlane(500.0f);
   //pCam->SetFarPlane(175.0f);
   BuildFrustumPlanes( pCam, CamPlanes );
   pCam->SetFarPlane(20000.0f);
   
   ViewVolSP.SetPlane( HexahedronP::msTop,     CamPlanes[0].x, CamPlanes[0].y, CamPlanes[0].z, CamPlanes[0].w );
   ViewVolSP.SetPlane( HexahedronP::msLeft,    CamPlanes[1].x, CamPlanes[1].y, CamPlanes[1].z, CamPlanes[1].w );
   ViewVolSP.SetPlane( HexahedronP::msBottom,  CamPlanes[2].x, CamPlanes[2].y, CamPlanes[2].z, CamPlanes[2].w );
   ViewVolSP.SetPlane( HexahedronP::msRight,   CamPlanes[3].x, CamPlanes[3].y, CamPlanes[3].z, CamPlanes[3].w );
   ViewVolSP.SetPlane( HexahedronP::msBack,    CamPlanes[4].x, CamPlanes[4].y, CamPlanes[4].z, CamPlanes[4].w );
   ViewVolSP.SetPlane( HexahedronP::msFront,   CamPlanes[5].x, CamPlanes[5].y, CamPlanes[5].z, CamPlanes[5].w );
#endif


   ViewVolSP.GeneratePoints();
   mStaticTreeWalker.MarkAll( ViewVolSP, iFilter );
}
/////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////
void WorldScene::BuildFrustumPlanes( tPointCamera* pCam, FixedArray<rmt::Vector4>& orCamPlanes )
{
    rAssert( orCamPlanes.mSize == 6 );

//    tPointCamera* pCam = (tPointCamera*)p3d::context->GetView()->GetCamera();
//    tPointCamera* pCam  = (tPointCamera*)GetSuperCamManager()->GetSCC(0)->GetCamera();
    const rmt::Matrix* pCam2WorldMat = &pCam->GetCameraToWorldMatrix();

    //
    //  Build the camera volume (written by Nigel Brooke)
    //

//    Plane cameraPlanes[6];

    // camera parameters
    float fov, aspect; pCam->GetFOV( &fov, &aspect ); fov = fov/1.5f;
    //float aspect = 1.333f; // TODO : shouldn't be hardcoded

    float nearPlane = pCam->GetNearPlane();
    float farPlane = pCam->GetFarPlane();

    // build some useful points
    rmt::Vector eye  = pCam2WorldMat->Row(3); // eye point
    rmt::Vector look = pCam2WorldMat->Row(2); // look direciton, normal for far plane
    rmt::Vector toFarPlane = look; toFarPlane.Scale(farPlane);
    rmt::Vector onFarPlane = eye; onFarPlane.Add(toFarPlane);  // a point on the far plane

    rmt::Vector lookInv = pCam2WorldMat->Row(2); lookInv.Scale(-1);
    // toNearPlane offset by a small value to avoid some artifacts
    rmt::Vector toNearPlane = look; toNearPlane.Scale(nearPlane - 0.00001f);
    rmt::Vector onNearPlane = eye; onNearPlane.Add(toNearPlane);

    // find surface normals for left and right clipping pplanes
    // first get camera space vectors
    rmt::Vector tmpr(rmt::Cos(fov/2), 0, -rmt::Sin(fov/2));  // right vector is 'rotated' by fov/2
    rmt::Vector tmpl = tmpr; tmpl.Scale(-1,1,1);   // left vector is inverse of right

    // then pass points through camera matrix to get world space vectors
    rmt::Vector right, left;
    pCam2WorldMat->RotateVector(tmpr, &right);
    pCam2WorldMat->RotateVector(tmpl, &left);

    // find surface normals for top and bottom clipping planes, just like left and right
    // get camera space vectors
    rmt::Vector tmpu(0, rmt::Cos(fov/2), -rmt::Sin(fov/2));
    tmpu.Scale(1, aspect, 1);
    tmpu.Normalize();
    rmt::Vector tmpd = tmpu; tmpd.Scale(1,-1,1);

    // tranform to worldspace
    rmt::Vector up,  down;
    pCam2WorldMat->RotateVector(tmpu, &up);
    pCam2WorldMat->RotateVector(tmpd, &down);

    // set the planes using point in plane and normal format
    // 'eye' is on all clipping planes except far and near
    orCamPlanes[0].Set(up.x,      up.y,      up.z,      -up.DotProduct(eye));
    orCamPlanes[1].Set(left.x,    left.y,    left.z,    -left.DotProduct(eye));
    orCamPlanes[2].Set(down.x,    down.y,    down.z,    -down.DotProduct(eye));
    orCamPlanes[3].Set(right.x,   right.y,   right.z,   -right.DotProduct(eye));
    orCamPlanes[4].Set(look.x,    look.y,    look.z,    -look.DotProduct(onFarPlane));
    orCamPlanes[5].Set(lookInv.x, lookInv.y, lookInv.z, -lookInv.DotProduct(onNearPlane));
}
