#includehpp( tlColour.hpp )
#includehpp( tlPoint.hpp )

#declaretype( tlColour )
#declaretype( tlPoint )

chunk tlScroobyProjectChunk :
    subchunk( tlScroobyPageChunk ),
    subchunk( tlScroobyScreenChunk ),
    chunk_id( Pure3D::Scrooby::PROJECT )  
{
    string  Name;
    ULONG  Version;
    ULONG  ResolutionX;
    ULONG  ResolutionY;
    string  Platform;
    string  PagePath;
    string  ResourcePath;
    string  ScreenPath;
}

chunk tlScroobyScreenChunk :
    chunk_id( Pure3D::Scrooby::SCREEN )  
{
    string  Name;
    ULONG  Version;
    ULONG  NumberOfPages;
    array( string, NumberOfPages )  PageNames;
}

chunk tlScroobyPageChunk :
    subchunk( tlScroobyLayerChunk ),
    subchunk( tlScroobyImageResourceChunk ),
    subchunk( tlScroobyPure3dResourceChunk ),
    subchunk( tlScroobyTextStyleResourceChunk ),
    subchunk( tlScroobyTextBibleResourceChunk ),
    chunk_id( Pure3D::Scrooby::PAGE )  
{
    string  Name;
    ULONG  Version;
    ULONG  ResolutionX;
    ULONG  ResolutionY;
}

chunk tlScroobyLayerChunk :
    subchunk( tlScroobyGroupChunk ),
    subchunk( tlScroobyMultiTextChunk ),
    subchunk( tlScroobyMultiSpriteChunk ),
    subchunk( tlScroobyPolygonChunk ),
    subchunk( tlScroobyPure3dObjectChunk ),
    chunk_id( Pure3D::Scrooby::LAYER )  
{
    string  Name;
    ULONG  Version;
    ULONG  Visible;
    ULONG  Editable;
    ULONG  Alpha;
}

chunk tlScroobyStringTextBibleChunk :
    chunk_id( Pure3D::Scrooby::STRINGTEXTBIBLE )  
{
    string  BibleName;
    string  StringId;
}

chunk tlScroobyStringHardCodedChunk :
    chunk_id( Pure3D::Scrooby::STRINGHARDCODED )  
{
    string  String;
}

chunk tlScroobyMultiTextChunk :
    subchunk( tlScroobyStringTextBibleChunk ),
    subchunk( tlScroobyStringHardCodedChunk ),
    chunk_id( Pure3D::Scrooby::MULTITEXT )  
{
    string  Name;
    ULONG  Version;
    ULONG  PositionX;
    ULONG  PositionY;
    ULONG  DimensionX;
    ULONG  DimensionY;
    ULONG  JustificationX;
    ULONG  JustificationY;
    COLOUR  Color;
    ULONG  Translucency;
    float  RotationValue;
    string  TextStyleName;
    UBYTE  ShadowEnabled;
    COLOUR  ShadowColour;
    ULONG  ShadowOffsetX;
    ULONG  ShadowOffsetY;
    ULONG  CurrentText;
}

chunk tlScroobyMultiSpriteChunk :
    chunk_id( Pure3D::Scrooby::MULTISPRITE )  
{
    string  Name;
    ULONG  Version;
    ULONG  PositionX;
    ULONG  PositionY;
    ULONG  DimensionX;
    ULONG  DimensionY;
    ULONG  JustificationX;
    ULONG  JustificationY;
    COLOUR  Color;
    ULONG  Translucency;
    float  RotationValue;
    ULONG  NumberOfImages;
    array( string, NumberOfImages )  ImageNames;
}

chunk tlScroobyPolygonChunk :
    chunk_id( Pure3D::Scrooby::POLYGON )  
{
    string  Name;
    ULONG  Version;
    ULONG  Translucency;
    ULONG  NumPoints;
    array( tlPoint, NumPoints )  Points;
    array( tlColour, NumPoints )  Colors;
}

chunk tlScroobyGroupChunk :
    subchunk( tlScroobyGroupChunk ),
    subchunk( tlScroobyMultiSpriteChunk ),
    subchunk( tlScroobyMultiTextChunk ),
    subchunk( tlScroobyPolygonChunk ),
    subchunk( tlScroobyPure3dObjectChunk ),
    chunk_id( Pure3D::Scrooby::GROUP )  
{
    string  Name;
    ULONG  Version;
    ULONG  Alpha;
}

chunk tlScroobyPure3dObjectChunk :
    chunk_id( Pure3D::Scrooby::P3DOBJECT )  
{
    string  Name;
    ULONG  Version;
    ULONG  PositionX;
    ULONG  PositionY;
    ULONG  DimensionX;
    ULONG  DimensionY;
    ULONG  JustificationX;
    ULONG  JustificationY;
    COLOUR  Color;
    ULONG  Translucency;
    float  RotationValue;
    string  Pure3dFilename;
}

chunk tlScroobyTextBibleChunk :
    subchunk( tlScroobyLanguageChunk ),
    chunk_id( Pure3D::Scrooby::TEXTBIBLE )  
{
    string  Name;
    ULONG  NumLanguages;
    string  Languages;
}

chunk tlScroobyLanguageChunk :
    chunk_id( Pure3D::Scrooby::LANGUAGE )  
{
    string  Name;
    UBYTE  Language;
    ULONG  NumStrings;
    ULONG  Modulo;
    ULONG  SizeOfBuffer;
    array( ULONG, NumStrings )  Hashes;
    array( ULONG, NumStrings )  Offsets;
    array( UBYTE, SizeOfBuffer )  Buffer;
}

chunk tlScroobyImageResourceChunk :
    chunk_id( Pure3D::Scrooby::RESOURCEIMAGE )  
{
    string  Name;
    ULONG  Version;
    string  Filename;
}

chunk tlScroobyPure3dResourceChunk :
    chunk_id( Pure3D::Scrooby::RESOURCEPURE3D )  
{
    string  Name;
    ULONG  Version;
    string  Filename;
    string  InventoryName;
    string  CameraName;
    string  AnimationName;
}

chunk tlScroobyTextStyleResourceChunk :
    chunk_id( Pure3D::Scrooby::RESOURCETEXTSTYLE )  
{
    string  Name;
    ULONG  Version;
    string  Filename;
    string  InventoryName;
}

chunk tlScroobyTextBibleResourceChunk :
    chunk_id( Pure3D::Scrooby::RESOURCETEXTBIBLE )  
{
    string  Name;
    ULONG  Version;
    string  Filename;
    string  InventoryName;
}

chunk tlScroobyTextStyleResourceChunk16 :
    chunk_id( Pure3D::Scrooby::OLDRESOURCETEXTSTYLE )  
{
    string  Name;
    ULONG  Version;
    string  Filename;
}

chunk tlScroobyTextBibleResourceChunk16 :
    chunk_id( Pure3D::Scrooby::OLDRESOURCETEXTBIBLE )  
{
    string  Name;
    ULONG  Version;
    string  Filename;
}

