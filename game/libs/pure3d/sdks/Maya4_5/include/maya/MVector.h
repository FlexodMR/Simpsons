#ifndef LINUX
#pragma once
#endif
#ifndef _MVector
#define _MVector
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
// CLASS:    MVector
//
// *****************************************************************************
//
// CLASS DESCRIPTION (MVector)
//
//	This class provides access to Maya's internal vector math library allowing
//	vectors to be handled easily, and in a manner compatible with internal
//	Maya data structures.
//
// *****************************************************************************

#if defined __cplusplus

// *****************************************************************************

// INCLUDED HEADER FILES


#include <maya/MTypes.h>
#include <maya/MTransformationMatrix.h>

// *****************************************************************************

// DECLARATIONS

class MMatrix;
class MFloatVector;
class MPoint;
class MQuaternion;
class MEulerRotation;
#define MVector_kTol 1.0e-10

// *****************************************************************************

// CLASS DECLARATION (MVector)

/// A vector math class for vectors of doubles
/**
  This class provides access to Maya's vector math library.
*/
#ifdef _WIN32
#pragma warning(disable: 4522)
#endif // _WIN32

class OPENMAYA_EXPORT MVector  
{
public:
	
	///
	enum Axis {
		///
		kXaxis,
		///
		kYaxis,
		///
		kZaxis,
		///
		kWaxis
	};

	///
					MVector();
	///
					MVector( const MVector&);
	///
					MVector( const MFloatVector&);
	///
					MVector( const MPoint&);
	///
					MVector( double xx, double yy, double zz = 0.0);
	///
					MVector( const double[3] );
	///
					~MVector();
	///
 	MVector&		operator= ( const MVector& src );
	///
 	double&      	operator()( unsigned i );
	///
 	double   		operator()( unsigned i ) const;
	///
 	double&      	operator[]( unsigned i );
	///
	double			operator[]( unsigned i )const;
	///
 	MVector			operator^( const MVector& right) const;
	///
 	double          operator*( const MVector& right ) const;
	///
 	MVector&   		operator/=( double scalar );
	///
 	MVector     	operator/( double scalar ) const;
	///
 	MVector& 		operator*=( double scalar );
	///
 	MVector   		operator*( double scalar ) const;
	///
 	friend OPENMAYA_EXPORT MVector operator*( int, const MVector&);
	///
 	friend OPENMAYA_EXPORT MVector operator*( short, const MVector&);
	///
 	friend OPENMAYA_EXPORT MVector operator*( unsigned int, const MVector&);
	///
 	friend OPENMAYA_EXPORT MVector operator*( unsigned short, const MVector&);
	///
 	friend OPENMAYA_EXPORT MVector operator*( float, const MVector&);
	///
 	friend OPENMAYA_EXPORT MVector operator*( double, const MVector&);
	///
 	MVector   		operator+( const MVector& other) const;
	///
	MVector&		operator+=( const MVector& other );
	///
 	MVector   		operator-() const;
	///
 	MVector   		operator-( const MVector& other ) const;
	///
 	MVector  		operator*( const MMatrix&) const;
	///
 	MVector&		operator*=( const MMatrix&);
	///
 	friend OPENMAYA_EXPORT MVector operator*( const MMatrix&, const MVector&);
	///
 	bool          	operator!=( const MVector& other ) const;
	///
 	bool           	operator==( const MVector& other ) const;
	///
	MVector			rotateBy( double x, double y, double z, double w) const;
	///
	MVector			rotateBy( const double rotXYZ[3], 
							  MTransformationMatrix::RotationOrder order )
                              const;
	///
	MVector			rotateBy( MVector::Axis axis, const double angle ) const;
	///
	MVector			rotateBy( const MQuaternion & ) const;
	///
	MVector			rotateBy( const MEulerRotation & ) const;
	///
	MQuaternion		rotateTo( const MVector & ) const;
	///
	MStatus			get( double[3] ) const;
	///
 	double         	length() const;
	///
 	MVector  		normal() const;
	///
	MStatus			normalize();
	///
 	double       	angle( const MVector& other ) const;
	///
	bool			isEquivalent( const MVector& other,
						double tolerance = MVector_kTol ) const;
	///
 	bool          	isParallel( const MVector& other,
						double tolerance = MVector_kTol ) const;
	///
	MVector			transformAsNormal( const MMatrix & matrix ) const;


	///
	friend OPENMAYA_EXPORT ostream&	operator<<(ostream& os, const MVector& v);

	/// The null vector
	static const MVector zero;
	/// Unit vector in the positive x direction
	static const MVector xAxis;
	/// Unit vector in the positive y direction
	static const MVector yAxis;
	/// Unit vector in the positive z direction
	static const MVector zAxis;
	/// Unit vector in the negative z direction
	static const MVector xNegAxis;
	/// Unit vector in the negative z direction
	static const MVector yNegAxis;
	/// Unit vector in the negative z direction
	static const MVector zNegAxis;
	/// The x component of the vector
	double x;
	/// The y component of the vector
	double y;
	/// The z component of the vector
	double z;

protected:
// No protected members

private:
// No private members

};

#ifdef _WIN32
#pragma warning(default: 4522)
#endif // _WIN32

// *****************************************************************************
#endif /* __cplusplus */
#endif /* _MVector */
