//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        cmdlineoption.hpp
//
// Subsystem:   Radical Cement File Tool - Contain classes for command line parsing
//
// Description: This file contains the class definitions for command line options,
//              and prototypes for general functions used in the file cementer tool.
//
// Revisions:   V1.00   May 28, 2001        Creation
//
//=============================================================================

#ifndef  CMDLINEOPTION_HPP
#define  CMDLINEOPTION_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <string.h>
#include <stdlib.h>
#include <raddebug.hpp>
#include <radfile.hpp>
#include <radmemory.hpp>

#include <rcfEncoder.hpp>

//=============================================================================
// Parent Class
//=============================================================================

//
// This is an parent class of command line options
//
class IRadCmdLineOption : public IRefCount
{
public:
    //
    // Constructor
    //
    IRadCmdLineOption( );

    //
    // Destructor
    //
    virtual ~IRadCmdLineOption( );

    //
    // Reference counting
    //
    virtual void AddRef( );
    virtual void Release( );

    //
    // Get the option name
    //
    virtual const char* GetOptionName( ) const = 0;

    //
    // Get the usage of the option
    //
    virtual const char* GetUsage( ) const = 0;

    //
    // Get whether or not this option alters the file
    //
    virtual bool GetAltersFile( ) const = 0;

    //
    // Parse the option
    //
    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] ) = 0;

    //
    // Is the given string an option?
    //
    static bool IRadCmdLineOption::IsOption( const char* str )
    {
        return( *str && ( str[ 0 ] == '-' || str[ 0 ] == '/' || str[ 0 ] == '@' ) );
    }

    //
    // Is the given string a script file?
    //
    static bool IRadCmdLineOption::IsScriptFile( const char* str )
    {
        return( *str && ( str[ 0 ] == '@' ) );
    }

    //
    // Does the given option match this option?
    //
    virtual bool OptionsMatch( const char* str ) const;

private:
    //
    // Reference count
    //
    unsigned int m_RefCount;
};


//=============================================================================
// Class definitions
//=============================================================================

//
// This is the /help option class
//
class rcfOptionHelp : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/help";
    }
    virtual const char* GetUsage( ) const
    {
        return "-- Displays this message.";
    }
    virtual bool GetAltersFile( ) const
    {
        return false;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /quit option class
//
class rcfOptionQuiet : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/quiet";
    }
    virtual const char* GetUsage( ) const
    {
        return "-- Hides unnecessary output.";
    }
    virtual bool GetAltersFile( ) const
    {
        return false;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /info option class
//
class rcfOptionInfo : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/info";
    }
    virtual const char* GetUsage( ) const
    {
        return "-- Displays detailed information about the cement library.";
    }
    virtual bool GetAltersFile( ) const
    {
        return false;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /basedir option class
//
class rcfOptionBasedir : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/basedir dir";
    }
    virtual const char* GetUsage( ) const
    {
        return
        (
            "-- Indicate the base directory for all file operations.  All\n"
            "        file operations are executed relative to the given path."
        );
    }
    virtual bool GetAltersFile( ) const
    {
        return false;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /alignment option class
//
class rcfOptionAlignment : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/alignment hexvalue|off";
    }
    virtual const char* GetUsage( ) const
    {
        return "-- Set the alignment to a particular hex value.";
    }
    virtual bool GetAltersFile( ) const
    {
        return true;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /padnetsize option class
//
class rcfOptionPadNetSize : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/padnetsize hexnetsize|off";
    }
    virtual const char* GetUsage( ) const
    {
        return
        (
            "-- Set the net size of the cement library.\n"
            "        Extra space is filled by padding the beginning of the\n"
            "        library with blank information."
        );
    }
    virtual bool GetAltersFile( ) const
    {
        return true;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};


//
// This is the /littleendian option class
//
class rcfOptionLittleEndian : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/littleendian";
    }
    virtual const char* GetUsage( ) const
    {
        return
        (
            "-- Store data structures in a format compatible\n"
            "        with little endian architecture."
        );
    }
    virtual bool GetAltersFile( ) const
    {
        return true;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /bigendian option class
//
class rcfOptionBigEndian : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/bigendian";
    }
    virtual const char* GetUsage( ) const
    {
        return
        (
            "-- Store data structures in a format compatible\n"
            "        with big endian architecture."
        );
    }
    virtual bool GetAltersFile( ) const
    {
        return true;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /add option class
// Note: This class' operations depend on the order they were applied!
//
class rcfOptionAdd : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/add filespec";
    }
    virtual const char* GetUsage( ) const
    {
        return
        (
            "-- Add file(s) to the cement library.  The order that add\n"
            "        options are specified in is exactly the order that files will\n"
            "        appear in the resulting cement library.  If a file already exists,\n"
            "        an error will be produced.  Files can be specified using wildcards."
        );
    }
    virtual bool GetAltersFile( ) const
    {
        // Only alters file if files actually get updated (which is checked later).
        return false;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /update option class
// Note: This class' operations depend on the order they were applied!
//
class rcfOptionUpdate : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/update filespec";
    }
    virtual const char* GetUsage( ) const
    {
        return
        (
            "-- Update file(s) in the cement library.  This is almost\n"
            "        identical to the add option except that files that already\n"
            "        exist will be updated.  An update will not change the location\n"
            "        of an already existing file in the library."
        );
    }
    virtual bool GetAltersFile( ) const
    {
        // Only alters file if files actually get updated (which is checked later).
        return false;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /remove option class
//
class rcfOptionRemove : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/remove filespec";
    }
    virtual const char* GetUsage( ) const
    {
        return
        (
            "-- Remove file(s) to the cement library."
        );
    }
    virtual bool GetAltersFile( ) const
    {
        // Only alters file if files actually get updated (which is checked later).
        return false;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /export option class
//
class rcfOptionExport : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/export libraryfile destinationfile";
    }
    virtual const char* GetUsage( ) const
    {
        return
        (
            "-- Export a library file to the given\n"
            "        destination file."
       );
    }
    virtual bool GetAltersFile( ) const
    {
        return false;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /multiexport option class
//
class rcfOptionMultiExport : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/multiexport filespec destinationbase";
    }
    virtual const char* GetUsage( ) const
    {
        return
        (
            "-- Export multiple files."
       );
    }
    virtual bool GetAltersFile( ) const
    {
        return false;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /list option class
//
class rcfOptionList : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/list [filespec]";
    }
    virtual const char* GetUsage( ) const
    {
        return
        (
            "-- List files currently in the library.  If no filespec\n"
            "        is given, a list of all files within the library is produced."
        );
    }
    virtual bool GetAltersFile( ) const
    {
        return false;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /sync option class
//
class rcfOptionSync : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/sync";
    }
    virtual const char* GetUsage( ) const
    {
        return
        (
            "-- Make sure that the files being added and updated exactly match\n"
            "        the files in the cement library.  Extra files are removed."
        );
    }
    virtual bool GetAltersFile( ) const
    {
        return false;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

//
// This is the /fix option class
//
class rcfOptionFix : public IRadCmdLineOption
{
public:
    virtual const char* GetOptionName( ) const
    {
        return "/fix";
    }
    virtual const char* GetUsage( ) const
    {
        return
        (
            "-- Force a rewrite of the cement library.  This is useful for\n"
            "        fixing libraries with minor corruption or for updating\n"
            "        library versions"
        );
    }
    virtual bool GetAltersFile( ) const
    {
        return true;
    }

    virtual void Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] );
};

#endif //CMDLINEOPTION_HPP

