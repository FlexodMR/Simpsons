//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef WAVEINFO_H
#define WAVEINFO_H

class File;

class rstWavFileChunk
{
    public:        

        char         m_Id[ 4 ];
        unsigned int m_ChunkSize;
        char *      m_pChunkData;

    rstWavFileChunk * m_pChunkNext;
};

class rstWavFileCue
{
    public:

    struct CueData
    {
          long    dwIdentifier;
          long    dwPosition;
          char    fccChunk[ 4 ];
          long    dwChunkStart;
          long    dwBlockStart;
          long    dwSampleOffset;
    } m_CueData;
      
    rstWavFileCue * m_pCueNext;       
};

class rstWavLabel
{
    public:

        long m_Identifier;
        char * m_pText;

        rstWavLabel * m_pWavLabelNext;
};

class rstWavLabeledText
{
    public:

        struct LabeledTextData {
          long    dwIdentifier;
          long    dwSampleLength;
          long    dwPurpose;
          short   wCountry;
          short   wLanguage;
          short   wDialect;
          short   wCodePage;
        } m_LabeledTextData;

        char * m_pText;

        rstWavLabeledText * m_pRstWavLabeledTextNext;
};

class rstWavFile
{
    public:

        rstWavFile( void );
        ~rstWavFile( void );

        static const char * ChunkIdToString( char id[ 4 ] );
        static bool MoveFileToMultiple( File & f, unsigned int multiple );

        bool Read( const char * pFileName );
        bool Write( const char * pFileName );

        bool ParseChunk( File & f, char chnk[ 4 ] );
        bool ParseFmtChunk( File & f,  unsigned int chunkSize );
        bool ParseDataChunk( File & f, unsigned int chunkSize );
        bool ParseCueChunk( File & f,  unsigned int chunkSize );
        bool ParseListChunk( File & f, unsigned int chunkSize );
        bool ParseListLablChunk( File & f, unsigned int chunkSize );
        bool ParseListLabeledTextChunk( File & f, unsigned int chunkSize );       
        bool ParseUnknownChunk( File & f, char chnk[ 4 ], unsigned int chunkSize );

        WAVEFORMATEX * m_pWaveFormatEx;
        unsigned int   m_DataSize;
        char *         m_pData;

        rstWavFileChunk    * m_pUnknownHead;
        rstWavFileCue      * m_pCueHead;
        rstWavLabel        * m_pRstWavLabelHead;
        rstWavLabeledText  * m_pRstWavLabeledTextHead;

};

#endif