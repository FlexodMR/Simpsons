#include "objectscripter.hpp"
#include "class.hpp"
#include "function.hpp"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <p3d/memheap.hpp>

tMemHeap* consoleTypeHeap = NULL;
unsigned consoleTypeHeapRef = 0;

int int_as_int(int* obj)
{
   return *obj;
}

void int_print(char* buffer, int* obj)
{
   sprintf(buffer,"%d", *obj);
}

void int_set(char* val, int* obj)
{
   *obj = atoi(val);
}

void* int_create(void)
{
   assert(consoleTypeHeap);
   return (void*)(consoleTypeHeap->malloc(sizeof(int)));
}

void int_destroy(int* obj)
{
}

int float_as_int(float* obj)
{
   return int(*obj);
}

void float_print(char* buffer, float* obj)
{
   sprintf(buffer,"%.4f", *obj);
}

void float_set(char* val, float* obj)
{
   *obj = (float)atof(val);
}

void* float_create(void)
{
   assert(consoleTypeHeap);
   return (void*)(consoleTypeHeap->malloc(sizeof(float)));
}

void float_destroy(float* obj)
{
   delete obj;
}

void string_print(char* buffer, char* obj)
{
   strcpy(buffer,obj);
}

void string_set(char* value, char* obj)
{
   assert(strlen(value) < 256);
   strcpy(obj, value);
}

void* string_create(void)
{
   assert(consoleTypeHeap);
   return (void*)(consoleTypeHeap->malloc(256));
}

void string_destroy(char* obj)
{
}


void vector_print(char* buffer, void* obj)
{
   float* f = (float*)obj;
   sprintf(buffer,"( %f %f %f )", f[0], f[1], f[2]);
}

void vector_set(char* value, char* obj)
{
   float* f = (float*)obj;
   sscanf(value,"%f %f %f", &f[0],&f[1], &f[2]);
}

void* vector_create(void)
{
   assert(consoleTypeHeap);
   return (void*)(consoleTypeHeap->malloc(12));
}

void vector_destroy(char* obj)
{
}

void colour_print(char* buffer, void* obj)
{
   unsigned char* f = (unsigned char*)obj;
   sprintf(buffer,"(%u %u %u %u)", f[2], f[1], f[0], f[3]);
}

void colour_set(char* value, char* obj)
{
   int d[4];   
   sscanf(value,"%d %d %d %d", &d[2],&d[1], &d[0], &d[3]);
   char* f = (char*)obj;
   f[0] = d[0];
   f[1] = d[1];
   f[2] = d[2];
   f[3] = d[3];
}

void* colour_create(void)
{
   assert(consoleTypeHeap);
   return (void*)(consoleTypeHeap->malloc(4));
}

void colour_destroy(char* obj)
{
}


void InitBasicTypes(tObjectScripter* scripter)
{
   tClass* intClass = new tClass("int");
   intClass->AddMethod(new tFunction("as_int",(void*)&int_as_int,""));
   intClass->AddMethod(new tFunction("print",(void*)&int_print,"s"));
   intClass->AddMethod(new tFunction("set",(void*)&int_set,"s"));
   intClass->AddMethod(new tFunction("create",(void*)&int_create,""));
   intClass->AddMethod(new tFunction("detroy",(void*)&int_destroy,""));
   scripter->AddClass(intClass);

   tClass* floatClass = new tClass("float");
   floatClass->AddMethod(new tFunction("as_int",(void*)&float_as_int,""));
   floatClass->AddMethod(new tFunction("print",(void*)&float_print,"s"));
   floatClass->AddMethod(new tFunction("set",(void*)&float_set,"s"));
   floatClass->AddMethod(new tFunction("create",(void*)&float_create,""));
   floatClass->AddMethod(new tFunction("detroy",(void*)&float_destroy,""));
   scripter->AddClass(floatClass);

   tClass* stringClass = new tClass("string");
   stringClass->AddMethod(new tFunction("print",(void*)&string_print,"s"));
   stringClass->AddMethod(new tFunction("set",(void*)&string_set,"s"));
   stringClass->AddMethod(new tFunction("create",(void*)&string_create,""));
   stringClass->AddMethod(new tFunction("detroy",(void*)&string_destroy,""));
   scripter->AddClass(stringClass);

   tClass* vectorClass = new tClass("vector");
   vectorClass->AddMethod(new tFunction("print",(void*)&vector_print,"s"));
   vectorClass->AddMethod(new tFunction("set",(void*)&vector_set,"s"));
   vectorClass->AddMethod(new tFunction("create",(void*)&vector_create,""));
   vectorClass->AddMethod(new tFunction("detroy",(void*)&vector_destroy,""));
   scripter->AddClass(vectorClass);

   tClass* colourClass = new tClass("colour");
   colourClass->AddMethod(new tFunction("print",(void*)&colour_print,"s"));
   colourClass->AddMethod(new tFunction("set",(void*)&colour_set,"s"));
   colourClass->AddMethod(new tFunction("create",(void*)&colour_create,""));
   colourClass->AddMethod(new tFunction("detroy",(void*)&colour_destroy,""));
   scripter->AddClass(colourClass);

}

