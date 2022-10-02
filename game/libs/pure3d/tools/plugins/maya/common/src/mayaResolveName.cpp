//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     02 December, 2002
//
// Component:   mayaResolveName.cpp
//
// Description: In the case where you need to initiate a callback on
//              node creation, if the callback is invoked for a duplicate
//              function Maya will provide you with a DG node named using
//              a reserved prefix: "__PrenotatoPerDuplicare_".
//              If you defer any commands using this name the command will
//              fail because the object will be renamed by the time your
//              deferred statement is executed.
//
//              The "ResolveName" function makes an educated guess as to the
//              final name that will be used by Maya.
//
// Constraints: NO GUARANTEES. Maya doesn't offer any prediction facilities
//              for node naming, so all this is a "seat of the pants" effort.
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/mayaResolveName.hpp"

#include <maya/MStatus.h>
#include <maya/MSelectionList.h>
#include <maya/MDagPath.h>
#include <maya/MItDag.h>
#include <maya/MItDependencyNodes.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MGlobal.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// PRIVATE Functions
//===========================================================================

//===========================================================================
// GetNameAndNumericSuffix
//===========================================================================
// Description: Parses the input string for any numeric suffix. The
//              specified string is replaced with the base name (sans
//              suffix), and the value of the numeric suffix is returned.
//
//  Parameters: MString& baseName: Name to evaluate for suffix, and storage
//                                 for name without suffix.
//
//      Return: (int): Value of numeric suffix. Returns 0 if no suffix found.
//
//===========================================================================
int GetNameAndNumericSuffix( MString& baseName )
{
    // Strip numeric suffix, if any, from name
    int numericSuffix = 0;

    int end = baseName.length() - 1;
    int start = end;

    while ( ( start > 0 ) && ( baseName.substring( start, end ).isInt() ) )
    {
        start--;
    }
    start++;    // bump 'start' back to the last match, if any.

    // 'start' will be start of numeric suffix;
    // if not past end of string then a numeric suffix exists.
    if ( start <= end )
    {
        numericSuffix = baseName.substring( start,end ).asInt();
        baseName = baseName.substring( 0, start-1 );
    }

    return numericSuffix;
}

//===========================================================================
// ObjectExists
//===========================================================================
// Description: Returns TRUE if DG object of specified name exists;
//              else returns FALSE.
//===========================================================================
bool ObjectExists( const MString& name )
{
    bool bExists = false;

    MStatus                     status;

    MStringArray                paths;
    name.split( '|', paths );
    bool bIsDagPath = paths.length() > 1;

    if ( bIsDagPath )
    {
        MSelectionList              selList;
        status = MGlobal::getSelectionListByName( name, selList );
        bExists = ( status == MS::kSuccess );
    }
    else
    {
        MItDependencyNodes          itNodes( MFn::kDependencyNode );

        for ( /* nothing */; !itNodes.isDone(); itNodes.next() )
        {
            MFnDependencyNode       fnDependNode( itNodes.item() );

            if ( fnDependNode.name() == name )
            {
                bExists = true;
                break;
            }
        }
    }

    return bExists;
}

//===========================================================================
// PUBLIC Functions
//===========================================================================

