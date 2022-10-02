#include <radsound_hal.hpp>

extern "C"
{
    typedef void (radMusicToolsTextCallback)( const char* pMessage );

    __declspec( dllexport ) bool radMusicToolsCompileScript(
        bool reverse_endian,
        const char * pFileName,
        const char * pOutputFile,
        IRadSoundHalAudioFormat::Encoding,
        bool checkDate,
        bool silent );

    __declspec( dllexport ) void radMusicToolsSetProgressCallback( radMusicToolsTextCallback * pFx );
    __declspec( dllexport ) void radMusicToolsSetWarningCallback( radMusicToolsTextCallback * pFx );

    __declspec( dllexport ) const char * radMusicToolsGetLastError( void );
}
