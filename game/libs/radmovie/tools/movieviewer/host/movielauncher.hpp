//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        movielauncher.hpp
//
// Subsystem:   Foundation Technologies - Movie Player Services
//
// Description: Classes and interfaces responsible for luanching 
//              target movie viewing applications on the various consoles
//
// Creation:    November 15, 2002 RWS
// 
//=============================================================================

#ifndef MOVIE_LAUNCHER_HPP
#define MOVIE_LAUNCHER_HPP

//=============================================================================
// Local Definitions
//=============================================================================

#define WM_STATUS_TEXT ( WM_USER + 100 )

#define PS2_IP_DESC_SIZE 20

//=============================================================================
// struct ViewerConfig
//=============================================================================

struct ViewerConfig
{
	char m_pPs2DeciIPDescription[ PS2_IP_DESC_SIZE ];
};

//=============================================================================
// struct LauncherArguments
//=============================================================================

struct LauncherArguments
{
    unsigned int m_AudioTrack;
    char m_pFileName[ 256 ];
};

//=============================================================================
// struct IMovieLauncher
//=============================================================================

struct IMovieLauncher
{
    virtual bool LaunchMovie( char * pFileName, unsigned int audioTrack, ViewerConfig * pViewerConfig ) = 0;
    virtual void OnDestroy( void ) = 0;
};

//=============================================================================
// class XBoxMovieLauncher
//=============================================================================

class XBoxMovieLauncher : public IMovieLauncher
{
    public:
        XBoxMovieLauncher( void );
        bool LaunchMovie( char * pFileName, unsigned int audioTrack, ViewerConfig * pViewerConfig );
        void OnDestroy( void );

    private:
        static DWORD WINAPI ThreadEntry( void * pData );
        static bool CopyFiles( char * pMovieName, unsigned int audioTrack );
        static bool SendFile( char * pLocalName, char * pRemoteName, bool checkDate );
        static bool MkDir( char * pDirName );

        HANDLE m_ThreadHandle;
        HANDLE m_Event;
        bool m_WasLaunched;
        unsigned int m_AudioTrack;
        char m_pFileName[ 256 ];
};

//=============================================================================
// class PCMovieLauncher
//=============================================================================

class PCMovieLauncher : public IMovieLauncher
{
    public: 
        PCMovieLauncher( void );
        bool LaunchMovie( char * pFileName, unsigned int audioTrack, ViewerConfig * pViewerConfig );
        void OnDestroy( void );

    private:

		PROCESS_INFORMATION m_ViewerProcInfo;
		bool m_WasLaunched;
};

//=============================================================================
// class Ps2DeciMovieLauncher
//=============================================================================

class Ps2DeciMovieLauncher : public IMovieLauncher
{
	public:
		Ps2DeciMovieLauncher( void );
        bool LaunchMovie( char * pFileName, unsigned int audioTrack, ViewerConfig * pViewerConfig );
        void OnDestroy( void );

	private:
        static DWORD WINAPI ThreadEntry( void * pData );
		bool CopyFiles( char * pSearch, char * pDestDrive, char * pDestDir );
		bool WriteArguments( void );
		bool LaunchElf( void );
		void Cleanup( void );

		HANDLE m_ThreadHandle;
        HANDLE m_Event;
        bool m_WasLaunched;
        unsigned int m_AudioTrack;
		unsigned int m_TempFileIndex;
		char m_pIPAddressDesc[ PS2_IP_DESC_SIZE ];
        char m_pFileName[ 256 ];
		char m_ppTempFileNames[ 7 ][ 256 ];
		PROCESS_INFORMATION m_ViewerProcInfo;
};

#endif // MOVIE_LAUNCHER_HPP