//===========================================================================
// ResolveName
//===========================================================================
// Description: This is a private overload of ResolveName that provides
//              recursion facilities for resolving the separate sub-paths
//              within a DAG path.
//
//              For example, given the input
//              "|__PrenotatoPerDuplicare_pCube1|__PrenotatoPerDuplicare_pCubeShape1"
//              the function will resolve a prediction for the sub-path 
//              representing the transform, then, using the prediction for
//              the transform, resolve the sub-path representing the shape node.
//
//  Parameters: See ResolveName() below.
//
//              bool bRecurse: Set to TRUE to resolve an entire DAG path;
//                  set FALSE to resolve only the last sub-path for a DAG path.
//
//      Return: (void)
//
//===========================================================================
void ResolveName( const MString& originalName, MString& resolvedName, bool bDAG, bool bDeferred, bool bRecurse )
{
    // Initialize some user options
    int         useNamespacesDuringFileIO;
    int         fileOptionsUseRenamePrefix;
    MString     fileOptionsRenamePrefix;

    MGlobal::executeCommand( "optionVar -q useNamespacesDuringFileIO", useNamespacesDuringFileIO );
    MGlobal::executeCommand( "optionVar -q fileOptionsUseRenamePrefix", fileOptionsUseRenamePrefix );
    MGlobal::executeCommand( "optionVar -q fileOptionsRenamePrefix", fileOptionsRenamePrefix );

//    CDEBUG << "ResolveName( \"" << originalName << "\" )" << endl;;

    resolvedName = originalName;

    bool                        bIsDecorated = false;
    bool                        bBoostSuffix = false;
    MString                     originalPath;
    unsigned int                p;

    if ( !useNamespacesDuringFileIO )
    {
        MStringArray                namespaces;
        resolvedName.split( ':', namespaces );
        unsigned int numNamespaces = namespaces.length();
        if ( numNamespaces > 1 )
        {
            MString                 noNamespace = namespaces[numNamespaces-1];

            // Build name that replaces ':' with '_'
            MString                 replaceNamespace( namespaces[0] );
            for ( p = 1; p < numNamespaces; p++ )
            {
                replaceNamespace += "_" + namespaces[p];
            }
        
            // If deferred
            //      AND replaceNamespace exists: Use replaceNamepace, Apply 'boost suffix' modifier.
            //      ELSE IF noNamespace exists: Conflict will occur, Use replaceNamespace.
            //      ELSE OK to use noNamespace.
            // If !deferred
            //      AND replaceNamespace exists: This is likely the node we're looking for.
            //      ELSE IF noNamespace exists: Conflict will occur, Use replaceNamespace.
            //      ELSE OK to use noNamespace

            resolvedName = noNamespace;

            if ( ObjectExists( noNamespace ) )
            {
                resolvedName = replaceNamespace;

                if ( bDeferred )
                {
                    if ( ObjectExists( replaceNamespace ) )
                    {
                        bBoostSuffix = true;
                    }
                }
            }


            bIsDecorated = true;
        }
    }

    if ( bDAG )
    {
        MStringArray                paths;
        resolvedName.split( '|', paths );

        originalPath = "|";

        unsigned int numPaths = paths.length() - 1;
        resolvedName = paths[numPaths];

        if ( bRecurse && numPaths )
        {
            MString                 resolvedPath;

            for ( p = 0; p < numPaths; p++ )
            {
                originalPath += paths[p];
                ResolveName( originalPath, resolvedPath, bDAG, bDeferred, false );  // one-off, no recursion

                originalPath = resolvedPath + "|";
            }
        }
    }

    // If this callback is as a result of a "Duplicate" command,
    // Maya initiates the callback using a node names with a reserved
    // prefix: "__PrenotatoPerDuplicare_".
    if ( resolvedName.substring( 0, ( strlen( gpDupePrefix ) - 1 ) ) == gpDupePrefix )
    {
        bIsDecorated = true;
        bBoostSuffix = true;        // force suffix "boost" if match is found.
        resolvedName = resolvedName.substring( strlen( gpDupePrefix ), ( resolvedName.length() - 1 ) );
    }

    if ( bDAG )
    {
        resolvedName = originalPath + resolvedName;
    }

    if ( bIsDecorated )
    {
        MString baseName( resolvedName );
        int numericSuffix = GetNameAndNumericSuffix( baseName );
        int maxSuffix = numericSuffix;

        // Iterate through existing nodes using this base name and
        // determine the largest value for any numeric suffix.
        // The new name for this node will use the max suffix value
        // plus one.

        if ( bDAG )
        {
            MItDag          itDag;

            for ( /* nothing */; !itDag.isDone(); itDag.next() )
            {
                MDagPath                            dagPath;
                itDag.getPath( dagPath );

                MString                 nodeBaseName( dagPath.fullPathName() );

//                CDEBUG << "\t?? Compare \"" << nodeBaseName << "\" & \"" << baseName << "\"" << endl;

                int suffix = GetNameAndNumericSuffix( nodeBaseName );

                if ( ( nodeBaseName == baseName ) && ( ( suffix > maxSuffix ) || bBoostSuffix ) )
                {
                    maxSuffix = suffix;
                    bBoostSuffix = true;
                }
            }

        }

        else
        {
            MItDependencyNodes          itNodes( MFn::kDependencyNode );

            for ( /* nothing */; !itNodes.isDone(); itNodes.next() )
            {
                MObject                 depNode = itNodes.item();
                MFnDependencyNode       fnDependNode( depNode );

                MString                 nodeBaseName( fnDependNode.name() );
                int suffix = GetNameAndNumericSuffix( nodeBaseName );

//                CDEBUG << "\t?? Compare \"" << nodeBaseName << "\" & \"" << baseName << "\"" << endl;

                if ( nodeBaseName == baseName )
                {
                    if ( ( suffix > maxSuffix ) || bBoostSuffix )
                    {
                        maxSuffix = suffix;
                        bBoostSuffix = true;
                    }
                }
            }
        }

        // Append suffix to name ONLY if object using base name was found.
        // If "deferred", it is assumed that the object WILL exist when
        // ResolveName is called, so only append suffix if it has been
        // found necessary to "boost" the suffix to a value higher than
        // it already is.
        if ( bBoostSuffix || ( !bDeferred && ( maxSuffix > 0 ) ) )
        {
            maxSuffix++;
            resolvedName = baseName + maxSuffix;
        }

    }

//    CDEBUG << "\t\t\"" << resolvedName << "\"" << endl;
}

//===========================================================================
// ResolveName
//===========================================================================
// Description: Given a specifed name, ResolveNamemakes an educated guess as 
//              to the final name that will be used by Maya.
//
//              In particular, the "__PrenotatoPerDuplicare_" prefix that
//              Maya prefixes when creating a duplicate is removed, and any
//              numeric suffix is incremented appropriately.
//
//              During File Imports, namespaces are replaced with a
//              "<namespace>_" prefix (provided the user options specify
//              to not use Namespaces during File IO).
//
// Constraints: NO GUARANTEES. Maya doesn't offer any prediction facilities
//              for node naming, so all this is a "seat of the pants" effort.
//
//  Parameters: const MString& originalName: The name provided by Maya. 
//                  Typically this will be the name of a DG/DAG node in a
//                  MMessage callback (e.g. nodeAddedCallback).
//              MString& resolvedName: Storage for the resolve prediction.
//              bool bDAG: Set this to TRUE if the name specifies a DAG
//                  path; set to FALSE if the name is a DG node.
//              bool bDeferred: Set this to TRUE if you need to resolve
//                  the name for a MEL command that is being deferred;
//                  set to FALSE if you need an immediate resolution.
//
//      Return: (void)
//
//===========================================================================
void ResolveName( const MString& originalName, MString& resolvedName, bool bDAG, bool bDeferred )
{
    ResolveName( originalName, resolvedName, bDAG, bDeferred, true );
}