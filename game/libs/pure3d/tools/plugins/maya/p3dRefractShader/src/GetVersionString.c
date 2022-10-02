//#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdio.h>

static char gVersion[16];
static const char* gDefaultVersion = "1.0";

const char* GetVersionStr(const char* moduleName)
{
    char moduleInfo[256];
    DWORD version_len, zero_ptr;
    char* version_data = NULL;
    VS_FIXEDFILEINFO* vsffi;
    UINT vsffi_len;
    HMODULE moduleHandle;

    strcpy( gVersion, gDefaultVersion );

    moduleHandle = GetModuleHandle(moduleName);
    if (!moduleHandle)
        return gVersion;

    GetModuleFileName(moduleHandle, moduleInfo, 256);
    version_len = GetFileVersionInfoSize(moduleInfo, &zero_ptr);
    version_data = calloc( version_len, sizeof( char ) );
    GetFileVersionInfo(moduleInfo, 0, version_len, version_data);
    VerQueryValue(version_data, "\\", (void**)(&vsffi), &vsffi_len);
    if ( vsffi->dwFileVersionLS > 0 )
    {
        sprintf(gVersion, "%d.%d.%d.%d", (vsffi->dwFileVersionMS >> 16),(vsffi->dwFileVersionMS & 0x0ffff), (vsffi->dwFileVersionLS >> 16),(vsffi->dwFileVersionLS & 0x0ffff));
    }
    else
    {
        sprintf(gVersion, "%d.%d", (vsffi->dwFileVersionMS >> 16),(vsffi->dwFileVersionMS & 0x0ffff));
    }
    free( version_data );

    return gVersion;
}
