#include"shatter.hpp"
#include<string.h>
#include<assert.h>


tShatterParser::tShatterParser()
{
   breakChar = ' ';
   nFragments = 0;
}

tShatterParser::~tShatterParser()
{
}

void tShatterParser::Parse(char* in)
{
   assert(strlen(in) < 1020);

   strcpy(buffer, in);

   char* walk = buffer;

   while(*walk == breakChar)
      walk++;
         
   while(*walk != 0)
   {
      if(*walk == '\"')
      {
         walk++;
         quoted[nFragments] = 1;
         fragments[nFragments++] = walk;
         while ((*walk != '\"') && (*walk != 0))
         {
            walk++;
         }

         if(*walk == '\"')
            *walk++ = 0;
      }
      else
      {
         quoted[nFragments] = 0;
         fragments[nFragments++] = walk;
         static int inQuotes = 0;
         inQuotes = 0;
         while((*walk != 0) /* && (*walk != '\n') */)
         {
            if(*walk == '\"')
               inQuotes = !inQuotes;

            walk++;
            if((*walk == breakChar) && !inQuotes)
               break;
         }
      }
   
      if(*walk == breakChar)
      {
         *walk++ = 0;
      }

      while((*walk == breakChar))
      {
         walk++;
      }
   }
}

