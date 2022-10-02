#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <fstream.h>
#include <assert.h>

#include "objectscripter.hpp"
#include "symbol.hpp"
#include "function.hpp"
#include "class.hpp"
#include "enum.hpp"
#include "types.hpp"
#include "shatter.hpp"

#include "p3d/memheap.hpp"

void Use(char* text, void* scr)
{
   tObjectScripter* scripter = (tObjectScripter*)scr;
   scripter->Use(text);
}

extern tMemHeap* consoleTypeHeap;
extern unsigned consoleTypeHeapRef;

tObjectScripter::tObjectScripter()
{
   if(consoleTypeHeapRef++ == 0)
      consoleTypeHeap = new tMemHeap;
   
   classes = new tSymbolTable<tClass>(256);
   enums   = new tSymbolTable<tEnum>(256);
   objects = new tSymbolTable<tObject>(1024);

   scripterClass = new tClass("tObjectScripter",NULL, 256);
   scripterObject = new tObject(scripterClass, this);

   classes->Add("tObjectScripter",scripterClass);
   objects->Add("scripter",scripterObject);

   used = NULL;
   SetFunction("use", (void*)::Use, "s", (void*)this);

   InitBasicTypes(this);

   completingMode = NONE;
   completingObject = NULL;

   output = NULL;
}

tObjectScripter::~tObjectScripter()
{
   delete objects;
   delete enums;
   delete classes;

   if(--consoleTypeHeapRef == 0)
      delete consoleTypeHeap;
}

void  tObjectScripter::AddClass(tClass* d)
{
   classes->Add(d->GetName(), d);
}

void  tObjectScripter::AddEnum(tEnum* e)
{
   enums->Add(e->GetName(), e);
}


void  tObjectScripter::AddObject(char* className, char* name, void* object)
{
   tClass* type = classes->Find(className);
   assert(type);

   if(objects->Find(name))
   {
      char buffer[128];
      sprintf(buffer, "Variable \"%s\" already exists!", name);
      Print(buffer);
      return;
   }

   objects->Add(name, new tObject(type, object));
}

void  tObjectScripter::NewObject(char* className, char* name)
{
   tClass* type = classes->Find(className);
   assert(type);
   objects->Add(name, new tObject(type));
}

void tObjectScripter::Print(char*s)
{
   if(output) output->Echo(s);
}

void tObjectScripter::Use(char* c)
{
   if(c == NULL)
   {
      used = NULL;
      return;
   }

   used = (tObject*)(objects->Find(c));
}

char buffers[8][256];
int currentBuffer = 0;

char* Buffer(char* in)
{
   strcpy(buffers[currentBuffer], in);
   char *tmp = buffers[currentBuffer];
   currentBuffer = (currentBuffer + 1) % 8;
   return tmp;
}

void tObjectScripter::ExecCommand(char* line)
{
   int currentToken = 0;
   char* token;

   tShatterParser parser;
   parser.SetBreakChar(' ');

   parser.Parse(line);

   token = parser.GetFragment(currentToken++,"");

   char buffer[256];
   unsigned long args[8] = { 0,0,0,0,0,0,0,0};

   tObject* currentObject;

   if(!used)
   {
      currentObject = (tObject*)objects->Find(token);
      if(currentObject == NULL)
      {
         currentObject = scripterObject;
      }
      else
      {
         if(currentToken == parser.GetNumFragments())
         {
            args[0] = (unsigned long)buffer;
            currentObject->GetClass()->GetMethod("print")->Dispatch(1,args,currentObject->GetObject());
            Print(buffer);
            return;
         }

         token = parser.GetFragment(currentToken++,"");
      }
   }
   else
   {
      currentObject = used;
   }
  
   tFunction* currentMethod = currentObject->GetClass()->GetMethod(token);

   if((currentMethod == NULL) && (used))
   {
      currentObject = (tObject*)objects->Find(token);

      if(!currentObject)
         currentObject = scripterObject;
      else
         token = parser.GetFragment(currentToken++,"");

      currentMethod = currentObject->GetClass()->GetMethod(token); 
   }

   if((currentMethod == NULL) && (currentObject == scripterObject))
   {
      Print("Unrecognized object or method");
   }

   if(currentMethod == NULL)
   {
      currentMethod = currentObject->GetClass()->GetMethod("set");

      if(currentMethod == NULL)
         return;

      args[0] = (unsigned long)token;
      currentMethod ->Dispatch(1,args,currentObject->GetObject());
      return;
   }

   /*
   int hmm = 0.0f;
   if((currentMethod->GetNumArgs() == 1) && (currentMethod->GetArgType(0) == argString))
   {
      args[0] = (unsigned long)next;
      currentMethod->Dispatch(1,args,currentObject->GetObject());
      return;
   }
   */

   int nArgs = currentMethod->GetNumArgs();

   if(nArgs != (parser.GetNumFragments() - currentToken))
   {
      char buffer[256];
      sprintf(buffer, "Bad number of arguments for function \"%s\"", currentMethod->GetName()); 
      Print(buffer);
   }

   int currentArg;
   for(currentArg = 0; (currentArg < 8); currentArg++)
   {
      token = parser.GetFragment(currentToken++,"");
      switch(currentMethod->GetArgType(currentArg))
      {
         case argString :
         {
            args[currentArg] = (unsigned long)Buffer(token);
         }
         break;
         case argInt :
         {
            tObject* obj = (tObject*)objects->Find(token);
            if(obj)
            {
               tFunction* function = obj->GetClass()->GetMethod("as_int");
               if(function)
               {
                  args[currentArg] = function->Dispatch(0, NULL, obj->GetObject());
               }
               else
               {
                  args[currentArg] = atoi(token);
               }

            }
            else
            {
               args[currentArg] = atoi(token);
            }
         }
         break;
         case argFloat :
         {
            float f = (float)atof(token);
            args[currentArg] = *((unsigned long*)&f);
         }
         break;
         case argClass :
         {
            tObject* object = (tObject*)objects->Find(token);
            assert(object);
            currentMethod->CheckClassType(currentArg, object->GetClass()->GetName());
            args[currentArg] = (unsigned long)object->GetObject();
         }
         break;
      }      
   }
   currentMethod->Dispatch(currentArg,args,currentObject->GetObject());
}

