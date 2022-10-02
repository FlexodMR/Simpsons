/*===========================================================================
    File:: tlFont.cpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
#include <freetype.h>
#include <ftsystem.h>
#include <fterrors.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "tlFont.hpp"
#include "tlFontChunk.hpp"    // for tlFontGlyphData
#include "tlTexture.hpp"
#include "tlShader.hpp"
#include "tlString.hpp"
#include "tlInventory.hpp"

static const unsigned TEXTURE_FONT_VERSION = 0;
static const unsigned IMAGE_FONT_VERSION = 0;

const unsigned int BACKGROUND_GLYPH_CODE = 0;

static char ALL_CHARS[] = " `~!@#$%^&*()_-+=|\\{}[]';\":/?.>,<1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM";

inline bool ispow2(unsigned int i)
{
    while (i > 0)
    {
        if ( (i & 1) && (i != 1) ) 
        {
            return false;
        }
        i >>= 1;
    }
    return true;
}

inline int findnextpow2(int i)
{
    int shift = 0;
    while(i != 1)
    {
        i >>= 1;
        shift++;
    }

    return 1 << (shift + 1);
}

int Compare( const void *arg1, const void *arg2 )
{
    unsigned int* a= (unsigned int*) arg1;
    unsigned int* b= (unsigned int*) arg2;
    if (*a<*b)
        return -1;
    if (*a>*b)
        return 1;
    return 0;
}

//*****************************************************************************
// tlTypeFace
//*****************************************************************************
tlTypeFace::tlTypeFace(const char* filename) :
    library(NULL),
    face(NULL),
    errorFlag(false),
    safePack(true),
    fileName(NULL),
    fontName(NULL),
    fontSize(12),
    fontWidth(12),
    fontHeight(12),
    fontBaseLine(9),
    blitBorder(1),
    fourBit(false),
    antiAlias(true),
    alphaBlend(true),
    foreground(255,255,255,255),
    background(255,255,255,0)
{
    SetFontFile(filename);
    CreateLookUpTable();
    AddCharacter(BACKGROUND_GLYPH_CODE);
}

tlTypeFace::~tlTypeFace()
{
    strdelete(fileName);
    strdelete(fontName);
    FT_Done_FreeType(library);
    DeleteAllCharacters();
}

void 
tlTypeFace::SetFontFile(const char* filename)
{     
    assert(filename);
    if (!filename)
    {
        return;
    }
    
    strdelete(fileName);
    strdelete(fontName);

    if (FT_Init_FreeType (&library)==0)
    {
        FT_Open_Args args;

        args.flags = ft_open_pathname;
        args.memory_base = 0;
        args.memory_size = 0;
        args.pathname = (char*)filename;
        args.driver = 0;

        if (FT_Open_Face (library,&args,0,&face)!=0)
        {
            //there was an error
            FT_Done_FreeType(library);
            library = NULL;
            face = NULL;
            errorFlag = true;
        }
        else
        {
            fileName = strnew(filename);
            char* extension = strrchr(filename, '.' );
            char newFontName[256];
            strcpy(newFontName,filename);
            newFontName[extension-filename] = 0;
            fontName = strnew(newFontName);
        }
    }
    else
    {
        library = NULL;
        errorFlag = true;
    }
}

void 
tlTypeFace::SetFontSize(unsigned int size)
{   
    fontSize = size;
}

void 
tlTypeFace::LoadCharacter(unsigned int code, unsigned short leftBearing, unsigned short rightBearing, unsigned short baseLine, const char* filename, bool force)
{
    if (!filename)
    {
        return;
    }    

    tlTypeFaceGlyph* newGlyph = FindGlyph(code);
    if ((!newGlyph)||(force))
    {
        AddCharacter(code,force);
        newGlyph = FindGlyph(code);
    }

    newGlyph->bitmap.Load(filename);

    newGlyph->bearingX = leftBearing;
    newGlyph->bearingY = baseLine;
    newGlyph->width = newGlyph->bitmap.GetWidth();
    newGlyph->height = newGlyph->bitmap.GetHeight();
    newGlyph->advance = leftBearing+rightBearing+newGlyph->width;
    newGlyph->preloaded = true;
}

void 
tlTypeFace::AddCharacter(unsigned int code, bool force)
{
    tlTypeFaceGlyph* newGlyph = FindGlyph(code);
    if (!newGlyph)
    {
        newGlyph = new tlTypeFaceGlyph;
        newGlyph->code = code;

        int i;
        for (i = 0; i < glyphs.Count(); i++)
        {
            if (glyphs[i]->code > code)
            {
                break;
            }
        }
        glyphs.Insert(i,newGlyph);
    }
    if (force)
    {
        newGlyph->preloaded = false;
    }
}

void 
tlTypeFace::DeleteCharacter(unsigned int code)
{
    for (int i = 0; i < glyphs.Count(); i++)
    {
        if (glyphs[i]->code == code)
        {
            delete glyphs[i];
            glyphs[i] = NULL;
            glyphs.Delete(i,1);
        }
    }   
}

void 
tlTypeFace::AddDefaultCharacters(bool force)
{
    AddCharacter(BACKGROUND_GLYPH_CODE,force);
    for (int i = 0; i < strlen(ALL_CHARS); i++)
    {
        AddCharacter((unsigned int)ALL_CHARS[i],force);
    }
}

void 
tlTypeFace::DeleteAllCharacters()
{
    for(int i = 0; i < glyphs.Count(); i++)
    {
        delete glyphs[i];
        glyphs[i] = NULL;
    }
    glyphs.Delete(0,glyphs.Count());
}

void 
tlTypeFace::SetFourBit(bool f)
{ 
    if (fourBit == f)
        return;

    fourBit = f;
    CreateLookUpTable(); 
}

void 
tlTypeFace::SetAntiAlias(bool a)
{ 
    antiAlias = a; 
}

void 
tlTypeFace::SetAlphaBlending(bool a)
{
    alphaBlend = a;
}

tlTextureFont* 
tlTypeFace::CreateTextureFont(unsigned int width, unsigned int height)
{
    assert(!errorFlag);
    if (errorFlag)
    {
        return NULL;
    }

    assert(glyphs.Count()>0);   
    if (glyphs.Count()==0)
    {
        return NULL;
    }

    assert(ispow2(width)&&ispow2(height)&&(width>0)&&(height>0));    
    if ((!ispow2(width))||(!ispow2(height))||(width<fontWidth+blitBorder*2)||(height<fontHeight+blitBorder*2))
    {
        return NULL;
    }

    LoadGlyphs();

    char textureFontName[256];  
    sprintf(textureFontName,"%s_%d", fontName, fontSize);
    
    tlTextureFont* newFont = new tlTextureFont();
    newFont->SetName(textureFontName);
    newFont->fontSize = fontSize;
    newFont->fontWidth = fontWidth;
    newFont->fontHeight = fontHeight;
    newFont->fontBaseLine = fontBaseLine;
    newFont->numGlyphs = glyphs.Count();
    newFont->glyphs = new tlTextureGlyph[glyphs.Count()];

    int palCount = fourBit ? 16 : 256;
    unsigned char* palette = new unsigned char[palCount*4];
    for(int palIndex = 0; palIndex < palCount; palIndex++)
    {
        float t = float(palIndex) / float(palCount - 1);
        palette[palIndex*4+0] = (unsigned char)(float(background.BlueCh()) + ((float(foreground.BlueCh()) - float(background.BlueCh())) * t));
        palette[palIndex*4+1] = (unsigned char)(float(background.GreenCh()) + ((float(foreground.GreenCh()) - float(background.GreenCh())) * t));
        palette[palIndex*4+2] = (unsigned char)(float(background.RedCh()) + ((float(foreground.RedCh()) - float(background.RedCh())) * t));
        palette[palIndex*4+3] = (unsigned char)(float(background.AlphaCh()) + ((float(foreground.AlphaCh()) - float(background.AlphaCh())) * t)); 
    }          

    char buf[256];
    unsigned int currTexture = 0;
    unsigned int x = blitBorder;
    unsigned int y = blitBorder + fontBaseLine;
    unsigned int descender = fontHeight-fontBaseLine;
    int lineNum = 0;
    int currGlyph = 0;

    tlImage* image = NULL;
    tlTexture* texture = NULL;
    
    // pack all the non-preloaded glyphs into textures
    for (currGlyph = 0; currGlyph < glyphs.Count(); currGlyph++)
    {
        if (glyphs[currGlyph]->preloaded)
        {
            continue;
        }

        if (x+(glyphs[currGlyph]->width)>=width)
        {
            x = blitBorder;
            y += blitBorder + fontHeight;
            lineNum++;
            if (y+descender >= height)
            {
                y = blitBorder + fontBaseLine;
                image = NULL;
                lineNum = 0;
            }
        }

        if (!image)
        {
            sprintf(buf,"%s_texture_%d",textureFontName,currTexture);
            image = new tlImage(width,height,fourBit ? 4 : 8,true,alphaBlend);
            image->SetPalette(palette);
            image->Fill(0); 
            texture = new tlTexture;
            texture->SetBpp(fourBit ? 4 : 8);
            texture->SetSize(width,height);
            texture->SetAlphaDepth(image->GetRealAlphaDepth());
            texture->AddImagePtr(image);
            texture->SetName(buf);
            newFont->glyphTextures.Append(texture);
            currTexture++;
        }

        image->CopyRegion(&(glyphs[currGlyph]->bitmap),0,0,glyphs[currGlyph]->width,glyphs[currGlyph]->height,x,y-glyphs[currGlyph]->bearingY);

        newFont->glyphs[currGlyph].texturenum = currTexture-1;
        newFont->glyphs[currGlyph].width = (float)(glyphs[currGlyph]->width);
        newFont->glyphs[currGlyph].leftbearing = (float)(glyphs[currGlyph]->bearingX);
        //make sure left bearing isn't negative
        if (newFont->glyphs[currGlyph].leftbearing<0.0f)
        {
            newFont->glyphs[currGlyph].width -= newFont->glyphs[currGlyph].leftbearing;
            newFont->glyphs[currGlyph].leftbearing = 0.0f;
        }
        newFont->glyphs[currGlyph].rightbearing = (float)(glyphs[currGlyph]->advance - glyphs[currGlyph]->bearingX - glyphs[currGlyph]->width);
        //make sure right bearing isn't negative
        if ((short)newFont->glyphs[currGlyph].rightbearing<0)
        {
            newFont->glyphs[currGlyph].width -= newFont->glyphs[currGlyph].rightbearing;
            newFont->glyphs[currGlyph].rightbearing = 0.0f;
        }
        newFont->glyphs[currGlyph].advance = newFont->glyphs[currGlyph].leftbearing + newFont->glyphs[currGlyph].width + newFont->glyphs[currGlyph].rightbearing;
        newFont->glyphs[currGlyph].bottomleft.u = ((float)x);
        newFont->glyphs[currGlyph].bottomleft.v = ((float)y+descender);
        newFont->glyphs[currGlyph].topright.u = ((float)x+newFont->glyphs[currGlyph].width);
        newFont->glyphs[currGlyph].topright.v = ((float)(y-fontBaseLine));
        newFont->glyphs[currGlyph].code = glyphs[currGlyph]->code;

        x += blitBorder + (unsigned int)(newFont->glyphs[currGlyph].width);       
    }   
    y += descender;

    // get the last image of packed glyphs and resize if necessary
    image = texture->GetImage(0);
    if (lineNum == 0)
    {
        int newHeight = findnextpow2(y);
        int newWidth = findnextpow2(x);
        if (newHeight < (int)height)
        {
            if (newWidth < (int)width)
            {
                image->Resize(newWidth, newHeight);
            }
            else
            {
                image->Resize(width, newHeight);
            }
        }
        else
        {
            if (newWidth < (int)width)
            {
                image->Resize(newWidth, height);
            }
        }
    }
    else
    {
        int newHeight = findnextpow2(y);
        if (newHeight < (int)height)
        {
            image->Resize(width, newHeight);
        }
    }
    texture->SetSize(image->GetWidth(), image->GetHeight());

    // pack all the preloaded glyphs into textures
    for (currGlyph = 0; currGlyph < glyphs.Count(); currGlyph++)
    {
        if (!glyphs[currGlyph]->preloaded)
        {
            continue;
        }

        sprintf(buf,"%s_texture_%d",textureFontName,currTexture);

        int newHeight = fontHeight;
        int newWidth = glyphs[currGlyph]->bitmap.GetWidth();

        if (!ispow2(newHeight))
        {
            newHeight = findnextpow2(newHeight);
        }
        if (!ispow2(newWidth))
        {
            newWidth = findnextpow2(newWidth);
        }

        image = new tlImage(newWidth,newHeight,32,false,alphaBlend);
        image->Fill(background); 
        image->CopyRegion(&(glyphs[currGlyph]->bitmap),0,0,glyphs[currGlyph]->width,glyphs[currGlyph]->height,0,fontBaseLine-glyphs[currGlyph]->bearingY);
            
        texture = new tlTexture;
        texture->SetBpp(glyphs[currGlyph]->bitmap.GetBpp());
        texture->SetSize(newWidth,newHeight);
        texture->SetAlphaDepth(image->GetRealAlphaDepth());
        texture->AddImagePtr(image);
        texture->SetName(buf);
        newFont->glyphTextures.Append(texture);
        currTexture++;

        newFont->glyphs[currGlyph].texturenum = currTexture-1;
        newFont->glyphs[currGlyph].width = (float)(glyphs[currGlyph]->width);
        newFont->glyphs[currGlyph].leftbearing = (float)(glyphs[currGlyph]->bearingX);
        //make sure left bearing isn't negative
        if (newFont->glyphs[currGlyph].leftbearing<0.0f)
        {
            newFont->glyphs[currGlyph].width -= newFont->glyphs[currGlyph].leftbearing;
            newFont->glyphs[currGlyph].leftbearing = 0.0f;
        }
        newFont->glyphs[currGlyph].rightbearing = (float)(glyphs[currGlyph]->advance - glyphs[currGlyph]->bearingX - glyphs[currGlyph]->width);
        //make sure right bearing isn't negative
        if ((short)newFont->glyphs[currGlyph].rightbearing<0)
        {
            newFont->glyphs[currGlyph].width -= newFont->glyphs[currGlyph].rightbearing;
            newFont->glyphs[currGlyph].rightbearing = 0.0f;
        }
        newFont->glyphs[currGlyph].advance = newFont->glyphs[currGlyph].leftbearing + newFont->glyphs[currGlyph].width + newFont->glyphs[currGlyph].rightbearing;
        newFont->glyphs[currGlyph].bottomleft.u = 0.0f;
        newFont->glyphs[currGlyph].bottomleft.v = fontHeight;
        newFont->glyphs[currGlyph].topright.u = glyphs[currGlyph]->bitmap.GetWidth();
        newFont->glyphs[currGlyph].topright.v = 0.0f;
        newFont->glyphs[currGlyph].code = glyphs[currGlyph]->code;
    }

    // calculate uv coordinates for the packed glyphs
    for (int i = 0; i < newFont->numGlyphs; i++)
    {
        float w = (float)newFont->glyphTextures[newFont->glyphs[i].texturenum]->GetWidth();
        float h = (float)newFont->glyphTextures[newFont->glyphs[i].texturenum]->GetHeight();

        newFont->glyphs[i].bottomleft.u = newFont->glyphs[i].bottomleft.u/w;
        newFont->glyphs[i].bottomleft.v = (h-newFont->glyphs[i].bottomleft.v)/h;
        newFont->glyphs[i].topright.u = newFont->glyphs[i].topright.u/w;
        newFont->glyphs[i].topright.v = (h-newFont->glyphs[i].topright.v)/h;
    }

    return newFont;
}

tlImageFont* 
tlTypeFace::CreateImageFont()
{
    assert(!errorFlag);
    if (errorFlag)
    {
        return NULL;
    }

    assert(glyphs.Count()>0);   
    if (glyphs.Count()==0)
    {
        return NULL;
    }

    LoadGlyphs();

    char imageFontName[256];  
    sprintf(imageFontName,"%s_%d", fontName, fontSize);

    tlImageFont* newFont = new tlImageFont();
    newFont->SetName(imageFontName);
    newFont->fontSize = fontSize;
    newFont->fontWidth = fontWidth;
    newFont->fontHeight = fontHeight;
    newFont->fontBaseLine = fontBaseLine;
    newFont->numGlyphs = glyphs.Count();
    newFont->glyphs = new tlImageGlyph[glyphs.Count()];

    int palCount = fourBit ? 16 : 256;
    unsigned char* palette = new unsigned char[palCount*4];
    for(int palIndex = 0; palIndex < palCount; palIndex++)
    {
        float t = float(palIndex) / float(palCount - 1);
        palette[palIndex*4+0] = (unsigned char)(float(background.BlueCh()) + ((float(foreground.BlueCh()) - float(background.BlueCh())) * t));
        palette[palIndex*4+1] = (unsigned char)(float(background.GreenCh()) + ((float(foreground.GreenCh()) - float(background.GreenCh())) * t));
        palette[palIndex*4+2] = (unsigned char)(float(background.RedCh()) + ((float(foreground.RedCh()) - float(background.RedCh())) * t));
        palette[palIndex*4+3] = (unsigned char)(float(background.AlphaCh()) + ((float(foreground.AlphaCh()) - float(background.AlphaCh())) * t)); 
    }          

    char buf[256];
    int currGlyph = 0;
    unsigned int x = 0;
    unsigned int width = 0;

    // add all the glyph widths together to get the width of the glyph image required
    for (currGlyph = 0; currGlyph < glyphs.Count(); currGlyph++)
    {
        width += glyphs[currGlyph]->width;
    }

    sprintf(buf,"%s_image",imageFontName);
    newFont->glyphImage = new tlImage(width,fontHeight,fourBit ? 4 : 8,true,alphaBlend);
    newFont->glyphImage->SetName(buf);
    newFont->glyphImage->SetPalette(palette);
    newFont->glyphImage->Fill(0); 

    // pack all the glyphs into one image
    for (currGlyph = 0; currGlyph < glyphs.Count(); currGlyph++)
    {
        newFont->glyphImage->CopyRegion(&(glyphs[currGlyph]->bitmap),0,0,glyphs[currGlyph]->width,glyphs[currGlyph]->height,x,fontBaseLine-glyphs[currGlyph]->bearingY);

        newFont->glyphs[currGlyph].xorigin = x;
        newFont->glyphs[currGlyph].leftbearing = glyphs[currGlyph]->bearingX;
        newFont->glyphs[currGlyph].width = glyphs[currGlyph]->width;
        //make sure left bearing isn't negative
        if ((short)newFont->glyphs[currGlyph].leftbearing<0)
        {
            newFont->glyphs[currGlyph].width -= (short)newFont->glyphs[currGlyph].leftbearing;
            newFont->glyphs[currGlyph].leftbearing = 0;
        }
        newFont->glyphs[currGlyph].rightbearing = glyphs[currGlyph]->advance - glyphs[currGlyph]->bearingX - glyphs[currGlyph]->width;
        //make sure right bearing isn't negative
        if ((short)newFont->glyphs[currGlyph].rightbearing<0)
        {
            newFont->glyphs[currGlyph].width -= (short)newFont->glyphs[currGlyph].rightbearing;
            newFont->glyphs[currGlyph].rightbearing = 0;
        }
        newFont->glyphs[currGlyph].advance = newFont->glyphs[currGlyph].width+newFont->glyphs[currGlyph].leftbearing+newFont->glyphs[currGlyph].rightbearing;
        newFont->glyphs[currGlyph].code = glyphs[currGlyph]->code;

        x += newFont->glyphs[currGlyph].width;
    }  

    return newFont;
}

unsigned int* 
tlTypeFace::AsciiToUnicode(const char* str)
{
    int size = strlen(str);
    unsigned int* unicode = new unsigned int[size];

    for (int i = 0; i < size; i++)
    {
        unicode[i] = (unsigned int)str[i];
    }
    return unicode;
}

void 
tlTypeFace::CreateLookUpTable()
{
    int i,j;  
    unsigned bit;
      
    for( i = 0; i<256; i++)
    {
        bit=128;
        for (j=7;j>=0;j--)
        {
            if (bit&i)
            {
                bitLookUp[i][7-j]= fourBit ? 15 : 255;
            }
            else
            {
                bitLookUp[i][7-j]= 0;
            }
            bit >>= 1;
        }
    }
}

void 
tlTypeFace::LoadGlyphs()
{
    assert(face);
    if (!face)
    {
        return;
    }

    if (FT_Set_Pixel_Sizes (face, fontSize, fontSize)!=0)
    {
        errorFlag = true;
        return;
    }

    fontBaseLine = 0;
    fontWidth = 0;
    fontHeight = 0;

    // make sure that the background glyph is present
    AddCharacter(BACKGROUND_GLYPH_CODE,false);

    for (int i = 0; i < glyphs.Count(); i++)
    {
        if (!glyphs[i]->preloaded)
        {
            if (glyphs[i]->code == BACKGROUND_GLYPH_CODE)
            {
                glyphs[i]->bearingX = 0;
                glyphs[i]->bearingY = 0;
                glyphs[i]->width = 4;
                glyphs[i]->height = 4;
                glyphs[i]->advance = glyphs[i]->width;
                glyphs[i]->bitmap.SetAttributes(glyphs[i]->width,glyphs[i]->height,fourBit ? 4 : 8,true,alphaBlend);
                glyphs[i]->bitmap.Fill(0);

                fontWidth = fontWidth>glyphs[i]->width ? fontWidth : glyphs[i]->width;
                fontBaseLine = fontBaseLine>0 ? fontBaseLine : 0;
                fontHeight = fontHeight>glyphs[i]->height ? fontHeight : glyphs[i]->height;
            }
            else
            {
                if (FT_Load_Char(face, (FT_ULong)glyphs[i]->code, FT_LOAD_DEFAULT)==0)
                {
                    if (FT_Render_Glyph(face->glyph, antiAlias ? ft_render_mode_normal : ft_render_mode_mono)==0)
                    {        
                        glyphs[i]->bearingX = face->glyph->metrics.horiBearingX>>6;
                        glyphs[i]->bearingY = face->glyph->metrics.horiBearingY>>6;
                        glyphs[i]->width = face->glyph->metrics.width>>6;
                        glyphs[i]->height = face->glyph->metrics.height>>6;
                        glyphs[i]->advance = face->glyph->metrics.horiAdvance>>6;
                        glyphs[i]->bitmap.SetAttributes(glyphs[i]->width,glyphs[i]->height,fourBit ? 4 : 8,true,alphaBlend);
                        glyphs[i]->bitmap.Fill(0);

                        //used only if correct glyph dimensions are needed!  bigger waste of space but less
                        //likely that letters will creep into each other
                        if (safePack)
                        {
                            unsigned int ascender = face->size->metrics.ascender>>6;
                            unsigned int descender = (-face->size->metrics.descender)>>6;
                            fontWidth = fontWidth>glyphs[i]->width ? fontWidth : glyphs[i]->width;
                            fontBaseLine = fontBaseLine>ascender ? fontBaseLine : ascender;
                            fontHeight = fontHeight>(ascender+descender) ? fontHeight : (ascender+descender);
                        }
                        else
                        {
                            fontWidth = fontWidth>glyphs[i]->width ? fontWidth : glyphs[i]->width;
                            fontHeight = fontHeight>glyphs[i]->height ? fontHeight : glyphs[i]->height;
                            fontBaseLine = (int)fontBaseLine>glyphs[i]->bearingY ? fontBaseLine : glyphs[i]->bearingY;
                        }

                        unsigned char* bitmap = (unsigned char*)face->glyph->bitmap.buffer;

                        if (antiAlias)
                        {
                            for (unsigned int y = 0; y < glyphs[i]->height; y++)
                            {
                                for (unsigned int x = 0; x < glyphs[i]->width; x++)
                                {
                                    if ((*bitmap)>0)
                                    {
                                        glyphs[i]->bitmap.SetPixelIndex(x,y,fourBit ? ((*bitmap) >> 4) : (*bitmap));
                                    }
                                    bitmap++;
                                }
                            }
                        }
                        else
                        {
                            for (unsigned int y = 0; y < glyphs[i]->height; y++)
                            {
                                unsigned int i = 0;                                
                                for (unsigned int x = 0; x < glyphs[i]->width; x++, i++)
                                {
                                    if (i==8)
                                    {
                                        bitmap++;
                                        i=0;
                                    }
                                    glyphs[i]->bitmap.SetPixelIndex(x,y,bitLookUp[*bitmap][i]);
                                }
                                bitmap++;
                            }
                        }
                    }
                }
            }
        }
        else
        {
            unsigned int descender = fontHeight - fontBaseLine;
            unsigned int ascender = fontBaseLine; 

            unsigned int newDescender = glyphs[i]->bitmap.GetHeight()>glyphs[i]->bearingY ? glyphs[i]->bitmap.GetHeight()-glyphs[i]->bearingY : 0;
            unsigned int newAscender = glyphs[i]->bearingY; 

            if (newAscender > ascender)
            {
                fontBaseLine = newAscender;
           
                if (newDescender > descender)
                {
                    fontHeight = newDescender + newAscender;
                }
                else
                {
                    fontHeight = newAscender + descender;
                }
            }
            else
            {
                if (newDescender > descender)
                {
                    fontHeight = newDescender + ascender;
                }
            }

            fontWidth = fontWidth>glyphs[i]->width ? fontWidth : glyphs[i]->width;
        }
    }
}

tlTypeFace::tlTypeFaceGlyph* 
tlTypeFace::FindGlyph(unsigned int code)
{
    for (int i = 0; i < glyphs.Count(); i++)
    {
        if (glyphs[i]->code == code)
        {
            return glyphs[i];
        }
    }
    return NULL;
}

//*****************************************************************************
// tlTextureFont
//*****************************************************************************
tlTextureFont::tlTextureFont() :
    shader(NULL),
    fontSize(12),
    fontWidth(12),
    fontHeight(12),
    fontBaseLine(9),
    numGlyphs(0),
    glyphs(NULL),
    shaderPtr(NULL)
{
}

tlTextureFont::tlTextureFont(tlDataChunk* ch):
    shader(NULL),
    fontSize(12),
    fontWidth(12),
    fontHeight(12),
    fontBaseLine(9),
    numGlyphs(0),
    glyphs(NULL),
    shaderPtr(NULL)
{
    LoadFromChunk(ch);
}

tlTextureFont::~tlTextureFont()
{
    strdelete(shader);
    delete [] glyphs;
    for(int i = 0; i < glyphTextures.Count(); i++)
    {
        delete glyphTextures[i];
        glyphTextures[i] = NULL;
    }
    glyphTextures.Delete(0,glyphTextures.Count());
}

void
tlTextureFont::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::Font::TEXTURE_FONT);
    tlTextureFontChunk* fch = dynamic_cast<tlTextureFontChunk*>(ch);
    assert(fch);

    assert(fch->GetVersion()==TEXTURE_FONT_VERSION);

    SetName( fch->Name() );
    SetShader( fch->GetShader() );   
    fontSize = (unsigned int)fch->GetFontSize();
    fontWidth = (unsigned int)fch->GetFontWidth();
    fontHeight = (unsigned int)fch->GetFontHeight();
    fontBaseLine = (unsigned int)fch->GetFontBaseLine();

    for(int index = 0; index < fch->SubChunkCount(); index++ )
    {
        tlDataChunk* sub = fch->GetSubChunk(index);
        switch(sub->ID())
        {
            case Pure3D::Texture::TEXTURE:
            {
                tlTexture* glyphTexture = new tlTexture(sub);
                glyphTextures.Append(glyphTexture);
                break;
            }
            case Pure3D::Font::TEXTURE_GLYPH_LIST:
            {
                if (!glyphs)
                {
                    tlTextureGlyphListChunk* listch = dynamic_cast<tlTextureGlyphListChunk*>(sub);
                    assert(listch);
                    numGlyphs = listch->GetNumGlyphs();
                    if (numGlyphs>0)
                    {
                        glyphs = new tlTextureGlyph[numGlyphs];                    
                        for (unsigned int i = 0; i < numGlyphs; i++)
                        {
                            glyphs[i] = listch->GetGlyphs()[i];
                        }
                    }
                }
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk*
tlTextureFont::Chunk()
{
    tlTextureFontChunk* result = new tlTextureFontChunk;
    result->SetVersion(TEXTURE_FONT_VERSION);
    result->SetName(GetName());
    result->SetShader(shader);
    result->SetFontSize((float)fontSize);
    result->SetFontWidth((float)fontWidth);
    result->SetFontHeight((float)fontHeight);
    result->SetFontBaseLine((float)fontBaseLine);
    result->SetNumTextures((unsigned short)glyphTextures.Count());

    unsigned int i;
    for (i = 0; i < (unsigned)glyphTextures.Count(); i++)
    {
        result->AppendSubChunk(glyphTextures[i]->Chunk());
    }

    tlTextureGlyphListChunk* listch = new tlTextureGlyphListChunk;
    listch->SetNumGlyphs(numGlyphs);
    listch->SetGlyphs(glyphs,numGlyphs);
    result->AppendSubChunk(listch);

    return result;
}

void
tlTextureFont::SetShader(const char* n)
{
    strdelete(shader);
    shader = strnew(n);
}

tlTexture*
tlTextureFont::GetGlyphTexture(unsigned int index) const
{
    assert(index < glyphTextures.Count());
    if (index < (unsigned)glyphTextures.Count())
    {
        return glyphTextures[index];
    }
    return NULL;
}

tlTextureGlyph*
tlTextureFont::GetGlyph(unsigned int index) const
{
    assert(index < numGlyphs);
    if (index < numGlyphs)
    {
        return &(glyphs[index]);
    }
    return NULL;
}

tlTextureGlyph*
tlTextureFont::FindGlyph(unsigned int code) const
{
    for (unsigned int i = 0; i < numGlyphs; i++)
    {
        if (glyphs[i].code == code)
        {
            return &(glyphs[i]);
        }
    }
    return NULL;
}

tlImage* 
tlTextureFont::DisplayTextLine(const unsigned int* text) const
{
    if ((!text)||(!text[0]))
    {
        return NULL;
    }

    tlImage* image = NULL;
    unsigned int currChar = 0;
    int width = 0;

    while((text[currChar])&&(text[currChar]!=(unsigned int)'\n'))
    {
        tlTextureGlyph* glyph = FindGlyph(text[currChar]);
        if (glyph)
        {
            width += (int)glyph->advance;
        }
        currChar++;
    }
    
    if (width>0)
    {
        image = new tlImage(width,GetFontHeight(),32,false,true);
        image->Fill(glyphTextures[FindGlyph(BACKGROUND_GLYPH_CODE)->texturenum]->GetImage(0)->GetPixel(0,0));

        currChar=0;
        width=0;
        while((text[currChar])&&(text[currChar]!=(unsigned int)'\n'))
        {
            tlTextureGlyph* glyph = FindGlyph(text[currChar]);
            if (glyph)
            {
                int x = int( glyph->bottomleft.u * glyphTextures[glyph->texturenum]->GetWidth() );
                int y = int( (1.0f-glyph->topright.v) * glyphTextures[glyph->texturenum]->GetHeight() );

                image->CopyRegion(glyphTextures[glyph->texturenum]->GetImage(0),x,y,(int)glyph->width,GetFontHeight(),width+(int)glyph->leftbearing,0);
                width += (int)glyph->advance;
            }
            currChar++;
        }
    }

    return image;
}

void 
tlTextureFont::ResolveReferences(tlInventory* inv)
{
    shaderPtr = toollib_find<tlShader>(inv, shader);
    shaderPtr->ResolveReferences(inv);
}

void 
tlTextureFont::MarkReferences(int m)
{
    if(shaderPtr)
    {
        shaderPtr->Mark(m);
        shaderPtr->MarkReferences(m);
    }
}

bool 
tlTextureFont::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    if(shaderPtr && shaderPtr->FindReferenceMark(m))
    {
        return true;
    }
    return false;
}

//*****************************************************************************
// tlImageFont
//*****************************************************************************
tlImageFont::tlImageFont() :
    fontSize(12),
    fontWidth(12),
    fontHeight(12),
    fontBaseLine(9),
    numGlyphs(0),
    glyphs(NULL),
    glyphImage(NULL)
{
}

tlImageFont::tlImageFont(tlDataChunk* ch):
    fontSize(12),
    fontWidth(12),
    fontHeight(12),
    fontBaseLine(9),
    numGlyphs(0),
    glyphs(NULL),
    glyphImage(NULL)
{
    LoadFromChunk( ch );
}
    
tlImageFont::~tlImageFont()
{
    delete [] glyphs;
    delete glyphImage;
}

void
tlImageFont::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::Font::IMAGE_FONT);
    tlImageFontChunk* fch = dynamic_cast<tlImageFontChunk*>(ch);
    assert(fch);

    assert(fch->GetVersion()==IMAGE_FONT_VERSION);

    SetName( fch->Name() );
    fontSize = fch->GetFontSize();
    fontWidth = fch->GetFontWidth();
    fontHeight = fch->GetFontHeight();
    fontBaseLine = fch->GetFontBaseLine();

    for(int index = 0; index < fch->SubChunkCount(); index++ )
    {
        tlDataChunk* sub = fch->GetSubChunk(index);
        switch(sub->ID())
        {
            case Pure3D::Texture::IMAGE:
            {
                if (!glyphImage)
                {
                    glyphImage = new tlImage(sub);
                }
                break;
            }
            case Pure3D::Font::IMAGE_GLYPH_LIST:
            {
                if (!glyphs)
                {
                    tlImageGlyphListChunk* listch = dynamic_cast<tlImageGlyphListChunk*>(sub);
                    assert(listch);
                    numGlyphs = listch->GetNumGlyphs();
                    if (numGlyphs>0)
                    {
                        glyphs = new tlImageGlyph[numGlyphs];                    
                        for (unsigned int i = 0; i < numGlyphs; i++)
                        {
                            glyphs[i] = listch->GetGlyphs()[i];
                        }
                    }
                }
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk*
tlImageFont::Chunk()
{
    tlImageFontChunk* result = new tlImageFontChunk;
    result->SetVersion(IMAGE_FONT_VERSION);
    result->SetName(GetName());
    result->SetFontSize(fontSize);
    result->SetFontWidth(fontWidth);
    result->SetFontHeight(fontHeight);
    result->SetFontBaseLine(fontBaseLine);

    result->AppendSubChunk(glyphImage->Chunk());

    tlImageGlyphListChunk* listch = new tlImageGlyphListChunk;
    listch->SetNumGlyphs(numGlyphs);
    listch->SetGlyphs(glyphs,numGlyphs);
    result->AppendSubChunk(listch);

    return result;
}

tlImageGlyph*
tlImageFont::GetGlyph(unsigned int index) const
{
    assert(index < numGlyphs);
    if (index < numGlyphs)
    {
        return &(glyphs[index]);
    }
    return NULL;
}

tlImageGlyph*
tlImageFont::FindGlyph(unsigned int code) const
{
    for (unsigned int i = 0; i < numGlyphs; i++)
    {
        if (glyphs[i].code == code)
        {
            return &(glyphs[i]);
        }
    }
    return NULL;
}


//*****************************************************************************
// tlFontLoader
//*****************************************************************************
tlFontLoader::tlFontLoader() : 
    tlEntityLoader(0)
{
}

bool
tlFontLoader::CheckChunkID(unsigned id)
{
    switch (id)
    {
        case Pure3D::Font::TEXTURE_FONT:
        case Pure3D::Font::IMAGE_FONT:
        {
            return true;
            break;
        }
        default:
        {
            return false;
            break;
        }
    }
}

tlEntity* 
tlFontLoader::Load(tlDataChunk* chunk)
{
    switch (chunk->ID())
    {
        case Pure3D::Font::TEXTURE_FONT:
        {
            return new tlTextureFont(chunk);
            break;
        }
        case Pure3D::Font::IMAGE_FONT:
        {
            return new tlImageFont(chunk);
            break;
        }
        default:
        {
            return NULL;
            break;
        }
    }
}
