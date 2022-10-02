//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VIEWP3D_HPP_
#define _VIEWP3D_HPP_

#include"interface.hpp"
#include<p3d/p3dtypes.hpp>

class tFont;
class tShader;

namespace Console
{

class ViewP3D : public View
{
public:
    ViewP3D(Buffer* buffer, tShader* Shader, tFont* font);
    ~ViewP3D();

    void Show(bool b) {active = b;}
    void Maximize() { maximised = !maximised; }
    void Display(void);        // call at end of frame

    void  SetHeight(float h) {height = h;}
    float GetHeight() { return height; }

    void SetBackgroundShader(tShader* m);
    tShader* GetBackgroundShader(void) { return mat; }

    void SetBackgroundStrides(float u, float v) {ustride = u; vstride = v; }

    void SetFont(tFont* f);
    tFont* GetFont(void) { return font; }

    void SetTextColour(tColour c) { textColour = c; }
    void SetBackgroundColour(tColour c) { backgroundColour = c;}

    void SetOrtho(bool b) { ortho = b; }
    void SetAutoPos(bool b) { autopos = b; }
    void SetFade(bool b) { fade = b; }
    void SetSlide(bool b) { slide = b; }
    void SetTime(unsigned t) { time = t; }
    void Tick(float t) {elapsedTime += (int)t;}

    void SetBuffer(Buffer* b) { buffer = b;}

private:
    Buffer* buffer;

    float height;    // height of console display area
    bool  maximised; // console is maximiseed (fills whole screen)

    float ustride,vstride;

    tShader* mat;  // console background Shader
    tFont* font;

    tColour textColour, backgroundColour;

    bool active;
    bool lastActive;

    float direction;
    float t;
    int count;

    bool ortho, autopos, fade, slide;
    unsigned time;
    unsigned elapsedTime;
};

}

#endif 