void tObjectScripter::ExecFile(char* name)
{
   ifstream in(name, ios::in | ios::nocreate);

   if(!in.good())
   {
      char s[256];
      sprintf(s,"Cannot execute config file (%s)", name);
      Print(s);
      return;
   }

   char line[512];
   while(!in.eof())
   {
      in.getline(line,512);
      if(line[0] != '#')
         ExecLine(line);
   }
}

void tObjectScripter::ExecIniFile(char* name)
{
   ifstream in(name, ios::in | ios::nocreate);

   if(!in.good())
   {
      char s[256];
      sprintf(s,"Cannot execute config file (%s)", name);
      Print(s);
      return;
   }

   char line[512];
   while(!in.eof())
   {
      in.getline(line,512);
      if(line[0] != '#' && line[0] != ';' && line[0] != '[')
      {
         for(unsigned int i = 0; i < strlen(line); i++)
         {
            if(line[i] == '=')
            {
               line[i] = ' ';
               break;
            }
         }
         ExecLine(line);
      }
   }
}

void tObjectScripter::ExecLine(char* line)
{
   tShatterParser parser;
   parser.SetBreakChar(';');

   parser.Parse(line);

   for(int i = 0; i < parser.GetNumFragments(); i++)
   {
      ExecCommand(parser.GetFragment(i,""));
   }

}

void tObjectScripter::SetFunction(char* name, void* f, char* args, void* user, int del)
{
   tFunction* function = new tFunction(name, f, args, user, del);
   scripterClass->AddMethod(function);
}

tObject* tObjectScripter::FindOrCreate(char* name, char* type)
{
   tObject* object = (tObject*)objects->Find(name);

   if(!object)
   {
      object = (tObject*)objects->Add(name, new tObject(classes->Find(type)));
   }
   else
   {
      if(object->GetClass() != classes->Find(type))
      {
         char buffer[128];
         sprintf(buffer, "Wrong class on direct access to var \"%s\"", name);
         Print(buffer);
         return NULL;
      }
   }

   return object;
}

tObject* tObjectScripter::FindOnly(char* name, char* type)
{
   char buffer[128];
   tObject* object = (tObject*)objects->Find(name);
   if(!object)
   {
      sprintf(buffer, "Could not find variable \"%s\"", name);
      Print(buffer);
      return NULL;
   }

   if(object->GetClass() != classes->Find(type))
   {
      sprintf(buffer, "Wrong class on direct access to variable \"%s\"", name);
      Print(buffer);
      return NULL;
   }

   return object;
}

void  tObjectScripter::SetFloat(char* name, float val)
{
   tObject* object= FindOrCreate(name,"float");
   if(object)
   {
      float* f = (float*)object->GetObject();
      *f = val;
   }
}

void  tObjectScripter::SetInt(char* name, int val)
{
   tObject* object = FindOrCreate(name,"int");
   if(object)
   {
      int* i = (int*)object->GetObject();
      *i = val;
   }
}

void  tObjectScripter::SetString(char* name, char* val)
{
   tObject* object = FindOrCreate(name,"string");
   if(object)
   {
      char* s = (char*)object->GetObject();
      strcpy(s,val);
   }
}

