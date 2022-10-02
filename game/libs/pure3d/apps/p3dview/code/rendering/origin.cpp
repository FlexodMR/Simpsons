//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"origin.hpp"
#include<p3d/p3dtypes.hpp>
#include<p3d/view.hpp>
#include<p3d/camera.hpp>
#include<p3d/shader.hpp>
#include<p3d/utility.hpp>

using namespace rmt;

Origin::Origin()
{
    shader = new tShader;
    shader->AddRef();
}

Origin::~Origin()
{
    shader->Release();
}

void Origin::Display(void)
{
    pddiPrimStream* stream = p3d::pddi->BeginPrims(shader->GetShader(), PDDI_PRIM_LINES, PDDI_V_C, 6);

    stream->Colour(tColour(255,0,0));
    stream->Coord(0,0,0);

    stream->Colour(tColour(255,0,0));
    stream->Coord(size,0,0);
    
    stream->Colour(tColour(0,255,0));
    stream->Coord(0,0,0);
    
    stream->Colour(tColour(0,255,0));
    stream->Coord(0,size,0);
    
    stream->Colour(tColour(0,0,255));
    stream->Coord(0,0,0);
    
    stream->Colour(tColour(0,0,255));
    stream->Coord(0,0,size);
    
    p3d::pddi->EndPrims(stream);

    tCamera* cam = p3d::context->GetView()->GetCamera();
    Vector pos, world, dev;

    rmt::Matrix* o2w = p3d::context->GetWorldMatrix();
    pos.Set(size,0,0);
    pos.Transform(*o2w);
    if(cam->PointVisible(pos))
    {  
        p3d::context->WorldToDevice(pos,&dev);
        p3d::pddi->DrawString("X",(int)dev.x, (int)dev.y, tColour(255,0,0));
    }

    pos.Set(0,size,0);
    pos.Transform(*o2w);
    if(cam->PointVisible(pos))
    {  
        p3d::context->WorldToDevice(pos,&dev);
        p3d::pddi->DrawString("Y",(int)dev.x, (int)dev.y, tColour(0,255,0));
    }

    pos.Set(0,0,size);
    pos.Transform(*o2w);
    if(cam->PointVisible(pos))
    {  
        p3d::context->WorldToDevice(pos,&dev);
        p3d::pddi->DrawString("Z",(int)dev.x, (int)dev.y, tColour(0,0,255));
    }
}
