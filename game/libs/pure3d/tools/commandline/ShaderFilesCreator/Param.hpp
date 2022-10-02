//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PARAM_HPP
#define _PARAM_HPP

//commandline parameters
class Parameters            
{
public:

    Parameters(int argc, char* argv[]);
    ~Parameters();

    void          ShortUsage();                  //: Print a short usage message
    void          Usage();                       //: Print a usage message    
    void          VersionHistory(int count);

    // Tool specific parameters
   
   char* SchemaFile;       //  schema file name 
   char* SchemaDir;        //  schema file directory
   char* SrcOutputDir;        //  directory for output cpp file
   char* IncOutputDir;      //directory for output hpp file

private:

   int      Argc;
   char**   Argv;
};

extern Parameters* Param;

#endif

