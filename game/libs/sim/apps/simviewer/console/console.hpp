#ifndef _CONSOLE_HPP_
#define _CONSOLE_HPP_

class tTextBuffer;

class tConsole 
{

public:
   tConsole(tTextBuffer* buffer);
   virtual ~tConsole();

   virtual void Display(void) = 0;

   void SetTextBuffer(tTextBuffer* buffer) { textBuffer = buffer; }
   tTextBuffer* GetTextBuffer(void) { return textBuffer; }

   virtual void Echo(char*);
   virtual int GetHeight() = 0;

   void Maximize() { maximised = !maximised; }

protected:
   bool maximised;
   tTextBuffer* textBuffer;  

};

#endif