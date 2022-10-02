#include "function.hpp"
#include<string.h>
#include<assert.h>

tFunction::tFunction(char* n, void *func, char* des, void* user, int del)
{
   strcpy(name,n);

   function = func;
   userData = user;
   deleteUserData = del;

   for(int i = 0; i < 8; i++)
      arguments[i].name = NULL;

   nArgs = 0;
   while(*des != 0)
   {
      assert((*des == 'i' ) || (*des == 'f' ) || (*des == 's' ) || (*des == 'c' ) || (*des == 'e' ));

      arguments[nArgs].type = *des;
      if((*des == 'c') || (*des == 'e'))
      {
         *des++;
         assert(*des == '[');
         arguments[nArgs].name = new char[256];
         char* n = arguments[nArgs].name;
         while(*des != ']')
         {
            *n++ = *des++;
            assert(*des);
         }
         *n = 0;
      }
      des++;
      nArgs++;
   }
}

tFunction::~tFunction()
{
   if(deleteUserData)
      delete userData;

   for(int i = 0; i < nArgs; i++)
      delete arguments[i].name;
}

int  tFunction::GetNumArgs(void) 
{
   return nArgs;
}

char tFunction::GetArgType(int i)
{
   return arguments[i].type;
}

int tFunction::CheckClassType(int i,char* name)
{
   if(arguments[i].type = argClass)
   {
      return(strcmp(arguments[i].name, name) == 0);
   }
   return 0;
}

typedef int (*dummyFunction)(int,int,int,int,int,int,int,int,int);

int tFunction::Dispatch(int a, unsigned long* args, void* user)
{
   static unsigned long dummy[9];
   if(args == NULL) args = dummy;

   if(userData)
      args[nArgs] = (int)userData;
   else
      args[nArgs] = (int)user;
   
   return ((dummyFunction)function)(args[0],args[1],args[2],args[3],args[4],args[5],args[6],args[7],args[8]);
}

