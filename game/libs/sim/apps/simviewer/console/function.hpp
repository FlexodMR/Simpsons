#ifndef _FUNCTION_HPP_
#define _FUNCTION_HPP_

const char argString = 's';
const char argInt    = 'i';
const char argFloat  = 'f';
const char argClass  = 'c';
const char argEnum   = 'e';

struct tArgument
{
   char type;
   char* name;
};

class tFunction
{
public:
   tFunction(char* name, void *function, char* description, void* userData = 0, int deleteUserData = 0);
   ~tFunction();

   char* GetName(void) {return name;}

   int  GetNumArgs(void);
   char GetArgType(int);
   int CheckClassType(int,char*);
   int  Dispatch(int nArgs, unsigned long* args, void* userData = 0);

private:
   void* function;
   void* userData;
   int deleteUserData;
   int nArgs;
   tArgument arguments[8];

   char name[128];
};
#endif