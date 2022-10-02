/*===========================================================================

    File: tlTable.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/


/* This is modified from the design of the Max SDK generic Tab class.
 * The functions and classes have been renamed so that Toollib can still be linked
 * into Max plugins without conflicts
 */


/*-------------------------------------------------------------------------------

 A Generic "Table" class.      
  
  (DSilva 9-13-94)

  This is a type-safe variable length array which also supports list-like
  operations of insertion, appending and deleting.  Two instance variables
  are maintained: "nalloc" is the number elements allocated in the
  array; "count" is the number actual used. (count<=nalloc).
  Allocation is performed automatically when Insert or Append operations
  are performed.  It can also be done manually by calling Resize or Shrink.
  Note: Delete does not resize the storage: to do this call Shrink().  
  If you are going to do a sequence of Appends, it's more efficient to 
  first call Resize to make room for them.  Beware of using the Addr 
  function: it returns a pointer which may be invalid after subsequent 
  Insert, Append, Delete, Resize, or Shrink operations.  
  
  
  The implementation minimizes the storage of empty Tables: they are
  represented by a single NULL pointer.  Also, the major part of the
  code is generic, shared by different Tabs for different types of elements.

------------------------------------------------------------------------------*/

#ifndef _TLTABLE_HPP
#define _TLTABLE_HPP

#include <malloc.h>
#include <assert.h>
#include <stdlib.h>
#include "tlTypes.hpp"


typedef int CNT;

typedef struct {                                
     CNT count;
     CNT nalloc;
} tlTabHdr;

////////////////////////////////////////////////////////////////////////////////
// Functions for internal use only: Clients should never call these.
//
int tlTBMakeSize(tlTabHdr** pth, int num, int elsize); 
int tlTBInsertAt(tlTabHdr** pth,int at, int num, void *el, int elsize, int extra); 
int tlTBCopy(tlTabHdr** pth,int at, int num, void *el, int elsize); 
int tlTBDelete(tlTabHdr** pth,int starting, int num, int elsize);
void tlTBSetCount(tlTabHdr** pth,int n, int elsize);
////////////////////////////////////////////////////////////////////////////////

#define NoExport

#ifdef WIN32
#pragma warning(disable:4786)
#endif

template <class T> class tlTabHd
{
public:
     CNT count;
     CNT nalloc;
     T data[100];
     tlTabHd() { count = 0; nalloc = 0; }
};

#ifdef P3DWIN95
#ifndef CDECL
#define CDECL  __cdecl
#endif
#else
#ifndef CDECL
#define CDECL
#endif
#endif

// Type of function to pass to Sort.
// Note: Sort just uses the C lib qsort function. If we restricted
// all tlTable elements to have well defined <,>,== then we wouldn't need
// this callback function.
typedef int(CDECL *CompareFnc) ( const void *elem1, const void *elem2 );


