//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "p3d/pointcamera.hpp"
#include <p3d/drawable.hpp>


class tShader;
class tPose;
class Settings;

namespace Console
{
    class ObjectScripter;
}

const int VIEWER_CAMERA_PUSH_COUNT = 8;

class ViewerCamera : public tPointCamera
{
public:
    ViewerCamera();
    ~ViewerCamera();

    void Configure(Settings*, Console::ObjectScripter*);
    void Save(void);

    void Tick(float ms);

    void PushX(float f);
    void PushY(float f);
    void LetGo(void);

    void RotateX(float f);
    void RotateY(float f);
    void Zoom(float f);
    void MoveX(float f);
    void MoveY(float f);
    void Reset(void);
    void Watch(const rmt::Sphere& sphere);
    void Watch(const rmt::Vector&, bool track = false);
    void Display();
    void DrawCircle(const rmt::Vector& center, tColour lineColour, float radius); 


    void SetTargetF(float, float, float);
    void SetPositionF(float, float, float);



private:
    void RealRotateX(float f);
    void RealRotateY(float f);

    Settings* settings;

    bool pushing;
    bool showTarget;
    bool showTargetHeight;

    float pushX;
    float pushY;

    int curPush;

    float pushesX[VIEWER_CAMERA_PUSH_COUNT];
    float pushesY[VIEWER_CAMERA_PUSH_COUNT];

    tShader* shader;


    tPose* watchedPose;
    unsigned watchedJoint;

    float rotateX;
    float rotateY;
    float moveX;
    float moveY;
    float zoom;

    float speed;

    void Update(void);
};

