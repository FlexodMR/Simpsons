#ifndef _ENHANCEDCONSOLE_HPP_
#define _ENHANCEDCONSOLE_HPP_

#include "console.hpp"
#include "p3d/pure3d.hpp"


class tTextureFont;
class tShader;

class tEnhancedConsole : public tConsole
{
public:
   tEnhancedConsole(tTextBuffer* buffer, tShader* material, tTextureFont* font);
   ~tEnhancedConsole();

   void Maximize() { maximised = !maximised; }
   void Display(void);        // call at end of frame

   void  SetHeight(int h) { height = (float)h / (float)p3d::display->GetHeight(); }
   int   GetHeight()      { return (int)((float)height * (float)p3d::display->GetHeight()); }

   void SetBackgroundShader(tShader* m);
   tShader* GetBackgroundMaterial(void) { return mat; }

   void SetBackgroundStrides(float u, float v) { ustride = u; vstride = v; }

   void SetFont(tTextureFont* f);
   tTextureFont* GetFont(void) { return font; }

   void SetTextColour(tColour c)       { textColour = c; }
   void SetBackgroundColour(tColour c) { backgroundColour = c;}

   void SetOrtho(bool b) { ortho = b; }
   void SetAutoPos(bool b) { autopos = b; }
   void SetFade(bool b) { fade = b; }
   void SetSlide(bool b) { slide = b; }
   void SetTime(unsigned t) { time = t; }

private:
   float height;  // height of console display area
   int maximised; // console is maximiseed (fills whole screen)

   float ustride,vstride;

   tShader* mat;  // console background material
   tTextureFont* font;

   tColour textColour, backgroundColour;

   bool lastActive;
   float direction;
   float t;
   int count;

   bool ortho, autopos, fade, slide;
   unsigned time;
};

#endif 