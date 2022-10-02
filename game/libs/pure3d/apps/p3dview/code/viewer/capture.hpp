//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VIEWER_CAPTURE_HPP_
#define _VIEWER_CAPTURE_HPP_

// Viewer module for handling screen captures (screenshots)

#include <utility/time.hpp>
#include <utility/pointer.hpp>

class Kernel;
class Settings;
class tFrameController;

namespace Console
{
    class ObjectScripter;
};

class Capture
{
public:
    Capture(Kernel* kernel);
    ~Capture();

    void Setup(Settings*, Console::ObjectScripter*);
    void Shutdown(void);

    
    void SetScreenshotFilename(const char* new_filename);
    void Screenshot(void);
    void ScreenshotAndExit(void);
    void SetAviFilename(const char* new_filename);
    void Avi(void);
    void AviAndExit(void);

    Time PreRender(const Time&, tFrameController*, bool* supress);
    void PostRender(void);
    void PostSwap(void);

private:
    void CaptureFront(const char* fileName); // capture the current front buffer to a file
    void CaptureBack(const char* fileName); // capture the current back buffer to a file

    DumbPtr<Kernel> kernel;
    DumbPtr<Settings> settings;
    RefPtr<tFrameController> controller;

    char screenshotFilename[1024];
    char aviDefaultFilename[1024];   // name of final avi if not renamed
    char aviBaseFilename[1024];      // temp name for targas

    bool *supress;

    bool onlyScreenshot;

    int frameNumber;
    bool onlyAvi;
    bool screenshot;
    bool avi;
    bool aviClean;
    int aviFPS;
    bool aviWriteTargas;
    bool aviWriteAvi;

    int startFrame;
    int endFrame;


};

#endif
