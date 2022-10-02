#ifndef _COMMANDLINE_HPP_
#define _COMMANDLINE_HPP_

#include "textbuffer.hpp"
#include "scripter.hpp"

class ofstream;

// A line of text
class Line
{
public:
   Line* next;
   Line* prev;
   char* text;

   Line();
   Line(char* text);
   ~Line();
   Line* InsertAfter(Line* l);
   Line* Unlink(void);
};

class tCommandLine : public tTextBuffer
{
public:
   tCommandLine(tScripter* scripter);
   ~tCommandLine();

   virtual int   GetNumLines(void);
   virtual char* GetLine(int n);

   void SetCursorChar(char c)    { cursorChar = c; }
   void SetCursorBlink(bool b)   { doBlink = b; }
   void SetActivationKey(char k) { activation = k; }
   virtual void Activate(bool a) { active = a; }
   bool IsActive() { return active; }

   virtual void HandleKey(char);
   virtual void Paste(char* text);
   
   virtual void NextHistory();
   virtual void PrevHistory();

   void SetScripter(tScripter*);
   tScripter* GetScripter(void);

   void SetTraceFile(char* name);

   void Echo(char* text);

private:
   tScripter* scripter;

   char cursorChar;
   bool doBlink;
   int blink;

   int nLines;
   Line textLines;  // storage for console text
   Line *textTail;

   Line  historyLines;  // storage for command history
   Line*  historyPos;

   char typeBuffer[1024];  // edit buffer for current line
   char* typeLine;
   int nTyped;

   int tryingMatch;
   int nTries;
   int insertPos;
   char matchText[256];

   bool active;
   char activation;

   ofstream* trace;
};





#endif 