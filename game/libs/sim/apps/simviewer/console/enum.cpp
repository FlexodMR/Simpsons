#include"enum.hpp"

#include<string.h>
#include<assert.h>

tEnum::tEnum(char* n, int v)
{
   values = new tSymbolTable<tEnumValue>(v);
   assert(strlen(n) < 255);
   strcpy(name,n);
}

tEnum::~tEnum()
{
}

void tEnum::AddValue(char* name, int v)
{
   values->Add(name, new tEnumValue(v));
}

int  tEnum::Value(char* name)
{
   return values->Find(name)->value;
}
