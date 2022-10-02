/*===========================================================================
    File:: tlEntity.hpp

    Copyright (c) 1997, 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLENTITY_HPP
#define _TLENTITY_HPP

#include "tlTypes.hpp"

class tlDataChunk;
class tlInventory;

class tlEntity
{
public:
    tlEntity();
    virtual ~tlEntity();

    virtual const char* GetName() const { return name; }

    virtual void        SetName(const char* n);

    static TLUID   MakeUID(const char* s);  
    virtual TLUID          UID();

    virtual void LoadFromChunk16(tlDataChunk *ch) = 0;
    virtual tlDataChunk *Chunk16(void) = 0;

    // This is the new interface, but until old code is updated, it just calls the old interface
    virtual tlDataChunk *Chunk(void) { return Chunk16();}

    // Connect up any references using the inventory
    virtual void ResolveReferences(tlInventory* inv) {}

    // Tag this entity with a value 
    void Mark(int m) { mark = m; }
    int GetMark() const { return mark; }

    // Tag all of this entities references with a value
    virtual void MarkReferences(int m) {}

    // If any of it's references have mark m, return true
    virtual bool FindReferenceMark(int m) { return (m == mark); }

private:
    tlEntity(const tlEntity&);
    tlEntity& operator=(const tlEntity&);

    char* name;
    int mark;
};

#endif

