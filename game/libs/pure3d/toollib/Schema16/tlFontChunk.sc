#includeschema( tlTextureChunk.sc )
#includeschema( tlImageChunk.sc )

#includehpp( tlTextureChunk.hpp )
#includehpp( tlImageChunk.hpp )
#includehpp( tlUV.hpp )

#declaretype( tlUV )

struct tlTextureGlyph
{
    ULONG TextureNum;

    tlUV BottomLeft;

    tlUV TopRight;

    float LeftBearing;

    float RightBearing;

    float Width;

    float Advance;

    ULONG Code;

}

struct tlImageGlyph
{
    UWORD XOrigin;

    UWORD LeftBearing;

    UWORD RightBearing;

    UWORD Width;

    UWORD Advance;

    ULONG Code;

}

chunk tlTextureFontChunk :
    subchunk( tlTextureChunk ),
    subchunk( tlTextureGlyphListChunk ),
    chunk_id( Pure3D::Font::TEXTURE_FONT )  
{
    ULONG  Version;
    string  Name;
    string  Shader;
    float  FontSize;
    float  FontWidth;
    float  FontHeight;
    float  FontBaseLine;
    ULONG  NumTextures;
}

chunk tlTextureGlyphListChunk :
    chunk_id( Pure3D::Font::TEXTURE_GLYPH_LIST )  
{
    ULONG  NumGlyphs;
    array( tlTextureGlyph, NumGlyphs )  Glyphs;
}

chunk tlImageFontChunk :
    subchunk( tlImageChunk ),
    subchunk( tlImageGlyphListChunk ),
    chunk_id( Pure3D::Font::IMAGE_FONT )  
{
    ULONG  Version;
    string  Name;
    ULONG  FontSize;
    ULONG  FontWidth;
    ULONG  FontHeight;
    ULONG  FontBaseLine;
}

chunk tlImageGlyphListChunk :
    chunk_id( Pure3D::Font::IMAGE_GLYPH_LIST )  
{
    ULONG  NumGlyphs;
    array( tlImageGlyph, NumGlyphs )  Glyphs;
}

