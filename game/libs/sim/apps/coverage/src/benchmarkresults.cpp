#include <typeinfo>
#include <stdio.h>

#include <stdarg.h>

#ifdef RAD_PS2
#include <sifdev.h>
#endif

#include "benchmarkresults.hpp"

//
//  Result implementation
//

Result::Result()
:mInfo(), mBenchmark()
{
    mName[0] = '\0';
}

Result::Result(const char *name, UpdateInfo& info, Benchmark& benchmark)
:mInfo(info), mBenchmark(benchmark)
{
    strncpy(mName, name, cResultMaxNameLength);
    mName[cResultMaxNameLength-1] = '\0';
}

bool operator==(const Result& lhs, const Result& rhs)
{
    if((strcmp(lhs.mName, rhs.mName) == 0) && (lhs.mBenchmark == rhs.mBenchmark))
        return true;
    return false;
}

//
//  FileWriter implementation
//

FileWriter::FileWriter()
{
#ifdef RAD_WIN32
    fp = NULL;
#endif
#ifdef RAD_XBOX
    fh = INVALID_HANDLE_VALUE;
#endif
#ifdef RAD_PS2
    fd = -1;
#endif
#ifdef RAD_GAMECUBE
#endif
}

FileWriter::~FileWriter()
{
    Close();
}

int FileWriter::Open(char *filename, char *ext)
{
    char realFilename[256];
#ifdef RAD_WIN32
    sprintf(realFilename, "%s_Win32.%s", filename, ext);
    fp = fopen(realFilename, "wb");
    if(!fp)
        return -1;
#endif
#ifdef RAD_XBOX
    sprintf(realFilename, "d:\\%s_XBox.%s", filename, ext);
    fh = CreateFile(realFilename, GENERIC_WRITE, 0, NULL,
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL |
        FILE_FLAG_SEQUENTIAL_SCAN, NULL);
    if(fh == INVALID_HANDLE_VALUE)
        return -1;
#endif
#ifdef RAD_PS2
    sprintf(realFilename, "host0:%s_PS2.%s", filename, ext);
    fd = sceOpen(realFilename, SCE_WRONLY | SCE_CREAT | SCE_TRUNC);
    if(fd < 0)
        return fd;
#endif
#ifdef RAD_GAMECUBE
    sprintf(realFilename, "%s_GC.%s", filename, ext);
    //radFileServer code : do not delete
    //sprintf(realFilename, "REMOTEDRIVE:%s_GC.%s", filename, ext);
    //radFileOpen(&fp, realFilename, true);
    //fp->WaitForCompletion();
    //if(!fp->IsOpen())
    //   return -1;
#endif

    printf("file %s opened successfully\n", realFilename);
    return 0;
}

bool FileWriter::IsOpen()
{
#ifdef RAD_WIN32
    if(!fp)
        return false;
#endif
#ifdef RAD_XBOX
    if(fh == INVALID_HANDLE_VALUE)
        return false;
#endif
#ifdef RAD_PS2
    if(fd < 0)
        return false;
#endif
#ifdef RAD_GAMECUBE
#endif

    return true;
}

int FileWriter::Write(char *buf, int length, bool translateCRLF)
{
    if(translateCRLF) {
        char *newline = (char *)memchr(buf, '\n', length);
        if(newline) {
            //write before the newline
            int substrlen = newline - buf;
            Write(buf, substrlen, false);
            //expand the newline
            Write("\r\n", 2, false);
            //write after the newline
            newline++;
            Write(newline, length - substrlen - 1, true);
            return 0;
        }
    }

#ifdef RAD_WIN32
    if(!fp)
        return -1;
    return fwrite(buf, length, 1, fp);
#endif
#ifdef RAD_XBOX
    if(fh == INVALID_HANDLE_VALUE)
        return -1;
    DWORD nbytes_written;
    return (WriteFile(fh, buf, length, &nbytes_written, NULL) == 0) ?
        -1 : nbytes_written;
#endif
#ifdef RAD_PS2
    if(fd < 0)
        return -1;
    return sceWrite(fd, buf, length);
#endif
#ifdef RAD_GAMECUBE
    //radFileServer code : do not delete
    //if(!fp->IsOpen())
    //   return -1;
    //fp->WriteAsync(buf, length);
    //fp->WaitForCompletion();
    return 0;
#endif
}

int FileWriter::Printf(const char *format, ...)
{
#ifdef RAD_GAMECUBE
    va_list va;
    va_start(va, format);
    int ret = vprintf(format, va);
    va_end(va);
    return ret;
#else
     char buf[256];
     va_list va;

     va_start(va, format);
#ifdef HAS_vsnprintf
     (void)vsnprintf(buf, sizeof(buf), format, va);
#else
     (void)vsprintf(buf, format, va);
#endif
     va_end(va);
     int len = strlen(buf); // some *sprintf don't return the nb of bytes written
     if(len <= 0)
         return 0;

     return Write(buf, len, true);
#endif
}

