
class tlPoint;

chunk tlLightChunk :
	chunk_id(Pure3D::Light::LIGHT),
	subchunk(tlLightDirectionChunk),
	subchunk(tlLightConeParamChunk),
	subchunk(tlLightPositionChunk),
	subchunk(tlLightShadowChunk),
	includehpp(tlPoint.hpp)
{
   string Name;
   
   unsigned Version;
   
   unsigned Type;

   colour Colour;

   float Constant;   //attenuation info
   float Linear;
   float Squared;

   unsigned Enabled;
}

chunk tlLightDirectionChunk :
	chunk_id( Pure3D::Light::DIRECTION )
{
   tlPoint Direction;
}

chunk tlLightPositionChunk :
	chunk_id(Pure3D::Light::POSITION)
{
   tlPoint Position;
}

chunk tlLightConeParamChunk :
	chunk_id(Pure3D::Light::CONE_PARAM) 
{
   float Phi;
   float Theta;
   float Falloff;
   float Range;
}

chunk tlLightShadowChunk :
	chunk_id(Pure3D::Light::SHADOW)
{
   unsigned Shadow;
}