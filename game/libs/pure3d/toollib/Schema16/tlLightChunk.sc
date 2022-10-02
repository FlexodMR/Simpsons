#includehpp( tlPoint.hpp )

#declaretype( tlPoint )

chunk tlLightChunk :
    subchunk( tlLightDirectionChunk ),
    subchunk( tlLightConeParamChunk ),
    subchunk( tlLightPositionChunk ),
    subchunk( tlLightShadowChunk ),
    subchunk( tlLightDecayRangeChunk ),
    subchunk( tlLightIlluminationTypeChunk ),
    chunk_id( Pure3D::Light::LIGHT )  
{
    string  Name;
    ULONG  Version;
    ULONG  Type;
    COLOUR  Colour;
    float  Constant;
    float  Linear;
    float  Squared;
    ULONG  Enabled;
}

chunk tlLightDirectionChunk :
    chunk_id( Pure3D::Light::DIRECTION )  
{
    tlPoint  Direction;
}

chunk tlLightPositionChunk :
    chunk_id( Pure3D::Light::POSITION )  
{
    tlPoint  Position;
}

chunk tlLightConeParamChunk :
    chunk_id( Pure3D::Light::CONE_PARAM )  
{
    float  Phi;
    float  Theta;
    float  Falloff;
    float  Range;
}

chunk tlLightShadowChunk :
    chunk_id( Pure3D::Light::SHADOW )  
{
    ULONG  Shadow;
}

chunk tlLightDecayRangeRotationYChunk :
    chunk_id( Pure3D::Light::DECAY_RANGE_ROTATION_Y )
{
    float RotationY;
}

chunk tlLightDecayRangeChunk :
    subchunk( tlLightDecayRangeRotationYChunk ),
    chunk_id( Pure3D::Light::DECAY_RANGE )  
{
    ULONG  DecayRangeType;
    tlPoint  Inner;
    tlPoint  Outer;
}

chunk tlLightIlluminationTypeChunk :
    subchunk( tlLightIlluminationTypeChunk ),
    chunk_id( Pure3D::Light::ILLUMINATION_TYPE )  
{
   ULONG IlluminationType;
}


