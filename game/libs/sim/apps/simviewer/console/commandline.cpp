#include"textbuffer.hpp"
#include"scripter.hpp"
#include"commandline.hpp"
#include"constuff.hpp"

#include<string.h>
#include<fstream.h>


Line::Line()
{
   text = NULL;
   next = NULL;
   prev = NULL;
}

Line::~Line()
{
   delete text;
}

Line::Line(char* t)
{
   text = new char [strlen(t)+1];
   strcpy(text, t);
   next = NULL;
   prev = NULL;
}

Line* Line::InsertAfter(Line* l)
{
   if(next)
      next->prev = l;
   l->next = next;
   l->prev = this;
   next = l;
   return l;
}

Line* Line::Unlink(void)
{
   next->prev = prev;
   prev->next = next;
   prev = NULL;
   next = NULL;
   return this;
}

tCommandLine::tCommandLine(tScripter* s)
{
   SetActivationKey('`');
   active = 0;

   textTail = &textLines;
   historyPos = &historyLines;

   typeBuffer[0] = ']';
   typeBuffer[1] = ' ';
   typeBuffer[2] = 0;
   typeBuffer[3] = 0;
   typeLine = &typeBuffer[2];  // type buffer include ']' prompt, but 
                               // typed text never overwrites it and
                               // it isn't executed

   nTyped = 0;
   tryingMatch = 0;
   nLines = 0;

   scripter = s;
   blink = 0;
   doBlink = true;
   cursorChar = '|';
   trace = NULL;
}

tCommandLine::~tCommandLine()
{
   Line* next, * walk;
   for(walk = textLines.next; walk != NULL; walk = next)
   {
      next = walk->next;
      delete walk;
   }
   for(walk = historyLines.next; walk != NULL; walk = next)
   {
      next = walk->next;
      delete walk;
   }

   if(trace) delete trace;
}

int tCommandLine::GetNumLines(void)
{
   return nLines + 1;
}

char* tCommandLine::GetLine(int n)
{
   static char dummy[2] = "";

   if(n == nLines)
   {
      blink = (blink + 1) % 10;
      if(blink > 5 || !doBlink)
         typeLine[nTyped] = cursorChar;
      else
         typeLine[nTyped] = 0;

      return typeBuffer;
   }

   Line* walk = textLines.next;
   int i = 0;

   while((i != n) && (walk != NULL))
   {
      walk = walk->next;
      i++;
   }
   
   if(walk)
   {
      return walk->text;
   }
   else
   {
      return dummy;
   }
}

void tCommandLine::SetScripter(tScripter* s)
{
   scripter = s;
}

tScripter* tCommandLine::GetScripter(void)
{
   return scripter;
}

void tCommandLine::Echo(char* text)
{
   // add the text to the console text buffer
   textTail = textTail->InsertAfter(new Line(text));
   nLines++;

   if(trace)
   {
      (*trace) << text << endl;
   }
}

void tCommandLine::HandleKey(char key)
{
//   ::HandleKey(key, down);

   if(key == activation)
   {
      Activate(!IsActive());
//      maximised &= IsActive();
      return;
   }

   if(!IsActive())
      return;

   int handled = 1;

   typeLine[nTyped] = 0;

   if(key == 0x1b) // TODO, don't cheat about this
   {
      if(tryingMatch)
      {
         strcpy(typeLine, matchText);
         nTyped = strlen(matchText);
         tryingMatch = 0;
      }
      else
      {
         nTyped = 0; // clear the typed text
      }
   }
   else
   if(key == '\t')
   {
      if(tryingMatch)
      {
         char* match = scripter->NextCompletion();

         strcpy(typeLine, match);
         nTyped = strlen(match);
      }
      else
      {
         tryingMatch = 1;
         strcpy(matchText, typeLine);
         char* match = scripter->BeginCompletion(matchText);
         strcpy(typeLine, match);
         nTyped = strlen(match);
      }
      
   }
   else
   if(key == '\r')
   {
      typeLine[nTyped] = 0;

      // Echo the line
      Echo(typeBuffer);
   
      // add it to the history
      historyLines.InsertAfter(new Line(typeLine));
      historyPos = &historyLines;

      // execute the line
      if(scripter != NULL)
         scripter->ExecLine(typeLine);

      // clear the type buffer
      nTyped = 0;
      
   }
   else
   if(key == '\b')
   {
      if(nTyped > 0) nTyped--;  // move back a character
      
   }
   else
      typeLine[nTyped++] = key;

   if(key != '\t')
   {
      tryingMatch = 0;
   }

   // null terminate the string (twice)
   // we may be adding a cursor at typeLine[nTyped] later
   // thus the extra null termination
   typeLine[nTyped] = 0;
   typeLine[nTyped+1] = 0;

   return;
}

void tCommandLine::Paste(char* text)
{
}

void tCommandLine::SetTraceFile(char* name)
{
   if(trace) delete trace;
   trace = new ofstream(name);
}

void tCommandLine::NextHistory()
{
   // go forward in history list
   if(historyPos->prev)
   {
      historyPos = historyPos->prev;
      if(historyPos->text)
      {
         strcpy(typeLine, historyPos->text);
         nTyped = strlen(typeLine);
         typeLine[nTyped+1] = 0; // we have to double null terminate for some reason
      }
      else
      {
         nTyped = 0;
         typeLine[1] = 0;
      }
   }
}

void tCommandLine::PrevHistory()
{
   // go back in history list
   if(historyPos->next)
   {
      historyPos = historyPos->next;
      if(historyPos->text)
      {
         strcpy(typeLine, historyPos->text);
         nTyped = strlen(typeLine);
         typeLine[nTyped+1] = 0; // we have to double null terminate for some reason
      }
      else
      {
         nTyped = 0;
         typeLine[1] = 0;
      }
   }
}

/*
   if((key == VK_UP) || (key == 0x21))
   {
      
   }
   else
   if((key == VK_DOWN) || (key == 0x22))
   {
      // go forward in history list
      if(historyPos->prev)
      {
         historyPos = historyPos->prev;
         if(historyPos->text)
         {
            strcpy(typeLine, historyPos->text);
            nTyped = strlen(typeLine);
         }
         else
         {
            nTyped = 0;
         }
      }
      
   }
   else
   if((key == VK_INSERT) && shifted) 
   {
      OpenClipboard(NULL);
      char* text = (char*)GetClipboardData(CF_TEXT);
      if(text)
      {
         strcpy(&typeLine[nTyped], text);
         nTyped += strlen(text);
      }
      CloseClipboard();
   }
   else 
*/