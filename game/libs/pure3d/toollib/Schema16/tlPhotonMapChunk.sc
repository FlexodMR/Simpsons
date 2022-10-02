#includehpp( tlPhotonMap.hpp )

#declaretype( tlPhoton )

chunk tlPhotonMapChunk :
    chunk_id( Pure3D::Light::PHOTON_MAP )  
{
    string  Name;
    ULONG  Version;
    ULONG  NumLights;
    array( string, NumLights )  Lights;
    array( float, NumLights )  LightScales;
    ULONG  NumPhotons;
    array( tlPhoton, NumPhotons )  Photons;
}

