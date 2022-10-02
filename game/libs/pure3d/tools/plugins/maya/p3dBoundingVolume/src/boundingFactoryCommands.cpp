//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



//********************************************************************************************
// Maya Includes
//********************************************************************************************
#include <maya/MFn.h>
#include <maya/MDagPath.h>
#include <maya/MFnMesh.h>
#include <maya/MItDependencyNodes.h>
#include <maya/MItMeshVertex.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnDagNode.h>
#include <maya/MFnTransform.h>
#include <maya/MFnNurbsCurve.h>
#include <maya/MFnComponent.h>
#include <maya/MFnSingleIndexedComponent.h>
#include <maya/MArgList.h>
#include <maya/MSelectionList.h>
#include <maya/MItSelectionList.h>
#include <maya/MDistance.h>
#include <maya/MGlobal.h>
#include <maya/MMatrix.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MVector.h>
#include <maya/MFnIkJoint.h>
#include <maya/MEulerRotation.h>
#include <maya/MPoint.h>
#include <maya/MPointArray.h>
#include <maya/MFnSkinCluster.h>

//********************************************************************************************
// Local Includes
//********************************************************************************************
#include "boundingUtility.hpp"
#include "boundingFactoryCommands.hpp"

#include "tlTypes.hpp"
#include "chunks.h"
#include "tlMatrix.hpp"
#include "tlPoint.hpp"
#include "tlCollisionObject.hpp"

//********************************************************************************************
// Standard Includes
//********************************************************************************************
#include <stdlib.h>
#include <math.h>
#include <iostream.h>

//********************************************************************************************
// Constants
//********************************************************************************************

const double SKIN_WEIGHTS_BOUNDING_THRESHOLD = 0.333;

