#includehpp( tlMatrix.hpp )
#includehpp( tlPoint.hpp )
#includehpp( tlFourCC.hpp )

#declaretype( tlMatrix )
#declaretype( tlPoint )

chunk tlShaderChunk :
    subchunk( tlShaderDefinitionChunk ),
    subchunk( tlShaderTextureParamChunk ),
    subchunk( tlShaderIntParamChunk ),
    subchunk( tlShaderFloatParamChunk ),
    subchunk( tlShaderColourParamChunk ),
    subchunk( tlShaderVectorParamChunk ),
    subchunk( tlShaderMatrixParamChunk ),
    chunk_id( Pure3D::Shader::SHADER )  
{
    string  Name;
    ULONG  Version;
    string  PddiShaderName;
    ULONG  HasTranslucency;
    ULONG  VertexNeeds;
    ULONG  VertexMask;
    ULONG  NumParams;
}

chunk tlShaderDefinitionChunk :
    chunk_id( Pure3D::Shader::SHADER_DEFINITION )  
{
    string  Name;
    longstring  Definition;
}

chunk tlShaderTextureParamChunk :
    chunk_id( Pure3D::Shader::TEXTURE_PARAM )  
{
    FOURCC  Param;
    string  Value;
}

chunk tlShaderIntParamChunk :
    chunk_id( Pure3D::Shader::INT_PARAM )  
{
    FOURCC  Param;
    ULONG  Value;
}

chunk tlShaderFloatParamChunk :
    chunk_id( Pure3D::Shader::FLOAT_PARAM )  
{
    FOURCC  Param;
    float  Value;
}

chunk tlShaderColourParamChunk :
    chunk_id( Pure3D::Shader::COLOUR_PARAM )  
{
    FOURCC  Param;
    COLOUR  Value;
}

chunk tlShaderVectorParamChunk :
    chunk_id( Pure3D::Shader::VECTOR_PARAM )  
{
    FOURCC  Param;
    tlPoint  Value;
}

chunk tlShaderMatrixParamChunk :
    chunk_id( Pure3D::Shader::MATRIX_PARAM )  
{
    FOURCC  Param;
    tlMatrix  Value;
}