float tObjectScripter::GetFloat(char* name)
{
   tObject* object = FindOnly(name,"float");
   if(object)
   {
      float* f = (float*)object->GetObject();
      return *f;
   }
   return 0.0f;
}

int tObjectScripter::GetInt(char* name)
{
   tObject* object = FindOnly(name,"int");
   if(object)
   {
      int* i = (int*)object->GetObject();
      return *i;
   }
   return 0;
 }

char* tObjectScripter::GetString(char* name)
{
   tObject* object = FindOnly(name,"string");
   if(object)
   {
      char* s = (char*)object->GetObject();
      return(Buffer(s));
   }
   return Buffer("");
}

char* tObjectScripter::BeginCompletion(char* line)
{
   char* token;
   int currentToken = 0;

   tShatterParser parser;
   parser.SetBreakChar(' ');

   parser.Parse(line);
   token = parser.GetFragment(currentToken++, "");

   strcpy(completingFormed, "");

   completingMode = NONE;
   completingCount = 0;

   if(used)
   {
      completingObject = used;
   }
   else
   {
      completingObject = (tObject*)objects->Find(token);
   }

   if(completingObject != NULL)
   {
         strcpy(completingFormed, token);
         strcat(completingFormed, " ");
         token = parser.GetFragment(currentToken++, "");
   }

   if((completingObject == NULL) && (parser.GetNumFragments() == 1))
   {
      completingMode = OBJECT_OR_METHOD;
      strcpy(completingFragment, token);
      strcpy(completingFormed, "");
      return NextCompletion();
   }

   if(completingObject == NULL)
   {
      completingObject = scripterObject;
   }

   tFunction* currentMethod = completingObject->GetClass()->GetMethod(token);

   if((currentMethod == NULL) && (used))
   {
      completingObject = scripterObject;
      currentMethod = completingObject->GetClass()->GetMethod(token); 
   }

   if(currentMethod == NULL)
   {
      completingMode = METHOD;
      strcpy(completingFragment, token);
      return NextCompletion();
   }
   else
   {
      strcat(completingFormed, token);
      strcat(completingFormed, " ");
      token = parser.GetFragment(currentToken++, "");
   }

   while(currentToken < (parser.GetNumFragments()))
   {
      strcat(completingFormed, token);
      strcat(completingFormed, " ");
      token = parser.GetFragment(currentToken++, "");
   }

   strcpy(completingFragment, token);
   completingMode = OBJECT;
   return NextCompletion();
}

int PartialMatch(char* bigger, char* smaller)
{
   while(*smaller)
   {
      if(*smaller++ != *bigger++)
         return 0;
   }
   return 1;
}


char buffer[256];

char* tObjectScripter::NextCompletion(void)
{
   char match[64];
   int matchNumber = -1;
   int i;

   strcpy(match, completingFragment);

   switch(completingMode)
   {
      case OBJECT_OR_METHOD:
      {
         for(i = 0; i < objects->NumSymbols(); i++)
         {
            if(PartialMatch(objects->GetName(i), completingFragment))
               matchNumber++;

            if(matchNumber == completingCount)
            {
               strcpy(match, objects->GetName(i));
               break;
            }
         }

         if(matchNumber != completingCount)
         {
            tSymbolTable<tFunction>* functions = scripterClass->GetFunctionTable();
            for(i = 0; i < functions->NumSymbols(); i++)
            {
               if(PartialMatch(functions->GetName(i), completingFragment))
                  matchNumber++;

               if(matchNumber == completingCount)
               {
                  strcpy(match, functions->GetName(i));
                  break;
               }
            }
         }

         if((matchNumber) < completingCount)
         {
            completingCount = -1;
            break;
         }
      }
      break;

      case OBJECT:
         for(i = 0; i < objects->NumSymbols(); i++)
         {
            if(PartialMatch(objects->GetName(i), completingFragment))
               matchNumber++;

            if(matchNumber == completingCount)
            {
               strcpy(match, objects->GetName(i));
               break;
            }
         }

         if((matchNumber) < completingCount)
         {
            completingCount = -1;
            break;
         }
         break;
      case METHOD:
      {
         tSymbolTable<tFunction>* functions = 
            completingObject->GetClass()->GetFunctionTable();
         for(i = 0; i < functions->NumSymbols(); i++)
         {
            if(PartialMatch(functions->GetName(i), completingFragment))
               matchNumber++;

            if(matchNumber == completingCount)
            {
               strcpy(match, functions->GetName(i));
               break;
            }
         }

         if((matchNumber) < completingCount)
         {
            completingCount = -1;
            break;
         }
      }
      break;
      case NONE:
         break;
   }

   completingCount++;

   strcpy(buffer, completingFormed);
   strcat(buffer, match);
   return buffer;
}
