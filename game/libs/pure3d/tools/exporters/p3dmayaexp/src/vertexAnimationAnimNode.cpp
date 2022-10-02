//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     07 May, 2002
//
// Component:   vertexAnimationAnimNode.cpp
//
// Description: Handles exporting vertex animation.
//
// Constraints: Vertex animation is mutually exclusive to Deformer Expression
//              animation. The latter must be defined on a smooth-bound skin
//              whereas the former may not be defined on a smooth-bound skin.
//
// Creator:     Bryan Ewert
//
//===========================================================================

/* SEARCH STRINGS

VertexAnimationAnimNode::SetupColour( void )

VertexAnimationAnimNode::FillNode(int frame)

VertexAnimationAnimNode::FillUV(int frame)

VertexAnimationAnimNode::OptimizeNode(void)
int VertexAnimationAnimNode::OptimizePosition( void )
int VertexAnimationAnimNode::OptimizeNormal( void )
int VertexAnimationAnimNode::OptimizeColour( void )

VertexAnimationAnimNode::FinalizeNode(

*/


//===========================================================================
// Includes
//===========================================================================

#include "vertexAnimationAnimNode.hpp"
#include "scene.hpp"
#include "exportFunctions.hpp"

#include "tlInventory.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlIndexedVertex.hpp"
#include "tlVertexAnim.hpp"
#include "tlFrameController.hpp"

#include <maya/MTime.h>
#include <maya/MAnimControl.h>
#include <maya/MFloatVector.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MItMeshVertex.h>
#include <maya/MMatrix.h>
#include <maya/MTransformationMatrix.h>

#include <bewert_debug.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

int faceRelativeVertexIndex( const MDagPath& path, int faceIndex, int vertexIndex )
{
    int face_relative_index = -1;

    MStatus                     status;
    MItMeshPolygon              itPoly( path, MObject::kNullObj, &status );
    if ( status == MS::kSuccess )
    {
        int b;

        status = itPoly.setIndex( faceIndex, b );
        if ( status == MS::kSuccess )
        {
            for (b = 0; b < itPoly.polygonVertexCount(); b++)
            {
                if (itPoly.vertexIndex(b) == vertexIndex)
                {
                    face_relative_index = b;
                    break;
                }
            }
        }
    }

    return face_relative_index;
}

int polyLocalNormalIndex( const MDagPath& path, int faceIndex, int vertexIndex )
{
    int normal_index = -1;

    int b = faceRelativeVertexIndex( path, faceIndex, vertexIndex );
    if ( b != -1 )
    {
        MStatus                     status;
        MItMeshPolygon              itPoly( path, MObject::kNullObj, &status );
        if ( status == MS::kSuccess )
        {
            status = itPoly.setIndex( faceIndex, b );
            if ( status == MS::kSuccess )
            {
                normal_index = itPoly.normalIndex( b );
            }
        }
    }

    return normal_index;
}

int polyLocalColourIndex( const MDagPath& path, int faceIndex, int vertexIndex )
{
    int colour_index = -1;

    int b = faceRelativeVertexIndex( path, faceIndex, vertexIndex );
    if ( b != -1 )
    {
        MStatus                     status;
        MFnMesh     fnMesh( path, &status );

        if ( status == MS::kSuccess )
        {
            try
            {
                fnMesh.getFaceVertexColorIndex( faceIndex, b, colour_index );
            }
            catch( ... )
            {
                colour_index = -1;
            }
        }
    }

    return colour_index;
}

int polyLocalUvIndex( const MDagPath& path, int faceIndex, int vertexIndex, const MString& uvSetName )
{
    int colour_index = -1;

    int b = faceRelativeVertexIndex( path, faceIndex, vertexIndex );
    if ( b != (-1) )
    {
        MStatus                 status;
        MFnMesh                 fnMesh( path, &status );

        if ( status == MS::kSuccess )
        {
            try
            {
                fnMesh.getPolygonUVid( faceIndex, b, colour_index, &uvSetName );
            }
            catch( ... )
            {
                colour_index = -1;
            }
        }
    }

    return colour_index;
}

//===========================================================================
// Constructor / Destructor
//===========================================================================

const float VertexAnimationAnimNode::mkEpsilon = 0.01F;

VertexAnimationAnimNode::VertexAnimationAnimNode( SceneNode* pNode, tlPrimGroupMesh *pgmesh, tlInventory* pInventory )
:   AnimNode(pNode),
    mpgmesh( pgmesh ),
    mpInventory( pInventory ),
    mAnimation( NULL ),
    mNumPositions( 0 ),
    mpInitialPosition( NULL ),
    mNumNormals( 0 ),
    mpInitialNormal( NULL ),
    mNumColours( 0 ),
    mpInitialColour( NULL ),
    mNumFrames( 0 ),
    mpPositionChannel( NULL ),
    mpNormalChannel( NULL ),
    mpColourChannel( NULL )
{
    size_t count;
    for ( count = 0; count < NUM_ANIMATED_UVSETS; count++ )
    {
        mNumUVs[count] = 0;
        mpInitialUV[count] = NULL;
        mpUvChannel[count] = NULL;
    }
}

