//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLSAFEENTITYCASTER_HPP
#define _TLSAFEENTITYCASTER_HPP

class tlEntity;

#ifdef WIN32
#pragma warning(disable:4786)
#endif

class tlSafeEntityCasterBase
{
public:
    virtual tlEntity* safe_cast(tlEntity* c) = 0;
};

template <class T> class tlSafeEntityCaster : public tlSafeEntityCasterBase
{
public:
    virtual tlEntity* safe_cast(tlEntity* c) { return (tlEntity*)dynamic_cast<T*>(c); }
};

#endif // _TLSAFEENTITYCASTER_HPP

