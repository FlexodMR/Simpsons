//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OBCAST_HPP
#define OBCAST_HPP

#include "assert.h"

#ifndef RAD_RELEASE // DEBUG
    template <typename D, class B> inline
    D obFastDynamicCast(  B b )
    {
        if ( b == NULL )
            return NULL;
        D ret = dynamic_cast<D>( b );

        // If you hit this assert you probably need to use guSafeDynamicCast instead.
        assert( ret );
        return( ret );
    }
#else // RAD_RELEASE

    template <typename D, class B> inline
    D obFastDynamicCast(  B b )
    {
        return static_cast<D>( b );
    }

#endif // RAD_RELEASE

template <typename D, class B> inline
    D obSafeDynamicCast(  B b )
    {
        return dynamic_cast<D>( b );
    }

#endif // OBCAST_HPP