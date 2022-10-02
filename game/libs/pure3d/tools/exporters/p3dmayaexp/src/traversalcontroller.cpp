/*===========================================================================
    traversalcontroller.cpp
    cahnged: Oct 25, 2000
    Eric Honsch

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include "traversalcontroller.hpp"
 
#include <maya/MItDependencyNodes.h>
#include <maya/MFnSkinCluster.h>
#include <maya/MSelectionList.h>
#include <maya/MGlobal.h>
#include <maya/MItSelectionList.h>
#include <maya/MItDag.h>
#include <maya/MDagPathArray.h>
#include <maya/MAnimUtil.h>
#include <maya/MAnimControl.h>
#include <maya/MTime.h>

#include "exporterutility.hpp"
#include "exportFunctions.hpp"
#include "tlString.hpp"
#include "animnode.hpp"
#include "deformerExpression.hpp"
#include "scene.hpp"

// #include <iostream.h>

#include <bewert_debug.h>

#ifdef _DEBUG

//===========================================================================
// DumpInventory        (_DEBUG only)
//===========================================================================
// Description: A convenience function to evaluate the contents of the
//              inventory.
//
// Constraints: Only if _DEBUG is defined.
//
//  Parameters: tlInventory* pInv: Pointer to the inventory to dump.
//
//      Return: (void)
//
//===========================================================================
void DumpInventory( tlInventory* pInv, const char* label )
{
    tlInventory::Iterator<tlEntity> iter(pInv);

    if ( label != NULL )
    {
        CDEBUG << label << endl;
    }

    unsigned int i = 0;

    for ( tlEntity* pEntity = iter.First(); pEntity; pEntity = iter.Next() )
    {
        tlDataChunk* pChunk = pEntity->Chunk();

        CDEBUG << i << ": " << pEntity->GetName() << " (" << pChunk->GetType() << ")" << endl;

        i++;
    }
    
    CDEBUG << "--------------------- Done." << endl;
}

#endif      // _DEBUG

//===========================================================================
// TraversalController::MainLoop        (static)
//===========================================================================
// Description: Determines the DAG nodes that need to be exported and adds
//              all of these to a SceneNode heirarchy.  The SceneNode is
//              used to extract all necessary information from Maya.
//
// Constraints: CONTINUES in exportFunctions.cpp -> P3dExportToFile().
//
// Parameters:  tlInventory* tlInv: Pointer to toollibInventory object into
//                                  which the data will be stored.
//              bool bToFile: TRUE if destination of tlInventory is a
//                            Pure3D disk file; FALSE if memory image.
//                            This argument controls the "abort-ability"
//                            of the process - user-aborts are not queried
//                            during exports to memory image.
//
// Return:      (MStatus): The usual.
//
//===========================================================================
MStatus TraversalController::MainLoop(tlInventory *tlInv, bool bToFile )
{
    MStatus                             status = MS::kSuccess;

    MDagPathArray                       dagArray;
    MDagPath                            dagPath;

    CMayaDagSelection& dagSelection = SceneNode::DagSelection();
    dagSelection.Clear();

    dagSelection.SetFilter( CMayaDagSelection::kTransformsOnly );

    if ( ExporterOptions::ExportSelection() )
    {
        MSelectionList                  select;
        MGlobal::getActiveSelectionList( select );
        MItSelectionList                itSelect( select );

        for ( /* nothing */ ; !itSelect.isDone(); itSelect.next() )
        {
            itSelect.getDagPath( dagPath );
            dagSelection.Add( dagPath, true );      // 'true' == ReplaceChild
        }
    }
    else
    {
        MItDag                itDag( MItDag::kBreadthFirst );

        for ( /* nothing */ ; !itDag.isDone(); itDag.next() )
        {
            itDag.getPath( dagPath );

            if ( SceneNode::ShouldSkipDAG( dagPath ) )
            {
                continue;
            }
                   
            // Only interested in top-level DAGs; once we hit a child, break out.
            if ( itDag.depth() > 1 )
            {
                break;
            }

            dagSelection.Add( dagPath, true );      // 'true' == ReplaceChild
        }

    }

    if ( dagSelection.NumDags() == 0 )
    {
        MGlobal::displayError( "Nothing to export!" );
        return MS::kFailure;
    }

    dagSelection.GetDags( dagArray );

    // Make sure we start on the first frame
    MAnimControl animController;
    animController.setViewMode(MAnimControl::kPlaybackViewActive);

    MTime minTime = animController.minTime();
    MTime maxTime = animController.maxTime();

    int minframe = (int)minTime.value();
    int maxframe = (int)maxTime.value();

    animController.setCurrentTime(minTime);

    //before we build the mesh, we have to reset the deformer to its neutral position
    //this has no undesirable effects on the expression keys
    DeformerExpression::ResetMixer();

    SceneNode::SetInventory(tlInv);

    if ( status == MS::kSuccess )
    {
        UpdateExportProgress( 5, "Build Scene" );

        status = SceneNode::Build( dagArray );

          if( bToFile )
          {
              if ( IsExportingCanceled() )
              {
                    SceneNode::Cleanup( );
                    status = MS::kFailure;
              }
          }
     }

     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 10, "Build Matrices" );

          SceneNode::CullInvisibleNodes();
          SceneNode::HasNamingConflict();
          SceneNode::BuildMatrices();    // rebuilds all of the matricies in the Scene

          if( bToFile )
          {
              if ( IsExportingCanceled() )
              {
                    SceneNode::Cleanup( );
                    status = MS::kFailure;
              }
          }
     }


     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 15, "Bind Pose" );

          // Build the bind matrices
          SceneNode::DisableDynamics();
          SceneNode::RestoreBindPose();

          UpdateExportProgress( 15, "Bind Matrices" );

          SceneNode::BuildBindMatrices();

          if( bToFile )
          {
              if ( IsExportingCanceled() )
              {
                    SceneNode::Cleanup( );
                    status = MS::kFailure;
              }
          }
     }

     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 20, "Skeletons" );

          SceneNode::BuildSkeletons();
          SceneNode::BuildJointWeights(); // puts the smooth bound mesh weights in the scenenodes

          if( bToFile )
          {
              if ( IsExportingCanceled() )
              {
                    SceneNode::Cleanup( );
                    status = MS::kFailure;
              }
          }
     }

     if ( status == MS::kSuccess )
     {
        UpdateExportProgress( 25, "TriMeshes" );

        status = SceneNode::BuildTriMeshes();

        if( bToFile )
        {
            if ( IsExportingCanceled() )
            {
                SceneNode::Cleanup( );
                status = MS::kFailure;
            }
        }
    }

    if ( status == MS::kSuccess )
    {
        UpdateExportProgress( 28, "Joint Weights" );

        SceneNode::AddJointWeightsToMeshes();

        if( bToFile )
        {
            if ( IsExportingCanceled() )
            {
                SceneNode::Cleanup( );
                status = MS::kFailure;
            }
        }
    }

     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 30, "Skins" );

          SceneNode::BuildSkins();

          if( bToFile )
          {
              if ( IsExportingCanceled() )
              {
                    SceneNode::Cleanup( );
                    status = MS::kFailure;
              }
          }
     }

     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 35, "Particles/FX" );

          // reset the time so all of the skins & dynamics get reset
          SceneNode::EnableDynamics();
          animController.setCurrentTime(minTime);

          SceneNode::BuildParticleSystems();
          SceneNode::BuildOpticEffects();
          SceneNode::BuildBillboardObject();

          if( bToFile )
          {
              if ( IsExportingCanceled() )
              {
                    SceneNode::Cleanup( );
                    status = MS::kFailure;
              }
          }
     }

     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 40, "Meshes" );

          SceneNode::BuildMeshes();
          // Includes -> BuildVertexAnimation
          
          if( bToFile )
          {
              if ( IsExportingCanceled() )
              {
                    SceneNode::Cleanup( );
                    status = MS::kFailure;
              }
          }
     }

