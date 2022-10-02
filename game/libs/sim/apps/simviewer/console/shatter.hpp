#ifndef _SHATTER_HPP_
#define _SHATTER_HPP_

class tShatterParser
{
public:
   tShatterParser();
   ~tShatterParser();

   void SetBreakChar(char c) { breakChar = c; }

   void Parse(char*);

   int GetNumFragments(void) {return nFragments;}
   char* GetFragment(unsigned i, char* def = 0l)  {if(i < nFragments) return fragments[i]; else return def;}
   int IsQuoted(unsigned i) { return quoted[i]; }

private:
   char breakChar;
   unsigned nFragments;
   char* fragments[32];
   int quoted[32];
   char buffer[1024];
};

#endif


