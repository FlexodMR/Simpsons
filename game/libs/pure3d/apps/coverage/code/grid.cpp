//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"grid.hpp"
#include<p3d/pure3d.hpp>

const int griddiv = 20;

Grid::Grid()
{
    mode = 0;
    size = 10;
    count = 8;

    gridMat = new tShader();
    colour.Set(255,255,255);
}

Grid::~Grid()
{
    gridMat->Release();
}

void Grid::Display(void)
{
    if(size == 0)
        return;
  
    for(int m = 1; m < 4; m++)
    {
        if((mode == 4) || (mode == m))
        {
                float edge = (((float)count / 2) * size);
                float step = (edge * 2) / (griddiv - 1);
                int nVerts = griddiv;
                for(float i = -edge; i <= edge; i += size)
                {
                    int j;

                    pddiPrimStream* stream = p3d::pddi->BeginPrims(gridMat->GetShader(), PDDI_PRIM_LINESTRIP, PDDI_V_C, nVerts);
                    float walk = -edge;
                    for(j = 0; j < griddiv; j++)
                    {
                        switch(m)
                        {
                            case 1 :
                                stream->Colour(colour);
                                stream->Coord(walk, 0.0f, i);
                                break;
                            case 2 :
                                stream->Colour(colour);
                                stream->Coord(0.0f, walk, i);
                                break;
                            case 3 :
                                stream->Colour(colour);
                                stream->Coord(walk, i, 0.0f);
                                break;
                        }
                        walk += step;
                    }
                    p3d::pddi->EndPrims(stream);

                    stream = p3d::pddi->BeginPrims(gridMat->GetShader(), PDDI_PRIM_LINESTRIP, PDDI_V_C, nVerts);
                    walk = -edge;
                    for(j = 0; j < griddiv; j++)
                    {
                        switch(m)
                        {
                            case 1 :
                                stream->Colour(colour);
                                stream->Coord(i, 0.0f, walk);
                                break;
                            case 2 :
                                stream->Colour(colour);
                                stream->Coord(0.0f, i, walk);
                                break;
                            case 3 :
                                stream->Colour(colour);
                                stream->Coord(i, walk, 0.0f);
                                break;
                        }
                        walk += step;
                    }
                    p3d::pddi->EndPrims(stream);
                }
        }
    }
}

void Grid::SetColour(int r, int g, int b)
{
    colour.Set(r,g,b);
}

