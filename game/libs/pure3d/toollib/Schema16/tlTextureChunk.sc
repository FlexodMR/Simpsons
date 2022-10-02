#includeschema( tlImageChunk.sc )

#includehpp( tlImageChunk.hpp )
chunk tlTextureChunk :
    subchunk( tlImageChunk ),
    subchunk( tlVolumeImageChunk ),
    chunk_id( Pure3D::Texture::TEXTURE )  
{
    string  Name;
    ULONG  Version;
    ULONG  Width;
    ULONG  Height;
    ULONG  Bpp;
    ULONG  AlphaDepth;
    ULONG  NumMipMaps;
    ULONG  TextureType;
    ULONG  Usage;
    ULONG  Priority;
}

