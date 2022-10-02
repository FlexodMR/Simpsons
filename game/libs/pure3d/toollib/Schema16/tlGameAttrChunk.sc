#includehpp( tlMatrix.hpp )
#includehpp( tlPoint.hpp )

#declaretype( tlMatrix )
#declaretype( tlPoint )

chunk tlGameAttrChunk :
    subchunk( tlGameAttrIntParamChunk ),
    subchunk( tlGameAttrFloatParamChunk ),
    subchunk( tlGameAttrColourParamChunk ),
    subchunk( tlGameAttrVectorParamChunk ),
    subchunk( tlGameAttrMatrixParamChunk ),
    chunk_id( Pure3D::GameAttr::GAME_ATTR )  
{
    string  Name;
    ULONG  Version;
    ULONG  NumParams;
}

chunk tlGameAttrIntParamChunk :
    chunk_id( Pure3D::GameAttr::INT_PARAM )  
{
    string  ParamName;
    ULONG  Value;
}

chunk tlGameAttrFloatParamChunk :
    chunk_id( Pure3D::GameAttr::FLOAT_PARAM )  
{
    string  ParamName;
    float  Value;
}

chunk tlGameAttrColourParamChunk :
    chunk_id( Pure3D::GameAttr::COLOUR_PARAM )  
{
    string  ParamName;
    COLOUR  Value;
}

chunk tlGameAttrVectorParamChunk :
    chunk_id( Pure3D::GameAttr::VECTOR_PARAM )  
{
    string  ParamName;
    tlPoint  Value;
}

chunk tlGameAttrMatrixParamChunk :
    chunk_id( Pure3D::GameAttr::MATRIX_PARAM )  
{
    string  ParamName;
    tlMatrix  Value;
}

