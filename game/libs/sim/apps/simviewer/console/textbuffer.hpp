#ifndef _TEXTBUFFER_HPP_
#define _TEXTBUFFER_HPP_

class tTextBuffer
{
public:
   virtual ~tTextBuffer() {};

   virtual int GetNumLines(void) = 0;
   virtual char* GetLine(int n) = 0;

   virtual void SetActivationKey(char k) = 0;
   virtual void Activate(bool a) = 0;
   virtual bool IsActive() = 0;

   virtual void HandleKey(char) = 0;
   virtual void Paste(char* text) = 0;

   virtual void Echo(char*) = 0;
};
#endif
