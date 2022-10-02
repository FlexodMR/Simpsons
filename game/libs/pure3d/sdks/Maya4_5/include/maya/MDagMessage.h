#ifndef LINUX
#pragma once
#endif
#ifndef _MDagMessage
#define _MDagMessage
//
// *****************************************************************************
//
// Copyright (C) 1998-2001 Alias|Wavefront Inc.
//
// These coded instructions, statements and computer programs contain
// unpublished information proprietary to Alias|Wavefront Inc. and are
// protected by Canadian and US federal copyright laws. They may not be
// disclosed to third parties or copied or duplicated, in whole or in part,
// without prior written consent of Alias|Wavefront Inc.
//
// Unpublished-rights reserved under the Copyright Laws of the United States.
//
// *****************************************************************************
//
// CLASS:    MDagMessage
//
// *****************************************************************************
//
// CLASS DESCRIPTION (MDagMessage)
//
// This class is used to register callbacks for Dag messages.
// There are 4 add callback methods which will add callbacks for the
// following messages
//     Time change
//     Node Added
//     Node Removed
//     Connection made or broken
//
// A filter can be specified for node added/removed messages. The default 
// node type is "dependNode" which matches all nodes.
// Each method returns an id which is used to remove the callback.
//
// To remove a callback use MMessage::removeCallback.
// All callbacks that are registered by a plug-in must be removed by that
// plug-in when it is unloaded. Failure to do so will result in a fatal error.
//
// *****************************************************************************

#if defined __cplusplus

// *****************************************************************************

// INCLUDED HEADER FILES

#include <maya/MMessage.h>
#include <maya/MString.h>

// *****************************************************************************

// DECLARATIONS

// *****************************************************************************

// CLASS DECLARATION (MDagMessage)

class MDagPath;

/// Dependency graph messages 
/**
*/
#ifdef _WIN32
#pragma warning(disable: 4522)
#endif // _WIN32

class OPENMAYA_EXPORT MDagMessage : public MMessage
{ 
public:
	/// The type of DAG changed messages that have occurred
	enum DagMessage {
		/// an invalid message was used. 
		kInvalidMsg = -1,
		/// a dummy enum used for looping through the message types
		kParentAdded,
		///	a parent was removed from a DAG node
		kParentRemoved,
		///	a child was added to a DAG node
		kChildAdded,
		///	a child was removed from a DAG node
		kChildRemoved,
		///	a child of a DAG node was reordered
		kChildReordered,
	};
	
public:
	// Parent added callback for all nodes
	///
	static MCallbackId	addParentAddedCallback(
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );
	
	// Parent added callback for a specified node
	///
	static MCallbackId	addParentAddedCallback(
								MDagPath &dagPath,
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );
	
	// Parent removed callback for all nodes
	///
	static MCallbackId  addParentRemovedCallback(
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	// Parent removed callback for a specified node
	///
	static MCallbackId  addParentRemovedCallback(
								MDagPath &dagPath,
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );
	
	// Child added callback for all nodes
	///
	static MCallbackId	addChildAddedCallback(
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	// Child added callback for a specified node
	///
	static MCallbackId	addChildAddedCallback(
								MDagPath &dagPath,
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	// Child removed callback for all nodes
	///
	static MCallbackId	addChildRemovedCallback(
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	// Child removed callback for a specified node
	///
	static MCallbackId	addChildRemovedCallback(
								MDagPath &dagPath,
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	// Child reordered callback for all nodes
	///
	static MCallbackId	addChildReorderedCallback(
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	// Child reordered callback for a specified node
	///
	static MCallbackId	addChildReorderedCallback(
								MDagPath &dagPath,
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );
	
	//	Any Dag change callback for all nodes
	///
	static MCallbackId	addDagCallback(
								DagMessage msgType,
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	//	Any Dag change callback for a specified node
	///
	static MCallbackId	addDagCallback(
								MDagPath &dagPath,
								DagMessage msgType,
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	//	Any DAG change callback with the DagMessage for all nodes
	///
	static MCallbackId	addDagCallback(
								DagMessage msgType,
								void (*func)( 	DagMessage msgType,
												MDagPath &child,
												MDagPath &parent,
												void *clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	//	Any Dag change callback with the DagMessage for a specified node
	///
	static MCallbackId	addDagCallback(
								MDagPath &dagPath,
								DagMessage msgType,
								void (*func)( 	DagMessage msgType,
												MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	//	Adds a Dag change callback for all known Dag change messages for
	//	all nodes.
	///
	static MCallbackId	addAllDagChangesCallback(
								void (*func)( 	DagMessage msgType,
												MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	//	Adds a Dag change callback for all known Dag change messages for
	//	the specified node.
	///
	static MCallbackId	addAllDagChangesCallback(
								MDagPath &dagPath,
								void (*func)( 	DagMessage msgType,
												MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

private: 
	static MCallbackId	addDagCallback(
								MDagPath *dagPath,
								DagMessage msgType,
								void (*func)( 	MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );


	static MCallbackId	addDagCallback(
								MDagPath *dagPath,
								DagMessage msgType,
								void (*func)( 	DagMessage msgType,
												MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	static MCallbackId	addAllDagChangesCallback(
								MDagPath *dagPath,
								void (*func)( 	DagMessage msgType,
												MDagPath &child,
												MDagPath &parent,
												void * clientData ),
								void * clientData = NULL,
								MStatus * ReturnStatus = NULL );

	static const char* className();
};

#ifdef _WIN32
#pragma warning(default: 4522)
#endif // _WIN32

// *****************************************************************************

#endif /* __cplusplus */
#endif /* _MDagMessage */
