//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <memory.h>
#include "tlDataChunk.hpp"
#include "ChunkManip.hpp"

//Simpsons SRR2
#include "..\..\..\code\constants\srrchunks.h"
//#include "chunks.h"

// add registration for project specific chunks to here
void RegisterExtraChunks(void)
{
//    tlDataChunk::RegisterChunk(MyGame::MyChunk, &tlMyChunk::Create);
//    tlDataChunk::AddChunkPriority(MyGame::MyChunk, tlDataChunk::PRORITY_AFTER, Pure3D::SomeRandomChunk);

//Simpsons SRR2
    tlDataChunk::RegisterChunk(SRR2::ChunkID::WALL, &tlWallChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::FENCELINE, &tlFenceLineChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::INTERSECTION, &tlIntersectionChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::ROAD_SEGMENT, &tlRoadSegmentChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::ROAD_SEGMENT_DATA, &tlRoadSegmentDataChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::ROAD, &tlRoadChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::LOCATOR, &tlWBLocatorChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::TRIGGER_VOLUME, &tlWBTriggerVolumeChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::SPLINE, &tlWBSplineChunk::Create);

    tlDataChunk::RegisterChunk(SRR2::ChunkID::INSTANCES, &tlInstancesChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::FOLLOWCAM, &tlFollowCamDataChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::WALKERCAM, &tlWalkerCamDataChunk::Create);

    tlDataChunk::RegisterChunk(SRR2::ChunkID::ENTITY_DSG, &tlEntityDSGChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::STATIC_PHYS_DSG, &tlStaticPhysDSGChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::DYNA_PHYS_DSG, &tlDynaPhysDSGChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::INSTA_ENTITY_DSG, &tlInstaEntityDSGChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::INSTA_STATIC_PHYS_DSG, &tlInstaStaticPhysDSGChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::ANIM_DSG_WRAPPER, &tlAnimDSGWrapperChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::INSTA_ANIM_DYNA_PHYS_DSG, &tlInstAnimDynaPhysDSGChunk::Create);


    tlDataChunk::RegisterChunk(SRR2::ChunkID::TREE_DSG, &tlTreeDSGChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::FENCE_DSG, &tlFenceDSGChunk::Create);    
    tlDataChunk::RegisterChunk(SRR2::ChunkID::SPATIAL_NODE, &tlSpatialNodeChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::CONTIGUOUS_BIN_NODE, &tlContiguousBinNodeChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::SPLINE, &tlWBSplineChunk::Create);

    tlDataChunk::RegisterChunk(SRR2::ChunkID::INSTANCES, &tlInstancesChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::FOLLOWCAM, &tlFollowCamDataChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::WALKERCAM, &tlWalkerCamDataChunk::Create);

    tlDataChunk::RegisterChunk(SRR2::ChunkID::RAIL, &tlWBRailCamChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::INTERSECT_DSG, &tlIntersectDSGChunk::Create);
 
  	tlDataChunk::RegisterChunk(SRR2::ChunkID::OBJECT_ATTRIBUTES, &tlObjectAttributeChunk::Create);
	tlDataChunk::RegisterChunk(SRR2::ChunkID::PHYS_WRAPPER, &tlPhysWrapperChunk::Create);
	tlDataChunk::RegisterChunk(SRR2::ChunkID::ATTRIBUTE_TABLE, &tlAttributeTableChunk::Create);
	tlDataChunk::RegisterChunk(SRR2::ChunkID::ANIM_COLL_DSG,&tlAnimCollDSGChunk::Create);
	tlDataChunk::RegisterChunk(SRR2::ChunkID::ANIM_DSG,&tlAnimDSGChunk::Create);
	tlDataChunk::RegisterChunk(SRR2::ChunkID::WORLD_SPHERE_DSG,&tlWorldSphereDSGChunk::Create);
	tlDataChunk::RegisterChunk(SRR2::ChunkID::LENS_FLARE_DSG,&tlLensFlareDSGChunk::Create);


    tlDataChunk::RegisterChunk(SRR2::ChunkID::BREAKABLE_OBJECT, &tlBreakableObjectChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::INST_PARTICLE_SYSTEM, &tlInstParticleSystemChunk::Create);

    tlDataChunk::RegisterChunk(SRR2::ChunkID::PED_PATH, &tlPedpathChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::EXTRA_MATRIX, &tlExtraMatrixChunk::Create);
    tlDataChunk::RegisterChunk(SRR2::ChunkID::CHUNK_SET, &tlSetChunk::Create);
	tlDataChunk::RegisterChunk(SRR2::ChunkID::ANIM_OBJ_DSG_WRAPPER, &tlAnimObjDSGWrapperChunk::Create);

//tlDataChunk::AddChunkPriority(P3D_SKELETON, tlDataChunk::PRIORITY_AFTER, Pure3D::Shader::SHADER);
//tlDataChunk::AddChunkPriority(Pure3D::Animation::AnimationData::ANIMATION, tlDataChunk::PRIORITY_AFTER, P3D_SKELETON);

	tlDataChunk::AddChunkPriority(Simulation::Physics::OBJECT,tlDataChunk::PRIORITY_AFTER, Pure3D::Mesh::MESH);
	tlDataChunk::AddChunkPriority(Simulation::Collision::OBJECT,tlDataChunk::PRIORITY_AFTER, Simulation::Physics::OBJECT);
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::INSTA_ANIM_DYNA_PHYS_DSG, tlDataChunk::PRIORITY_AFTER, Simulation::Collision::OBJECT);
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::ANIM_COLL_DSG, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::INSTA_ANIM_DYNA_PHYS_DSG );

	tlDataChunk::AddChunkPriority(SRR2::ChunkID::ANIM_DSG_WRAPPER, tlDataChunk::PRIORITY_AFTER, Simulation::Collision::OBJECT);
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::OBJECT_ATTRIBUTES, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::ANIM_DSG_WRAPPER);
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::INSTANCES, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::OBJECT_ATTRIBUTES);
	tlDataChunk::AddChunkPriority(SRR2::ChunkID::ANIM_OBJ_DSG_WRAPPER, tlDataChunk::PRIORITY_AFTER, Simulation::Collision::OBJECT);
	
	tlDataChunk::AddChunkPriority(SRR2::ChunkID::WALL, tlDataChunk::PRIORITY_AFTER, P3D_EXPRESSION_MIXER);
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::FENCELINE, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::WALL);
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::INTERSECTION, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::FENCELINE);
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::ROAD_SEGMENT_DATA, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::INTERSECTION);
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::ROAD_SEGMENT, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::ROAD_SEGMENT_DATA);
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::ROAD, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::ROAD_SEGMENT_DATA);
    
	
	tlDataChunk::AddChunkPriority(SRR2::ChunkID::LOCATOR, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::ANIM_DSG );
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::SPLINE, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::LOCATOR);

    tlDataChunk::AddChunkPriority(SRR2::ChunkID::BREAKABLE_OBJECT, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::ANIM_OBJ_DSG_WRAPPER);
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::INST_PARTICLE_SYSTEM, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::BREAKABLE_OBJECT);
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::ANIM_DSG, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::INST_PARTICLE_SYSTEM );

    tlDataChunk::AddChunkPriority(SRR2::ChunkID::PED_PATH, tlDataChunk::PRIORITY_AFTER, P3D_EXPRESSION_MIXER );
    tlDataChunk::AddChunkPriority(SRR2::ChunkID::CHUNK_SET, tlDataChunk::PRIORITY_BEFORE, Pure3D::Shader::SHADER );
    //tlDataChunk::AddChunkPriority(SRR2::ChunkID::EXTRA_MATRIX, tlDataChunk::PRIORITY_AFTER, SRR2::ChunkID::LOCATOR );

}
