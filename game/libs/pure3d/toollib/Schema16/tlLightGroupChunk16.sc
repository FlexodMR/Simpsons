chunk tlLightGroupChunk16 :
    chunk_id( P3D_LIGHT_GROUP )  
{
    string  Name;
    ULONG  NumLights;
    array( string, NumLights )  Lights;
}

