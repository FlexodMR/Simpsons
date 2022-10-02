chunk tlCompositeSkinChunk16 :
    subchunk( tlCompoundMeshNodeChunk16 ),
    subchunk( tlCompositeSkinPropList16 ),
    chunk_id( P3D_COMPOSITE_SKIN )  
{
    string  Name;
    string  SkeletonName;
}

chunk tlCompoundMeshNodeChunk16 :
    chunk_id( P3D_COMPOSITE_SKIN_SUBSKIN_LIST )  
{
    ULONG  NumElements;
}

chunk tlCompositeSkinPropList16 :
    chunk_id( P3D_COMPOSITE_SKIN_PROP_LIST )  
{
    ULONG  NumElements;
}

chunk tlCompositeSkinProp :
    chunk_id( P3D_COMPOSITE_SKIN_SUBSKIN )  
{
    string  Name;
}

chunk tlCompositeSkinProp :
    chunk_id( P3D_COMPOSITE_SKIN_PROP )  
{
    string  Name;
    ULONG  SkeletonJointID;
}

