#ifndef _SCRIPTER_HPP_
#define _SCRIPTER_HPP_

class tScripter
{
public:
   virtual ~tScripter() {};

   virtual void  SetFunction(char* name, void* function, char* args, void*, int del = 0) = 0;

   virtual void  SetFloat(char* name, float val)  = 0;
   virtual float GetFloat(char* name)  = 0;

   virtual void  SetInt(char* name, int val)  = 0;
   virtual int   GetInt(char* name)  = 0;

   virtual void  SetString(char* name, char* val)  = 0;
   virtual char* GetString(char* name)  = 0;

   /*
   void  SetVariable(char* name, float val) { SetFloat(name,val); }
   float GetVariable(char* name) { return GetFloat(name); }
   */
   void  SetConstant(char* name, float val) { SetFloat(name,val); }
   void  SetConstant(char* name, int val) { SetInt(name,val); }
   void  SetConstant(char* name, char* val) { SetString(name,val); }

   virtual void ExecLine(char* line) = 0;
//   virtual void ExecLines(char* line) = 0;

   virtual void ExecFile(char* filename) = 0;

   virtual char* BeginCompletion(char*) = 0;
   virtual char* NextCompletion(void) = 0;

};

#endif