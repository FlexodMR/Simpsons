//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <p3d/platform/xbox/plat_filemap.hpp>
#include <p3d/utility.hpp>

#include <io.h>
#include <fcntl.h>

#include <xtl.h>

tWin32FileAsync::tWin32FileAsync(const char* f)
{
    char filename[512];
    strcpy(filename,f);

    for(unsigned i = 0; i < strlen(filename); i++)
    {
        if(filename[i] == '/')
            filename[i] = '\\';
    }

    hFile = INVALID_HANDLE_VALUE;
    hEvent = INVALID_HANDLE_VALUE;

    int fh = _open(filename, _O_RDONLY);
    if(fh == -1)
    {
        char n[256] = "d:\\";
        strcat(n,filename);
        
        fh = _open(n, _O_RDONLY);

        if(fh == -1)
            return;   

        strcpy(filename,n);
    }

    fileSize = _filelength(fh);
    _close(fh);

    hEvent = CreateEvent(NULL,FALSE,FALSE,NULL);
    hFile = CreateFile(filename, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, FILE_FLAG_OVERLAPPED, NULL);

    SetFilename((char*)filename);
    first = true;
    filePosition = 0;
}

tWin32FileAsync::~tWin32FileAsync()
{
    if(hFile != INVALID_HANDLE_VALUE)
        CloseHandle((HANDLE)hFile);

    if(hEvent != INVALID_HANDLE_VALUE)
        CloseHandle((HANDLE)hEvent);
}

bool tWin32FileAsync::IsOpen(void)
{
    return (hFile != INVALID_HANDLE_VALUE);
}

bool tWin32FileAsync::EndOfFile(void)
{
    return filePosition >= fileSize;
}

unsigned tWin32FileAsync::GetSize(void)
{
    return fileSize;
}

unsigned tWin32FileAsync::GetPosition(void)
{
    return filePosition;
}

void     tWin32FileAsync::Advance(unsigned offset)
{
    filePosition += offset;
    if(offset < (FILE_BUFFER_SIZE - bufferPos))
    {
        bufferPos += offset;
    }
    else
    {
        FillBuffer(filePosition);
    }
}

void     tWin32FileAsync::SetPosition(int offset)
{
    filePosition = offset;
    if(((unsigned)offset >= bufferStart ) & ((unsigned)offset < (bufferStart  + FILE_BUFFER_SIZE)))
    {
        bufferPos = offset - bufferStart;
    }
    else
    {
        FillBuffer(filePosition);
    }
}

bool tWin32FileAsync::GetData(void* buf, unsigned count, DataType type)
{
    if(first)
    {
        first = false;
        FillBuffer(filePosition);
    }

    filePosition += count * type;

    // TODO : endian
    if((bufferPos + (count * type)) < FILE_BUFFER_SIZE)
    {
        memcpy(buf, &buffer[bufferPos], count * type);
        bufferPos += count * type;
        return true;
    }

    char* b = (char*)buf;
    unsigned byteCount = count * type;

    while((bufferPos + byteCount) >= FILE_BUFFER_SIZE)
    {
        memcpy(b, &buffer[bufferPos], FILE_BUFFER_SIZE - bufferPos);
        b += FILE_BUFFER_SIZE - bufferPos;
        byteCount -= FILE_BUFFER_SIZE - bufferPos;
        FillBuffer(bufferStart + FILE_BUFFER_SIZE);
    }

    if(byteCount)
    {
        memcpy(b, &buffer[bufferPos], byteCount);
        bufferPos += byteCount;
    }

    return true;
}

bool tWin32FileAsync::PeekData(void* buf, unsigned count, DataType type)
{
    if(first)
    {
        first = false;
        FillBuffer(filePosition);
    }

    if((bufferPos + (count * type)) < FILE_BUFFER_SIZE)
    {
        memcpy(buf, &buffer[bufferPos], count * type);
        return true;
    }

    int f = GetPosition();
    GetData(buf, count, type);
    SetPosition(f);
    return true;
}

void tWin32FileAsync::FillBuffer(unsigned start)
{
    bufferStart = start;
    bufferPos = 0;
    OVERLAPPED overlapped;
    overlapped.Offset = start;
    overlapped.OffsetHigh = 0;
    overlapped.hEvent = hEvent; 

    int size = ((fileSize - start) < FILE_BUFFER_SIZE) ? (fileSize - start) : FILE_BUFFER_SIZE;

//   P3D_U64 time = p3d::platform->GetTime();
    int rc = ReadFile(hFile, buffer, size, NULL, &overlapped);
//   time = p3d::platform->GetTime() - time;
//   p3d::log() << "ReadFile: " << 1000.0f * ((float)time / (float)p3d::platform->GetTimeFreq()) << "ms" << log_endl;

    if(rc != 0)
    {
        do
        {
            p3d::loadManager->SwitchTask();
        }
        while(WaitForSingleObject(hEvent, 1) == 0x00000102);
    }
}

/*
    unsigned bufferStart[2];
    bool     bufferFilled[2];
    char     buffer[2][FILE_BUFFER_SIZE];

    unsigned curBuffer;
    unsigned curBufferPos;

    unsigned fileSize;
    unsigned filePosition;
    */

