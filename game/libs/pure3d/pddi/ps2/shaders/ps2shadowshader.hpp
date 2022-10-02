/*====================================================================
   ps2shadowshader.hpp
   17-Sep-02 Created by Amit

   Copyright (c)2001, 2002 Radical Entertainment Ltd.
   All rights reserved.
====================================================================*/

#ifndef PS2SHADOWSHADER_HPP_INCLUDED
#define PS2SHADOWSHADER_HPP_INCLUDED

#include <pddi/ps2/ps2shader.hpp>

class ps2Texture;

class ps2ShadowShader : public ps2Shader
{
public:
    ps2ShadowShader(ps2Context* context);

    virtual const char* GetType(void) { return "shadow"; }
    static void Install();

protected:
    ~ps2ShadowShader();

    // ps2Shader interface
    void Validate(unsigned format);
    void Bind(GSContext* context, VifStream& vif);

    ps2Context* context;
};

#endif // PS2SHADOWSHADER_HPP_INCLUDED
