//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"grid.hpp"
#include<p3d/pure3d.hpp>
#include<config/settings.hpp>
#include<rendering/origin.hpp>

Grid::Grid()
{
    on = true;
    mode = 0;
    size = 10;
    count = 8;

    fog = false;
    fogStart = 0;
    fogEnd = 100;

    origin = new Origin;
    gridMat = new tShader();
    origin->AddRef();
    gridMat->AddRef();
    colour.Set(255,255,255);

    originShow = true;
    origin->size = 10;

    solid = false;

    checker1 = tColour(255,255,255,255);
    checker2 = tColour(0,0,0,255);
}

Grid::~Grid()
{
    origin->Release();
    gridMat->Release();
}

void Grid::Configure(Settings* settings)
{
    settings->Bind("grid.show", &on);
    settings->Bind("grid.mode", &mode);
    settings->Bind("grid.size", &size);
    settings->Bind("grid.count", &count);
    settings->Bind("grid.colour", &colour);
    settings->Bind("grid.checker1", &checker1);
    settings->Bind("grid.checker2", &checker2);
    settings->Bind("grid.fog", &fog);
    settings->Bind("grid.fogStart", &fogStart);
    settings->Bind("grid.fogEnd", &fogEnd);
    settings->Bind("grid.solid", &solid);
    settings->Bind("origin.show", &originShow);
    settings->Bind("origin.size", &origin->size);
}

void Grid::Display(void)
{
    if(on)
    {
        if(fog)
        {
            p3d::pddi->PushState(PDDI_STATE_FOG);
            p3d::pddi->EnableFog(true);
            p3d::pddi->SetFog(p3d::pddi->GetClearColour(), fogStart, fogEnd);
        }

        for(int m = 0; m < 3; m++)
        {
            if((mode == 3) || (mode == m))
            {
                p3d::stack->Push();
                switch(m)
                {
                    case 1:
                        p3d::stack->RotateX(rmt::PI / 2);
                        break;
                    case 2:
                        p3d::stack->RotateZ(rmt::PI / 2);
                        break;

                }
                if(solid)
                {
                    DisplaySolid();
                }
                else
                {
                    DisplayWire();
                }
                p3d::stack->Pop();
            }
        }

        if(fog)
        {
            p3d::pddi->PopState(PDDI_STATE_FOG);
        }
    }

    if(originShow)
        origin->Display();
}

void Grid::DisplayWire(void)
{
    int gridDivisions = count;
    float edge = (((float)count / 2) * size);
    float step = (edge * 2) / (gridDivisions);
    for(float i = -edge; i <= edge; i += size)
    {
        int j;

        pddiPrimStream* stream = p3d::pddi->BeginPrims(gridMat->GetShader(), PDDI_PRIM_LINESTRIP, PDDI_V_C, gridDivisions + 1);
        float walk = -edge;
        for(j = 0; j <= gridDivisions; j++)
        {
            stream->Colour(colour);
            stream->Coord(walk, 0.0f, i);
            walk += step;
        }
        p3d::pddi->EndPrims(stream);

        stream = p3d::pddi->BeginPrims(gridMat->GetShader(), PDDI_PRIM_LINESTRIP, PDDI_V_C, gridDivisions + 1);
        walk = -edge;
        for(j = 0; j <= gridDivisions; j++)
        {
            stream->Colour(colour);
            stream->Coord(i, 0.0f, walk);
            walk += step;
        }
        p3d::pddi->EndPrims(stream);
    }
}

void Grid::DisplaySolid(void)
{
    pddiCullMode mode = p3d::pddi->GetCullMode();
    p3d::pddi->SetCullMode(PDDI_CULL_NONE);

    pddiPrimStream* stream = p3d::pddi->BeginPrims(gridMat->GetShader(), PDDI_PRIM_TRIANGLES, PDDI_V_C, count * count * 6);

    bool linePolarity = true;
    for(int z = 0; z < count; z++)
    {
        linePolarity = !linePolarity ;
        bool polarity = linePolarity ;

        for(int x = 0; x < count; x++)
        {
            float z1 = (z * size)  - ((size * count) / 2);
            float x1 = (x * size)  - ((size * count) / 2);
            float z2 = ((z + 1) * size) - ((size * count) / 2);
            float x2 = ((x + 1) * size) - ((size * count) / 2);

            stream->Colour(polarity ? checker1 : checker2);
            stream->Coord(x1, 0.0f, z1);

            stream->Colour(polarity ? checker1 : checker2);
            stream->Coord(x2, 0.0f, z1);

            stream->Colour(polarity ? checker1 : checker2);
            stream->Coord(x1, 0.0f, z2);

            stream->Colour(polarity ? checker1 : checker2);
            stream->Coord(x1, 0.0f, z2);

            stream->Colour(polarity ? checker1 : checker2);
            stream->Coord(x2, 0.0f, z1);

            stream->Colour(polarity ? checker1 : checker2);
            stream->Coord(x2, 0.0f, z2);

            polarity = !polarity;
        }
    }
    p3d::pddi->EndPrims(stream);
    p3d::pddi->SetCullMode(mode);
}

