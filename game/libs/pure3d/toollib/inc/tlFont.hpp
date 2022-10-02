/*===========================================================================
    File:: tlFont.hpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
#ifndef _TLFONT_HPP
#define _TLFONT_HPP

#include "tlEntity.hpp"
#include "tlLoadManager.hpp"
#include "tlTable.hpp"
#include "tlColour.hpp"
#include "tlImage.hpp"
#include <assert.h>

struct FT_LibraryRec_;
struct FT_FaceRec_;

class tlTexture;
class tlShader;
class tlDataChunk;
class tlTextureFont;
class tlImageFont;

struct tlTextureGlyph;
struct tlImageGlyph;

//*****************************************************************************
// tlTypeFace
//*****************************************************************************
class tlTypeFace
{
public:
    struct tlTypeFaceGlyph 
    {
        tlTypeFaceGlyph() : preloaded(false), bearingX(0), bearingY(0), width(0), height(0), advance(0), code(0) {}

        bool           preloaded; // whether or not this is a pre-loaded character
        short          bearingX;  // x spacing
        short          bearingY;  // y spacing
        unsigned short width;     // width of glyph
        unsigned short height;    // height of glyph
        unsigned short advance;   // total space to move cursor
        unsigned int   code;      // character code
        tlImage        bitmap;    // bitmap of character
    };
    
    tlTypeFace(const char* filename);
    ~tlTypeFace();

    bool IsOK()                                         { return !errorFlag; }
    
    void SetFontFile(const char* filename);
    const char* GetFontFile() const                     { return fontName; }

    void SetFontSize(unsigned int size);
    unsigned int GetFontSize() const                    { return fontSize; }
    unsigned int GetFontWidth() const                   { return fontWidth; }
    unsigned int GetFontHeight() const                  { return fontHeight; }
    unsigned int GetFontBaseLine() const                { return fontBaseLine; }

    void LoadCharacter(unsigned int code, unsigned short leftBearing, unsigned short rightBearing, unsigned short baseLine, const char* filename, bool force = true);
    void AddCharacter(unsigned int code, bool force = true);
    void DeleteCharacter(unsigned int code);
    void AddDefaultCharacters(bool force = true);
    void DeleteAllCharacters();
   
    void SetBlitBorder(unsigned int b)                  { blitBorder = b; }
    unsigned int GetBlitBorder() const                  { return blitBorder; }

    void SetFourBit(bool f = true);
    bool GetFourBit() const                             { return fourBit; }

    void SetAntiAlias(bool a = true);
    bool GetAntiAlias() const                           { return antiAlias; }

    void SetAlphaBlending(bool a = true);
    bool GetAlphaBlending() const                       { return alphaBlend; }
    
    void SetForeGroundColour(tlColour colour)           { foreground = colour; }
    tlColour GetForeGroundColour() const                { return foreground; }

    void SetBackGroundColour(tlColour colour)           { background = colour; }
    tlColour GetBackGroundColour() const                { return background; }

    // if letters are creeping onto other letters then enable safe packing
    // it'll use up more space but the letters shouldn't intrude on each other
    void SetSafeGlyphPacking(bool enable)               { safePack = enable; }
    bool GetSafeGlyphPacking() const                    { return safePack; }

    tlTextureFont* CreateTextureFont(unsigned int width, unsigned int height);
    tlImageFont* CreateImageFont();

    static unsigned int* AsciiToUnicode(const char* str);

protected:
    tlTypeFace()                                        { assert(0); }
    tlTypeFace(const tlTypeFace&)                       { assert(0); }    

    void CreateLookUpTable();
    void LoadGlyphs();
    tlTypeFaceGlyph* FindGlyph(unsigned int code);
    
    FT_LibraryRec_*             library;
    FT_FaceRec_*                face;
    bool                        errorFlag;
    bool                        safePack;
    char*                       fileName;
    char*                       fontName;
    unsigned int                fontSize;
    unsigned int                fontWidth;   // max width of any glyph
    unsigned int                fontHeight; 
    unsigned int                fontBaseLine;
    unsigned int                blitBorder;
    bool                        fourBit;
    bool                        antiAlias;
    bool                        alphaBlend;
    tlColour                    foreground;
    tlColour                    background;
    unsigned char               bitLookUp[256][8];
    tlTable<tlTypeFaceGlyph*>   glyphs;
};

//*****************************************************************************
// tlTextureFont
//*****************************************************************************
class tlTextureFont : public tlEntity
{  
public:
    tlTextureFont(tlDataChunk* ch);
    ~tlTextureFont();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch)                   { assert(0); }
    tlDataChunk* Chunk16()                                  { assert(0); return NULL; }

    const char* GetShader() const                           { return shader; }
    void SetShader(const char* shader);

    unsigned int GetFontSize() const                        { return fontSize; }
    unsigned int GetFontWidth() const                       { return fontWidth; }
    unsigned int GetFontHeight() const                      { return fontHeight; }
    unsigned int GetFontBaseLine() const                    { return fontBaseLine; }

    unsigned int GetNumGlyphTextures() const                { return (unsigned int)glyphTextures.Count(); }
    tlTexture* GetGlyphTexture(unsigned int index) const;

    unsigned int GetNumGlyphs() const                       { return numGlyphs; }
    tlTextureGlyph* GetGlyph(unsigned int index) const;
    tlTextureGlyph* FindGlyph(unsigned int code) const;

    tlImage* DisplayTextLine(const unsigned int* text) const;

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

    friend class tlTypeFace;
    friend class tlFontLoader;

protected:
    tlTextureFont();

    char*                       shader;
    unsigned int                fontSize;
    unsigned int                fontWidth;   // max width of any glyph
    unsigned int                fontHeight; 
    unsigned int                fontBaseLine;
    unsigned int                numGlyphs;
    tlTextureGlyph*             glyphs;
    tlTable<tlTexture*>         glyphTextures;
    
    // reference pointers
    tlShader*                   shaderPtr;
};

//*****************************************************************************
// tlImageFont
//*****************************************************************************
class tlImageFont : public tlEntity
{ 
public:
    tlImageFont(tlDataChunk* ch);
    ~tlImageFont();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch)               { assert(0); }
    tlDataChunk* Chunk16()                              { assert(0); return NULL; }

    unsigned int GetFontSize() const                    { return fontSize; }
    unsigned int GetFontWidth() const                   { return fontWidth; }
    unsigned int GetFontHeight() const                  { return fontHeight; }
    unsigned int GetFontBaseLine() const                { return fontBaseLine; }

    tlImage* GetGlyphImage() const                      { return glyphImage; }

    unsigned int GetNumGlyphs() const                   { return numGlyphs; }
    tlImageGlyph* GetGlyph(unsigned int index) const;
    tlImageGlyph* FindGlyph(unsigned int code) const;

    friend class tlTypeFace;
    friend class tlFontLoader;

protected:
    tlImageFont();

    unsigned int    fontSize;
    unsigned int    fontWidth;   // max width of any glyph
    unsigned int    fontHeight; 
    unsigned int    fontBaseLine;
    unsigned int    numGlyphs;
    tlImageGlyph*   glyphs;
    tlImage*        glyphImage;
};

//*****************************************************************************
// tlFontLoader
//*****************************************************************************
class tlFontLoader : public tlEntityLoader
{
public:
    tlFontLoader();

    virtual bool CheckChunkID(unsigned chunkID);    

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif

