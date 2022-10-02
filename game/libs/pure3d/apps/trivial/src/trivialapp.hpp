//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



/*
 * Pure3D Trivial application framework
 *
 * Created 20-Mar-2000 Neall (verheyde@radical.ca)
 *
 */

#ifndef _TRIVIALAPP_HPP

class TrivialApp
{
public:
    virtual bool Init() = 0;
    virtual int Run() = 0;
};

#endif
