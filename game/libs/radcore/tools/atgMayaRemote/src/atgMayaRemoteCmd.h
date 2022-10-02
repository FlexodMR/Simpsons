#ifndef _atgMayaRemoteCmd
#define _atgMayaRemoteCmd
//
// Copyright (C) 2002 Radical Entertainment 
// 
// File: atgMayaRemoteCmd.h
//
// MEL Command: atgMayaRemote
//
// Author: Maya SDK Wizard
//

#include <maya/MPxCommand.h>

class MArgList;

class atgMayaRemote : public MPxCommand
{

public:
				atgMayaRemote();
	virtual		~atgMayaRemote();

	MStatus		doIt( const MArgList& );
	MStatus		redoIt();
	MStatus		undoIt();
	bool		isUndoable() const;

	static		void* creator();

private:
	// Store the data you will need to undo the command here
	//
};

#endif