VertexAnimationAnimNode::~VertexAnimationAnimNode()
{
    // Don't delete mAnimation.. stored in tlInventory.

    Clear();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// VertexAnimationAnimNode::Clear
//===========================================================================
// Description:
//
// Constraints:
//
//  Parameters:
//
//      Return:
//
//===========================================================================
void VertexAnimationAnimNode::Clear( void )
{
    // Don't delete mAnimation.. stored in tlInventory.

    delete [] mpInitialColour;
    mpInitialColour = NULL;

    delete [] mpInitialNormal;
    mpInitialNormal = NULL;

    delete [] mpInitialPosition;
    mpInitialPosition = NULL;

    mNumPositions = 0;
    mNumNormals = 0;
    mNumColours = 0;

    mNumFrames = 0;

    size_t count;
    for ( count = 0; count < NUM_ANIMATED_UVSETS; count++ )
    {
        mNumUVs[count] = 0;
        delete [] mpInitialUV[count];
        mpInitialUV[count] = NULL;

        delete [] mpUvChannel[count];
        mpUvChannel[count] = NULL;
    }

    mUVSetNames.clear();

    delete [] mpPositionChannel;
    mpPositionChannel = NULL;

    delete [] mpNormalChannel;
    mpNormalChannel = NULL;

    delete [] mpColourChannel;
    mpColourChannel = NULL;
}

//===========================================================================
// VertexAnimationAnimNode::SetupNode
//===========================================================================
// Description:
//
// Constraints:
//
//  Parameters:
//
//      Return:
//
//===========================================================================
void
VertexAnimationAnimNode::SetupNode(int numframes, float framerate, int startFrame )
{
    mAnimation = new tlVertexAnim;

    char animName[256];
    ExporterOptions::BuildAnimationName(kVertexAnimationMode, mSceneNode->Name(), animName);
    mAnimation->SetName(animName);

    mAnimation->SetNumFrames(numframes);
    mAnimation->SetFrameRate(framerate);
    mAnimation->SetCyclic( mbIsCyclic );

/* ****  AnimRange DISABLED for removal ****

    if ( NumAnimRanges() > 1 )
    {
        if ( mAnimation != NULL )
        {
            sprintf( animName, "%s_%d_%d", mAnimation->GetName(), startFrame, ( startFrame + numframes - 1 ) );
            mAnimation->SetName( animName );
        }
    }

*/

    mNumFrames = numframes;

    SetupPosition();
    SetupNormal();
    SetupColour();
    SetupUV();
}

//===========================================================================
// VertexAnimationAnimNode::SetupPosition
//===========================================================================
// Description:
//
// Constraints:
//
//  Parameters:
//
//      Return:
//
//===========================================================================
void
VertexAnimationAnimNode::SetupPosition( void )
{
    // Must store base/neutral Position, Colour, Normal, and UV (×4)
    MStatus     status;
    MFnMesh     fnMesh( this->mSceneNode->MayaPath(), &status );
    if ( status == MS::kSuccess )
    {
        size_t                  count;

        // The number of vertices is required for ALL vertex animation
        // type, so it is collected even if Position Animation is disabled.
        MPointArray             points;
        fnMesh.getPoints( points, MSpace::kObject);
        mNumPositions = points.length();

    // --- get node's inclusive matrix to scale offsets later-------------------------
        MMatrix inMatrix = mSceneNode->MayaPath().inclusiveMatrix();
        MTransformationMatrix tMatrix( inMatrix );
        double dScale[3];
        tMatrix.getScale( dScale, MSpace::kObject );

        if ( mSceneNode->HasVertexPositionAnimation() )
        {
            mpInitialPosition = new tlPoint[ mNumPositions ];
            for ( count = 0; count < mNumPositions; count++ )
            {
                float x = points[count].x * SceneNode::UIScale() * dScale[0];
                float y = points[count].y * SceneNode::UIScale() * dScale[0];
                float z = points[count].z * SceneNode::UIScale() * dScale[0];

                // Swap coordinate systems with negative Z.
                mpInitialPosition[count] = tlPoint( x, y, -z );
            }

            // Allocate channel to hold Position animation
            mpPositionChannel = new tlVectorChannel [ mNumPositions ];
            mpPositionChannel->EnableInterpolation( mSceneNode->VertexPositionInterpolate() );
        }
    }
}

//===========================================================================
// VertexAnimationAnimNode::SetupNormal
//===========================================================================
// Description:
//
// Constraints:
//
//  Parameters:
//
//      Return:
//
//===========================================================================
void
VertexAnimationAnimNode::SetupNormal( void )
{
    if ( !mSceneNode->HasVertexNormalAnimation() ) return;

    MStatus     status;
    MFnMesh     fnMesh( this->mSceneNode->MayaPath(), &status );
    if ( status == MS::kSuccess )
    {
        size_t                  count;

        MFloatVectorArray       normals;

        if ( mSceneNode->VertexNormalUseVertexFace() )
        {
            fnMesh.getNormals( normals );
        }
        else
        {
            // No all-in-wonder to get vertex normals.. must iterate geometry.
            MVector             normal;
            MItMeshVertex       itVertex( mSceneNode->MayaPath());
            for ( /* nothing */; !itVertex.isDone(); itVertex.next() )
            {
                itVertex.getNormal( normal, MSpace::kObject );
                normals.append( MFloatVector( normal.x, normal.y, normal.z ) );
            }
        }

        mNumNormals = normals.length();
        mpInitialNormal = new tlPoint[ mNumNormals ];
        for ( count = 0; count < mNumNormals; count++ )
        {
            // Swap coordinate systems with negative Z.
            mpInitialNormal[count] = tlPoint( normals[count].x, normals[count].y, -normals[count].z );
        }

        // Allocate channel to hold Position animation
        mpNormalChannel = new tlVectorChannel [ mNumNormals ];
        mpNormalChannel->EnableInterpolation( mSceneNode->VertexNormalInterpolate() );
    }
}

//===========================================================================
// VertexAnimationAnimNode::SetupColour
//===========================================================================
// Description:
//
// Constraints:
//
//  Parameters:
//
//      Return:
//
//===========================================================================
void
VertexAnimationAnimNode::SetupColour( void )
{
    if ( !mSceneNode->HasVertexColourAnimation() ) return;

    MStatus     status;
    MFnMesh     fnMesh( this->mSceneNode->MayaPath(), &status );
    if ( status == MS::kSuccess )
    {
        size_t                  count;

        MColorArray             colors;

        if ( mSceneNode->VertexColourUseVertexFace() )
        {
            fnMesh.getFaceVertexColors( colors );
        }
        else
        {
            fnMesh.getVertexColors( colors );
        }

        mNumColours = colors.length();
        mpInitialColour = new tlColour[ mNumColours ];
        for ( count = 0; count < mNumColours; count++ )
        {
            tlColour            clampColour( colors[count].r, colors[count].g, colors[count].b, colors[count].a );
            clampColour.Clamp();
            mpInitialColour[count] = clampColour;
        }

        // Allocate channel to hold Position animation
        mpColourChannel = new tlColourChannel [ mNumColours ];
        mpColourChannel->EnableInterpolation( mSceneNode->VertexColourInterpolate() );
    }
}

//===========================================================================
// VertexAnimationAnimNode::SetupUV
//===========================================================================
// Description:
//
// Constraints:
//
//  Parameters:
//
//      Return:
//
//===========================================================================
void
VertexAnimationAnimNode::SetupUV( void )
{
    if ( !mSceneNode->HasVertexUvAnimation() ) return;

    MStatus     status;
    MFnMesh     fnMesh( this->mSceneNode->MayaPath(), &status );
    if ( status == MS::kSuccess )
    {
        size_t                  count;

        MFloatArray             u;
        MFloatArray             v;

        int uvSets = fnMesh.numUVSets();
        fnMesh.getUVSetNames( mUVSetNames );

        if ( uvSets > NUM_ANIMATED_UVSETS )
        {
            gExportLog.Add( CExportLogEntry( ExportLog::kMaxAnimatedUVSetsExceeded, mSceneNode->MayaPath() ) );
            uvSets = NUM_ANIMATED_UVSETS;
        }

        while ( uvSets-- )
        {
            fnMesh.getUVs( u, v, &mUVSetNames[uvSets] );

            mNumUVs[uvSets] = u.length();
            mpInitialUV[uvSets] = new tlUV[ mNumUVs[uvSets] ];
            for ( count = 0; count < mNumUVs[uvSets]; count++ )
            {
                mpInitialUV[uvSets][count] = tlUV( u[count], v[count] );
            }

            mpUvChannel[uvSets] = new tlFloat2Channel [ mNumUVs[uvSets] ];

            switch ( uvSets )
            {
                case 0:
                    mpUvChannel[uvSets]->EnableInterpolation( mSceneNode->VertexUv0Interpolate() );
                    break;
                case 1:
                    mpUvChannel[uvSets]->EnableInterpolation( mSceneNode->VertexUv1Interpolate() );
                    break;
                case 2:
                    mpUvChannel[uvSets]->EnableInterpolation( mSceneNode->VertexUv2Interpolate() );
                    break;
                case 3:
                    mpUvChannel[uvSets]->EnableInterpolation( mSceneNode->VertexUv3Interpolate() );
                    break;
                default:
                    assert( false && "Invalid Vertex UV Interpolation UVSet" );
                    break;
            }
        }

    }
}

//===========================================================================
// VertexAnimationAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Skins.  This is
//              initiated from AnimNodes::FillNodes() which is called from
//              TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNodes.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
VertexAnimationAnimNode::FillNode(int frame)
{
//    CDEBUG << "FillNode( " << frame << ")" << endl;

    FillPosition( frame );
    FillNormal( frame );
    FillColour( frame );
    FillUV( frame );
}

//===========================================================================
// VertexAnimationAnimNode::FillPosition
//===========================================================================
// Description: Fills the per-frame Position data for vertex animation.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
VertexAnimationAnimNode::FillPosition(int frame)
{
    if ( !mSceneNode->HasVertexPositionAnimation() ) return;

    MStatus status;
    size_t count;

    // Maya was refusing to properly read vertex positions..
    // it was always lagging one frame behind.. so I've opted
    // to specify a DGContext and force it to evaluate the DG
    // at the specified frame.

    // Do NOT initialize with frame.. this also lags!
//    MTime now( (double)frame, MTime::uiUnit() );

    // DO initialize with MAnimControl.. for some reason this actually works.
    MTime now = MAnimControl::currentTime();
    MDGContext  dgContext( now );
    MFnDependencyNode           fnDependNode( mSceneNode->MayaPath().node(), &status );

    MPlug                       plugMesh;
    MObject                     meshData;
    plugMesh = fnDependNode.findPlug( MString( "outMesh" ), &status );

    status = plugMesh.getValue( meshData, dgContext );
    MFnMesh                     fnMesh( meshData, &status );

    // --- get node's inclusive matrix to scale offsets later-------------------------
    MMatrix inMatrix = mSceneNode->MayaPath().inclusiveMatrix();
    MTransformationMatrix tMatrix( inMatrix );
    double dScale[3];
    tMatrix.getScale( dScale, MSpace::kObject );

    if ( status == MS::kSuccess )
    {
        MPointArray             points;
        fnMesh.getPoints( points, MSpace::kObject );
        for ( count = 0; count < mNumPositions; count++ )
        {
            float x = points[count].x * SceneNode::UIScale() * dScale[0];
            float y = points[count].y * SceneNode::UIScale() * dScale[1];
            float z = points[count].z * SceneNode::UIScale() * dScale[2];

//                CDEBUG << " -> Position @ " << frame << ": " << points[4] << endl;

            // Swap coordinate systems with negative Z.
            mpPositionChannel[count].AddKey( frame, tlPoint( x, y, -z ) );
        }
    }
}

//===========================================================================
// VertexAnimationAnimNode::FillNormal
//===========================================================================
// Description: Fills the per-frame Normal data for vertex animation.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
VertexAnimationAnimNode::FillNormal(int frame)
{
    if ( !mSceneNode->HasVertexNormalAnimation() ) return;

    MStatus status;
    size_t count;

    // Maya was refusing to properly read vertex positions..
    // it was always lagging one frame behind.. so I've opted
    // to specify a DGContext and force it to evaluate the DG
    // at the specified frame.

    // Do NOT initialize with frame.. this also lags!
//    MTime now( (double)frame, MTime::uiUnit() );

    // DO initialize with MAnimControl.. for some reason this actually works.
    MTime now = MAnimControl::currentTime();
    MDGContext  dgContext( now );
    MFnDependencyNode           fnDependNode( mSceneNode->MayaPath().node(), &status );

    MPlug                       plugMesh;
    MObject                     meshData;
    plugMesh = fnDependNode.findPlug( MString( "outMesh" ), &status );

    status = plugMesh.getValue( meshData, dgContext );
    MFnMesh                     fnMesh( meshData, &status );

    if ( status == MS::kSuccess )
    {
        MFloatVectorArray       normals;
        if ( mSceneNode->VertexNormalUseVertexFace() )
        {
            fnMesh.getNormals( normals, MSpace::kObject );
        }
        else
        {
            // No all-in-wonder to get vertex normals.. must iterate geometry.
            MVector             normal;
            MItMeshVertex       itVertex( mSceneNode->MayaPath());
            for ( /* nothing */; !itVertex.isDone(); itVertex.next() )
            {
                itVertex.getNormal( normal, MSpace::kObject );
                normals.append( MFloatVector( normal.x, normal.y, normal.z ) );
            }
        }

        for ( count = 0; count < mNumNormals; count++ )
        {
//                int local_index = polyLocalNormalIndex( mSceneNode->MayaPath(), 7, 0 );
//                CDEBUG << " -> Normal @ " << frame << ": " << normals[local_index] << endl;

            // Swap coordinate systems with negative Z.
            mpNormalChannel[count].AddKey( frame, tlPoint( normals[count].x, normals[count].y, -normals[count].z ) );
        }
    }
}

//===========================================================================
// VertexAnimationAnimNode::FillColour
//===========================================================================
// Description: Fills the per-frame Colour data for vertex animation.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
VertexAnimationAnimNode::FillColour(int frame)
{
    if ( !mSceneNode->HasVertexColourAnimation() ) return;

    MStatus status;
    size_t count;

    // Maya was refusing to properly read vertex positions..
    // it was always lagging one frame behind.. so I've opted
    // to specify a DGContext and force it to evaluate the DG
    // at the specified frame.

    // Do NOT initialize with frame.. this also lags!
//    MTime now( (double)frame, MTime::uiUnit() );

    // DO initialize with MAnimControl.. for some reason this actually works.
    MTime now = MAnimControl::currentTime();
    MDGContext  dgContext( now );
    MFnDependencyNode           fnDependNode( mSceneNode->MayaPath().node(), &status );

    MPlug                       plugMesh;
    MObject                     meshData;
    plugMesh = fnDependNode.findPlug( MString( "outMesh" ), &status );

    status = plugMesh.getValue( meshData, dgContext );
    MFnMesh                     fnMesh( meshData, &status );

    if ( status == MS::kSuccess )
    {
        MColorArray             colours;

        if ( mSceneNode->VertexNormalUseVertexFace() )
        {
            fnMesh.getFaceVertexColors( colours );
        }
        else
        {
            fnMesh.getVertexColors( colours );
        }

        for ( count = 0; count < mNumColours; count++ )
        {
            tlColour            clampColour( colours[count].r, colours[count].g, colours[count].b, colours[count].a );
            clampColour.Clamp();

            mpColourChannel[count].AddKey( frame, clampColour );
        }
    }
}

//===========================================================================
// VertexAnimationAnimNode::FillUV
//===========================================================================
// Description: Fills the per-frame UV data for vertex animation.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
VertexAnimationAnimNode::FillUV(int frame)
{
    if ( !mSceneNode->HasVertexUvAnimation() ) return;

    MStatus status;
    size_t count;

    // Maya was refusing to properly read vertex positions..
    // it was always lagging one frame behind.. so I've opted
    // to specify a DGContext and force it to evaluate the DG
    // at the specified frame.

    // Do NOT initialize with frame.. this also lags!
//    MTime now( (double)frame, MTime::uiUnit() );

    // DO initialize with MAnimControl.. for some reason this actually works.
    MTime now = MAnimControl::currentTime();
    MDGContext  dgContext( now );
    MFnDependencyNode           fnDependNode( mSceneNode->MayaPath().node(), &status );

    MPlug                       plugMesh;
    MObject                     meshData;
    plugMesh = fnDependNode.findPlug( MString( "outMesh" ), &status );

    status = plugMesh.getValue( meshData, dgContext );
    MFnMesh                     fnMesh( meshData, &status );

    if ( status == MS::kSuccess )
    {
        MFloatArray             u;
        MFloatArray             v;

        int uvSets = mUVSetNames.length();

//        CDEBUG << "### Mesh has " << uvSets << " UVSets." << endl;

        if ( uvSets > NUM_ANIMATED_UVSETS )
        {
            uvSets = NUM_ANIMATED_UVSETS;
        }

        while ( uvSets-- )
        {
//            CDEBUG << "++++++ FILL UVSet #" << uvSets << " ++++++++++" << endl;

            fnMesh.getUVs( u, v, &mUVSetNames[uvSets] );

            mNumUVs[uvSets] = u.length();
            for ( count = 0; count < mNumUVs[uvSets]; count++ )
            {
                tlPoint2D       uv( u[count], v[count] );
                mpUvChannel[uvSets][count].AddKey( frame, uv );
            }
        }
    }
}

//===========================================================================
// VertexAnimationAnimNode::OptimizeNode
//===========================================================================
// Description: Performs an optimization on this Vertex Offset animation.
//              If the optimized animation is static it is deleted and
//              set to NULL; otherwise, its name is adjusted per the
//              "Strip Reference Prefix" Exporter Option, then validated
//              against animation names previously encountered.  If a name
//              clash is detected the name is re-assigned using that returned
//              by ::ValidateName().
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
VertexAnimationAnimNode::OptimizeNode(void)
{
    bool        bStillHasVertexAnimation = false;

    unsigned int key;
    short frame;
    size_t count;
    size_t uvSet;

    short maxFrame = 0;

    frame = OptimizePosition();
    maxFrame = __max( maxFrame, frame );
    frame = OptimizeNormal();
    maxFrame = __max( maxFrame, frame );
    frame = OptimizeColour();
    maxFrame = __max( maxFrame, frame );
    frame = OptimizeUV();
    maxFrame = __max( maxFrame, frame );

    // Must allocate ( maxFrame + 1 ) because range is { 0 - maxFrame }
    maxFrame++;

    // I need to know two things in advance:
    // 1. The frames at which I will be setting keys.
    // 2. The summary of vertex indices that will need to be keyed at each frame.
    //      NOTE: ALL Vertex indices require a key at each frame, even if
    //            their animation curves optimized so as not to specify a key.
    bool*    pFramesWithKey = new bool [ maxFrame ];
    bool*    pVerticesToKey = new bool [ mNumPositions ];

    // Now the hard part.. going through ALL vertex channels for each frame
    // and determining what keys remain that need to be stored as
    // a tlVertexAnimKey object AND
    // associating this data back into the proper indices for tlPrimGroupMesh.

//--------------  WRITE ANIMATION --------------------

    int pg;     // primGroup index, for iterator
    for ( pg = 0; pg < mpgmesh->NumPrimGroups(); pg++ )
    {
        // Go through primGroup(s) and assign key for each vertex
        // that correlates this this Maya vertex
        tlPrimGroup* pPrim = mpgmesh->GetPrimGroup(pg);

        int numPrimV = pPrim->NumVertices();
        int pv;     // primGroup vertex index, for iterator

//        CDEBUG << "START PrimGroup #" << pg << " [" << numPrimV << " vertices] -> " << pPrim->GetShader() << endl;

        bool bKeysSetOnPrimGroup = false;

        tlPoint*        pLastPositionKey    = NULL;
        tlPoint*        pLastNormalKey      = NULL;
        tlColourOffset* pLastColourKey      = NULL;
        tlPoint2D*      pLastUvKey[NUM_ANIMATED_UVSETS];
        memset( pLastUvKey, 0, sizeof(tlPoint2D*) * NUM_ANIMATED_UVSETS );

        if ( mSceneNode->HasVertexPositionAnimation() )
        {
            pLastPositionKey = new tlPoint [ numPrimV ];
            for ( count = 0; count < numPrimV; count++ )
            {
                pLastPositionKey[count] = tlPoint( 0.0, 0.0, 0.0 );
            }
        }

        if ( mSceneNode->HasVertexNormalAnimation() )
        {
            pLastNormalKey = new tlPoint [ numPrimV ];
            for ( count = 0; count < numPrimV; count++ )
            {
                pLastNormalKey[count] = tlPoint( 0.0, 0.0, 0.0 );
            }
        }

        if ( mSceneNode->HasVertexColourAnimation() )
        {
            pLastColourKey = new tlColourOffset [ numPrimV ];
            for ( count = 0; count < numPrimV; count++ )
            {
                pLastColourKey[count] = tlColourOffset( 0.0F, 0.0F, 0.0F, 0.0F );
            }
        }

        if ( mSceneNode->HasVertexUvAnimation() )
        {
            for ( uvSet = 0; uvSet < NUM_ANIMATED_UVSETS; uvSet++ )
            {
                pLastUvKey[uvSet] = new tlPoint2D [ numPrimV ];
                for ( count = 0; count < numPrimV; count++ )
                {
                    pLastUvKey[uvSet][count] = tlPoint2D( 0.0F, 0.0F );
                }
            }
        }

        unsigned long vertexType = pPrim->GetVertexType();
        bool bWantsPosition =  ( mSceneNode->HasVertexPositionAnimation() && ( vertexType & PDDI_V_POSITION ) );
        bool bWantsNormal =  ( mSceneNode->HasVertexNormalAnimation() && ( vertexType & PDDI_V_NORMAL ) );
        bool bWantsColour =  ( mSceneNode->HasVertexColourAnimation() && ( vertexType & PDDI_V_COLOUR ) );
        bool bWantsUV     =  ( mSceneNode->HasVertexUvAnimation() && ( vertexType & PDDI_V_UVMASK ) );

    // --------  Warn if user asked for an animation type which geometry/shader does not support  --------

        if ( mSceneNode->HasVertexPositionAnimation() && !bWantsPosition )
        {
            // Enhancement [20 Jun 2002]:
            // Report the Shader which is incompatible
            gExportLog.Add( CExportLogEntry( ExportLog::kVertexAnimationPositionNotSupported, mSceneNode->MayaPath(), MObject::kNullObj, pPrim->GetShader() ) );
        }
        if ( mSceneNode->HasVertexNormalAnimation() && !bWantsNormal )
        {
            gExportLog.Add( CExportLogEntry( ExportLog::kVertexAnimationNormalNotSupported, mSceneNode->MayaPath(), MObject::kNullObj, pPrim->GetShader() ) );
        }
        if ( mSceneNode->HasVertexColourAnimation() && !bWantsColour )
        {
            gExportLog.Add( CExportLogEntry( ExportLog::kVertexAnimationColourNotSupported, mSceneNode->MayaPath(), MObject::kNullObj, pPrim->GetShader() ) );
        }
        if ( mSceneNode->HasVertexUvAnimation() && !bWantsUV )
        {
            gExportLog.Add( CExportLogEntry( ExportLog::kVertexAnimationUVNotSupported, mSceneNode->MayaPath(), MObject::kNullObj, pPrim->GetShader() ) );
        }

        // pFramesWithKey: A TRUE element in this array indicates that the
        //                 specified frame needs to be written to the animation channel.
        memset( pFramesWithKey, 0, maxFrame * sizeof( bool ) );
        // pVerticesToKey: A TRUE element in this array indicates that the
        //                  specified vertex must consider a keyframe at ALL frames.
        memset( pVerticesToKey, 0, mNumPositions * sizeof( bool ) );

        // Stores the frames and names for the tlVertexAnimKey objects.
        // These are then allocated and written into the key stream for the tlVertexAnim chunk.
        MIntArray                   framesArray;
        MIntArray                   keyFramesArray;
        MStringArray                keyNamesArray;

//--------------  Determine which vertices and frames will require a keyframe  --------------------

        // Look at each vertex in this primGroup
        for ( pv = 0; pv < numPrimV; pv++ )
        {
            // Get the Maya index for this prim vertex.
            tlIndexedVertex* pVertex = dynamic_cast<tlIndexedVertex*>(pPrim->GetVertex(pv));
            if ( pVertex != NULL )
            {
                count = pVertex->VertexIndex();
                int face = pVertex->FaceIndex();

                unsigned int maxUVSets = pVertex->VertexFormat() & PDDI_V_UVMASK;

                if ( bWantsPosition )
                {
                    // Is it animated?
                    if ( !mpPositionChannel[count].IsStatic() )
                    {
                        // Yes.. flag need for key for this vertex at affected frame(s).
                        pVerticesToKey[count] = true;

    //                    CDEBUG << "Channel #" << count << ":" << endl;

                        for ( key = 0; key < mpPositionChannel[count].GetNumKeys(); key++ )
                        {
                            short frame;
                            tlPoint value;
                            mpPositionChannel[count].GetKey( key, frame, value );
    //                        CDEBUG << "\t[" << key << "] @ " << frame << " = " << value << endl;

                            pFramesWithKey[frame] = true;
                        }
                    }
                }

                if ( bWantsNormal )
                {
                    int normalIndex = count;
                    if ( mSceneNode->VertexNormalUseVertexFace() )
                    {
                        normalIndex = polyLocalNormalIndex( mSceneNode->MayaPath(), face, count );
                    }

                    if ( normalIndex < 0)
                    {
                        gExportLog.Add( CExportLogEntry( ExportLog::kTopologyInvalidDuringVertexAnimation, mSceneNode->MayaPath() ) );
                        continue;
                    }

                    if ( !mpNormalChannel[normalIndex].IsStatic() )
                    {
                        // Yes.. flag need for key for this vertex at affected frame(s).
                        pVerticesToKey[count] = true;

    //                    CDEBUG << "Channel #" << count << ":" << endl;

                        for ( key = 0; key < mpNormalChannel[normalIndex].GetNumKeys(); key++ )
                        {
                            short frame;
                            tlPoint value;
                            mpNormalChannel[normalIndex].GetKey( key, frame, value );
    //                        CDEBUG << "\t[" << key << "] @ " << frame << " = " << value << endl;

                            pFramesWithKey[frame] = true;
                        }
                    }
                }

                if ( bWantsColour )
                {
                    int colourIndex = count;
                    if ( mSceneNode->VertexColourUseVertexFace() )
                    {
                        colourIndex = polyLocalColourIndex( mSceneNode->MayaPath(), face, count );
                    }

                    if ( colourIndex < 0)
                    {
                        gExportLog.Add( CExportLogEntry( ExportLog::kTopologyInvalidDuringVertexAnimation, mSceneNode->MayaPath() ) );
                        continue;
                    }

                    if ( !mpColourChannel[colourIndex].IsStatic() )
                    {
                        // Yes.. flag need for key for this vertex at affected frame(s).
                        pVerticesToKey[count] = true;

                        for ( key = 0; key < mpColourChannel[colourIndex].GetNumKeys(); key++ )
                        {
                            short frame;
                            tlColour value;
                            mpColourChannel[colourIndex].GetKey( key, frame, value );
//                            CDEBUG << "\t[" << key << "] @ " << frame << " = " << value << endl;

                            pFramesWithKey[frame] = true;
                        }
                    }
                }

                if ( bWantsUV )
                {
                    int uvIndex = count;

                    for ( uvSet = 0; uvSet < maxUVSets; uvSet++ )
                    {
                        if ( !mpUvChannel[uvSet][uvIndex].IsStatic() )
                        {
                            // Yes.. flag need for key for this vertex at affected frame(s).
                            pVerticesToKey[count] = true;

//                            CDEBUG << "UVSet #" << uvSet << " -> UV Channel #" << uvIndex << ":" << endl;

                            for ( key = 0; key < mpUvChannel[uvSet][uvIndex].GetNumKeys(); key++ )
                            {
                                short frame;
                                tlPoint2D value;
                                mpUvChannel[uvSet][uvIndex].GetKey( key, frame, value );
//                                CDEBUG << "\t[" << key << "] @ " << frame << " = { " << value.u << ", " << value.v << " }" << endl;

                                pFramesWithKey[frame] = true;
                            }
                        }
                    }
                }
            }       // Protect that primGroup uses tlIndexedVertex.
            else
            {
                std::cerr << " !! Non-indexed vertex!  PrimGroup #" << pg << "; Vertex #" << pv << " !! " << std::endl;
            }
        }

        // For convenience I am converting the pFramesWithKey into
        // a sparse array (a lot less fiddling when writing the animation chunk)
        for ( frame = 0; frame < maxFrame; frame++ )
        {
            if ( pFramesWithKey[frame] ) framesArray.append(frame);
        }

//--------------  Iterate keys and determine delta values to write  --------------------

        // Now I know which frames will need a keyframe
        for ( frame = 0; frame < framesArray.length(); frame++ )
        {
//            DEBUG << "   -> START Frame #" << framesArray[frame] << endl;

            bool frameHasKey = false;

            // All of this has to remain out here to be within proper scope,
            // even though they are not necessarily used.

            int numPositionKeys = 0;        // Number of keys to write to channel.
            tlPoint* pPositionKey   = NULL;
            int* pPositionIndex     = NULL;

            int numNormalKeys = 0;
            tlPoint* pNormalKey     = NULL;
            int* pNormalIndex       = NULL;

            int numColourKeys = 0;
            tlColourOffset* pColourKey    = NULL;
            int* pColourIndex       = NULL;

            int numUvKeys[NUM_ANIMATED_UVSETS];
            tlPoint2D* pUvKey[NUM_ANIMATED_UVSETS];
            int* pUvIndex[NUM_ANIMATED_UVSETS];
            memset( numUvKeys, 0, sizeof(int)        * NUM_ANIMATED_UVSETS );
            memset( pUvKey,    0, sizeof(tlPoint2D*) * NUM_ANIMATED_UVSETS );
            memset( pUvIndex,  0, sizeof(int*)       * NUM_ANIMATED_UVSETS );

            // Now allocate number of position keys and prepare to submit to tlVertexAnimKey.
            // (Possible that not all of these will be used for each loop.)

            if ( bWantsPosition )
            {
                pPositionKey        = new tlPoint [ numPrimV ];
                pPositionIndex      = new int [ numPrimV ];
            }

            if ( bWantsNormal )
            {
                pNormalKey          = new tlPoint [ numPrimV ];
                pNormalIndex        = new int [ numPrimV ];
            }

            if ( bWantsColour )
            {
                pColourKey          = new tlColourOffset [ numPrimV ];
                pColourIndex        = new int [ numPrimV ];
            }

            if ( bWantsUV )
            {
                for ( uvSet = 0; uvSet < NUM_ANIMATED_UVSETS; uvSet++ )
                {
                    pUvKey[uvSet]   = new tlPoint2D [ numPrimV ];
                    pUvIndex[uvSet] = new int [ numPrimV ];
                }
            }

            for ( pv = 0; pv < numPrimV; pv++ )
            {
                tlIndexedVertex* pVertex = dynamic_cast<tlIndexedVertex*>(pPrim->GetVertex(pv));
                if ( pVertex != NULL )
                {
                    count = pVertex->VertexIndex();
                    int face = pVertex->FaceIndex();

                    if ( !pVerticesToKey[count] ) continue;

                    unsigned int maxUVSets = pVertex->VertexFormat() & PDDI_V_UVMASK;

                        // OK.. the primGroupMesh vertex is associated with the current Maya index.
                        // This will add offset data from the Maya vertex and associate it with
                        // the primGroupMesh vertex.

//                    CDEBUG << "           -> Maya .vertexFace[" << count << "][" << face << "]" << endl;

                    if ( bWantsPosition )
                    {
                        tlPoint     basePos = mpInitialPosition[count];
                        tlPoint     pos     = mpPositionChannel[count].CalculateValue( framesArray[frame] );

                        // Don't need to set a key if vertex has not moved, BUT
                        // Must set key on first frame for ALL vertices in pVerticesToKey list and
                        // must set key if the PREVIOUS key was NOT ZERO.
                        if  (
                                ( frame == 0 ) ||
                                ( tlPoint( pos - basePos ).Length() > 0.0 ) ||
                                ( pLastPositionKey[pv].Length() > 0.0 )
                            )
                        {
                            frameHasKey = true;
                            pPositionIndex[numPositionKeys] = pv;
                            pPositionKey[numPositionKeys] = pLastPositionKey[pv]       = mpPositionChannel[count].CalculateValue( framesArray[frame] ) - mpInitialPosition[count];
                            numPositionKeys++;
                        }

                    }

                    if ( bWantsNormal )
                    {
                        // Determine the normal index for this vertex-face.
                        int normalIndex = count;
                        if ( mSceneNode->VertexNormalUseVertexFace() )
                        {
                            normalIndex = polyLocalNormalIndex( mSceneNode->MayaPath(), face, count );
                        }

                        if ( normalIndex < 0 )
                        {
                            gExportLog.Add( CExportLogEntry( ExportLog::kTopologyInvalidDuringVertexAnimation, mSceneNode->MayaPath() ) );
                            continue;
                        }

//                        CDEBUG << " ??? At frame #" << framesArray[frame] << " last normal for vertex #" << normalIndex << " is " << pLastNormalKey[pv] << " (Length = " << pLastNormalKey[pv].Length() << ")" << endl;

                        tlPoint     baseNormal = mpInitialNormal[normalIndex];
                        tlPoint     normal = mpNormalChannel[normalIndex].CalculateValue( framesArray[frame] );

                        // Don't need to set a key if vertex has not moved, BUT
                        // Must set key on first frame for ALL vertices in pVerticesToKey list and
                        // must set key if the PREVIOUS key was NOT ZERO.
                        if  (
                                ( frame == 0 ) ||
                                ( tlPoint( normal - baseNormal ).Length() > 0.0 ) ||
                                ( pLastNormalKey[pv].Length() > 0.0 )
                            )
                        {
//                            CDEBUG << "Normal key set for vertex #" << normalIndex << " at frame #" << framesArray[frame] << endl;

                            frameHasKey = true;
                            pNormalIndex[numNormalKeys] = pv;
                            pNormalKey[numNormalKeys]     = pLastNormalKey[pv]   = mpNormalChannel[normalIndex].CalculateValue( framesArray[frame] ) - mpInitialNormal[normalIndex];
                            numNormalKeys++;
                        }
                    }

                    if ( bWantsColour )
                    {
                        // Determine the normal index for this vertex-face.
                        int colourIndex = count;
                        if ( mSceneNode->VertexColourUseVertexFace() )
                        {
                            colourIndex = polyLocalColourIndex( mSceneNode->MayaPath(), face, count );
                        }

                        if ( colourIndex < 0 )
                        {
                            gExportLog.Add( CExportLogEntry( ExportLog::kTopologyInvalidDuringVertexAnimation, mSceneNode->MayaPath() ) );
                            continue;
                        }

                        tlColour        baseColour = mpInitialColour[colourIndex];
                        tlColour        colour = mpColourChannel[colourIndex].CalculateValue( framesArray[frame] );

                        bool deltaTrigger = false;      // Trigger key if colour differs from base colour.
                        bool zeroTrigger = false;       // Trigger key if previous colour was NOT OPAQUE BLACK.

                        deltaTrigger = !( colour == baseColour );
                        zeroTrigger  = !( pLastColourKey[pv] == tlColourOffset( 0.0F, 0.0F, 0.0F, 0.0F ) );

                        // Don't need to set a key if vertex has not moved, BUT
                        // Must set key on first frame for ALL vertices in pVerticesToKey list and
                        // must set key if the PREVIOUS key was NOT ZERO.
                        if  (
                                ( frame == 0 ) ||
                                ( deltaTrigger ) ||
                                ( zeroTrigger )
                            )
                        {
                            frameHasKey = true;
                            pColourIndex[numColourKeys] = pv;
                            // This MUST allow negative values -- don't clamp!
//                            CDEBUG << "     -> START Colour [" << pv << " (" << count << ")]: " << mpInitialColour[colourIndex] << endl;
//                            CDEBUG << "     ->   END Colour [" << pv << " (" << count << ")]: " << mpColourChannel[colourIndex].CalculateValue( framesArray[frame] ) << endl;

                            tlColourOffset    diffColour = mpColourChannel[colourIndex].CalculateValue( framesArray[frame] ) - mpInitialColour[colourIndex];
                            // tlColour uses "min alpha" in subtraction operator.. Alpha offset must be calculated separately.
                            diffColour.alpha = mpColourChannel[colourIndex].CalculateValue( framesArray[frame] ).alpha - mpInitialColour[colourIndex].alpha;

//                            CDEBUG << "         -> RESULT Colour [" << pv << " (" << count << ")]: " << diffColour << endl;

                            pColourKey[numColourKeys]     = pLastColourKey[pv]   = diffColour;
                            numColourKeys++;
                        }
                    }

                    if ( bWantsUV )
                    {
                        for ( uvSet = 0; uvSet < maxUVSets; uvSet++ )
                        {
                            // Determine the normal index for this vertex-face.
                            int uvIndex = polyLocalUvIndex( mSceneNode->MayaPath(), face, count, mUVSetNames[uvSet] );
                            if ( uvIndex < 0 )
                            {
                                gExportLog.Add( CExportLogEntry( ExportLog::kTopologyInvalidDuringVertexAnimation, mSceneNode->MayaPath() ) );
                                continue;
                            }

                            tlPoint2D       baseUV = mpInitialUV[uvSet][uvIndex];
                            tlPoint2D       uv     = mpUvChannel[uvSet][uvIndex].CalculateValue( framesArray[frame] );

                            bool deltaTrigger = false;      // Trigger key if colour differs from base colour.
                            bool zeroTrigger = false;       // Trigger key if previous colour was NOT OPAQUE BLACK.

                            deltaTrigger = !( uv == baseUV );
                            zeroTrigger  = !( pLastUvKey[uvSet][pv] == tlPoint2D( 0.0F, 0.0F ) );

                            // Don't need to set a key if vertex has not moved, BUT
                            // Must set key on first frame for ALL vertices in pVerticesToKey list and
                            // must set key if the PREVIOUS key was NOT ZERO.
                            if  (
                                    ( frame == 0 ) ||
                                    ( deltaTrigger ) ||
                                    ( zeroTrigger )
                                )
                            {
                                frameHasKey = true;
                                pUvIndex[uvSet][ numUvKeys[uvSet] ] = pv;
                                // This MUST allow negative values -- don't clamp!
//                                CDEBUG << "     -> START UV [" << pv << " (" << uvIndex << ")]: " << mpInitialUV[uvSet][uvIndex] << endl;
//                                CDEBUG << "     ->   END UV [" << pv << " (" << uvIndex << ")]: " << mpUvChannel[uvSet][uvIndex].CalculateValue( framesArray[frame] ) << endl;

                                tlPoint2D   diffUV = mpUvChannel[uvSet][uvIndex].CalculateValue( framesArray[frame] ) - mpInitialUV[uvSet][uvIndex];

//                                CDEBUG << "         -> RESULT UV [" << pv << " (" << uvIndex << ")]: { " << diffUV.u << ", " << diffUV.v << " }" << endl;

                                pUvKey[uvSet][ numUvKeys[uvSet] ]     = pLastUvKey[uvSet][pv]   = diffUV;
                                numUvKeys[uvSet]++;
                            }
                        }
                    }

                }       // if ( pVertex != NULL )   // i.e. valid (tlIndexedVertex*)
                else
                {
                    std::cerr << " !!!!!!  FAILED TO CAST tlPrimGroupMesh vertex to tlIndexedVertex  !!!!!! " << std::endl;
                }
            }       // for ( primGroup vertex count )

//--------------  Write delta values to tlVertexAnimKey  --------------------

            if ( frameHasKey )
            {
//                CDEBUG << "       ++ Key required at frame " << framesArray[frame] << " on PrimGroup " << pg << "." << endl;
//                CDEBUG << "         At frame " << framesArray[frame] << " there were " << numPositionKeys << " offset vertices." << endl;

//                int pg;
//                int numpg = mpgmesh->NumPrimGroups();
//
//                for ( pg = 0; pg < numpg; pg++ )
//                {
//                    CDEBUG << "  && PRIMGROUP #" << pg << endl;
//
//                    tlPrimGroup* pPrim = mpgmesh->GetPrimGroup(pg);
//
//
//                    int pv;
//                    int numPrimV = pPrim->NumVertices();
//                    for ( pv = 0; pv < numPrimV; pv++ )
//                    {
//                        tlIndexedVertex* pVertex = pPrim->GetVertex(pv);
//                        CDEBUG << "      -> Vertex #" << pv << ":";
//                        pVertex->Print( pv, 0 );
//                        CDEBUG << flush;
//                        CDEBUG << endl << " ------------------------- " << endl;
//                    }
//
//                }

                tlVertexAnimKey* pKey = new tlVertexAnimKey;

                char animName[256];
                strcpy( animName, "VKEY_" );
                strcat( animName, mSceneNode->Name() );
                pKey->SetName(animName);

                if ( !ValidateName( pKey->GetName(), animName ) )
                {
                    pKey->SetName( animName );
                }

                keyFramesArray.append( framesArray[frame] );
                keyNamesArray.append( MString( animName ) );

                // If ALL primGroup vertices will be keyed it is
                // not necessary to write the index data.
                if ( numPositionKeys == pPrim->NumVertices() )
                {
                    delete [] pPositionIndex;
                    pPositionIndex = NULL;
                }
                if ( numNormalKeys == pPrim->NumVertices() )
                {
                    delete [] pNormalIndex;
                    pNormalIndex = NULL;
                }
                if ( numColourKeys == pPrim->NumVertices() )
                {
//                    CDEBUG << "## ALL Vertices animated for PrimGroup #" << pg << " -> skip index data ##" << endl;
                    delete [] pColourIndex;
                    pColourIndex = NULL;
                }
                for ( uvSet = 0; uvSet < NUM_ANIMATED_UVSETS; uvSet++ )
                {
                    if ( numUvKeys[uvSet] == pPrim->NumVertices() )
                    {
                        delete [] pUvIndex[uvSet];
                        pUvIndex[uvSet] = NULL;
                    }
                }

                pKey->SetPositionKey( pPositionKey, pPositionIndex, numPositionKeys );
                pKey->SetNormalKey( pNormalKey, pNormalIndex, numNormalKeys );
                pKey->SetColourKey( pColourKey, pColourIndex, numColourKeys );
                for ( uvSet = 0; uvSet < NUM_ANIMATED_UVSETS; uvSet++ )
                {
                    pKey->SetUvKey( uvSet, pUvKey[uvSet], pUvIndex[uvSet], numUvKeys[uvSet] );
                }

//                CDEBUG << "           -> Store key for frame: " << framesArray[frame] << endl;

                SceneNode::Inventory()->Store( pKey );

                bKeysSetOnPrimGroup = true;
            }       // if ( at least one vertex required a key at this frame )

            for ( uvSet = 0; uvSet < NUM_ANIMATED_UVSETS; uvSet++ )
            {
                delete [] pUvKey[uvSet];
                delete [] pUvIndex[uvSet];
            }
            delete [] pColourKey;
            delete [] pColourIndex;
            delete [] pNormalKey;
            delete [] pNormalIndex;
            delete [] pPositionKey;
            delete [] pPositionIndex;


        }       // for ( numFrames )

//--------------  Write entity keys to tlVertexAnim  --------------------

        if ( bKeysSetOnPrimGroup )
        {
            bStillHasVertexAnimation = true;

            // Write channel to describe the sequence of AnimKeys used to playback this animation.
            int kfaLength = keyFramesArray.length();

            tlAnimationGroup* pAGroup = mAnimation->CreateKeyChannel( keyFramesArray.length(), pg );
            for ( count = 0; count < keyFramesArray.length(); count++ )
            {
                mAnimation->GetKeyChannel(pg)->SetKey( count, keyFramesArray[count], keyNamesArray[count].asChar() );
                // The way that the tlChannel drives vertex animation it is NOT
                // possible to define Interpolation ON/OFF for each vertex animation
                // component (i.e. Position vs. Normal) independently.
                // For now, the VertexPositionInterpolate flag will serve for
                // all components.

                // Generate bitfield to identify which component channels should be interpolated.
                unsigned long interpolate = 0;
                interpolate |= ( tlVertexAnim::eInterpolateUV0    * mSceneNode->VertexUv0Interpolate() );
                interpolate |= ( tlVertexAnim::eInterpolateUV1    * mSceneNode->VertexUv1Interpolate() );
                interpolate |= ( tlVertexAnim::eInterpolateUV2    * mSceneNode->VertexUv2Interpolate() );
                interpolate |= ( tlVertexAnim::eInterpolateUV3    * mSceneNode->VertexUv3Interpolate() );
                interpolate |= ( tlVertexAnim::eInterpolateCoord  * mSceneNode->VertexPositionInterpolate() );
                interpolate |= ( tlVertexAnim::eInterpolateNormal * mSceneNode->VertexNormalInterpolate() );
                interpolate |= ( tlVertexAnim::eInterpolateColour * mSceneNode->VertexColourInterpolate() );
                mAnimation->GetKeyChannel(pg)->EnableInterpolation( interpolate );
            }

            // This sets the Version flag for the tlMeshChunk to '1' instead of '0'.
            // (or, more accurately, to 'MESH_VERTEX_ANIMATION_VERSION' instead of 'MESH_VERSION')
            mpgmesh->SetHasVertexAnimation( true, pg, pAGroup);

            keyFramesArray.clear();
            keyNamesArray.clear();
        }

        framesArray.clear();

        delete [] pLastPositionKey;
        pLastPositionKey = NULL;
        delete [] pLastNormalKey;
        pLastNormalKey = NULL;
        delete [] pLastColourKey;
        pLastColourKey = NULL;
        for ( count = 0; count < NUM_ANIMATED_UVSETS; count++ )
        {
            delete [] pLastUvKey[count];
            pLastUvKey[count] = NULL;
        }
    }       // for ( numPrimGroups() )

    delete [] pFramesWithKey;
    delete [] pVerticesToKey;

    // If, after all this, everything was optimized into nothingness,
    // delete the tlVertexAnim object to prevent unnecessary FrameController.
    if ( !bStillHasVertexAnimation )
    {
        delete mAnimation;
        mAnimation = NULL;
    }
}

int VertexAnimationAnimNode::OptimizePosition( void )
{
    if ( !mSceneNode->HasVertexPositionAnimation() ) return 0;

    size_t count;
    int maxFrame = 0;

//    for ( count = 0; count < mNumPositions; count++ )
//    {
//        if ( !mpPositionChannel[count].IsStatic() )
//        {
//            CDEBUG << "Channel #" << count << ":" << endl;
//
//            for ( int key = 0; key < mpPositionChannel[count].GetNumKeys(); key++ )
//            {
//                short frame;
//                tlPoint value;
//                mpPositionChannel[count].GetKey( key, frame, value );
//                CDEBUG << "\t[" << key << "] @ " << frame << " = " << value << endl;
//            }
//        }
//    }

    for ( count = 0; count < mNumPositions; count++ )
    {
        short start, stop;

//        CDEBUG << "Channel #" << count << " starts with " << mpPositionChannel[count].GetNumKeys() << " keys -> Is " << ( mpPositionChannel[count].IsStatic() ? "" : "NOT " ) << "static." << endl;
        mpPositionChannel[count].Optimize( mSceneNode->VertexPositionThreshold(), ExporterOptions::UsePeakDetection() );
//        CDEBUG << "        -> ends with " << mpPositionChannel[count].GetNumKeys() << " keys -> Is " << ( mpPositionChannel[count].IsStatic() ? "" : "NOT " ) << "static." << endl;

        mpPositionChannel[count].GetFrameRange( start, stop );
        maxFrame = __max( maxFrame, stop );
    }

//    for ( count = 0; count < mNumPositions; count++ )
//    {
//        if ( !mpPositionChannel[count].IsStatic() )
//        {
//            CDEBUG << "Channel #" << count << ":" << endl;
//
//            for ( int key = 0; key < mpPositionChannel[count].GetNumKeys(); key++ )
//            {
//                short frame;
//                tlPoint value;
//                mpPositionChannel[count].GetKey( key, frame, value );
//                CDEBUG << "\t[" << key << "] @ " << frame << " = " << value << endl;
//            }
//        }
//    }

    return maxFrame;
}

int VertexAnimationAnimNode::OptimizeNormal( void )
{
    if ( !mSceneNode->HasVertexNormalAnimation() ) return 0;

    size_t count;

//    for ( count = 0; count < mNumNormals; count++ )
//    {
//        if ( !mpNormalChannel[count].IsStatic() )
//        {
//            CDEBUG << "Channel #" << count << ":" << endl;
//
//            for ( int key = 0; key < mpNormalChannel[count].GetNumKeys(); key++ )
//            {
//                short frame;
//                tlPoint value;
//                mpNormalChannel[count].GetKey( key, frame, value );
//                CDEBUG << "\t[" << key << "] @ " << frame << " = " << value << endl;
//            }
//        }
//    }

    int maxFrame = 0;

    for ( count = 0; count < mNumNormals; count++ )
    {
        short start, stop;

//        CDEBUG << "Channel #" << count << " starts with " << mpNormalChannel[count].GetNumKeys() << " keys -> Is " << ( mpNormalChannel[count].IsStatic() ? "" : "NOT " ) << "static." << endl;
        mpNormalChannel[count].Optimize( mSceneNode->VertexNormalThreshold(), ExporterOptions::UsePeakDetection() );
//        CDEBUG << "        -> ends with " << mpNormalChannel[count].GetNumKeys() << " keys -> Is " << ( mpNormalChannel[count].IsStatic() ? "" : "NOT " ) << "static." << endl;

        mpNormalChannel[count].GetFrameRange( start, stop );
        maxFrame = __max( maxFrame, stop );
    }

//        for ( count = 0; count < mNumNormals; count++ )
//        {
//            if ( !mpNormalChannel[count].IsStatic() )
//            {
//                CDEBUG << "OPTIMIZED Channel #" << count << ":" << endl;
//
//                for ( key = 0; key < mpNormalChannel[count].GetNumKeys(); key++ )
//                {
//                    short frame;
//                    tlPoint value;
//                    mpNormalChannel[count].GetKey( key, frame, value );
//                    CDEBUG << "\t[" << key << "] @ " << frame << " = " << value << endl;
//                }
//            }
//        }

    return maxFrame;
}

int VertexAnimationAnimNode::OptimizeColour( void )
{
    if ( !mSceneNode->HasVertexColourAnimation() ) return 0;

    size_t count;

//        for ( count = 0; count < mNumColours; count++ )
//        {
//            if ( !mpColourChannel[count].IsStatic() )
//            {
//                CDEBUG << "COLOUR Channel #" << count << ":" << endl;
//
//                for ( int key = 0; key < mpColourChannel[count].GetNumKeys(); key++ )
//                {
//                    short frame;
//                    tlColour value;
//                    mpColourChannel[count].GetKey( key, frame, value );
//                    CDEBUG << "\t[" << key << "] @ " << frame << " = { " << value.red << ", " << value.green << ", " << value.blue << " }" << endl;
//                }
//            }
//        }

    int maxFrame = 0;

    for ( count = 0; count < mNumColours; count++ )
    {
        short start, stop;

//        CDEBUG << "COLOUR Channel #" << count << " starts with " << mpColourChannel[count].GetNumKeys() << " keys -> Is " << ( mpColourChannel[count].IsStatic() ? "" : "NOT " ) << "static." << endl;
        mpColourChannel[count].Optimize( mSceneNode->VertexColourThreshold(), ExporterOptions::UsePeakDetection() );
//        CDEBUG << "        -> ends with " << mpColourChannel[count].GetNumKeys() << " keys -> Is " << ( mpColourChannel[count].IsStatic() ? "" : "NOT " ) << "static." << endl;

        mpColourChannel[count].GetFrameRange( start, stop );
        maxFrame = __max( maxFrame, stop );
    }

//        for ( count = 0; count < mNumColours; count++ )
//        {
//            if ( !mpColourChannel[count].IsStatic() )
//            {
//                CDEBUG << "OPTIMIZED COLOUR Channel #" << count << ":" << endl;
//
//                for ( int key = 0; key < mpColourChannel[count].GetNumKeys(); key++ )
//                {
//                    short frame;
//                    tlColour value;
//                    mpColourChannel[count].GetKey( key, frame, value );
//                    CDEBUG << "\t[" << key << "] @ " << frame << " = " << value << endl;
//                }
//            }
//        }

    return maxFrame;
}

int VertexAnimationAnimNode::OptimizeUV( void )
{
    if ( !mSceneNode->HasVertexUvAnimation() ) return 0;

    unsigned int uvSets = NUM_ANIMATED_UVSETS;

    size_t count;

//        for ( count = 0; count < mNumColours; count++ )
//        {
//            if ( !mpUvChannel[0][count].IsStatic() )
//            {
//                CDEBUG << "UV Channel #" << count << ":" << endl;
//
//                for ( int key = 0; key < mpUvChannel[0][count].GetNumKeys(); key++ )
//                {
//                    short frame;
//                    tlPoint2D value;
//                    mpUvChannel[0][count].GetKey( key, frame, value );
//                    CDEBUG << "\t[" << key << "] @ " << frame << " = " << value << endl;
//                }
//            }
//        }

    int maxFrame = 0;

    while ( uvSets-- )
    {
        for ( count = 0; count < mNumUVs[uvSets]; count++ )
        {
            short start, stop;

//            CDEBUG << "UV Channel #" << count << " starts with " << mpUvChannel[uvSets][count].GetNumKeys() << " keys -> Is " << ( mpUvChannel[uvSets][count].IsStatic() ? "" : "NOT " ) << "static." << endl;
            mpUvChannel[uvSets][count].Optimize( mSceneNode->VertexUvThreshold(), ExporterOptions::UsePeakDetection() );
//            CDEBUG << "        -> ends with " << mpUvChannel[uvSets][count].GetNumKeys() << " keys -> Is " << ( mpUvChannel[uvSets][count].IsStatic() ? "" : "NOT " ) << "static." << endl;

            mpUvChannel[uvSets][count].GetFrameRange( start, stop );
            maxFrame = __max( maxFrame, stop );
        }
    }

//        for ( count = 0; count < mNumColours; count++ )
//        {
//            if ( !mpUvChannel[0][count].IsStatic() )
//            {
//                CDEBUG << "OPTIMIZED UV Channel #" << count << ":" << endl;
//
//                for ( int key = 0; key < mpUvChannel[0][count].GetNumKeys(); key++ )
//                {
//                    short frame;
//                    tlPoint2D value;
//                    mpUvChannel[0][count].GetKey( key, frame, value );
//                    CDEBUG << "\t[" << key << "] @ " << frame << " = " << value << endl;
//                }
//            }
//        }

    return maxFrame;
}

//===========================================================================
// VertexAnimationAnimNode::FinalizeNode
//===========================================================================
// Description:
//
// Constraints:
//
//  Parameters:
//
//      Return:
//
//===========================================================================
tlFrameController*
VertexAnimationAnimNode::FinalizeNode()
{
    tlFrameController*          pFC = NULL;

    if ( mAnimation != NULL )
    {
        char newName[256];
        if ( !ValidateName( mAnimation->GetName(), newName ) )
        {
            mAnimation->SetName( newName );
        }

        // create a frame controller for the mixer/animation
        pFC = new tlFrameController;
        pFC->SetName(mAnimation->GetName());
        pFC->SetType(Pure3DAnimationTypes::VERTEX_VRTX);

        pFC->SetHierarchyName(mSceneNode->Name());

        pFC->SetAnimationName(mAnimation->GetName());

        // * Note: This only _stores_ the pointer.. it doesn't copy the object! *
        // add the expression animation to the inventory
        SceneNode::Inventory()->Store(mAnimation);

        // store frame controller in inventory
        SceneNode::Inventory()->Store(pFC);

        SetFinal();
    }

    Clear();

    return pFC;
}

void
VertexAnimationAnimNode::CleanUp()
{
    if ( !Finalized() )
    {
        delete mAnimation;
        mAnimation = NULL;
    }

    Clear();
}