// Moved below Scenegraph
//     if ( status == MS::kSuccess )
//     {
//          UpdateExportProgress( 45, "Animated Objects" );
//          SceneNode::BuildAnimatedObjects();
//
//          UpdateExportProgress( 48, "Collision" );
//          SceneNode::BuildBoundingVolumes();
//          
//          if ( !SceneNode::BuildEventAnimations() )
//          {
//                status = MS::kFailure;
//          }
//
//          if( bToFile )
//          {
//              if ( IsExportingCanceled() )
//              {
//                    SceneNode::Cleanup( );
//                    status = MS::kFailure;
//              }
//          }
//     }

    if ( status == MS::kSuccess )
    {
        UpdateExportProgress( 45, "Scenegraph" );

        SceneNode::BuildScenegraphs();

        SceneNode::BuildCompositeDrawableVisibility();

        SceneNode::BuildCameras();

        status = SceneNode::BuildLights();

        if ( status == MS::kSuccess )
        {
            SceneNode::BuildLightGroup();
        }

        if( bToFile )
        {
            if ( IsExportingCanceled() )
            {
                SceneNode::Cleanup( );
                status = MS::kFailure;
            }
        }
    }

// Moved below Scenegraph
     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 50, "Animated Objects" );
          SceneNode::BuildAnimatedObjects();

          UpdateExportProgress( 55, "Collision" );
          SceneNode::BuildBoundingVolumes();
          
          if ( !SceneNode::BuildEventAnimations() )
          {
                status = MS::kFailure;
          }

          if( bToFile )
          {
              if ( IsExportingCanceled() )
              {
                    SceneNode::Cleanup( );
                    status = MS::kFailure;
              }
          }
     }

     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 58, "User Data" );

          SceneNode::BuildLocators();         
          SceneNode::BuildGameAttributes();   //export everything inside P3D_GameAttr string array
                                              
          if( bToFile )
          {
              if ( IsExportingCanceled() )
              {
                    SceneNode::Cleanup( );
                    status = MS::kFailure;
              }
          }
     }

     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 60, "Animations" );

          // get the exporter to fill in all of the animation nodes
          if (ExporterOptions::ExportAnimations())
          {
                status = AnimNode::Export();
          }

          if( bToFile )
          {
              if ( IsExportingCanceled() )
              {
                    SceneNode::Cleanup( );
                    status = MS::kFailure;
              }
          }
     }

     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 75, "Animated Object Factories" );
          SceneNode::BuildAnimatedObjectFactories();

          if ( IsExportingCanceled() )
          {
                SceneNode::Cleanup( );
                status = MS::kFailure;
          }
     }

     UpdateExportProgress( 79, "Cleanup" );
     SceneNode::Cleanup();

    // CONTINUES in exportFunctions.cpp -> ExtractInventoryFromScene()

     return status;
}
    

