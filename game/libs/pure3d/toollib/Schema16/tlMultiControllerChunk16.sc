struct tlMultiControllerTrackData
{
    string Name;

    float StartTime;

    float EndTime;

    float Scale;

}

chunk tlMultiControllerChunk16 :
    subchunk( tlMultiControllerTracksChunk16 ),
    subchunk( tlMultiControllerTrackChunk16 ),
    chunk_id( P3D_MULTI_CONTROLLER )  
{
    string  Name;
    ULONG  Version;
    float  Length;
    float  Framerate;
    ULONG  NumTracks;
}

chunk tlMultiControllerTracksChunk16 :
    chunk_id( P3D_MULTI_CONTROLLER_TRACKS )  
{
    ULONG  NumTracks;
    array( tlMultiControllerTrackData, NumTracks )  Tracks;
}

chunk tlMultiControllerTrackChunk16 :
    chunk_id( P3D_MULTI_CONTROLLER_TRACK )  
{
    string  Name;
    float  StartTime;
    float  EndTime;
    float  Scale;
}

