chunk tlEntityChannelChunk16 :
    chunk_id( P3D_ENTITY_ANIM_CHANNEL )  
{
    ULONG  NumFrames;
    array( UWORD, NumFrames )  Times;
    array( string, NumFrames )  Names;
}

