/*
 * choreoviewer/chengine/cvplatform.cpp
 */


#include <chcommon/interface.hpp>

#include <radmemory.hpp>
#include <radplatform.hpp>
#include <radtime.hpp>
#include <radfile.hpp>
#include <radthread.hpp>
#include <radload/radload.hpp>

#include <p3d/utility.hpp>

#include <choreo/buildconfig.hpp>


extern HINSTANCE CVHInstance;


//---------------------------------------------------------------------------
// CVPlatform - DLL interface
//---------------------------------------------------------------------------

int CV_CALLCONV CVPlatformOpen(HWND hwnd)
{
#ifndef CHOREO_USE_P3D_V14
    // ftt thread init
    radThreadInitialize();

    // ftt memory init
    radMemoryInitialize();
#endif

    // ftt platform init
    radPlatformInitialize(hwnd, CVHInstance);

    // ftt time init
    radTimeInitialize();

    // ftt file init
    radFileInitialize();

    // ftt load init
    radLoadInitialize();

    // p3d platform init
    tPlatform* platform = tPlatform::Create(CVHInstance);
    if (platform == 0)
        return -1;

    return 0;
}

int CV_CALLCONV CVPlatformClose()
{
    // p3d platform destroy
    if (p3d::platform != 0)
    {
        tPlatform::Destroy(p3d::platform);
    }

    // ftt load destroy
    radLoadTerminate();

    // ftt file destroy
    radFileTerminate();

    // ftt time destroy
    radTimeTerminate();

    // ftt platform destroy
    radPlatformTerminate();

#ifndef CHOREO_USE_P3D_V14
    // ftt memory destroy
    radMemoryTerminate();

    // ftt thread destroy
    radThreadTerminate();
#endif

    return 0;
}


// End of file.
