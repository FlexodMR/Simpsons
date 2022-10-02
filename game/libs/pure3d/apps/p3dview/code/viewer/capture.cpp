//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <viewer/capture.hpp>
#include <interface/kernel.hpp>
#include <config/settings.hpp>
#include <console/objectscripter.hpp>

#include <p3d/anim/animate.hpp>
#include <p3d/targa.hpp>
#include <p3d/image.hpp>
#include <p3d/utility.hpp>
#include <pddi/pddiext.hpp>

#include <stdlib.h>
#include <string.h>

Capture::Capture(Kernel* k) : kernel(k)
{
    screenshot = 0;
    avi = 0;
    onlyScreenshot = false;
    strcpy(screenshotFilename,"screenshot.tga");

    frameNumber = 0;
    onlyAvi = 0;
    aviClean = false;
    aviFPS = 30;
    strcpy(aviDefaultFilename, "generatedAvi.avi");
    strcpy(aviBaseFilename, "avi");
    aviWriteTargas = false;
    aviWriteAvi = true;

    startFrame = endFrame = 0;
}

Capture::~Capture()
{
}

void Capture::Setup(Settings* s, Console::ObjectScripter* interp)
{
    settings = s;

    settings->Bind("avi.cleanDisplay", &aviClean);
    settings->Bind("avi.framesPerSecond", &aviFPS);
    settings->Bind("avi.writeTargas", &aviWriteTargas);
    settings->Bind("avi.writeAVI", &aviWriteAvi);
    settings->Bind("avi.startFrame", &startFrame);
    settings->Bind("avi.endFrame", &endFrame);

    interp->SetClosure("screenshotName", this, &Capture::SetScreenshotFilename);
    interp->SetClosure("screenshot", this, &Capture::Screenshot);
    interp->SetClosure("screenshotAndExit", this, &Capture::ScreenshotAndExit);
    interp->SetClosure("aviName", this, &Capture::SetAviFilename);
    interp->SetClosure("avi", this, &Capture::Avi);
    interp->SetClosure("aviAndExit", this, &Capture::AviAndExit);
}

void Capture::Shutdown(void)
{
}

void Capture::CaptureFront(const char* fileName)
{
    tTargaHandler* targa = new tTargaHandler;
    tImage32* image = new tImage32;
    image->SetSize(p3d::display->GetWidth(), p3d::display->GetHeight());

    p3d::display->Screenshot((pddiColour*)image->GetColourChannel(), p3d::display->GetWidth() * p3d::display->GetHeight() * 4);

    targa->SaveImage(image, const_cast<char*>(fileName));
    image->Release();
    targa->Release();
}

void Capture::CaptureBack(const char* fileName)
{
    tTargaHandler* targa = new tTargaHandler;
    tImage32* image = new tImage32;
    image->SetSize(p3d::display->GetWidth(), p3d::display->GetHeight());

    pddiExtReadPixels* readPixel = (pddiExtReadPixels*)p3d::pddi->GetExtension(PDDI_EXT_READ_PIXELS);
    pddiRect rect;
    rect.top = rect.left = 0;
    rect.bottom = p3d::display->GetHeight();
    rect.right= p3d::display->GetWidth();
    readPixel->ReadPixels(PDDI_BUFFER_BACK, rect, (pddiColour*)image->GetColourChannel());

    targa->SaveImage(image, const_cast<char*>(fileName));
    image->Release();
    targa->Release();
}
   
Time Capture::PreRender(const Time& t, tFrameController* c, bool* s)
{
    supress = s;
    controller = c;
    if(avi)
    {
        if(controller != NULL)
        {
            if(aviClean)
                *supress = true;

            if(frameNumber == 0)
            {
                // start at the beginning of the 
                // current animation
                controller->SetFrame(0);
                return Time(0.0f, Time::MILLISECONDS);
            }
            else
            {
                // just step at fixed framerate
                return Time(1000.0f / float(aviFPS), Time::MILLISECONDS);
            }       
        }
        else
        {
            avi = 0;
        }
    }
    return t;
}

void Capture::PostRender(void)
{
#ifdef RAD_WIN32 // screen captures only work on win32 right now
    if(screenshot)
    {
        CaptureBack(screenshotFilename);

        screenshot = 0;

        if (onlyScreenshot)
        {
            kernel->Exit();
        }

    }

    if(avi)
    {
        if ((controller->LastFrameReached() == 1) || ((endFrame != 0) && (frameNumber > endFrame )))
        {
            avi = 0;
            frameNumber = 0;

            // make the avi out of the targas
            char makeCmd[1024];
            char aviTargas[1024];
            char delAviCmd[1024];
            char delTgaCmd[1024];

            sprintf(aviTargas, "%s*.tga", aviBaseFilename);
            sprintf(makeCmd, "makeavi \"%s\" %d \"%s\"", aviDefaultFilename, aviFPS, aviTargas);
            sprintf(delAviCmd, "del \"%s\"", aviDefaultFilename);
            sprintf(delTgaCmd, "del \"%s\"", aviTargas);

            if(aviWriteAvi)
            {
                system(delAviCmd);
                system(makeCmd);
            }

            if(!aviWriteTargas)
            {
                system(delTgaCmd);
            }

            avi = 0;
            SetAviFilename("generatedAvi.avi");
            strcpy(aviBaseFilename, "avi");

            if(onlyAvi)
            {
                kernel->Exit();
            }

            if(aviClean)
                *supress = false;

        }
        else
        {
            if(frameNumber >= startFrame)
            {
                char filename[1024];
                sprintf(filename, "%s%4.4d.tga", aviBaseFilename, frameNumber);

                CaptureBack(filename);
            }
            frameNumber++;
        }
    }
#endif
}

void Capture::PostSwap(void)
{
}

void Capture::Screenshot(void)
{
    screenshot = true;
}

void Capture::Avi(void)
{
    avi = true;
}

void Capture::ScreenshotAndExit(void)
{
    onlyScreenshot = 1;
    screenshot = 1;
}

void Capture::SetScreenshotFilename(const char* new_filename)
{
    P3DASSERT(strlen(new_filename) < 1024);
    strcpy(screenshotFilename,new_filename);
}

void Capture::AviAndExit(void)
{
    onlyAvi = 1;
    avi = 1;
}

void Capture::SetAviFilename(const char* new_filename)
{
    P3DASSERT(strlen(new_filename) < 1024);

    // set the filename for the avi
    strcpy(aviDefaultFilename, new_filename);

    // strip the path out of the avi filename to figure out where to put the 
    // temporary targas
    strcpy(aviBaseFilename, new_filename);

    char* walk = &aviBaseFilename[strlen(aviBaseFilename) - 1];

    while((walk != aviBaseFilename) && (*walk != '\\'))
    {
        walk--;
    }

    if(*walk == '\\')
    {
        walk++;
    }
    *walk = 0;
    strcat(aviBaseFilename, "avi");
   
}
