//=============================================================================
//
// File:        FileAssoc.h
//
// Subsystem:   Radical Foundation Technologies Watcher Server
//
// Description:	This file contains class definitions for the watcher server
//				file association stuff. This is used to save the users 
//              values to the files. 
//
// Revisions:	Feb 27, 2000
//
// Usage:       
//
//=============================================================================

#ifndef FILEASSOC_H
#define FILEASSOC_H

//=============================================================================
// Include Files
//=============================================================================

#include "..\\..\\src\\radprotocols\\debugWatchProtocol.hpp"

//=============================================================================
// Class Declarations
//=============================================================================

class CFileAssociation
{
    public:
    //
    // Constructor and destructor
    //        
    CFileAssociation( const char *pNameSpace, const char* pFileName, unsigned int fileType );
    ~CFileAssociation( void );

    //
    // Return the file assoicaite with name space. Also return subname space to use
    // to find the element.,
    //
    static CFileAssociation* Find( const char* nameSpace, char** subspace );

    //
    // These members are used to set and get values from the file. Returns empty string
    // if get cannot find attrib.

    bool GetValue( const char* nameSpace, const char* name, char* Value );
    bool SetValue( const char* nameSpace, const char* name, char* Value );

    //
    // Static to delete all
    //
    static void DeleteAll( void );

    char* GetNameSpaceToken(char *pNameSpace, char *pToken);

    private:

    //
    // Maintains linked list of these objects.
    //
    static CFileAssociation*    m_pListHead;
    CFileAssociation*           m_pNext;
    
    //
    // File information;
    //
    char    m_NameSpace[ WP_MAX_NAMESPACELENGTH ];
    char    m_Filename[ 256 + 1 ];

    enum FileType
    {
        FileXML,                
        FileDefine,
        FileConst
    };
    
    FileType  m_FileType;
     
    //
    // Interface to the XML document object
    //
    MSXML::IXMLDOMDocument* m_pXMLDoc;

};

#endif
