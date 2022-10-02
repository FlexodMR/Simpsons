/*====================================================================
   ps2errorshader.hpp
   31-Jan-01 Created by Neall

   Copyright (c)2001 Radical Entertainment, Ltd.
   All rights reserved.
====================================================================*/

#ifndef _PS2ERRORSHADER_HPP
#define _PS2ERRORSHADER_HPP

#include <pddi/ps2/ps2shader.hpp>

class ps2ErrorShader : public ps2Shader
{
public:
    ps2ErrorShader(ps2Context* context);

    virtual const char* GetType(void) { return "error"; }
    static void Install();

protected:
    ~ps2ErrorShader() { /**/ }

    // ps2Shader interface
    void Bind(GSContext* gsContext, VifStream& stream);
    void Validate(unsigned format);

    ps2Context* context;
};

#endif /* _PS2ERRORSHADER */
