#ifndef LINUX
#pragma once
#endif
#ifndef _MStringArray
#define _MStringArray
//
// *****************************************************************************
//
// Copyright (C) 1997-2001 Alias|Wavefront Inc.
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
// CLASS:    MStringArray
//
// *****************************************************************************
//
// CLASS DESCRIPTION (MStringArray)
//
// This class implements an array of MStrings.  Common convenience functions
// are available, and the implementation is compatible with the internal
// Maya implementation so that it can be passed efficiently between plugins
// and internal maya data structures.
//
// *****************************************************************************

#if defined __cplusplus

// *****************************************************************************

// INCLUDED HEADER FILES


#include <maya/MTypes.h>
#include <maya/MStatus.h>

// *****************************************************************************

// DECLARATIONS

class MString;

// *****************************************************************************

// CLASS DECLARATION (MStringArray)

/// Array of MStrings data type
/**
  Implement an array of MStrings data type.
*/
#ifdef _WIN32
#pragma warning(disable: 4522)
#endif // _WIN32

class OPENMAYA_EXPORT MStringArray  
{

public:
	///
				MStringArray();
	///
				MStringArray( const MStringArray& other );
	///
				MStringArray( const MString strings[], unsigned count );
	///
				MStringArray( const char* strings[], unsigned count );
	///
				MStringArray( unsigned initialSize, 
							  const MString &initialValue );
	///
				~MStringArray();
	///
	MString		operator[]( unsigned index ) const;
	///
	MString&	operator[]( unsigned index );
 	///
 	MStringArray & operator=( const MStringArray & other );
	///
	MStatus		set( const MString& element, unsigned index );
	///
	MStatus		set( char* element, unsigned index );
	///
	unsigned	length() const;
	///
	MStatus		remove( unsigned index );
	///
	MStatus		insert( const MString & element, unsigned index );
	///
	MStatus		append( const MString & element );
	///
	MStatus		clear();
	///
	MStatus		get( MString array[] ) const;
	///
	MStatus		get( char* array[] ) const;
	///
	void		setSizeIncrement ( unsigned newIncrement );
	///
	unsigned	sizeIncrement () const;
	///
	friend OPENMAYA_EXPORT ostream &operator<<(ostream &os, 
											   const MStringArray &array);

protected:
// No protected members

private:
	MStringArray( void* );


	void * arr;
	bool   own;
	static const char* className();
};

#ifdef _WIN32
#pragma warning(default: 4522)
#endif // _WIN32

// *****************************************************************************
#endif /* __cplusplus */
#endif /* _MStringArray */