int FileWriter::Close()
{
#ifdef RAD_WIN32
    if(!fp)
        return -1;
    return fclose(fp);
#endif
#ifdef RAD_XBOX
    if(fh == INVALID_HANDLE_VALUE)
        return -1;
    return (CloseHandle(fh) == 0) ? -1 : 0;
#endif
#ifdef RAD_PS2
    if(fd < 0)
        return -1;
    return sceClose(fd);
#endif
#ifdef RAD_GAMECUBE
    //radFileServer code : do not delete
    //fp->Release();
    return 0;
#endif
}

//
//  BenchmarkResults implementation
//

BenchmarkResults::BenchmarkResults()
:mNumResults(0)
{
    mResult.DontUseMemCpy();
}

void BenchmarkResults::StartBenchmark(char *filename)
{
    mNumResults = 0;
    if(filename) {
        mFile.Open(filename, "txt");
        mStoreResults = false;
    }
    else
        mStoreResults = true;
}

void BenchmarkResults::EndBenchmark()
{
    mFile.Close();
}

void BenchmarkResults::Add(Result& newResult)
{
    static UpdateInfo time;
    static int batchedResults = 0;
    int paramsToAverage = 0;
    BenchmarkParameter *param = newResult.mBenchmark.GetParam("Average Last N Params");
    if(param)
        paramsToAverage = param->GetAsInt();
    if(paramsToAverage > 0) {
        int num = 1;
        int numParams = newResult.mBenchmark.NumParams();
        for(int i = numParams - 2; i >= (numParams - paramsToAverage - 1); i--)
            num *= newResult.mBenchmark.GetParam(i)->GetNumValues();
        if(batchedResults == num) {
            time += newResult.mInfo;
            batchedResults++;
            time.mSimTime /= (float)batchedResults;
            time.mCollisionTime /= (float)batchedResults;
            time.mOtherTime /= (float)batchedResults;
            newResult.mInfo = time;
            batchedResults = 0;
        }
        else {
            if(batchedResults++ == 0)
                time = newResult.mInfo;
            else
                time += newResult.mInfo;
            return;
        }
    }

    if(mStoreResults) {
        //add to array, replace if corresponding result is already in array
        int index = mResult.Find(newResult);
        if(index == -1)
            mResult.Add(newResult);
        else
            mResult[index] = newResult;
    }

    if(mFile.IsOpen()) {
        if(mNumResults == 0)
            WriteHeader(mFile, newResult);

        mFile.Printf("%d\t", mNumResults);
        WriteData(mFile, newResult);
    }

    time.Clear();
    mNumResults++;
}

int BenchmarkResults::WriteToFile(char *filename)
{
    if(mResult.GetSize() == 0)
        return 0;

    if(mFile.IsOpen())
        return 0;

    //open the file
    FileWriter file;
    file.Open(filename, "txt");

    if(!file.IsOpen())
        return -1;

    //write to the file
    WriteHeader(file, mResult[0]);
    for(int i = 0; i < mResult.GetSize(); i++) {
        file.Printf("%d\t", i);
        WriteData(file, mResult[i]);
    }

    //close the file
    file.Close();

    return 0;
}

void BenchmarkResults::WriteHeader(FileWriter& file, Result& result)
{
    int i;
    for(i = 0; i < result.mBenchmark.NumParams(); i++) {
        BenchmarkParameter *p = result.mBenchmark.GetParam(i);
        if(p->GetNumValues() == 1)
            file.Printf("%s: %s\n", p->GetName(), p->GetAsString());
    }
    file.Printf("\n");
    file.Printf("Test\tSimulation Time\tCollision Time\tTotal Time\tOther Time");
    for(i = 0; i < result.mBenchmark.NumParams(); i++) {
        BenchmarkParameter *p = result.mBenchmark.GetParam(i);
        if(p->GetNumValues() > 1)
            file.Printf("\t%s", p->GetName());
    }
    file.Printf("\n");
}

void BenchmarkResults::WriteData(FileWriter& file, Result& result)
{
    file.Printf("%f\t%f\t%f\t%f",
        result.mInfo.mSimTime,
        result.mInfo.mCollisionTime,
        result.mInfo.mSimTime + result.mInfo.mCollisionTime,
        result.mInfo.mOtherTime);

    for(int i = 0; i < result.mBenchmark.NumParams(); i++) {
        BenchmarkParameter *p = result.mBenchmark.GetParam(i);
        if(p->GetNumValues() > 1)
            file.Printf("\t%s", p->GetAsString());
    }
    file.Printf("\n");
}