#ifndef LINUX
#pragma once
#endif
#ifndef _MFnDirectionManip
#define _MFnDirectionManip
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
// CLASS:    MFnDirectionManip
//
// *****************************************************************************
//
// CLASS DESCRIPTION (MFnDirectionManip)
//
// Function set for a base manipulator - DirectionManip.
//
// *****************************************************************************

#if defined __cplusplus

// *****************************************************************************

// INCLUDED HEADER FILES

#include <maya/MFnBase.h>
#include <maya/MFnManip3D.h>
#include <maya/MObject.h>

// *****************************************************************************

// DECLARATIONS

class MPoint;

// *****************************************************************************

// CLASS DECLARATION (MFnDirectionManip)

/// DirectionManip function set (OpenMayaUI)
/**
MFnDirectionManip is the function set for direction manipulators.
*/
#ifdef _WIN32
#pragma warning(disable: 4522)
#endif // _WIN32

class OPENMAYAUI_EXPORT MFnDirectionManip : public MFnManip3D
{
	declareDagMFn(MFnDirectionManip, MFnManip3D);

public:
	///
	MObject		create(MStatus *ReturnStatus = NULL);
	///
	MObject		create(const MString &manipName,
					   const MString &directionName,
					   MStatus *ReturnStatus = NULL);
	///
	MStatus		connectToDirectionPlug(MPlug &directionPlug);
	///
	MStatus		setNormalizeDirection(bool state);
	///
	MStatus		setDrawStart(bool state);
	///
	MStatus		setStartPoint(MPoint &startPoint);
	///
	unsigned	startPointIndex(MStatus *ReturnStatus = NULL) const;
	///
	unsigned	endPointIndex(MStatus *ReturnStatus = NULL) const;
	///
	unsigned	directionIndex(MStatus *ReturnStatus = NULL) const;
	  
protected:

private:

};

#ifdef _WIN32
#pragma warning(default: 4522)
#endif // _WIN32

// *****************************************************************************
#endif /* __cplusplus */
#endif /* _MFnDirectionManip */
