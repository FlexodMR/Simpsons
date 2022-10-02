#includeschema( tlImageChunk.sc )

#includehpp( tlImageChunk.hpp )
chunk tlSpriteChunk :
    subchunk( tlImageChunk ),
    chunk_id( Pure3D::Texture::SPRITE )  
{
    string  Name;
    ULONG  NativeX;
    ULONG  NativeY;
    string  Shader;
    ULONG  ImageWidth;
    ULONG  ImageHeight;
    ULONG  ImageCount;
    ULONG  BlitBorder;
}

