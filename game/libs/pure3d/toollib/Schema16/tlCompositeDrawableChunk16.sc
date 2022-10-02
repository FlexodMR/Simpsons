chunk tlCompositeDrawableChunk16 :
    subchunk( tlCompositeDrawableSkinListChunk16 ),
    subchunk( tlCompositeDrawablePropListChunk16 ),
    subchunk( tlCompositeDrawableEffectListChunk16 ),
    chunk_id( P3D_COMPOSITE_DRAWABLE )  
{
    string  Name;
    string  SkeletonName;
}

chunk tlCompositeDrawableSkinListChunk16 :
    subchunk( tlCompositeDrawableSkinChunk16 ),
    chunk_id( P3D_COMPOSITE_DRAWABLE_SKIN_LIST )  
{
    ULONG  NumElements;
}

chunk tlCompositeDrawablePropListChunk16 :
    subchunk( tlCompositeDrawablePropChunk16 ),
    chunk_id( P3D_COMPOSITE_DRAWABLE_PROP_LIST )  
{
    ULONG  NumElements;
}

chunk tlCompositeDrawableSkinChunk16 :
    subchunk( tlCompositeDrawableSortOrderChunk16 ),
    chunk_id( P3D_COMPOSITE_DRAWABLE_SKIN )  
{
    string  Name;
    ULONG  IsTranslucent;
}

chunk tlCompositeDrawablePropChunk16 :
    subchunk( tlCompositeDrawableSortOrderChunk16 ),
    chunk_id( P3D_COMPOSITE_DRAWABLE_PROP )  
{
    string  Name;
    ULONG  IsTranslucent;
    ULONG  SkeletonJointID;
}

chunk tlCompositeDrawableEffectListChunk16 :
    subchunk( tlCompositeDrawableEffectChunk16 ),
    chunk_id( P3D_COMPOSITE_DRAWABLE_EFFECT_LIST )  
{
    ULONG  NumElements;
}

chunk tlCompositeDrawableEffectChunk16 :
    subchunk( tlCompositeDrawableSortOrderChunk16 ),
    chunk_id( P3D_COMPOSITE_DRAWABLE_EFFECT )  
{
    string  Name;
    ULONG  IsTranslucent;
    ULONG  SkeletonJointID;
}

chunk tlCompositeDrawableSortOrderChunk16 :
    chunk_id( P3D_COMPOSITE_DRAWABLE_SORTORDER )  
{
    float  SortOrder;
}

