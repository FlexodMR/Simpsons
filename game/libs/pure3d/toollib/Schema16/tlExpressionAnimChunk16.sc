#includeschema( tlVertexOffsetExpressionChunk16.sc )

#includehpp( tlVertexOffsetExpressionChunk16.hpp )
chunk tlExpressionGroupChunk16 :
    subchunk( tlVertexOffsetExpressionChunk16 ),
    chunk_id( P3D_EXPRESSION_GROUP )  
{
    string  Name;
    ULONG  Version;
    string  TargetName;
    ULONG  NumExpression;
    ULONG  NumPreset;
    array( ULONG, NumExpression )  Stages;
}

chunk tlExpressionAnimChannelChunk16 :
    chunk_id( P3D_EXPRESSION_ANIM_CHANNEL )  
{
    string  Name;
    ULONG  Version;
    string  ExpressionName;
    ULONG  NumKeys;
    array( UWORD, NumKeys )  TimeIndex;
    array( float, NumKeys )  StateKeys;
    array( float, NumKeys )  WeightKeys;
}

chunk tlExpressionAnimChunk16 :
    subchunk( tlExpressionAnimChannelChunk16 ),
    chunk_id( P3D_EXPRESSION_ANIM )  
{
    string  Name;
    ULONG  Version;
    ULONG  NumFrames;
    float  FrameRate;
    ULONG  Cyclic;
    ULONG  NumChannel;
}

chunk tlExpressionMixerChunk16 :
    chunk_id( P3D_EXPRESSION_MIXER )  
{
    string  Name;
    ULONG  Version;
    ULONG  Type;
    string  TargetName;
    string  ExpressionGroupName;
}

