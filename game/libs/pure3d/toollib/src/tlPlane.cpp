/*===========================================================================
    File:: tlPlane.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlPlane.hpp"
#include "tlFile.hpp"
#include <assert.h>
#include <string.h>

void 
tlPlane::Read(tlFile* f)
{
   normal = f->GetPoint();
   D = f->GetFloat();
}

void
tlPlane::Write(tlFile* f)
{
   f->PutPoint(normal);
   f->PutFloat(D);
}

void
tlPlane::Print(int index, int indent)
{
   printf("%*s%4d %8.4f %8.4f %8.4f / %8.4f\n",indent,"", index, normal.x, normal.y, normal.z, D);
}

void
tlPlane::PrintFormatted(int index, int indent)
{
   assert("unimplemented" == 0);
}

void
tlPlane::Init()
{
   normal = tlPoint(1.0f,0.0f,0.0f); D = 0.0f;
}

bool
tlPlane::GetFieldValue(char* val, int len) const
{
   char buf[256];

   sprintf(buf, "%8.4f %8.4f %8.4f / %8.4f\n", normal.x, normal.y, normal.z, D);
   strncpy(val, buf, len);

   return true;
}

bool
tlPlane::GetFieldUpdatable()
{
   return false;
}

bool
tlPlane::SetFieldValue(const char*)
{
   return false;
}