namespace P3DBoundingVolume
{

//********************************************************************************************
// Initialize this at the start of a function...
// any allocation is guaranteed to be freed when the
// object goes out of scope... nice when you are
// returning in the middle of functions all of the time
//********************************************************************************************
class tlPointArrayFacade
{
public:
    tlPointArrayFacade(tlPoint** vertexArray):mVertexArray(vertexArray){}
    ~tlPointArrayFacade()
    {
        if(mVertexArray && *mVertexArray)
        {
            delete [] *mVertexArray;
        }
    }

private:
    tlPointArrayFacade();
    tlPoint** mVertexArray;
};

//********************************************************************************************
// BoundingTypeID_To_CollisionVolumeType(void)
// This is a simple mapping from boundingTypeID's to what's know in the
// physics system of toolLib.
//********************************************************************************************
CollisionVolumeTypeEnum BoundingTypeID_To_CollisionVolumeType(short boundingTypeID)
{
     switch(boundingTypeID)
     {

     case BOUNDING_BOX:
        {
            return(OBBoxVolumeType);
        }
        break;
     case BOUNDING_SPHERE:
        {
            return(SphereVolumeType);
        }
        break;
     case BOUNDING_CYLINDER:
        {
            return(CylinderVolumeType);
        }
        break;
     case BOUNDING_CAPSULE:
        {
            return(CapsuleVolumeType);
        }
        break;
     case BOUNDING_PLANE:
        {
            return(WallVolumeType);
        }
        break;
/*
     case BOUNDING_NODE:
        {
            return(BBoxVolumeType);
        }
        break;
*/
     default:
        {
            return(BestFit);
        }
        break;
     }
}

/*===========================================================================
    Class createBoundingVolumeCmd: Implementation
==========================================================================*/

bool createBoundingVolumeCmd::isUndoable() const 
{
    return(true);
}

//********************************************************************************************
// creator()
// This function gets called by Maya to create an instance of a command
//********************************************************************************************
void* createBoundingVolumeCmd::creator()
{
    return new createBoundingVolumeCmd;
}

//********************************************************************************************
// doIt()
// Handles parsing the MArgList and storing relevant data for
// the command and derived classes. There is some additional data that is
// parsed for known derived classes that is not needed for this class.
// This is only to simplify the ammount of code.
//********************************************************************************************
MStatus createBoundingVolumeCmd::doIt(const MArgList& args)
{
    // 1. ENTER //

    MStatus status;
    MSelectionList slist;
    clearResult();

    //
    // Initialize
    //
    mBoundingType = 0;
    mTesselation = 1;
    mScaleSize[0] = mScaleSize[1] = mScaleSize[2] = 100.0;
    mRotation = MEulerRotation::identity;
    mTranslation = MVector::zero;
    mNameCore = "P3D_BVol_object1";
    mMesh.clear();
    createdBoundingVolumes.clear();

    for (unsigned i = 0; i < args.length(); i++)
    {
        if (MString("-t") == args.asString(i))
        {
            i++;
            if( MString("Box") == args.asString(i) || MString("box") == args.asString(i))
            {
                mBoundingType = 0;
            }
            else if( MString("Sphere") == args.asString(i) || MString("sphere") == args.asString(i))
            {
                mBoundingType = 1;
            }
            else if( MString("Cylinder") == args.asString(i) || MString("cylinder") == args.asString(i))
            {
                mBoundingType = 2;
            }
            else if( MString("Capsule") == args.asString(i) || MString("capsule") == args.asString(i))
            {
                mBoundingType = 3;
            }
            else if( MString("Plane") == args.asString(i) || MString("plane") == args.asString(i))
            {
                mBoundingType = 4;
            }
            else
            {
                //
                // Default sphere
                //
                mBoundingType = 0;
            }
        }
        else if (MString("-ts") == args.asString(i))
        {
            i++;
            mTesselation = args.asInt(i);
        }

        // ----  Scale  ----
        else if (MString("-sx") == args.asString(i))
        {
            i++;
            mScaleSize[0] = rmt::Max( args.asDouble(i), 0.0 );
        }
        else if (MString("-sy") == args.asString(i))
        {
            i++;
            mScaleSize[1] = rmt::Max( args.asDouble(i), 0.0 );
        }
        else if (MString("-sz") == args.asString(i))
        {
            i++;
            mScaleSize[2] = rmt::Max( args.asDouble(i), 0.0 );
        }

        // ----  Rotation  ----
        else if (MString("-rx") == args.asString(i))
        {
            i++;
            mRotation.x = args.asDouble(i);
        }
        else if (MString("-ry") == args.asString(i))
        {
            i++;
            mRotation.y = args.asDouble(i);
        }
        else if (MString("-rz") == args.asString(i))
        {
            i++;
            mRotation.z = args.asDouble(i);
        }

        // ----  Translation  ----
        else if (MString("-tx") == args.asString(i))
        {
            i++;
            mTranslation.x = args.asDouble(i);
        }
        else if (MString("-ty") == args.asString(i))
        {
            i++;
            mTranslation.y = args.asDouble(i);
        }
        else if (MString("-tz") == args.asString(i))
        {
            i++;
            mTranslation.z = args.asDouble(i);
        }

        else if (MString("-n") == args.asString(i))
        {
            i++;
            mNameCore = args.asString(i);
        }
        else if(MString("-m") == args.asString(i))
        {
            i++;
            MSelectionList slist;
            mMesh = args.asString(i);
        }
        else if(MString("-j") == args.asString(i))
        {
          i++;
            MSelectionList slist;
            mJoint = args.asString(i);
        }
    }

    //
    // Bullshit initialization so that Maya's Unique Naming will work
    //
    MFnDagNode creatorTransform;
//    MDGModifier mDGModifier;
    MObject newP3dBoundVolTrans = creatorTransform.create( MString("joint"),
                                                           mNameCore,
                                                           MObject::kNullObj,
                                                           &status );

//    status = mDGModifier.deleteNode( newP3dBoundVolTrans );
//    if(status != MS::kSuccess)
//    {
//        MString w;
//        w = "Couldn't create new p3dBoundVolShape object (NameCore)";
//        MGlobal::displayWarning(w);
//    }


    //
    // Here is where the actual work gets done
    //

    // -> 2. INITIATE //

    status = redoIt();

    //
    // Now actually delete the bogus node
    //
    MGlobal::removeFromModel( newP3dBoundVolTrans );

//    mDGModifier.doIt();

    // 5. EXIT //

    return(status);
}

//********************************************************************************************
// undoIt()
// Only the creation of Bounding Volumes can be undone.
// By using the createBoundingVolumeShape command to create
// an actual bounding volume the undo should work for derived
// class too.
//********************************************************************************************
MStatus  createBoundingVolumeCmd::undoIt()
{
    MStatus status = MS::kSuccess;
    long boundingVolumes = createdBoundingVolumes.length();

    for(long i = 0; i < boundingVolumes; i++)
    {
        MSelectionList          selList;
        MGlobal::getSelectionListByName( createdBoundingVolumes[i], selList );
        MDagPath                bvDag;
        status = selList.getDagPath( 0, bvDag );
        if ( status == MS::kSuccess )
        {
            status = MGlobal::deleteNode( bvDag.node() );
        }
        CHECKRESULT( status, "Couldn't delete a bounding volume" );
    }

    //
    // Now remove all elements
    //
    status = createdBoundingVolumes.clear();
    CHECKRESULT( status, "Couldn't Clear Bounding Volume" );

    return(status);

}

//********************************************************************************************
// redoIt()
// This is where the actual creation process happens...
// By doing it here we can support redoing the operation...
// However... anything that is not redoable and is performed
// after calling this command (like the shader hook-up done in MEL)
// will not properly work...
//********************************************************************************************
MStatus  createBoundingVolumeCmd::redoIt()
{
    // 2. INITIATE //

    MStatus status;

    //
    // Now finally create the bounding Volume...
    // this call is virtual and is overridden in the derived classes
    //
    status = createBoundingVolume();

    status.perror( "Status of ::redoIt()" );

    // <- createBoundingVolumeCmd::doIt() //

    return(status);
}

//********************************************************************************************
// createBoundingVolume()
// This is the main virtual function that is overridden for
// creating bounding volumes
//********************************************************************************************
MStatus createBoundingVolumeCmd::createBoundingVolume()
{
    // 4. ACTUAL WORK //

    MStatus status = MS::kSuccess;
    tlPoint* meshVerts = NULL;
    int selectedVertexCount = 0;
    tlPointArrayFacade tlpointDeleteMagik(&meshVerts);
    bool bFitToMesh = false;

    // Create Bounding Volume regardless if vertex selection was valid.
    // Uses default size if no component selection.
    MFnDependencyNode creator;
    MObject newP3dBoundVolShape;
    status = createBoundingVolumeCmd::createBoundingVolumeShape(newP3dBoundVolShape);
    CHECKRESULT( status, "Couldn't create a bounding volume" );

    if ( status == MS::kSuccess )
    {
        MVector scale(mScaleSize[0], mScaleSize[1], mScaleSize[2]);
        BoundingVolumeInterface boundingVol(&newP3dBoundVolShape);
        p3dBoundVolAttr boundVolAttr;
        boundVolAttr.boundingType  = mBoundingType;
        boundingVol.setScale( scale );
        boundingVol.setAttributes( boundVolAttr );

        bFitToMesh = getSelectedVerticies(&meshVerts, selectedVertexCount);
    }

    if( bFitToMesh )
    {
        //
        // Now wrap this one up
        //
        status = fitToMesh(newP3dBoundVolShape, meshVerts, selectedVertexCount);

//        if(status != MS::kSuccess)
//        {
//            //
//            // At least make it a default size
//            //
//            MString w;
//            w = "BoundingVolume created that could fit to mesh. Set to default size";
//            MGlobal::displayWarning(w);
//        }
    }

//    else
//    {
//        MString w;
//        w = "Couldn't create new p3dBoundVolShape object (getting selected vertices)";
//        MGlobal::displayWarning(w);
//    }

    return(status);
}

//********************************************************************************************
// createBoundingVolumeShape()
// This function is required to create a basic bounding volume and connect
// the relevant attributes... This is not to be overridden since it is here that
// the bounding volume is registered to support undoing and redoing
//********************************************************************************************
MStatus createBoundingVolumeCmd::createBoundingVolumeShape(MObject& createdShape)
{
    MFnDagNode creatorTransform;
    MFnDagNode creatorShape;
    MStatus status = MS::kSuccess;
    MString nameRoot;

    nameRoot += mNameCore;

    MObject newP3dBoundVolTrans = creatorTransform.create( MString("joint"),
                                                           nameRoot,
                                                           MObject::kNullObj,
                                                           &status );
    //
    // Find out what Maya Named this object
    //
    MFnDagNode mfnNewP3dBoundVolTrans(newP3dBoundVolTrans);
    MString nameRootAssigned = mfnNewP3dBoundVolTrans.name(&status);
    MString shapeName;
    if(status == MS::kSuccess)
    {
        shapeName = nameRootAssigned;
        shapeName += "Shape";
    }
    else
    {
        shapeName = nameRoot;
        shapeName += "Shape";
    }

    // Even if the shape node isn't created, we still have this transform to Undo.
    createdBoundingVolumes.append( nameRootAssigned );

    createdShape = creatorShape.create( MString("p3dBoundVolShape"),
                                                    shapeName,
                                                    newP3dBoundVolTrans, //parent
                                                    &status );
    if(status == MS::kSuccess)
    {
        //
        // Now connect the attributes
        //
        BoundingVolumeInterface boundingVolumeInterface(&createdShape);
        status = boundingVolumeInterface.connectToParentAttributes();
        appendToResult(creatorTransform.name());

        MFnTransform                fnTransform( newP3dBoundVolTrans, &status );
        if ( status == MS::kSuccess ) 
        {
            fnTransform.setRotation( mRotation );
            fnTransform.setTranslation( mTranslation, MSpace::kTransform );
        }
    }
    else
    {
        MString w;
        w = "Couldn't create new p3dBoundVolShape object (creating p3dBoundVolShape node)";
        MGlobal::displayWarning(w);
    }

    return(status);
}

//********************************************************************************************
// getSelectedVerticies()
// This function is gets verticies in toolLib format (tlPoint) for manipulation
// in toolLib. Namely for the using the collision volume generating features
// supplied by the Physics system.
// Note this function is virtual and is overriden by the
// createBoundingVolumeFromSelectedComponentsCmd
//********************************************************************************************
bool createBoundingVolumeCmd::getSelectedVerticies
(
    tlPoint** vertexList,
    int& vertexCount
)
{
    bool                        bVerticesSelected = false;
    MStatus                     status;

    if(mMesh == "")
    {
        return false;
    }


    vertexCount = 0;
    *vertexList = NULL;

    MSelectionList              selList;
    MGlobal::getSelectionListByName( mMesh, selList );
    MDagPath                    dagPath;
    status = selList.getDagPath( 0, dagPath );
    if ( status == MS::kSuccess )
    {
        MItMeshVertex mITVert( dagPath, MObject::kNullObj, &status );
        if ( status != MS::kSuccess ) return false;

        vertexCount = mITVert.count();
        tlPoint *localVertexList = new tlPoint[vertexCount];
        int i = 0;

        for ( ; !mITVert.isDone(); mITVert.next() )
        {
            MPoint vertexPosition = mITVert.position(MSpace::kWorld);

            localVertexList[i].x = (float)vertexPosition.x;
            localVertexList[i].y = (float)vertexPosition.y;
            localVertexList[i].z = (float)vertexPosition.z;

            i++;
        }

        //
        // Caller is now responsible for this memory
        //
        if(localVertexList == NULL)
        {
            *vertexList = NULL;
            bVerticesSelected = false;
        }
        else
        {
            *vertexList = localVertexList;
            bVerticesSelected = true;
        }
    }

    return bVerticesSelected;
}

//********************************************************************************************
// fitToMesh()
// This function takes a boundingVolume and calls the physics system of
// toolLib to "shape" the boundingVolume around the cloud of meshVertices
//********************************************************************************************
MStatus createBoundingVolumeCmd::fitToMesh
(
    MObject& boundingVolume,
    tlPoint* meshVerts,
    int selectedVertexCount
)
{
    MStatus status = MS::kFailure;

    MFnTransform mfnP3dBoundVolTransformNode( boundingVolume );

    if(!IsType(boundingVolume, P3D_BOUNDING_VOLUME_ID))
    {
        return(MS::kFailure);
    }

    tlCollisionVolume* newCollisionVolume = NULL;

    // tlCollisionObject::FitCollVolume()
    newCollisionVolume = FitCollVolume  (   meshVerts,
                                            selectedVertexCount,
                                            BoundingTypeID_To_CollisionVolumeType(mBoundingType),
                                            1,          // howdeep
                                            false       // hollow
                                        );

    if(newCollisionVolume)
    {
        BoundingVolumeInterface boundingVolumeInterface(&boundingVolume);

        if( tlCylinderVolume* cylinderVol = dynamic_cast<tlCylinderVolume*>(newCollisionVolume) )
        {
            boundingVolumeInterface.setAttributes(cylinderVol);
        }
        else
        if( tlSphereVolume* sphereVol = dynamic_cast<tlSphereVolume*>(newCollisionVolume) )
        {
            //
            // This is when the user asked for a capsule but got a sphere
            //
            if(mBoundingType == BOUNDING_CAPSULE)
            {
                tlCylinderVolume* cylinderVol;
                tlPoint mayjorAxis(1.0f, 0.0f, 0.0f);
                cylinderVol = new tlCylinderVolume(sphereVol->mPosition,
                                                              mayjorAxis,
                                                              1.0f,
                                                              sphereVol->mSphereRadius,
                                                              false);
                boundingVolumeInterface.setAttributes(cylinderVol);
                delete cylinderVol;
            }
            else
            {
                boundingVolumeInterface.setAttributes(sphereVol);
            }
        }
        else
        if( tlOBBoxVolume* boxVol = dynamic_cast<tlOBBoxVolume*>(newCollisionVolume) )
        {
            boundingVolumeInterface.setAttributes(boxVol);
        }
        else
        if( tlWallVolume* wallVol = dynamic_cast<tlWallVolume*>(newCollisionVolume) )
        {
            boundingVolumeInterface.setAttributes(wallVol);
        }

        delete newCollisionVolume;

        status = MS::kSuccess;
    }

    return(status);
}

/*===========================================================================
    Class createBoundingVolumeFromSelectedComponentsCmd: Implementation
==========================================================================*/

//bool createBoundingVolumeFromSelectedComponentsCmd::isUndoable() const 
//{
//    return(true);
//}


//********************************************************************************************
// creator()
// This function gets called by Maya to create an instance of a command
//********************************************************************************************
void* createBoundingVolumeFromSelectedComponentsCmd::creator()
{
    // 0. NEW //

    return new createBoundingVolumeFromSelectedComponentsCmd;
}

//********************************************************************************************
// createBoundingVolume()
// This is the same as the base class... the only difference is that the
// call to the getSelectedVerticies() is a virtual one...
// Also if Faces are selected boundSelectedFaces() with box volumes is called
//********************************************************************************************
MStatus createBoundingVolumeFromSelectedComponentsCmd::createBoundingVolume()
{
    // 3. CREATE //

    MStatus status;

    MSelectionList selectionList;
    MGlobal::getActiveSelectionList(selectionList);

    MItSelectionList iter( selectionList,  MFn::kMeshPolygonComponent , &status);
    CHECKRESULT( status, "Couldn't create mesh iterator" );

    if(status == MS::kSuccess && !iter.isDone())
    {
        status = boundSelectedFaces();
    }
    else
    {
        // -> 4. TO CONSTRUCT //
        status = createBoundingVolumeCmd::createBoundingVolume();
    }

    // <- createBoundingVolumeCmd::redoIt() //

    return(status);
}

//********************************************************************************************
// getSelectedVerticies()
// This function is overriden to get all selected vertex components.
// This is virtual and is all that is needed for vertex based creation
// of bounding volumes.
//********************************************************************************************
bool createBoundingVolumeFromSelectedComponentsCmd::getSelectedVerticies
(
    tlPoint** vertexList,
    int& vertexCount
)
{
    bool                        bVerticesSelected = false;
    MStatus                     status;

    MSelectionList activeList;
    MGlobal::getActiveSelectionList(activeList);

    MItSelectionList iter( activeList,  MFn::kMeshVertComponent, &status);
    if ( status != MS::kSuccess ) return false;

    vertexCount = 0;
    *vertexList = NULL;

    tlPoint* localVertexList = NULL;

    for ( ; !iter.isDone(); iter.next() )
    {
        MDagPath item;
        MObject component;
        iter.getDagPath( item, component );
        // do something with it

        MStatus isMeshIT;
        MItMeshVertex mITVert( item , component, &isMeshIT );

        if(isMeshIT == MS::kSuccess)
        {

            if(iter.hasComponents())
            {
                int newVertexCount = vertexCount + mITVert.count();
                tlPoint* newVertexList = new tlPoint[newVertexCount];
                int i = 0;

                //
                // Now copy in the previous verticies into the new array
                //
                if(vertexCount>0)
                {
                    while(i<vertexCount)
                    {
                        newVertexList[i].x = localVertexList[i].x;
                        newVertexList[i].y = localVertexList[i].y;
                        newVertexList[i].z = localVertexList[i].z;
                        i++;
                    }

                    //
                    // Delete the old stuff
                    //
                    delete localVertexList;
                }

                //
                // resolve new pointers
                //
                localVertexList = newVertexList;
                vertexCount     = newVertexCount;
                //
                // Continue on with the mesh
                //
                for ( ; !mITVert.isDone(); mITVert.next() )
                {
                    MPoint vertexPosition = mITVert.position(MSpace::kWorld);

                    localVertexList[i].x = (float)vertexPosition.x;
                    localVertexList[i].y = (float)vertexPosition.y;
                    localVertexList[i].z = (float)vertexPosition.z;

                    i++;
                }
            }
        }
    }

    //
    // Caller is now responsible for this memory
    //
    if(localVertexList == NULL)
    {
        *vertexList = NULL;
        bVerticesSelected = false;
    }
    else
    {
        *vertexList = localVertexList;
        bVerticesSelected = true;
    }

    return bVerticesSelected;
}

//********************************************************************************************
// boundSelectedFaces(void)
// This function is a special case where Faces are selected.
// This will only construct Boxes and assumes that the faces are
// quads and are orthoganol. Used as a simple Wall creation tool
//********************************************************************************************
MStatus createBoundingVolumeFromSelectedComponentsCmd::boundSelectedFaces(void)
{
    MStatus status;

    MSelectionList selectionList;
    MGlobal::getActiveSelectionList(selectionList);

    MItSelectionList iter( selectionList,  MFn::kMeshPolygonComponent , &status);
    CHECKRESULT( status, "Couldn't create mesh iterator" );

    status = MS::kFailure; // as default return value
    for ( ; !iter.isDone(); iter.next() )
    {
        MDagPath item;
        MObject component;
        iter.getDagPath( item, component );
        // do something with it

        MStatus isMeshIT;
        MItMeshPolygon mITMesh( item , component, &isMeshIT );

        MFnMesh  mfnMesh(item);

        if(isMeshIT == MS::kSuccess)
        {

            if(iter.hasComponents())
            {
                //
                // Continue on with the mesh
                //
                for ( ; !mITMesh.isDone(); mITMesh.next() )
                {

                    MIntArray vertices;
                    MIntArray edges;

                    int i=0;
                    mITMesh.getVertices(vertices);
                    mITMesh.getEdges(edges);

                    //
                    // For all verticies/edges of the polygon
                    //
                    int edgeCount   = edges.length();

                    switch(edgeCount)
                    {
                    case 4:
                        {
                            //
                            // This is a quad... use the first 2 edges
                            // to construct a box
                            //
// Maya v4 uses 'int'.
#if ( MAYA_API_VERSION >= 400 )
                            int2 vertexList1, vertexList2;
#else
// Maya v3 uses 'long'.
                            long2 vertexList1, vertexList2;
#endif
                            mfnMesh.getEdgeVertices( edges[0], vertexList1 );
                            mfnMesh.getEdgeVertices( edges[1], vertexList2 );

                            MPoint point1, point2, point3;
                            MVector lengthTangent;
                            MVector widthTangent;
                            //
                            // Make sure these edges are connected
                            //
                            if(vertexList1[1] == vertexList2[0])
                            {
                                mfnMesh.getPoint( vertexList1[0], point1, MSpace::kWorld );
                                mfnMesh.getPoint( vertexList1[1], point2, MSpace::kWorld );
                                mfnMesh.getPoint( vertexList2[1], point3, MSpace::kWorld );
                            }
                            else if(vertexList1[1] == vertexList2[1])
                            {
                                mfnMesh.getPoint( vertexList1[0], point1, MSpace::kWorld );
                                mfnMesh.getPoint( vertexList1[1], point2, MSpace::kWorld );
                                mfnMesh.getPoint( vertexList2[0], point3, MSpace::kWorld );
                            }
                            else if(vertexList1[0] == vertexList2[1])
                            {
                                mfnMesh.getPoint( vertexList1[1], point1, MSpace::kWorld );
                                mfnMesh.getPoint( vertexList1[0], point2, MSpace::kWorld );
                                mfnMesh.getPoint( vertexList2[0], point3, MSpace::kWorld );
                            }
                            else if(vertexList1[0] == vertexList2[0])
                            {
                                mfnMesh.getPoint( vertexList1[1], point1, MSpace::kWorld );
                                mfnMesh.getPoint( vertexList1[0], point2, MSpace::kWorld );
                                mfnMesh.getPoint( vertexList2[1], point3, MSpace::kWorld );
                            }
                            else
                            {
                                continue; // edges are not joined!!!
                            }

                            lengthTangent = point2 - point1;
                            widthTangent  = point3 - point2;

                            double length = lengthTangent.length();
                            double width  = widthTangent.length();

                            lengthTangent.normalize();
                            widthTangent.normalize();

                            //
                            // Use the lengthTangent and the Face Normal
                            //
                            MVector normal;
                            mITMesh.getNormal( normal,  MSpace::kWorld );

                            MVector tangent      = lengthTangent;
                            MVector upVector     = tangent^normal; // cross product
                            MPoint  position     = mITMesh.center(MSpace::kWorld);

                            MVector scale(length, width, mScaleSize[2]);

                            //
                            // Make the Bounding Volume Position flush
                            //
                            position -= (mScaleSize[2]/2.0)*normal;

                            const double m[4][4] =
                            {
                                {tangent.x, tangent.y,  tangent.z,   0},
                                {upVector.x,upVector.y, upVector.z,  0},
                                {normal.x,  normal.y,   normal.z,    0},
                                {position.x,position.y, position.z,  1}
                            };

                            MMatrix parentMatrix(m);

                            MObject newP3dBoundVolShape;
                            status = createBoundingVolumeCmd::createBoundingVolumeShape(newP3dBoundVolShape);
                            CHECKRESULT( status, "Couldn't create a bounding volume" );

                            if(status == MS::kSuccess)
                            {
                                BoundingVolumeInterface boundingVolumeInterface(&newP3dBoundVolShape);
                                p3dBoundVolAttr boundVolAttr;
                                boundVolAttr.boundingType  = mBoundingType; // BOUNDING_BOX;

                                boundingVolumeInterface.setTransform(parentMatrix);
                                boundingVolumeInterface.setScale(scale);
                                boundingVolumeInterface.setAttributes(boundVolAttr);
                            }


                        }
                        break;
                    }


                }
            }// end component iteration
        }
    }

    return(status);
}


//-------------------------------------------------------------------------
// createBoundingVolumeFromSelectedCurveCmd implementation
//-------------------------------------------------------------------------

//********************************************************************************************
// creator()
// This function gets called by Maya to create an instance of a command
//********************************************************************************************
void* createBoundingVolumeFromSelectedCurveCmd::creator()
{
    return new createBoundingVolumeFromSelectedCurveCmd;
}

//********************************************************************************************
// createBoundingVolume()
// This basically just get curves out of the selection list
// generates bounding volumes on them using differend techniques
//********************************************************************************************
MStatus createBoundingVolumeFromSelectedCurveCmd::createBoundingVolume()
{
    MStatus status = MS::kSuccess;
    //
    // Search for Curves
    //
    MSelectionList activeList;
    MGlobal::getActiveSelectionList(activeList);

    MItSelectionList iter( activeList,  MFn::kNurbsCurve);

    for ( ; !iter.isDone(); iter.next() )
    {
        MObject curve;
        iter.getDependNode( curve );

        if(mTesselation < 0)
        {
            createCurveFitTeselationPointToPoint(curve);
        }
        else
        {
            createFixedTeselationPointToPoint(curve);
        }

    }

    return(status);
}

//********************************************************************************************
// createFixedTeselationPointToPoint()
// For a supplied tesselation number generate bounding volumes
// evenly across the curve.
//********************************************************************************************
MStatus createBoundingVolumeFromSelectedCurveCmd::createFixedTeselationPointToPoint
(
    MObject& curve
)
{
    MStatus status;

    //
    // Need path to curve otherwise the "MSpace::kWorld"
    // won't work... ahh Maya...
    //
    MDagPath pathToCurve;
    status = MDagPath::getAPathTo( curve, pathToCurve );
    CHECKRESULT( status, "Couldn't get path to curve" );

    MFnNurbsCurve mFnNurbsCurve(pathToCurve, &status);
    if(status == MS::kSuccess)
    {
        double curveLength = mFnNurbsCurve.length();
        const double pieceLength = curveLength/mTesselation; // for objects
        double currentPieceLength = pieceLength;
        MPoint previousPosition;

        //
        // Initialize the first point
        //
        mFnNurbsCurve.getPointAtParam( mFnNurbsCurve.findParamFromLength(0),
                                                 previousPosition,
                                                 MSpace::kWorld );

        while(currentPieceLength<=curveLength)
        {
            double curveParam = mFnNurbsCurve.findParamFromLength(currentPieceLength);

            MVector normal       = mFnNurbsCurve.normal( curveParam, MSpace::kWorld);
            MVector tangent; //     = mFnNurbsCurve.tangent( curveParam, MSpace::kWorld);
            MVector upVector;//     = tangent^normal; // cross product
            MEulerRotation orient;//= matrixToEuler(tangent, upVector, normal);
            MPoint  currentCurvePosition;

            mFnNurbsCurve.getPointAtParam( curveParam, currentCurvePosition, MSpace::kWorld );

            //
            // Calculate the actual position and orientation of the new volume
            //
            tangent  = currentCurvePosition - previousPosition;
            MPoint position = previousPosition + tangent/2;
            double boundingVolumeLength = tangent.length();
            tangent.normalize();
            upVector = tangent^normal; // cross product

            //
            // This using the tangent Length will shrink bounding Volumes
            // that are too long to meet the curvature
            //
            //MVector scale(pieceLength, 50.0f, 20.0f);

            MVector scale(boundingVolumeLength, mScaleSize[1], mScaleSize[2]);

            const double m[4][4] =
            {
                {tangent.x, tangent.y,  tangent.z,   0},
                {upVector.x,upVector.y, upVector.z,  0},
                {normal.x,  normal.y,   normal.z,    0},
                {position.x,position.y, position.z,  1}
            };

            MMatrix parentMatrix(m);

            MObject newP3dBoundVolShape;
            status = createBoundingVolumeCmd::createBoundingVolumeShape(newP3dBoundVolShape);
            CHECKRESULT( status, "Couldn't create a bounding volume" );

            if(status == MS::kSuccess)
            {
                BoundingVolumeInterface boundingVolumeInterface(&newP3dBoundVolShape);
                p3dBoundVolAttr boundVolAttr;
                boundVolAttr.boundingType  = mBoundingType;

                boundingVolumeInterface.setTransform(parentMatrix);
                boundingVolumeInterface.setScale(scale);
                boundingVolumeInterface.setAttributes(boundVolAttr);
            }
            //
            // to the next piece
            //
            previousPosition = currentCurvePosition;
            currentPieceLength += pieceLength;
        }
    }

    return(status);
}

//********************************************************************************************
// createFixedTeselationPointToPoint()
// Use the control points of the curve for the tesselation.
//********************************************************************************************
MStatus createBoundingVolumeFromSelectedCurveCmd::createCurveFitTeselationPointToPoint
(
    MObject& curve
)
{
    MStatus status;

    //
    // Need path to curve otherwise the "MSpace::kWorld"
    // won't work... ahh Maya...
    //
    MDagPath pathToCurve;
    status = MDagPath::getAPathTo( curve, pathToCurve );
    CHECKRESULT( status, "Couldn't get path to curve" );

    MFnNurbsCurve mFnNurbsCurve(pathToCurve, &status);
    if(status == MS::kSuccess)
    {
        MPoint previousPosition;

        //
        // Initialize the first point
        //
        mFnNurbsCurve.getPointAtParam( mFnNurbsCurve.findParamFromLength(0),
                                                 previousPosition,
                                                 MSpace::kWorld );
        double previousLengthFix = 0.0;

        MPointArray cvArray;
        mFnNurbsCurve.getCVs( cvArray, MSpace::kWorld);
        int numberOfCVs = mFnNurbsCurve.numCVs();

        for(int i=1;i<numberOfCVs;i++)
        {
            double curveParam;
            double tolerance = 0.05;
            mFnNurbsCurve.closestPoint( cvArray[i],
                                                &curveParam,
                                                tolerance,
                                                MSpace::kWorld,
                                                &status);

            MVector normal       = mFnNurbsCurve.normal( curveParam, MSpace::kWorld);
            MVector tangent; //     = mFnNurbsCurve.tangent( curveParam, MSpace::kWorld);
            MVector upVector;//     = tangent^normal; // cross product
            MEulerRotation orient;//= matrixToEuler(tangent, upVector, normal);
            MPoint  currentCurvePosition;

            mFnNurbsCurve.getPointAtParam( curveParam, currentCurvePosition, MSpace::kWorld );

            //
            // Calculate the actual position and orientation of the new volume
            //
            tangent  = currentCurvePosition - previousPosition;

            //
            // Boxes try to remain upright
            //
            if(mBoundingType == BOUNDING_BOX)
            {
                //tangent.y = 0;
            }

            double distancePreviousToCurrent = tangent.length();
            tangent.normalize();
            upVector = tangent^normal; // cross product


            //
            // Handle Obtuce angles burs But only for Boxes!
            // Need to read ahead
            //
            double currentLengthFix = 0.0;
            if((i+1<numberOfCVs) && (mBoundingType == BOUNDING_BOX))
            {
                MVector nextTangent;
                MPoint nextCurvePosition;
                mFnNurbsCurve.closestPoint( cvArray[i+1],
                                    &curveParam,
                                    tolerance,
                                    MSpace::kWorld,
                                    &status);

                mFnNurbsCurve.getPointAtParam( curveParam, nextCurvePosition, MSpace::kWorld );

                //
                // Notice the reverse Direction
                //
                nextTangent = currentCurvePosition - nextCurvePosition;
                nextTangent.normalize();

                //
                // Angle between is given by the dotproduct
                // ACos returns 0-PI
                //
                double angle = acos(tangent*nextTangent);
                const double PI = 3.14159;
                const double PI_DIV_2 = 1.5707; // this has a tolerance
                if(angle >= PI_DIV_2)
                {
                    //
                    // Here we can Fix the Bur... else we need to use a Cylinder
                    //
                    double fixAngle = (PI - angle)/2.0;
                    currentLengthFix = (mScaleSize[2]/2.0)*tan(fixAngle);
                }
                else
                {
                    //
                    // Insert a Cylinder! to round out the edges
                    //
/*
                    MVector cylinderVector(0.0f,1.0f,0.0f);
                    MMatrix parentMatrix = MakeYAxisAlignedMatrix(cylinderVector, currentCurvePosition);

                    MObject newP3dBoundVolShape;
                    status = createBoundingVolumeCmd::createBoundingVolumeShape(newP3dBoundVolShape);
                    CHECKRESULT( status, "Couldn't create a bounding volume" );

                    if(status == MS::kSuccess)
                    {
                        MVector scale(mScaleSize[1], 1.0f, mScaleSize[2]); // since
                        BoundingVolumeInterface boundingVolumeInterface(&newP3dBoundVolShape);
                        p3dBoundVolAttr boundVolAttr;
                        boundVolAttr.boundingType  = BOUNDING_CYLINDER;

                        boundingVolumeInterface.setTransform(parentMatrix);
                        boundingVolumeInterface.setScale(scale);
                        boundingVolumeInterface.setAttributes(boundVolAttr);
                    }
*/
                }
            }

            double boundingVolumeLength;
            boundingVolumeLength = distancePreviousToCurrent + currentLengthFix + previousLengthFix;
            MPoint position = previousPosition + tangent*(boundingVolumeLength/2.0 - previousLengthFix);
            previousLengthFix = currentLengthFix;

            //
            // This using the tangent Length will shrink bounding Volumes
            // that are too long to meet the curvature
            //
            MVector scale(boundingVolumeLength, mScaleSize[1], mScaleSize[2]);

/*
            const double m[4][4] =
            {
                {tangent.x, tangent.y,  tangent.z,   0},
                {upVector.x,upVector.y, upVector.z,  0},
                {normal.x,  normal.y,   normal.z,    0},
                {position.x,position.y, position.z,  1}
            };

            MMatrix parentMatrix(m);
*/
            MMatrix parentMatrix = MakeXAxisAlignedMatrix(tangent, position);

            MObject newP3dBoundVolShape;
            status = createBoundingVolumeCmd::createBoundingVolumeShape(newP3dBoundVolShape);
            CHECKRESULT( status, "Couldn't create a bounding volume" );

            if(status == MS::kSuccess)
            {
                BoundingVolumeInterface boundingVolumeInterface(&newP3dBoundVolShape);
                p3dBoundVolAttr boundVolAttr;
                boundVolAttr.boundingType  = mBoundingType;

                boundingVolumeInterface.setTransform(parentMatrix);
                boundingVolumeInterface.setScale(scale);
                boundingVolumeInterface.setAttributes(boundVolAttr);
            }
            //
            // to the next piece
            //
            previousPosition = currentCurvePosition;
        }
    }

    return(status);
}


//-------------------------------------------------------------------------
// createBoundingVolumeOnJointCmd implementation
//-------------------------------------------------------------------------

//********************************************************************************************
// creator()
// This function gets called by Maya to create an instance of a command
//********************************************************************************************
void* createBoundingVolumeOnJointCmd::creator()
{
    return new createBoundingVolumeOnJointCmd;
}

//********************************************************************************************
// createBoundingVolume()
// This basically creates bounding volumes on joints by looking at the child joints
// and trying to fit a bounding volume with the surrounding mesh verticies.
// This algorithm isn't perfect and could use a second pass... this was just
// a first pass.
//********************************************************************************************
MStatus createBoundingVolumeOnJointCmd::createBoundingVolume()
{

    MStatus status;

    MSelectionList              selList;
    MDagPath mJointDagPath;

    MGlobal::getSelectionListByName( mJoint, selList );
    status = selList.getDagPath( 0, mJointDagPath );
    if ( status == MS::kSuccess )
    {
        MFnIkJoint mFnIkJoint( mJointDagPath, &status );
        CHECKRESULT( status, "Couldn't get primary joint" );

        double boundingVolumeLength = 0.0;
        double  scaleSizeY = 0.0;
        double  scaleSizeZ = 0.0;
        MPoint avgPosition;
        MVector avgTangent = MVector::zero;
        unsigned int numValidChildren = 0;

        MVector pos1 = mFnIkJoint.translation(MSpace::kWorld, &status);
        CHECKRESULT( status, "joint1 positionProblems" );

        int childCount = mFnIkJoint.childCount();
        for(int i=0;i<childCount;i++)
        {
            MObject& childJoint = mFnIkJoint.child(i);

            MDagPath childJointDagPath;
            MFnDagNode dagNodeFn2(childJoint);
            status = dagNodeFn2.getPath(childJointDagPath);

            // Confirm that this is a "real joint" and not one
            // masquerading as a Bounding Volume
            MDagPath        jointShape( childJointDagPath );

            // Confirm that this is a Joint and not a transform
            // the artist has parented to the skeleton.
            if ( !childJoint.hasFn( MFn::kJoint ) )
            {
                continue;
            }

            MStatus hasShape = jointShape.extendToShape();
            if ( hasShape == MS::kSuccess )
            {
                // Joint is most likely a Bounding Volume.. skipping.
                continue;
            }

            MFnIkJoint mFnIkJoint2( childJointDagPath, &status );
            CHECKRESULT( status, "Couldn't get child joint" );

            MVector tangent;
            MEulerRotation orient;//= matrixToEuler(tangent, upVector, normal);

            MVector pos2 = mFnIkJoint2.translation(MSpace::kWorld, &status);
            CHECKRESULT( status, "joint2 positionProblems" );
            mFnIkJoint.getOrientation(orient);

            //
            // Calculate the actual position and orientation of the new volume
            //
            tangent  = pos2 - pos1;
            avgPosition += ( tangent / 2 );
            avgTangent += tangent;

            boundingVolumeLength = MAX( boundingVolumeLength, tangent.length() );

            numValidChildren++;
        }

        scaleSizeY = MIN(boundingVolumeLength, mScaleSize[1]);
        scaleSizeZ = MIN(boundingVolumeLength, mScaleSize[1]);

        avgTangent.normalize();

        MPoint finalPosition = pos1 + ( avgPosition / numValidChildren );

        MVector scale(boundingVolumeLength, scaleSizeY, scaleSizeZ);

        //
        // For this we will favour the x-Axis as the major axis
        // and the z-Axis as the minor axis for selecting the
        // orientation of the shape in Maya
        //
        //
        // These are for the transform
        //
        tlPoint xAxis, yAxis, zAxis;
        tlPoint yUp(0.0f,1.0f,0.0f);
        tlPoint zUp(0.0f,0.0f,1.0f);

        xAxis.x = (float)avgTangent[0];
        xAxis.y = (float)avgTangent[1];
        xAxis.z = (float)avgTangent[2];

        float coLinearInYAxisTest = (float)fabs(xAxis.y * yUp.y);
        float xAxisLength = xAxis.Length();
        float epsilon = 0.05f;

        if((float)fabs(xAxisLength - coLinearInYAxisTest)>epsilon)
        {
            //
            // Use Y up for the building the matrix
            //
            zAxis = CrossProd( xAxis, yUp );
            yAxis = CrossProd( zAxis, xAxis );
        }
        else
        {
            //
            // Use Z up for the building the matrix
            //
            yAxis = CrossProd( zUp, xAxis );
            zAxis = CrossProd( xAxis, yAxis );

        }

        const double m[4][4] =
        {
            {xAxis.x, xAxis.y, xAxis.z, 0},
            {yAxis.x, yAxis.y, yAxis.z, 0},
            {zAxis.x, zAxis.y, zAxis.z, 0},
            {finalPosition[0], finalPosition[1], finalPosition[2], 1}
        };

    
        MMatrix parentMatrix(m);

 //     MMatrix parentMatrix(orient.asMatrix());

        MObject newP3dBoundVolShape;
        status = createBoundingVolumeCmd::createBoundingVolumeShape(newP3dBoundVolShape);
        CHECKRESULT( status, "Couldn't create a bounding volume" );



        if(status == MS::kSuccess)
        {
            BoundingVolumeInterface boundingVolumeInterface(&newP3dBoundVolShape);
            boundingVolumeInterface.setTransform(parentMatrix);

            status = getSkinWeightsBounding(newP3dBoundVolShape);

            // If sizing based on skin weights was not successful,
            // revert to using "default" method.
            if ( status != MS::kSuccess )
            {
//                CDEBUG << "Could not get SkinWeightsBounding -- revert to default." << endl;
                p3dBoundVolAttr                 boundVolAttr;
                boundVolAttr.boundingType  = mBoundingType;
                boundingVolumeInterface.setScale(scale);
                boundingVolumeInterface.setAttributes(boundVolAttr);

                status = MS::kSuccess;
            }

        }

    }

    return(status);
}

//********************************************************************************************
// getSkinWeightsBounding()
// This basically gets some skincluster vertices and calls the fitToMesh()
// to "shape" the bounding volume.
//********************************************************************************************
MStatus createBoundingVolumeOnJointCmd::getSkinWeightsBounding
(
    MObject& newP3dBoundVolShape
)
{

    MStatus status;
    bool bAllOK = false;

    MSelectionList              selList;
    MDagPath mJointDagPath;

    MGlobal::getSelectionListByName( mJoint, selList );
    status = selList.getDagPath( 0, mJointDagPath );
    if ( status == MS::kSuccess )
    {
        MFnIkJoint mFnIkJoint( mJointDagPath, &status );
        CHECKRESULT( status, "Couldn't get joint" );

        //
        // Go through all the skin clusters to match the bone weights
        //
        MItDependencyNodes skinClusterIT(MFn::kSkinClusterFilter);
        while (!skinClusterIT.isDone())
        {
            MObject skinClusterObj = skinClusterIT.item();
            MFnSkinCluster skinCluster(skinClusterObj);
            MSelectionList meshComponents;
            MFloatArray    weights;

            status = skinCluster.getPointsAffectedByInfluence(  mJointDagPath,
                                                                meshComponents,
                                                                weights);


            // If no influence weights were found then no point processing.
            if( ( status == MS::kSuccess ) && ( weights.length() > 0 ) )
            {
                MDagPath item;
                MObject component;
                meshComponents.getDagPath(0, item, component );
                // do something with it

                MStatus isMeshIT;
                MItMeshVertex mITVert( item , component, &isMeshIT );

                if(isMeshIT == MS::kSuccess)
                {
                    //if(iter.hasComponents())
                    {
                        //
                        // How many elements within the weight threshold
                        //
                        const double weightThreshold = SKIN_WEIGHTS_BOUNDING_THRESHOLD;
                        int numVertsInThreshold = 0;
                        unsigned int i;

                        for( i = 0; i < weights.length(); i++ )
                        {
                            if( weights[i] >= weightThreshold )
                            {
                                numVertsInThreshold++;
                            }
                        }

                        // If <3 verts are in threshold they could not possible
                        // generate any sort of 3D volume.  I would not anticipate
                        // a useful fit in this case, so skip it.
                        if ( numVertsInThreshold > 2 )
                        {
                            //
                            // Allocate tlPointArray
                            //
                            tlPoint* vertexWeightedList = new tlPoint[numVertsInThreshold];
                            tlPointArrayFacade tlpointDeleteMagik(&vertexWeightedList);
                            int meshComponentNum = meshComponents.length();
                            int currentProcessedVertexNum = 0;

                            //
                            // Continue on with the mesh
                            //
                            int nVerts = mITVert.count();
                            i = 0;
                            for ( ; !mITVert.isDone(); mITVert.next() )
                            {
                                float weight = weights[i];
                                if( weight >= weightThreshold)
                                {

                                    MPoint vertexPosition = mITVert.position(MSpace::kWorld);

                                    vertexWeightedList[currentProcessedVertexNum].x =
                                            (float)vertexPosition.x;

                                    vertexWeightedList[currentProcessedVertexNum].y =
                                            (float)vertexPosition.y;

                                    vertexWeightedList[currentProcessedVertexNum].z =
                                            (float)vertexPosition.z;

                                    currentProcessedVertexNum++;
                                }
                                i++;
                            }

                            //
                            // Now try to wrap a bounding volume on the cloud of verticies
                            //
                            status = fitToMesh( newP3dBoundVolShape,
                                                vertexWeightedList,
                                                currentProcessedVertexNum );

                            if ( status == MS::kSuccess )
                            {
                                bAllOK = true;
                            }
                        }       // If ( numVertsInThreshold > 0 )
                    }
                }
            }

            // Next skin cluster
            skinClusterIT.next();
        }
    }

    // If all of this failed to generate a successful "fitToMesh"
    // then tell the calling function to use a default sizing factor.
    if ( bAllOK == false )
    {
        status = MS::kFailure;
    }

    return(status);
}

//-------------------------------------------------------------------------
// createBoundingVolume4PointBox implementation
//-------------------------------------------------------------------------

//********************************************************************************************
// creator()
// This function gets called by Maya to create an instance of a command
//********************************************************************************************
void* createBoundingVolume4PointBox::creator()
{
    return new createBoundingVolume4PointBox;
}

//********************************************************************************************
// doIt()
// This function was overidden since it was different and
// simple enough to be stand alone.
//********************************************************************************************
MStatus createBoundingVolume4PointBox::doIt(const MArgList& args)
{
    MStatus status;
    MSelectionList slist;
    clearResult();
    mNameCore = "P3D_BVol_object1";

    //
    // Initialize
    //
    mMesh.clear();

    for (unsigned i = 0; i < args.length(); i++)
    {
        if(MString("-m") == args.asString(i))
        {
            i++;
            MSelectionList slist;
            mMesh = args.asString(i);
        }
        if (MString("-n") == args.asString(i))
        {
            i++;
            mNameCore = args.asString(i);
        }
        if (MString("-v1") == args.asString(i))
        {
            i++;
            mVertices[0] = args.asInt(i);
        }
        if (MString("-v2") == args.asString(i))
        {
            i++;
            mVertices[1] = args.asInt(i);
        }
        if (MString("-v3") == args.asString(i))
        {
            i++;
            mVertices[2] = args.asInt(i);
        }
        if (MString("-v4") == args.asString(i))
        {
            i++;
            mVertices[3] = args.asInt(i);
        }
    }

    //
    // Bullshit initialization so that Maya's Unique Naming will work
    //
    MFnDagNode creatorTransform;
//    MDGModifier mDGModifier;
    MObject newP3dBoundVolTrans = creatorTransform.create( MString("joint"),
                                                           mNameCore,
                                                           MObject::kNullObj,
                                                           &status );

//    status = mDGModifier.deleteNode( newP3dBoundVolTrans );
//    if(status != MS::kSuccess)
//    {
//        MString w;
//        w = "Couldn't create new p3dBoundVolShape object (NameCore)";
//        MGlobal::displayWarning(w);
//    }

    //
    // Here is where the actual work gets done
    //
    status = redoIt();

    //
    // Now actually delete the bogus node
    //
//    mDGModifier.doIt();
    MGlobal::removeFromModel( newP3dBoundVolTrans );

    return(status);
}

//********************************************************************************************
// createBoundingVolume()
// This function creates a box based on an ordered selection of 4 verticies.
// The sad part about this is that to get the order... we needed to implement
// somekind of script job in MEL to catch and cache this order.
//********************************************************************************************
MStatus createBoundingVolume4PointBox::createBoundingVolume(void)
{
    MStatus status;

    MSelectionList selectionList;
    MGlobal::getActiveSelectionList(selectionList);

    MItSelectionList iter( selectionList,  MFn::kMeshVertComponent, &status);
    CHECKRESULT( status, "Couldn't create mesh iterator" );

    MSelectionList              selList;
    MDagPath item;
    MGlobal::getSelectionListByName( mMesh, selList );
    status = selList.getDagPath( 0, item );

    MFnMesh mfnMesh( item, &status );
    CHECKRESULT( status, "object is not a mesh" );

    MPoint point1, point2, point3, point4;

    mfnMesh.getPoint( mVertices[0], point1, MSpace::kWorld );
    mfnMesh.getPoint( mVertices[1], point2, MSpace::kWorld );
    mfnMesh.getPoint( mVertices[2], point3, MSpace::kWorld );
    mfnMesh.getPoint( mVertices[3], point4, MSpace::kWorld );

    //
    // The first 3 points are the planar components
    // the fourth is the depth for the box
    //
    MVector lengthTangent = point1 - point2;
    MVector widthTangent  = point3 - point2;
    MVector depthTangent  = point4 - point2;

    double length = lengthTangent.length();
    double width  = widthTangent.length();
    double depth;

    lengthTangent.normalize();
    widthTangent.normalize();

    MVector tangent  = lengthTangent;
    MVector normal   = lengthTangent^widthTangent;
    MVector newWidth = tangent^normal; // cross product

    normal.normalize();
    newWidth.normalize();

    //
    // The depth and the width are projected along orthogonal axis.
    //
    depth = depthTangent*normal; // dot product
    //
    // Since we can't count on the direction that the first
    // 3 Points are selected the normal computed can be
    // in a direction opposite to the depthTangent...
    // We need to account for this fix
    //
    if(depth<0)
    {
        normal   *= -1.0;
        depth    *= -1.0;
        newWidth *= -1.0;
    }
    //
    // The width needs to be fixed up after the depth
    //
    width = width*(widthTangent*newWidth);
    MVector newWidthTangent  = point3 - point2;
    double extraLength = newWidthTangent*tangent;
    if(extraLength<0)
    {
        //
        // This indicates an obtuse angle
        // between the lengthTangent and the widthTangent so
        // add the positive extra length
        //
        length += (-extraLength);
    }

    //
    // Also need to fix up the lenght base on point 3
    //

    MPoint  position = point2; // anchor at point2

    if(extraLength<0)
    {
        position += tangent*(length/2.0f + extraLength); // x
    }
    else
    {
        position += tangent*length/2.0f;// x
    }
    position += newWidth*width/2.0f; // y
    position += normal*depth/2.0f;   // z

    if(width<0)
    {
        //
        // The negative width is used to properly position
        // along the width direction.
        //
        width = -width;
    }

    MVector scale(length, width, depth);

    const double m[4][4] =
    {
        {tangent.x, tangent.y,  tangent.z,   0},
        {newWidth.x,newWidth.y, newWidth.z,  0},
        {normal.x,  normal.y,   normal.z,    0},
        {position.x,position.y, position.z,  1}
    };

    MMatrix parentMatrix(m);

    MObject newP3dBoundVolShape;
    status = createBoundingVolumeCmd::createBoundingVolumeShape(newP3dBoundVolShape);
    CHECKRESULT( status, "Couldn't create a bounding volume" );

    if(status == MS::kSuccess)
    {
        BoundingVolumeInterface boundingVolumeInterface(&newP3dBoundVolShape);
        p3dBoundVolAttr boundVolAttr;
        boundVolAttr.boundingType  = BOUNDING_BOX;

        boundingVolumeInterface.setTransform(parentMatrix);
        boundingVolumeInterface.setScale(scale);
        boundingVolumeInterface.setAttributes(boundVolAttr);
    }

    return(status);
}

int createBoundingVolumeCmd::GetBoundingVolumes( MObjectArray& volumes )
{
    MStatus                     status;

    if ( createdBoundingVolumes.length() > 0 )
    {
        MSelectionList          selList;
        volumes.clear();
        unsigned int i;
        for ( i = 0; i < createdBoundingVolumes.length(); i++ )
        {
            MGlobal::getSelectionListByName( createdBoundingVolumes[i], selList );
            MDagPath            bvDag;
            status = selList.getDagPath( 0, bvDag );
            if ( status == MS::kSuccess )
            {
                volumes.append( bvDag.node() );
            }
        }
    }
    return volumes.length();
}

} //namespace P3DBoundingVolume

