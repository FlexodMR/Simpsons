chunk tlImageDataChunk :
    chunk_id( Pure3D::Texture::IMAGE_DATA )  
{
    ULONG  ImageDataSize;
    array( UBYTE, ImageDataSize )  ImageData;
}

chunk tlImageFileNameChunk :
    chunk_id( Pure3D::Texture::IMAGE_FILENAME )  
{
    string  FileName;
}

chunk tlImageChunk :
    subchunk( tlImageDataChunk ),
    subchunk( tlImageFileNameChunk ),
    chunk_id( Pure3D::Texture::IMAGE )  
{
    string  Name;
    ULONG  Version;
    ULONG  Width;
    ULONG  Height;
    ULONG  Bpp;
    ULONG  Palettized;
    ULONG  HasAlpha;
    ULONG  Format;
}

chunk tlVolumeImageChunk :
    subchunk( tlImageChunk ),
    chunk_id( Pure3D::Texture::VOLUME_IMAGE )  
{
    string  Name;
    ULONG  Version;
    ULONG  Width;
    ULONG  Height;
    ULONG  Depth;
    ULONG  Bpp;
    ULONG  Palettized;
    ULONG  HasAlpha;
    ULONG  Format;
}

