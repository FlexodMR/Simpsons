//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _QUAKECAM_HPP_
#define _QUAKECAM_HPP_

#include<p3d/camera.hpp>

class tQuakeCam : public tCamera
{

public : 
    tQuakeCam();
    ~tQuakeCam();

    void Move(unsigned axis, int dir);

    void LookX(float);
    void LookY(float);

    void SetPosition(float x, float y, float z) { cameraPos.Set(x,y,z);}
    rmt::Vector& GetPosition(void) { return cameraPos;}

    void Reset(void);

    void Tick(float ms);

    int  invert;
    float sensitivity;
    float speed;

protected:
    void Update(void);

    float move[3];

    // camera related stuff
    rmt::Vector cameraPos;
    float cameraDirection;
    float cameraLookUp;

};


#endif
