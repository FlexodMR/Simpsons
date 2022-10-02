//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "simcommon/dline2.hpp"
#include <p3d/utility.hpp>

using namespace RadicalMathLibrary;

namespace sim
{

void dLine2(const Vector& p1, const Vector& p2, const tColour& c1, const tColour& c2)
{
    pddiPrimStream* stream = p3d::pddi->BeginPrims(NULL, PDDI_PRIM_LINES, PDDI_V_C, 2);
    stream->Colour(c1);
    stream->Coord(p1.x, p1.y, p1.z);
    stream->Colour(c2);
    stream->Coord(p2.x, p2.y, p2.z);
    p3d::pddi->EndPrims(stream);
}

void dLineRel(const Vector& v1, const Vector& v2, const tColour& c)
{
    Vector v;
    v = v2;
    v.Add(v1);
    dLine2(v1, v, c);
}

void dQuad(const Vector& p, const Vector& a, const Vector& b, const tColour& colour)
{
    Vector p2;
    p2.Add(p, a);
    dLine2(p, p2, colour);
    /*
    if(!shader)
    {
    shader = p3d::device->NewShader(p3d::pddi, "simple");
    }
    pddiQuad q;
    
      q.vertex[0].x = p.x;
      q.vertex[0].y = p.y;
      q.vertex[0].z = p.z;
      
        q.vertex[1].x = p.x + b.x;
        q.vertex[1].y = p.y + b.y;
        q.vertex[1].z = p.z + b.z;
        
          q.vertex[2].x = q.vertex[1].x + a.x;
          q.vertex[2].y = q.vertex[1].y + a.y;
          q.vertex[2].z = q.vertex[1].z + a.z;
          
            q.vertex[3].x = p.x + a.x;
            q.vertex[3].y = p.y + a.y;
            q.vertex[3].z = p.z + a.z; 
            
              q.uv[0].u = 0.0f;
              q.uv[0].v = 0.0f;
              q.uv[1].u = 1.0f;
              q.uv[1].v = 0.0f;
              q.uv[2].u = 1.0f;
              q.uv[2].v = 1.0f;
              q.uv[3].u = 0.0f;
              q.uv[3].v = 1.0f;
              
                q.colour[0] = PDDICOLOUR(colour);
                q.colour[1] = PDDICOLOUR(colour);
                q.colour[2] = PDDICOLOUR(colour);
                q.colour[3] = PDDICOLOUR(colour);
                
                  if (inShader != NULL)
                  {
                  tPort::RenderContext->RenderQuad(inShader->GetShader(), &q);
                  }
                  else
                  {
                  tShader shader;
                  shader.SetColour(colour);
                  tPort::RenderContext->RenderQuad(mater.GetShader(), &q);
                  }
    */
}

void dBox3(const Vector& pos, const Vector& size, const tColour& colour)
{
    Vector p1, p2;
    Vector tmp;
    
    dStartStreamLine();
    
    tmp.Scale(2.0f, size);
    p1.Add(pos, size);
    p2 = p1;
    p2.x -=  tmp.x;
    dStreamLine(p1, p2, colour, colour);
    p2.x =  p1.x;
    p2.y =  p1.y - tmp.y;
    dStreamLine(p1, p2, colour, colour);
    p2.y =  p1.y;
    p2.z =  p1.z - tmp.z;
    dStreamLine(p1, p2, colour, colour);
    
    p1.Sub(pos, size);
    p2 = p1;
    p2.x += tmp.x;
    dStreamLine(p1, p2, colour, colour);
    p2.x =  p1.x;
    p2.y =  p1.y + tmp.y;
    dStreamLine(p1, p2, colour, colour);
    p2.y =  p1.y;
    p2.z =  p1.z + tmp.z;
    dStreamLine(p1, p2, colour, colour);
    
    dEndStreamLine();
}

void dLine3(const Vector& p, float r, const tColour& colour)
{
    Vector p1, p2;
    
    dStartStreamLine();
    p1 = p;
    p1.x += r;
    p2 = p;
    p2.x -= r;
    dStreamLine(p1, p2, colour, colour);
    p1 = p;
    p1.y += r;
    p2 = p;
    p2.y -= r;
    dStreamLine(p1, p2, colour, colour);
    p1 = p;
    p1.z += r;
    p2 = p;
    p2.z -= r;
    dStreamLine(p1, p2, colour, colour);
    dEndStreamLine();
}

} // sim