template <class T> class NoExport tlTable {
private:
     tlTabHd<T> *th;
public:
     tlTable(): th(0) {}
     // Copy constructor
     tlTable(const tlTable& tb) : th(0)
     {  
          tlTBCopy((tlTabHdr** )&th,0, tb.Count(), &tb.th->data, sizeof(T)); 
     }

     // Assignment operator
     tlTable& operator=(const tlTable& tb) {
          tlTBCopy((tlTabHdr** )&th,0, tb.Count(), &tb.th->data, sizeof(T)); 
          return *this;
     }
    
     virtual ~tlTable() { if(th) { free(th); th = 0; } }  // destructor

     int Count() const { return(th?th->count:0); }  // return number of entries being used
     int Nalloc() const { return(th?th->nalloc:0); }  // return number of entries allocated

     void ZeroCount() { if (th) th->count=0; }
     void SetCount(int n) { tlTBSetCount((tlTabHdr **)&th, n, sizeof(T)); }

     T& operator[](const int i) const {       // access ith entry.
          assert(th&&(i<th->count)); 
        return(th->data[i]); 
     }
     T& operator[](const int i) {       // access ith entry.
// KMC        assert(th&&(i<th->count)); 
//    assert( th && (i < th->nalloc) );
        if( !th || (i >= th->count ) )
            SetCount( i+1 );
        return(th->data[i]); 
     }

     T* Addr(const int i) const {             // use with caution  
          assert(th&&(i<th->count)); return(&th->data[i]); 
     }
     //   void *MemAddr() { return((void *)th);  }
     //   long MemSize() { return(th? (2*sizeof(CNT)+th->nalloc*sizeof(T)): 0);}

     // Insert an element at position "at" 
     int Insert(int at, T &el) {
          return(tlTBInsertAt((tlTabHdr**)&th, at, 1, (void *)&el, sizeof(T),0));
     }
     // Insert "num" elements position "at" 
     int Insert(int at, int num, T *el) {
          return(tlTBInsertAt((tlTabHdr**)&th, at, num, (void *)el, sizeof(T),0));
     }
     // Append an element position at end of array" 
     // If need to enlarge the array, allocate "allocExtra" extra slots
     int Append(const T &el, int allocExtra=0) {
          return(tlTBInsertAt((tlTabHdr**)&th,th?th->count:0,1,  (void *)&el,sizeof(T),allocExtra)); 
     }
     // Append "num" elements position on end of array" 
     // If need to enlarge the array, allocate "allocExtra" extra slots
     int Append(int num, T *el, int allocExtra=0) {
          return(tlTBInsertAt((tlTabHdr**)&th,th?th->count:0,num,   (void *)el,sizeof(T),allocExtra)); 
     }
     
     bool Find( const T & el, int* pIndex = NULL ) const
     {
        bool found = false;
        int at;
        for ( at = 0; at < (th?th->count:0); at++ )
        {
            if ( th->data[at] == el )
            {
                if ( pIndex != NULL )
                {
                    *pIndex = at;
                }

                found = true;
                break;
            }
        }

        return found;
     }

     // add a unique item to the array, will use the items == operator
     virtual int AppendUnique( const T &el )
     {
        int at = (th?th->count:0);     // if not found, this is not modified.
        if ( !Find( el, &at ) )
        {
            Append( el );
        }

        return at;
     }
     
     // List-type delete of "num" elements starting with "start" 
     int Delete(int start,int num) { 
          return(tlTBDelete((tlTabHdr**)&th,start,num,sizeof(T)));
     } 
     // Change number of allocated items to num
     int Resize(int num) { 
          return(tlTBMakeSize((tlTabHdr**)&th,num, sizeof(T)));
     } 
     // Reallocate so there is no wasted space (nalloc = count)
     void Shrink() {
          tlTBMakeSize((tlTabHdr**)&th, th?th->count:0, sizeof(T)); 
     }

     void Sort(CompareFnc cmp) {
          if (th) {
                qsort(th->data,th->count,sizeof(T),cmp);
          }
     }

     void SortRange(CompareFnc cmp, int start, int count) {
          if (th) {
                qsort(&th->data[start],count,sizeof(T),cmp);
          }
     }

     
     bool operator==(tlTable & rTable)
     {
         bool equal = true;

         if (!rTable.th || !this->th)
         {
             equal = false;
         }
         else if (rTable.th->count != this->th->count)
         {
             equal = false; 
         }
         else
         {
             for (int i = 0; i < rTable.th->count && equal; i++)
             { 
                 if (!(rTable.th->data[i] == this->th->data[i]) )
                 {
                     equal = false;
                 }
             }
         }

         return equal;
     }



#if 0
     void Print() { 
          if (th==0) return;
          cout << "\nTable: count="<< th->count <<"  nalloc="<< th->nalloc;
          cout << "     elementSize= " << sizeof(T) << "   Contents:\n"; 
          for (int i=0; i<th->count; i++)  
                cout << "  tab[" << i << "] = " << th->data[i] <<'\n';
     }
#endif                                                      
};

#endif



