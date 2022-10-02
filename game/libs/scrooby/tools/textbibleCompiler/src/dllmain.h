//-----------------------------------------------------------------------------------------
// dllmain.h 
// header file for all the routines exported in the DLL
// Ian Gipson 12-MAY-98        Created
//-----------------------------------------------------------------------------------------

#ifndef __DLLMAIN_H
#define __DLLMAIN_H
//-----------------------------------------------------------------------------------------
//format an error code into text
__declspec( dllexport ) int  LOC_formatMessage( const int message, char* buffer, const size_t  buffer_size ) ;
__declspec( dllexport ) int  LOC_getLastError( void ) ;        //get the latest error code
__declspec( dllexport ) bool LOC_loadRTF( char* filename ) ;    //open and parse and RTF file
__declspec( dllexport ) void LOC_loadSCR( const char* filename ) ;    //open and parse and SCR file
__declspec( dllexport ) bool LOC_lookupLabel( const char* string, const char language, 
                                            const char platform, char* buffer, size_t buffer_size ) ;
__declspec( dllexport ) bool LOC_lookupTranslation(
                                    const char* label, const char language, 
                                    const char platform, char* buffer, size_t buffer_size ) ;
__declspec( dllexport ) void LOC_outputFiles( void ) ;    //output all the language files the same way that LANGCMP2 does
__declspec( dllexport ) void LOC_setDataPath( const char* path ) ;    //tell the system where to dump any output files
__declspec( dllexport ) void LOC_setHashingModulo( const int m ) ;
__declspec( dllexport ) void LOC_setPlatformsToBuild( const char* platforms ) ;    //tell the system what platforms should be built
__declspec( dllexport ) void LOC_setTinyHeaders( const bool t ) ;
__declspec( dllexport ) void LOC_shutdown( void ) ;        //shuts down the system, deleting all dynamically allocated memory
__declspec( dllexport ) void LOC_startup( void ) ;        //sets up the system so that files can be loaded
//-----------------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------------
//Routines for iterating through the list of strings 
//-----------------------------------------------------------------------------------------
__declspec( dllexport ) void LOC_currentLabel( char* buffer, size_t buffer_size ) ;
__declspec( dllexport ) char LOC_currentLanguage() ;
__declspec( dllexport ) char LOC_currentPlatform() ;
__declspec( dllexport ) void LOC_currentTranslation( char* buffer, size_t buffer_size ) ;
__declspec( dllexport ) bool LOC_next() ;
__declspec( dllexport ) bool LOC_pastEnd() ;
__declspec( dllexport ) void LOC_reset() ;
//-----------------------------------------------------------------------------------------
#endif
