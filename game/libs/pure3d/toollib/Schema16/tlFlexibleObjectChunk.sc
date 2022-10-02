struct FlexibleParticlePosData
{
    float x;

    float y;

    float z;

}

struct FlexibleObjectTriMapData
{
    UWORD v1;

    UWORD v2;

    UWORD v3;

}

struct FlexibleObjectEdgeMapData
{
    UWORD v1;

    UWORD v2;

}

chunk tlFlexibleObjectChunk :
    subchunk( tlFlexibleObjectFixParticleChunk ),
    subchunk( tlFlexibleObjectMapToVLChunk ),
    subchunk( tlFlexibleObjectTriMapChunk ),
    subchunk( tlFlexibleObjectEdgeMapChunk ),
    subchunk( tlFlexibleObjectEdgeLengthChunk ),
    subchunk( tlFlexibleObjectParamChunk ),
    subchunk( tlFlexibleLambdaObjectParamChunk ),
    chunk_id( Simulation::Flexible::OBJECT )  
{
    string  Name;
    ULONG  Version;
    UWORD  Dimension;
    float  ExternalDensityFactor;
    UWORD  Solver;
    UWORD  NbParticle;
    array( FlexibleParticlePosData, NbParticle )  FlexibleParticlePos;
    UWORD  NbPGM;
    array( UWORD, NbPGM )  PGMNbVertex;
}

chunk tlFlexibleObjectFixParticleChunk :
    chunk_id( Simulation::Flexible::FIX_PARTICLE )  
{
    UWORD  FixParticleCount;
    array( UWORD, FixParticleCount )  FixParticle;
}

chunk tlFlexibleObjectMapToVLChunk :
    chunk_id( Simulation::Flexible::MAP_VL )  
{
    UWORD  VCount;
    array( UWORD, VCount )  MapToVL;
}

chunk tlFlexibleObjectTriMapChunk :
    chunk_id( Simulation::Flexible::TRI_MAP )  
{
    UWORD  TriMapCount;
    array( FlexibleObjectTriMapData, TriMapCount )  TriMap;
}

chunk tlFlexibleObjectEdgeMapChunk :
    chunk_id( Simulation::Flexible::EDGE_MAP )  
{
    UWORD  EdgeMapCount;
    array( FlexibleObjectEdgeMapData, EdgeMapCount )  EdgeMap;
}

chunk tlFlexibleObjectEdgeLengthChunk :
    chunk_id( Simulation::Flexible::EDGE_LEN )  
{
    UWORD  EdgeLengthCount;
    array( float, EdgeLengthCount )  EdgeLength;
}

chunk tlFlexibleObjectParamChunk :
    chunk_id( Simulation::Flexible::OBJECT_PARAMETERS )  
{
    float  Stretch1Dkf;
    float  Stretch1Dkd;
    float  Bend1Dkf;
    float  Bend1Dkd;
    float  Wind1DKf;
    float  Stretch2Dkf;
    float  Stretch2Dkd;
    float  Shear2Dkf;
    float  Shear2Dkd;
    float  Bend2Dkf;
    float  Bend2Dkd;
    float  Wind2DKf;
}

chunk tlFlexibleLambdaObjectParamChunk :
    chunk_id( Simulation::Flexible::OBJECT_LAMBDA )  
{
    string  Name;
    float  LambdaF;
    float  LambdaD;
    float  KappaF;
    float  KappaD;
    float  IotaF;
    float  IotaD;
    float  Wind1DKf;
    float  Wind2DKf;
}

