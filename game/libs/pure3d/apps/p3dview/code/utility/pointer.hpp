//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _POINTER_HPP_
#define _POINTER_HPP_

//-----------------------------------------------------------------------------
// AutoPtr
//
// lighteight "smart" Ptr (like C++ auto_ptr)
// deletes referenced object when reassigned or destroyed
//-----------------------------------------------------------------------------

template <class T> class AutoPtr
{
public:
   AutoPtr()                : obj(0) { }
   AutoPtr(T* t)            : obj(0) { Assign(t);}
   AutoPtr(AutoPtr& p) : obj(0) { Assign(p.obj); }
   ~AutoPtr()             { Release(); }

   AutoPtr& operator=(AutoPtr& p) { Assign(p.obj); return *this;}
   AutoPtr& operator=(T* t)       { Assign(t); return *this;}
//   bool  operator==(T* p)   { return obj == p; }

   T* operator->() { return (T*)obj;}
   T& operator*()  { return *((T*)obj);}
   operator T*()   { return (T*)obj;}

   operator bool()    { return obj != 0;}
   bool operator !()  { return obj == 0;}

   T* Object() { return (T*)obj;}
//   template <class T2> operator AutoPtr<T2>() { return AutoPtr<T2>((T*)obj);}

private:
   inline void Assign(T* o) { if(obj) delete obj; obj = o;}
   inline void Release(void) { if(obj) delete obj; obj = 0;}

   T* obj;
};

//-----------------------------------------------------------------------------
// RefPtr
//
// Synopsis:    
//               
// reference counted Ptr, calls addref and release as appropriate
//
//-----------------------------------------------------------------------------
template <class T> class RefPtr
{
public:
   RefPtr()              : obj(0) {}
   RefPtr(T* t)          : obj(0) { Assign(t);}
   RefPtr(RefPtr& p) : obj(0) { Assign(p.obj); }
   ~RefPtr()             { Release(); }

   RefPtr& operator=(RefPtr& p) { Assign(p.obj); return *this;}
   RefPtr& operator=(T* t)          { Assign(t); return *this;}
//   bool  operator==(T* p)      { return obj == p; }

   T* operator->() { return (T*)obj;}
   T& operator*()  { return *((T*)obj);}
   operator T*()   { return (T*)obj;}

   operator bool()    { return obj != 0;}
   bool operator !()  { return obj == 0;}

   T* Object() { return (T*)obj;}
//   template <class T2> operator RefPtr<T2>() { return RefPtr<T2>((T*)obj);}
private:
   inline void Assign(T* o) { if(o) o->AddRef(); if(obj) obj->Release(); obj = o;}
   inline void Release(void) { if(obj) obj->Release(); obj = 0;}

   T* obj;
};

//-----------------------------------------------------------------------------
// DumbPtr
//
// just like a standard C++ pointer (no auto deleteing) 
// but can't be uninitialized and resists dangerous casts
//
//-----------------------------------------------------------------------------
template <class T> class DumbPtr
{
public:
   DumbPtr()               : obj(0) { }
   DumbPtr(T* t)           : obj(0) { Assign(t);}
   DumbPtr(DumbPtr& p) : obj(0) { Assign(p.obj); }
   ~DumbPtr()              { Release(); }

   DumbPtr& operator=(DumbPtr& p) { Assign(p.obj); return *this;}
   DumbPtr& operator=(T* t)       { Assign(t); return *this;}
//   bool  operator==(T* p)      { return obj == p; }

   T* operator->() { return (T*)obj;}
   T& operator*()  { return *((T*)obj);}
   operator T*()   { return (T*)obj;}

   operator bool()    { return obj != 0;}
   bool operator !()  { return obj == 0;}

   T* Object() { return (T*)obj;}
//   template <class T2> operator DumbPtr<T2>() { return DumbPtr<T2>((T*)obj);}

private:
   inline void Assign(T* o) { obj = o;}
   inline void Release(void) { obj = 0;}

   T* obj;
};

#endif // #ifdef _POINTER_HPP_
