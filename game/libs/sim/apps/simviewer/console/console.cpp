#include "console.hpp"
#include "textbuffer.hpp"

extern int HandleKey(int key, int down);

tConsole::tConsole(tTextBuffer* buffer)
{
   textBuffer = buffer;
   maximised = 0;
}

tConsole::~tConsole()
{
}

void tConsole::Echo(char* text)
{  
   if(textBuffer)
   {
      textBuffer->Echo(text);
   }
}


