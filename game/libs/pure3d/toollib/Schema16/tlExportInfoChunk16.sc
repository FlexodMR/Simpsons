chunk tlExportInfoNamedIntChunk16 :
    chunk_id( P3D_EXPORT_NAMED_INT )  
{
    string  Name;
    ULONG  Value;
}

chunk tlExportInfoNamedStringChunk16 :
    chunk_id( P3D_EXPORT_NAMED_STRING )  
{
    string  Name;
    string  Value;
}

chunk tlExportInfoChunk16 :
    subchunk( tlExportInfoNamedIntChunk16 ),
    subchunk( tlExportInfoNamedStringChunk16 ),
    chunk_id( P3D_EXPORT_INFO )  
{
    string  Name;
}

