chunk tlExpressionChunk :
    chunk_id( Pure3D::Expression::VERTEX_EXPRESSION )  
{
    ULONG  Version;
    string  Name;
    ULONG  NumKeys;
    array( float, NumKeys )  Keys;
    array( ULONG, NumKeys )  Indices;
}

chunk tlExpressionGroupChunk :
    subchunk( tlExpressionChunk ),
    chunk_id( Pure3D::Expression::VERTEX_EXPRESSION_GROUP )  
{
    ULONG  Version;
    string  Name;
    string  TargetName;
    ULONG  NumExpressions;
    array( ULONG, NumExpressions )  Stages;
}

chunk tlExpressionMixerChunk :
    chunk_id( Pure3D::Expression::VERTEX_EXPRESSION_MIXER )  
{
    ULONG  Version;
    string  Name;
    ULONG  Type;
    string  TargetName;
    string  ExpressionGroupName;
}

