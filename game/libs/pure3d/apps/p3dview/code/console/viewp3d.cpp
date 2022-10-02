//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <console/viewp3d.hpp>

#include <p3d/pure3d.hpp>
#include <p3d/error.hpp>
#include <p3d/texturefont.hpp>
#include <p3d/matrixstack.hpp>
#include <p3d/unicode.hpp>

namespace Console
{

ViewP3D::ViewP3D(Buffer* textbuffer, tShader* m, tFont* f)
{
    maximised = 0;
    height = 0.25;

    mat = m;

    if(mat == NULL)
    {
        mat = new tShader;
        mat->SetInt(PDDI_SP_ISLIT, false);
        mat->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ALPHA);
    }

    font = f;

    mat->AddRef();
    
    if(font)
        font->AddRef();

    ustride = (float)256 / (float)p3d::display->GetHeight();
    vstride = (float)256 / (float)p3d::display->GetWidth();

    backgroundColour.Set(0, 0, 0, 96);
    textColour.Set(128,128,128,255);

    active = lastActive = false;
    direction = 0.0f;;
    t = 0.0f;
    count = 0;

    ortho =  autopos = fade = slide = 1;
    time = 500;

    buffer = textbuffer;
}

ViewP3D::~ViewP3D()
{
    mat->Release();

    if(font)
        font->Release();
}

void ViewP3D::SetBackgroundShader(tShader* m) 
{ 
    if(mat == m)
        return;

    if(mat)
        mat->Release();

    if(m)
        m->AddRef();

    mat = m; 
}

void ViewP3D::SetFont(tFont* f) 
{
    if(font == f)
        return;

    if(font)
        font->Release();

    if(f)
        f->AddRef();

    font = f; 
}

void ViewP3D::Display(void)
{
    if(active != lastActive)
    {
        if(active)
        {
            direction = 1.0f / float(time);
            count = time;
        }
        else
        {
            direction = -1.0f / float(time);
            count = time;
        }
        lastActive = active;
    }

    if(active || count)
    {
        tColour colour0;
        tColour colour1;

        p3d::pddi->PushState(PDDI_STATE_ALL);
        p3d::stack->Push();
        
        p3d::pddi->SetCullMode(PDDI_CULL_NORMAL);
        p3d::pddi->SetZWrite(false);
        p3d::pddi->SetZCompare(PDDI_COMPARE_ALWAYS);
        p3d::pddi->SetFillMode(PDDI_FILL_SOLID);


        if(ortho)
        {
            p3d::pddi->SetProjectionMode(PDDI_PROJECTION_ORTHOGRAPHIC);
            if(autopos)
            {
                p3d::stack->LoadIdentity();
                p3d::stack->Translate(-0.5f, (-1.0f/1.33f)/2.0f, 1.0f);
            }
        }

        // select drawing height based on set height and maximisation
        float tmpheight, slideheight;
        if(maximised)
        {
            tmpheight = 1.0f;
        }
        else
        {
            tmpheight = (height > 1.0f) ? 1.0f : height;
        }

        slideheight = tmpheight;
        colour0 = backgroundColour;
        colour1 = textColour;

        if(count)
        {
            count -= elapsedTime;
            if(count < 0) count = 0;

            t += direction * elapsedTime;
            if(t > 1.0f)
                t = 1.0f;

            if(t < 0.0f)
                t = 0.0f;

            if(fade)
            {
                colour0.Set(int(float(backgroundColour.Red()) * t),
                                int(float(backgroundColour.Green()) * t),
                                int(float(backgroundColour.Blue()) * t),
                                int(float(backgroundColour.Alpha()) * t));

                colour1.Set(int(float(textColour.Red()) * t),
                                int(float(textColour.Blue()) * t),
                                int(float(textColour.Green()) * t),
                                int(float(textColour.Alpha()) * t));
            }

            if(slide)
            {
                slideheight = tmpheight - ((tmpheight) * (1.0f-t));
                p3d::stack->Translate(0,-((tmpheight) * (1.0f-t)),0.0f);
            }
        }

        P3DASSERT(mat);
        P3DASSERT(font || ortho);

        // draw the background
        pddiPrimStream* stream = p3d::pddi->BeginPrims(mat->GetShader(), PDDI_PRIM_TRISTRIP, PDDI_V_CT, 4);

        stream->UV(0.0f, 0.0f);
        stream->Colour(colour0);
        stream->Coord(0.0f, 0.0f, 0.0f);

        stream->UV(0.0f, float(tmpheight) / float(vstride));
        stream->Colour(colour0);
        stream->Coord(0.0f, float(tmpheight), 0.0f);

        stream->UV(1.0f / float(ustride), 0.0f);
        stream->Colour(colour0);
        stream->Coord(1.0f, 0.0f, 0.0f);

        stream->UV(1.0f / float(ustride), float(tmpheight) / float(vstride));
        stream->Colour(colour0);
        stream->Coord(1.0f, float(tmpheight), 0.0f);

        p3d::pddi->EndPrims(stream);

        if(font)
        {
            font->SetColour(colour1);

            float topIndent = 0.01f;
            float leftIndent = 0.01f;
        
            // 'figure out how many lines can be drawn
            float fontHeight = font->GetFontHeight();
            int count = int((tmpheight - topIndent) / (fontHeight));

            int startline = buffer->GetNumLines() - count;
            if(startline < 0) startline = 0;

            // draw the relevent portion of the text buffer 
            float line = tmpheight;// - topIndent - fontHeight;

            p3d::stack->Translate(leftIndent,float(line),0.0f);
    //      font->SetColour(textColour);

            for(int i = 0; i < count; i++)
            {
                P3D_UNICODE unicodeString[1024];
                p3d::AsciiToUnicode(buffer->GetLine(startline), unicodeString, 1024);
                font->DisplayText(unicodeString);
                startline++;
                line += fontHeight;
                p3d::stack->Translate(0,float(-fontHeight),0);
            }
        }
        else
        {
            const int fontHeight = 18;

            // 'figure out how many lines can be drawn
            float fraction = (1.0f/1.33f);
            int count = int(((tmpheight / fraction) * p3d::display->GetHeight()) - 30) / (fontHeight);

            int startline = buffer->GetNumLines() - count;
            if(startline < 0) startline = 0;

            tColour textcolour(255,255,255,255);
            // draw the relevent portion of the text buffer 
            int line = int(p3d::display->GetHeight() - ((slideheight / fraction) * p3d::display->GetHeight()) + 5);

            for(int i = 0; i < count; i++)
            {
                p3d::pddi->DrawString(buffer->GetLine(startline), 20, line, textcolour);
                startline++;
                line += fontHeight;
            }
        }

        p3d::stack->Pop();
        p3d::pddi->PopState(PDDI_STATE_ALL);
    }
    elapsedTime = 0;
}

}
