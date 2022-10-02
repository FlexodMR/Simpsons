chunk tlCollisionObjectChunk :
    subchunk( tlCollisionVolumeOwnerChunk ),
    subchunk( tlSelfCollisionChunk ),
    subchunk( tlCollisionVolumeChunk ),
    subchunk( tlCollisionObjectAttributeChunk ),
    chunk_id( Simulation::Collision::OBJECT )  
{
    string  Name;
    ULONG  Version;
    string  StringData;
    ULONG  NumSubObject;
    ULONG  NumOwner;
}

chunk tlCollisionObjectAttributeChunk :
    chunk_id( Simulation::Collision::ATTRIBUTE )  
{
    UWORD  StaticAttribute;
    ULONG  DefaultArea;
    UWORD  CanRoll;
    UWORD  CanSlide;
    UWORD  CanSpin;
    UWORD  CanBounce;
    ULONG  ExtraAttribute1;
    ULONG  ExtraAttribute2;
    ULONG  ExtraAttribute3;
}

chunk tlCollisionVolumeOwnerChunk :
    subchunk( tlCollisionVolumeOwnerNameChunk ),
    chunk_id( Simulation::Collision::OWNER )  
{
    ULONG  NumNames;
}

chunk tlCollisionVolumeOwnerNameChunk :
    chunk_id( Simulation::Collision::OWNERNAME )  
{
    string  Name;
}

chunk tlSelfCollisionChunk :
    chunk_id( Simulation::Collision::SELFCOLLISION )  
{
    ULONG  JointIndex1;
    ULONG  JointIndex2;
    UWORD  SelfOnly1;
    UWORD  SelfOnly2;
}

chunk tlCollisionVolumeChunk :
    subchunk( tlBBoxVolumeChunk ),
    subchunk( tlSphereVolumeChunk ),
    subchunk( tlCylinderVolumeChunk ),
    subchunk( tlOBBoxVolumeChunk ),
    subchunk( tlWallVolumeChunk ),
    subchunk( tlCollisionVolumeChunk ),
    chunk_id( Simulation::Collision::VOLUME )  
{
    ULONG  ObjectReferenceIndex;
    ULONG  OwnerIndex;
    ULONG  NumSubVolume;
}

chunk tlBBoxVolumeChunk :
    chunk_id( Simulation::Collision::BBOX )  
{
    ULONG  Nothing;
}

chunk tlSphereVolumeChunk :
    subchunk( tlCollisionVectorChunk ),
    chunk_id( Simulation::Collision::SPHERE )  
{
    float  SphereRadius;
}

chunk tlCylinderVolumeChunk :
    subchunk( tlCollisionVectorChunk ),
    chunk_id( Simulation::Collision::CYLINDER )  
{
    float  CylinderRadius;
    float  Length;
    UWORD  FlatEnd;
}

chunk tlOBBoxVolumeChunk :
    subchunk( tlCollisionVectorChunk ),
    chunk_id( Simulation::Collision::OBBOX )  
{
    float  Length1;
    float  Length2;
    float  Length3;
}

chunk tlWallVolumeChunk :
    subchunk( tlCollisionVectorChunk ),
    chunk_id( Simulation::Collision::WALL )  
{
}

chunk tlCollisionVectorChunk :
    chunk_id( Simulation::Collision::VECTOR )  
{
    float  X;
    float  Y;
    float  Z;
}

