//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _ORIGIN_HPP_
#define _ORIGIN_HPP_

#include<p3d/drawable.hpp>

class tShader;

class Origin : public tDrawable
{
public:
    Origin();
    ~Origin();

    float size;

    virtual void Display(void);

protected:
    tShader* shader;
};

#endif
