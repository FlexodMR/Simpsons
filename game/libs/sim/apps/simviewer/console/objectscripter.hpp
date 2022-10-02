#ifndef _OBJECTSCRIPTER_HPP_
#define _OBJECTSCRIPTER_HPP_

#include"scripter.hpp"
#include"textbuffer.hpp"
#include"symbol.hpp"

class tClass;
class tObject;
class tEnum;

class tObjectScripter : public tScripter
{
public:
   tObjectScripter();
   ~tObjectScripter();
   
   void  AddClass(tClass*);
   void  AddEnum(tEnum*);
   void  AddObject(char* className, char* name, void* object);
   void  NewObject(char* className, char* name);

   void  SetFunction(char* name, void* function, char* args, void*, int del = 0);

   void  SetFloat(char* name, float val);
   void  SetInt(char* name, int val);
   void  SetString(char* name, char* val);

   void  SetFloatRef(char* name, float* val) { AddObject("float", name, (void*)val); }
   void  SetIntRef(char* name, int* val)     { AddObject("int", name, (void*)val); }
   void  SetStringRef(char* name, char* val) { AddObject("string", name, (void*)val); }

   float GetFloat(char* name);
   int   GetInt(char* name);
   char* GetString(char* name);

   void Use(char*);

   char* BeginCompletion(char*);
   char* NextCompletion(void);

   void ExecFile(char*);
   void ExecIniFile(char*);
   void ExecLine(char*);

   void SetOutput(tTextBuffer* t) { output = t; }

protected :
   enum completionMode { NONE, OBJECT, METHOD, OBJECT_OR_METHOD };

   void ExecCommand(char*);
   void Print(char*);

   tObject* FindOnly(char* name, char* type);
   tObject* FindOrCreate(char* name, char* type);

private:
   tSymbolTable<tClass>* classes;
   tSymbolTable<tEnum>* enums;
   tSymbolTable<tObject>* objects;

   tClass* scripterClass;
   tObject* scripterObject;

   tObject* used;
   
   completionMode completingMode;
   int completingCount;
   tObject* completingObject;
   char completingFormed[256];
   char completingFragment[32];

   tTextBuffer* output;
};

#endif