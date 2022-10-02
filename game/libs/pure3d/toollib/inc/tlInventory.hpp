/*===========================================================================
    tlInventory.hpp
    created: Jan 19, 2000
    Greg Mayer

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _TLINVENTORY_HPP
#define _TLINVENTORY_HPP

#include "tlEntity.hpp"
#include "tlEntityTable.hpp"
#include "tlTypes.hpp"
#include "tlSafeEntityCaster.hpp"


//-------------------------------------------------------------------
class tlInventory
{
public:
    tlInventory();
    virtual ~tlInventory();

    //void SetSize(const int size);
    
    tlEntity* Find(tlSafeEntityCasterBase& c, const char* name)
    {
        return Find(c, tlEntity::MakeUID(name));
    }
    
    tlEntity* Find(tlSafeEntityCasterBase& c, const TLUID uid);

    // return -1 if there is a UID and type collision
    // return 0 for no problemo
    int Store(tlEntity* obj);

    //
    // Returns 1 if obj was deleted from the inventory
    // and 0 if not
    //
    int Remove(tlEntity* obj);

    void DeleteAllElements();

    tlEntityTable* GetTable() { return table; }
    int GetElementCount()    { return table->GetElementCount(); }

    // Returns a single file datachunk containing all the
    // chunks corresponding to the inventory's tlEntities,
    // properly sorted.
    tlDataChunk* Export();
    
    // Hook up any references for objects in the inventory
    void ResolveReferences();

    //----------------------------------------------------------------   
    //
    // ripped this right out of pure3d runtime inventoryiterator.inl
    //
    template <class T> class Iterator
    {
    public:
        Iterator(tlInventory* i) : inventory(i)
        {
            //inventory->AddRef();
            it = new tlEntityTable::RawIterator(inventory->GetTable());
        }
        
        ~Iterator()
        {
            //inventory->Release();
            delete it;
        }

        inline T* First()
        {
            tlSafeEntityCaster<T> cast;
            tlEntity* obj = it->First();
            return cast.safe_cast(obj) ? (T*)obj : (T*)Next();
        }

        inline T* Next()
        {
            tlSafeEntityCaster<T> cast;
            tlEntity* obj = it->Next();
            while(obj && !cast.safe_cast(obj))
            {
                obj = (T*)it->Next();
            }
            return (T*)obj;
        }

    private:
        tlInventory* inventory;
        tlEntityTable::RawIterator* it;
    };


    //----------------------------------------------------------------

protected:

    tlEntityTable* table;
};

//-------------------------------------------------------------------
template <class T> inline T* toollib_find(tlInventory* inventory, TLUID uid)
{
    tlSafeEntityCaster<T> foo;
    return (T*)inventory->Find(foo, uid);
}

template <class T> inline T* toollib_find(tlInventory* inventory, const char* name)
{
    if (name)
    {
        return toollib_find<T>(inventory, tlEntity::MakeUID(name));
    }
    return NULL;
}

#endif // _TLINVENTORY_HPP

