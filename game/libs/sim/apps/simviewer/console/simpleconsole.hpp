#ifndef _SIMPLECONSOLE_HPP_
#define _SIMPLECONSOLE_HPP_

#include"console.hpp"

class tShader;

class tSimpleConsole : public tConsole
{
   int height;       // height of console display area
   tShader* shader;  // console background material

public:
   tSimpleConsole(tTextBuffer* buffer);
   ~tSimpleConsole();

   void Display(void);  // call at end of frame

   void SetHeight(int h) { height = h; }
   int  GetHeight()      { return height; }
};

#endif 