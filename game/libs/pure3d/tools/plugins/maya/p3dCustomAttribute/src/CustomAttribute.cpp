//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <maya/MFnPlugin.h>
#include <maya/MMessage.h>
#include <maya/MGlobal.h>
#include <maya/MIntArray.h>
#include <windows.h>


MStatus initializePlugin( MObject obj )
{ 

    char version_str[256];

    GetModuleFileName(GetModuleHandle("p3dCustomAttribute.mll"), version_str, 256);
    DWORD version_len, zero_ptr;
    version_len = GetFileVersionInfoSize(version_str, &zero_ptr);
    char* version_data = new char[version_len];
    GetFileVersionInfo(version_str, 0, version_len, version_data);
    VS_FIXEDFILEINFO* vsffi;
    UINT vsffi_len;
    VerQueryValue(version_data, "\\", (void**)(&vsffi), &vsffi_len);
    sprintf(version_str, "%d.%d", (vsffi->dwFileVersionMS >> 16),
                                            (vsffi->dwFileVersionMS & 0x0ffff));
    delete version_data;

    MFnPlugin plugin( obj, "Radical Entertainment", version_str, "Any");
    MStatus status;
    MString command;
    MStatus statusOfGUI;

    
    command = MString( "p3dAddCustomAttributeInstall" ); // mel script in scripts/other
    
    statusOfGUI = MGlobal::executeCommand( command );
    if ( MS::kSuccess != statusOfGUI )
    {
    fprintf(stderr, "\nERROR: failed to install custom attribute plugin!\n");
    }
    
    return MS::kSuccess;
}
 
MStatus uninitializePlugin( MObject obj)
{
    MFnPlugin plugin( obj );
    MStatus status;

    

    return MS::kSuccess;
}

