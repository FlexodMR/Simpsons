//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "simcollision/collisiondisplay.hpp"
#include "simcollision/collisionvolume.hpp"
#include "simcollision/collisionobject.hpp"
#include "simcommon/dline2.hpp"

#include "p3d/pure3d.hpp"
#include "p3d/debugdraw.hpp"

namespace sim
{
    
void DrawBBox(CollisionVolume* volume);
void DrawCyl(CylinderVolume* volume);
void DrawSphere(SphereVolume* volume);
void DrawOBBox(OBBoxVolume* volume);
void DrawWall(WallVolume* volume);

void DrawCylinderShape(CylinderVolume* el);
void DrawSphereShape(SphereVolume* el);
void DrawOBBoxShape(OBBoxVolume* el);


static DrawVolumeMethod sDrawVolumeMethod = DrawVolumeShape;
static float sDrawVolumeShapeScale = 1.1f; // draw the shape 10% larger tahn the volumes


void SetDrawVolumeMethod(DrawVolumeMethod inDrawVolumeMethod)
{
    sDrawVolumeMethod = inDrawVolumeMethod;
}

// in the case of STreeObj, if both DRAW are defined, the STreeSubObj will be drawn twice
#define DRAW_PARENT
#define DRAW_CHILD

int MAXLEVEL = 0;

// the draw the CollEl AND its BBox
//#define DRAW_ALL_BBOX

tColour volumecolour(100, 100, 100);
tColour defaultcolour(100, 100, 100);
tColour staticcolour(255, 0, 0);
tColour moveablecolour(0, 255, 0);
tColour dynamiccolour(0, 0, 255);

void DrawCollisionObject(CollisionObject* inObject)
{
    if (inObject->IsStatic())
        volumecolour = staticcolour;
    else if (inObject->IsDymamic())
        volumecolour = dynamiccolour;
    else
        volumecolour = moveablecolour;

    DrawCollisionVolume(inObject->GetCollisionVolume());

    volumecolour = defaultcolour;
}

void DrawCollisionVolume(CollisionVolume* volume)
{
#ifdef DRAW_CHILD
    TList<CollisionVolume*>* list = volume->SubVolumeList();
    if (list != NULL && list->GetSize())
    {
        for (int i=0; i<list->GetSize(); i++)
        {
            DrawCollisionVolume((*list)[i]);
        }
#ifndef DRAW_PARENT
        return; // so the parent elem won't be drawn
#endif // DRAW_PARENT
    }
#endif // DRAW_CHILD
    
#ifdef DRAW_ALL_BBOX
    DrawBBox(volume);
#endif
    
    if (volume->mVisible)
    {
        if (sDrawVolumeMethod == DrawVolumeOutline)
        {
            switch (volume->Type())
            {
            case CollisionVolumeType:
                break;
            case BBoxVolumeType:
#ifndef DRAW_ALL_BBOX
                DrawBBox(volume);
#endif
                break;
            case SphereVolumeType:
                DrawSphere((SphereVolume*)volume);
                break;
            case CylinderVolumeType:
                DrawCyl((CylinderVolume*)volume);
                break;
            case OBBoxVolumeType:
                DrawOBBox((OBBoxVolume*)volume);
                break;
            case WallVolumeType:
                DrawWall((WallVolume*)volume);
                break;
            default:
                break;
            }
        }
        else
        {
            switch (volume->Type())
            {
            case CollisionVolumeType:
                break;
            case BBoxVolumeType:
#ifndef DRAW_ALL_BBOX
                DrawBBox(volume);
#endif
                break;
            case SphereVolumeType:
                DrawSphereShape((SphereVolume*)volume);
                break;
            case CylinderVolumeType:
                DrawCylinderShape((CylinderVolume*)volume);
                break;
            case OBBoxVolumeType:
                DrawOBBoxShape((OBBoxVolume*)volume);
                break;
            case WallVolumeType:
                DrawWall((WallVolume*)volume);
                break;
            default:
                break;
            }
        }
    }
}

void DrawBBox(CollisionVolume* volume)
{
    if (MAXLEVEL && volume->SubVolumeList() != NULL) return;
    
    int colorScale = 1; // (volume->Level()-1)
    dBox3(volume->mPosition, volume->mBoxSize, tColour(rmt::Min(255, 25 * colorScale), 0, rmt::Max(0, 255 - 25 * colorScale)));
}

void DrawCyl(CylinderVolume* volume)
{
    rmt::Vector p1, p2;
    
    p1.ScaleAdd(volume->mPosition, volume->mLength, volume->mAxis);
    p2.ScaleAdd(volume->mPosition, -volume->mLength, volume->mAxis);
    dLine2(p1, p2, volumecolour);
    
    if (!volume->mFlatEnd)
    {
        rmt::Vector p;
        p.ScaleAdd(volume->mPosition, volume->mLength, volume->mAxis);
        dLine3(p, volume->mCylinderRadius, volumecolour);
        
        p.ScaleAdd(volume->mPosition, -volume->mLength, volume->mAxis);
        dLine3(p, volume->mCylinderRadius, volumecolour);
    }
}

void DrawSphere(SphereVolume* volume)
{
    dLine3(volume->mPosition, volume->mSphereRadius, volumecolour);
}

void DrawOBBox(OBBoxVolume* volume)
{
    rmt::Vector a;
    rmt::Vector p1, p2;
    
    dStartStreamLine();
    
    for (int i=0; i<4; i++)
    {
        volume->Corner(a, i);
        p1.Add(volume->mPosition, a);
        p2.Sub(volume->mPosition, a);
        dStreamLine(p1, p2, volumecolour, volumecolour);
    }
    
    dEndStreamLine();
}

void DrawWall(WallVolume* volume)
{
    // draw the wall
    rmt::Vector a, b;
    rmt::Vector p1, p2;
    int colorScale = 1; // (volume->Level()-1)
    tColour colour(25 * colorScale, 0, 255 - 25 * colorScale);
    
    const float scale = 4.0f;
    
    b.Set(1.0f, 1.0f, 1.0f);
    a.CrossProduct(b, volume->mNormal);
    b.CrossProduct(a, volume->mNormal);
    a.Normalize();
    b.Normalize();
    
    a.Scale(scale);
    b.Scale(scale);
    
    dStartStreamLine();
    
    p1.x = (a.x + b.x) + volume->mPosition.x;
    p1.y = (a.y + b.y) + volume->mPosition.y;
    p1.z = (a.z + b.z) + volume->mPosition.z;
    p2.x = (-a.x - b.x) + volume->mPosition.x;
    p2.y = (-a.y - b.y) + volume->mPosition.y;
    p2.z = (-a.z - b.z) + volume->mPosition.z;
    dStreamLine(p1, p2, colour, colour);
    p1.x = (-a.x + b.x) + volume->mPosition.x;
    p1.y = (-a.y + b.y) + volume->mPosition.y;
    p1.z = (-a.z + b.z) + volume->mPosition.z;
    p2.x = (a.x - b.x) + volume->mPosition.x;
    p2.y = (a.y - b.y) + volume->mPosition.y;
    p2.z = (a.z - b.z) + volume->mPosition.z;
    dStreamLine(p1, p2, colour, colour);
    p1.x =  volume->mPosition.x;
    p1.y =  volume->mPosition.y;
    p1.z =  volume->mPosition.z;
    a.Scale(scale * 0.25f, volume->mNormal);
    p2.x =  a.x + volume->mPosition.x;
    p2.y =  a.y + volume->mPosition.y;
    p2.z =  a.z + volume->mPosition.z;
    dStreamLine(p1, p2, colour, colour);
    
    dEndStreamLine();
}           
            
//----------------------------------------------------------------
// Some new drawing functions
//----------------------------------------------------------------

void DrawOBBoxShape(OBBoxVolume* el)
{
    tShader *defaultShader = new tShader;
    defaultShader->AddRef();
    
    rmt::Vector minCorner;
    rmt::Vector maxCorner;
    
    minCorner.x = - el->mLength[0];
    minCorner.y = - el->mLength[1];
    minCorner.z = - el->mLength[2];
    
    maxCorner.x = el->mLength[0];
    maxCorner.y = el->mLength[1];
    maxCorner.z = el->mLength[2];
    
    p3d::stack->Push();
    rmt::Matrix positionMatrix;
    positionMatrix.Identity();
    positionMatrix.Row(0) = el->mAxis[0];
    positionMatrix.Row(1) = el->mAxis[1];
    positionMatrix.Row(2) = el->mAxis[2];
    positionMatrix.Row(3) = el->mPosition;
    p3d::stack->Multiply(positionMatrix);
    
    maxCorner.Scale(sDrawVolumeShapeScale);
    minCorner.Scale(sDrawVolumeShapeScale);
    
    P3DDrawOrientedBox(minCorner, maxCorner, *defaultShader, volumecolour);
    
    p3d::stack->Pop();
    
    defaultShader->Release();
    
}

void DrawSphereShape(SphereVolume* el)
{
    tShader *defaultShader = new tShader;
    defaultShader->AddRef();
    
    P3DDrawSphere(el->GetRadius()*sDrawVolumeShapeScale, el->mPosition, *defaultShader, volumecolour);
    
    defaultShader->Release();
}

void DrawCylinderShape(CylinderVolume* el)
{
    
    tShader *defaultShader = new tShader;
    defaultShader->AddRef();
    
    rmt::Vector cylinderEndPoint;
    rmt::Vector cylinderStartPoint;
    rmt::Vector length = el->mAxis;
    length.Scale(el->mLength);
    
    cylinderStartPoint.Sub(el->mPosition, length);
    cylinderEndPoint.Add(el->mPosition, length);
    
    if (el->mFlatEnd)
    {
        P3DDrawCylinder(el->mCylinderRadius*sDrawVolumeShapeScale, 
            cylinderStartPoint, 
            cylinderEndPoint, 
            *defaultShader, 
            volumecolour);
    }
    else
    {
        P3DDrawCapsule(el->mCylinderRadius*sDrawVolumeShapeScale, 
            cylinderStartPoint, 
            cylinderEndPoint, 
            *defaultShader, 
            volumecolour);
    }
    
    defaultShader->Release();
}

} // sim