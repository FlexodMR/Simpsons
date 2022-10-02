/*===========================================================================
    File:: dospath.cpp

    Provide some service to work with file names.

    Copyright (c)1995, 1996 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
#include "dospath.hpp"
#include <string.h>
#include <ctype.h>
//------------------------------------------------
// Purpose:
//   Find out if the symbol is a delimiter for path name
// Return:
//   1   - if symbol is a delimiter
//
int isDosDelimSet (char ch)
{
    return ch=='\\' || ch=='/' || ch==':' || ch=='\0';
}
//++++++++++++++++++++++++++++++++++++++++++++++++
int ToStrEnd (char** p)
{
  int len=0;
  while (**p) {(*p)++; len++;}
  (*p)--;
  return len;
}
//++++++++++++++++++++++++++++++++++++++++++++++++
char* Pos (char ch, char* s)
{
  char* p=s;
  while (*p && *p != ch) p++;
  return p;
}
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Return whether and position of extension separator dot in a pathname
int HasExtension (char *const Name, char** DotPos)
{
  char*  p = Name;
  int    len = ToStrEnd (&p);
  while (len && (*p != '.')) {p--; len--;}
  if (len){
      *DotPos=p;
  } else {
      *DotPos=NULL;
      p = Name;
  }
  
  while (*p && *p != '\\') p++;
  return (*DotPos!=NULL) && (*p != '\\');
}
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Return a pathname with the specified extension attached
//
char* DefaultExtension (char* Name, const char* Ext)
{
  char* DotPos;
  if (HasExtension(Name, &DotPos))
     return Name;
  else
     return strcat (strcat (Name,"."), Ext);
}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Return a pathname with the specified extension attached
//
char* ForceExtension (char* Name, const char* Ext)
{
  char* i;
  if (HasExtension(Name, &i)) {*++i='\0'; return strcat (Name, Ext);}
  else
     return DefaultExtension (Name,Ext);
}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++
//Return just the extension of a pathname
//
char* JustExtension (char* Name)
{ char* i;
  if (HasExtension(Name, &i)) return ++i; else return NULL;
}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++
//Remove the extension of a pathname
//
char* RemoveExtension (char* Name)
{ char* i;
  if (HasExtension(Name, &i)) *i = 0;
  return Name;
}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Return just the filename of a pathname
//
char* JustFileName(char* PathName)
{
  char* p = PathName;
  int len = ToStrEnd (&p);
  while (!isDosDelimSet (*p) && len--) p--;
  return ++p;
}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Return just the drive:directory portion of a pathname
//
char* JustPathName (char* PathName)
{
  char* p = JustFileName (PathName);
  if (p==PathName)
     return NULL;        // Had no drive or directory name
  else {
     *p='\0';
     if (--p == PathName) return p; else
     if (*p == '\\' && *--p != ':') *++p='\0';
     return PathName;
  }
}
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Add a default backslash to a directory name
//
char* AddBackSlash (char* PathName)
{
  char* p=PathName;
  ToStrEnd (&p);
  if (! isDosDelimSet (*p)) {*++p = '\\'; *++p = '\0';}
  return PathName;
}
//++++++++++++++++++++++++++++++++++++++++++++++++
int PathIsAbsolute (char* PathName)
{
  char* p = Pos(':', PathName);
  char* t = PathName;
  while (*t == ' ') t++;
  if (*p || (*t == '\\'))
     return 1;
  else
     return 0;
}


