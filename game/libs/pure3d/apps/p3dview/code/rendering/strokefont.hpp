//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _STROKEFONT_HPP_
#define _STROKEFONT_HPP_

#include <p3d/font.hpp>

class tStrokeFont : public tFont
{
public:
    tStrokeFont(float size);
    ~tStrokeFont();


    virtual float GetFontSize(void) const;
    virtual float GetFontHeight(void) const;
    virtual float GetFontWidth(void) const;
    virtual float GetFontBaseLine() const;
    virtual float GetTextHeight(const P3D_UNICODE* text) const;
    virtual float GetTextWidth(const P3D_UNICODE* text) const;

    virtual void DisplayText(const P3D_UNICODE* text, int formatting) const; 

    virtual tColour GetColour(void) const;
    virtual void SetColour(tColour colour);

    virtual tShader* GetShader(void) const;
    virtual void SetShader(tShader* shader);

    virtual float GetLineSpacing() const;
    virtual void SetLineSpacing(float space);

protected:
    float GetLineWidth(const P3D_UNICODE* text) const;
    void DisplayLine(const P3D_UNICODE* text, int formatting = 0) const;

    float height;
    float space;
    tColour colour;
    tShader* shader;
};

#endif 

