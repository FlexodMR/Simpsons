/*===========================================================================
    File:: dospath.hpp

    Provide some service to work with file names.

    Copyright (c)1995, 1996, 1997, 1998 Radical Entertainment, Inc.
    All rights reserved.

===========================================================================*/

#ifndef _DOSPATH_HPP
#define _DOSPATH_HPP



/*+-----------------------------------------------------------------
Syntax:
    int HasExtension (char *const Name, char** ExtPos)

Arguments:
    Name      file name
    ExtPos    adrress for output pointer to the extension

Returns:
    1         File name has an extension
    0         File name has no extension

Description:
    Finds out if the file path has an extension.
    ExtPos will be set to point to the first extension letter.

------------------------------------------------------------------+*/
extern int HasExtension (char *const Name, char** DotPos);
/*+-----------------------------------------------------------------
Syntax:
    char* DefaultExtension (char* Name, const char* Ext)

Arguments:
    Name   Pointer to a file path
    Ext    Pointer to a file extention

Returns:
    Name

Description:
    Set the extension for the file path, if the file path has no extension.

------------------------------------------------------------------+*/
extern char* DefaultExtension (char* Name, const char* Ext);
/*+-----------------------------------------------------------------
Syntax:
    char* ForceExtension (char* Name, const char* Ext)

Arguments:
    Name   Pointer to a file path
    Ext    Pointer to a file extention

Returns:
    Name

Description:
    Sets the extension for the file path.

------------------------------------------------------------------+*/
extern char* ForceExtension (char* Name, const char* Ext);
/*+-----------------------------------------------------------------
Syntax:
    char* JustFileName(char* PathName)

Arguments:
    PathName    Pointer to a file path

Returns:
    PathName

Description:
    PathName is modified so that it will have only file name part of the file path.

------------------------------------------------------------------+*/
extern char* JustFileName(char* PathName);
/*+-----------------------------------------------------------------
Syntax:
    char* JustPathName(char* PathName)

Arguments:
    PathName    Pointer to a file path

Returns:
    PathName

Description:
    PathName is modified so that it will have only path name part of the file path.

------------------------------------------------------------------+*/

char* JustExtension (char* Name);

extern char* JustPathName (char* PathName);
/*+-----------------------------------------------------------------
Syntax:
    char* AddBackSlash (char* PathName)

Arguments:
    PathName    Pointer to a file path

Returns:
    PathName

Description:
    Adds back slash to the path name if there is no one

------------------------------------------------------------------+*/
extern char* AddBackSlash (char* PathName);
/*+-----------------------------------------------------------------
Syntax:
    char* FullPathName (char* FName)

Arguments:
    FName        Pointer to a file name

Returns:
    FName

Description:
    Makes the full file name from file name ("dev:path\filename").

------------------------------------------------------------------+*/
extern char* FullPathName (char* FName);

extern int FileExist (char* Name);
      // THIS FUNCTION IS NOT IMPLEMENTED YET
      // Purpose:
      //   Find out if the file exist
      // Input:
      //   Name   - file name
      // Return:
      //   1 - file exists
      //   0 - file doesn't exist
//-----------------------------------------------
extern int ToStrEnd (char** p);
      // Purpose:
      //   Go to the last symbol in the string
      // Input:
      //   Address of the pointer to the string
      // Return:
      //   String length.
      // Side effect:
      //   Pointer will point to the last symbol in the string
//-----------------------------------------------
extern char* Pos (char ch, char* s);
     // Purpose:
     //    Find symbol in the string
     // Input:
     //    s  - string
     //    ch - symbol to find
     // Output:
     //    Pointer to the symbol or to '\0'
     //
//-----------------------------------------------
extern char* RemoveExtension (char* Name);
    // Purpose:
    //   Remove an extension from the file name
    // Input:
    //   Name   - file name
    // Return:
    //   Name
//-----------------------------------------------
extern int PathIsAbsolute (char* PathName);
    // Purpose:
    //   Returns 1 if the path has drive letter or begins with backslash
    // Input:
    //   Path Name   - path name
    // Return:
    //   Returns 1 if the path has drive letter or begins with backslash

#endif

