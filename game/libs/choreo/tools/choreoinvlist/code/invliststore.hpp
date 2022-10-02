/*
 * choreoinvlist/invliststore.hpp
 */


#ifndef CHOREOINVLIST_INVLISTSTORE_HPP
#define CHOREOINVLIST_INVLISTSTORE_HPP


#include <stdio.h>
#include <p3d/inventory.hpp>


//---------------------------------------------------------------------------
// class InvListStore
//---------------------------------------------------------------------------

class InvListStore: public tEntityStore
{
public:

    InvListStore(FILE* outputFile);

    void SetFindClass(const char* findClass);
    void SetFindName(const char* findName);

    virtual IRefCount* Find(radLoadInventory::SafeCastBase& c, tUID uid);
    virtual void Store(tEntity* obj);

protected:

    virtual ~InvListStore();

private:

    FILE* m_OutputFile;

    char m_FindClass[1024];
    char m_FindName[1024];
};


#endif // CHOREOINVLIST_INVLISTSTORE_HPP
