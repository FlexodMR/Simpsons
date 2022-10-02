//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#define _X_ _declspec( dllexport ) 

typedef int OdsHandle;

typedef OdsHandle hOdsProject;
typedef OdsHandle hOdsType;
typedef OdsHandle hOdsInstance;
typedef OdsHandle hOdsTypeSpecifier;

enum TypeSpecifier{ Int };

_X_ hOdsProject      odsCreateProject( );
_X_ void            odsDestroyProject( hOdsProject *);

// Types

_X_ void            odsAddTdlFile( hOdsProject, const char * );
_X_ void            odsRemoveTdlFile( hOdsProject, const char * );
_X_ unsigned int    odsGetNumTdlFiles( hOdsProject);
_X_ const char *    odsGetTdlFileAt( unsigned int i );

_X_ unsigned int    odsGetNumTypes( hOdsProject );
_X_ hOdsType           odsGetTypeAt( hOdsProject, unsigned int i );
_X_ hOdsInstance       odsCreateInstance( hOdsProject, hOdsType );
_X_ hOdsTypeSpecifier  odsGetTypeSpecifier( hOdsProject, hOdsType );

// Instance

_X_ void            odsAddOdlFile( hOdsProject, const char * );
_X_ void            odsRemoveOdlFile( hOdsProject, const char * );
_X_ unsigned int    odsGetNumOdlFiles( hOdsProject);
_X_ const char *    odsGetOdlFileAt( hOdsProject, unsigned int );
_X_ void            odsSave( hOdsProject project );

_X_ unsigned int    odsGetNumInstances( hOdsProject);
_X_ hOdsInstance    odsGetInstance( hOdsProject, unsigned int i );
_X_ hOdsType        odsGetType( hOdsProject, hOdsInstance);

_X_ int             odsGetIntVal( hOdsProject, hOdsInstance);
_X_ void            odsSetIntVal( hOdsProject, hOdsInstance, int );


