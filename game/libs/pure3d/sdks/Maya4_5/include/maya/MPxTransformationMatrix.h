#ifndef LINUX
#pragma once
#endif
#ifndef _MPxTransformationMatrix
#define _MPxTransformationMatrix
//
// Class: MPxTransformationMatrix
// Original Author: Chon Torres
//
// Description:
//
//		This is the API side of user defined transformation matrices.
//		Any MPxTransformationMatrix will have an associated THxformMatrix
//		class to handle the Maya side of things.
//
// *****************************************************************************
//
// Copyright  (C)  Alias|Wavefront,  a division of Silicon Graphics  Limited.
// All rights  reserved.  These coded  instructions,  statements and computer
// programs contain unpublished information  proprietary to  Alias|Wavefront,
// a  division  of  Silicon  Graphics  Limited,  which  is  protected by  the
// Canadian  and  US federal copyright law and  may not be disclosed to third
// parties or  copied  or  duplicated,  in  whole  or in part,  without prior
// written consent of Alias|Wavefront, a division of Silicon Graphics Limited
//
// *****************************************************************************
//
// CLASS:	MPxTransformationMatrix
//
// *****************************************************************************
//
// CLASS DESCRIPTION (MPxTransformationMatrix)
//
//	See the online documentation in MPxTransformationMatrix.cpp.
//
// *****************************************************************************

#if defined __cplusplus

// *****************************************************************************

// INCLUDED HEADER FILES
#include <maya/MTypeId.h>
#include <maya/MStatus.h>
#include <maya/MTypes.h>
#include <maya/MTransformationMatrix.h>

#include <maya/MMatrix.h>
#include <maya/MQuaternion.h>
#include <maya/MEulerRotation.h>
#include <maya/MVector.h>
#include <maya/MPoint.h>

// DECLARATIONS

// CLASS DECLARATION (MPxTransformationMatrix)

/// Base class of all user defined transformation matrices.
/**
	Base class of all user defined transformation matrices.
*/

class OPENMAYA_EXPORT MPxTransformationMatrix {
public: 
	///
					MPxTransformationMatrix();
	///
					MPxTransformationMatrix(const MTransformationMatrix &);
	///
					MPxTransformationMatrix(const MPxTransformationMatrix &);
	///
					MPxTransformationMatrix(const MMatrix &);
	///
	virtual			~MPxTransformationMatrix();

	virtual void	copyValues(MPxTransformationMatrix *);

	MTypeId			typeId() const;

	///
	MPxTransformationMatrix & operator = (const MPxTransformationMatrix &src);
	///
	MPxTransformationMatrix & operator = (const MMatrix &src);
	///
	MPxTransformationMatrix & operator = (const MTransformationMatrix &src);
	///
	bool	  				  operator == (const MPxTransformationMatrix &);
	///
	bool	  				  operator != (const MPxTransformationMatrix &);
	///
	bool					  operator == (const MTransformationMatrix &);
	///
	bool	  				  operator != (const MTransformationMatrix &);
	///
	bool					  operator == (const MMatrix &);
	///
	bool					  operator != (const MMatrix &);
	///

	///
	virtual bool 				isEquivalent(const MPxTransformationMatrix &,
										double tolerance = MMatrix_kTol) const;
	///
	virtual bool 				isEquivalent(const MTransformationMatrix &,
										double tolerance = MMatrix_kTol) const;
	///
	virtual bool 				isEquivalent(const MMatrix &,
										double tolerance = MMatrix_kTol) const;
	///
	virtual MPxTransformationMatrix reverse() const;
	///
	virtual MPxTransformationMatrix	&transformBy(const MTransformationMatrix &);

	///
	virtual MMatrix		asMatrix() const;
	///
	virtual MMatrix		asMatrixInverse() const;
	///
	virtual MMatrix		asScaleMatrix() const;
	///
	virtual MMatrix 	asScaleMatrixInverse() const;
	///
	virtual MMatrix		asRotateMatrix() const;
	///
	virtual MMatrix 	asRotateMatrixInverse() const;
	///
	virtual MMatrix		asMatrix(double percent) const;
	///
	virtual MMatrix		asInterpolationMatrix(const MTransformationMatrix &toM, 
											double percent, bool rot,
											int direction = 0) const;
	///
	virtual MTransformationMatrix	asTransformationMatrix() const;

	//
	//	Translation methods:
	//

	///
	virtual MVector 		translation(MSpace::Space = MSpace::kTransform,
										MStatus* ReturnStatus = NULL) const;
	///
	virtual MStatus 		translateTo(const MVector &vector,
										MSpace::Space = MSpace::kTransform);
	///
	virtual MStatus			translateBy(const MVector &vector,
										MSpace::Space = MSpace::kTransform);

	//
	//	Rotation methods:
	//

	///
	virtual MQuaternion		rotation(MSpace::Space = MSpace::kTransform,
									 MStatus *ReturnStatus = NULL) const;
	///
	virtual MEulerRotation	eulerRotation(MSpace::Space = MSpace::kTransform,
									MStatus *ReturnStatus = NULL) const;
	///
	virtual MStatus 	rotateTo(const MQuaternion &q,
								 MSpace::Space = MSpace::kTransform);
	///
	virtual MStatus 	rotateBy(const MQuaternion &q,
								 MSpace::Space = MSpace::kTransform);
	///
	virtual MStatus		rotateTo(const MEulerRotation &e,
								 MSpace::Space = MSpace::kTransform);
	///
	virtual MStatus 	rotateBy(const MEulerRotation &e,
								 MSpace::Space = MSpace::kTransform);
	///
	virtual MTransformationMatrix::RotationOrder	
						rotationOrder(MStatus* ReturnStatus = NULL) const;
	///
	virtual MStatus		setRotationOrder(MTransformationMatrix::RotationOrder,
										 bool preserve = true);
	///
	virtual MQuaternion	rotateOrientation(MSpace::Space = MSpace::kTransform,
											MStatus* ReturnStatus = NULL) const;
	///
	virtual MStatus 	setRotateOrientation(const MQuaternion &q,
											MSpace::Space = MSpace::kTransform,
											bool balance = true);
	///
	virtual MEulerRotation	eulerRotateOrientation(MSpace::Space = MSpace::kTransform,
											MStatus* ReturnStatus = NULL) const;
	virtual MStatus 	setRotateOrientation(const MEulerRotation &euler,
											MSpace::Space = MSpace::kTransform,
											bool balance = true);

	//
	//	Scale methods:
	//

	///
	virtual MVector		scale(MSpace::Space = MSpace::kTransform,
								MStatus* ReturnStatus = NULL) const;
	///
	virtual MStatus		scaleTo(const MVector &, 
								MSpace::Space = MSpace::kTransform);
	///
	virtual MStatus 	scaleBy(const MVector &, 
								MSpace::Space = MSpace::kTransform);

	//	Shear methods:
	//
	///
	virtual MVector	shear(MSpace::Space = MSpace::kTransform,
							MStatus* ReturnStatus = NULL) const;
	///
	virtual MStatus	shearTo(const MVector shear,
							MSpace::Space = MSpace::kTransform);
	///
	virtual MStatus	shearBy(const MVector shear,
							MSpace::Space = MSpace::kTransform);

	//	Scale pivot methods:
	//
	///
	virtual MPoint	scalePivot(MSpace::Space = MSpace::kTransform,
								MStatus* ReturnStatus = NULL) const;
	///
	virtual MStatus setScalePivot(const MPoint &, 
									MSpace::Space = MSpace::kTransform,
									bool balance = true);
	///
	virtual MVector	scalePivotTranslation(MSpace::Space = MSpace::kTransform,
										MStatus* ReturnStatus = NULL) const;
	///
	virtual MStatus	setScalePivotTranslation(const MVector &vector,
										MSpace::Space = MSpace::kTransform);
	
	//	Rotate pivot methods:

	///
	virtual MPoint	rotatePivot(MSpace::Space = MSpace::kTransform,
								MStatus* ReturnStatus = NULL) const;
	///
	virtual MStatus setRotatePivot(const MPoint &, 
									MSpace::Space = MSpace::kTransform,
									bool balance = true);
	///
	virtual MVector	rotatePivotTranslation(MSpace::Space = MSpace::kTransform,
											MStatus* ReturnStatus = NULL) const;
	///
	virtual MStatus	setRotatePivotTranslation(const MVector &vector,
										MSpace::Space = MSpace::kTransform);
	///
	virtual	MStatus unSquishIt();
	///
	virtual MMatrix unSquishMatrix() const;

	///
	friend ostream &operator << (ostream &os, const MPxTransformationMatrix &m);

	static void *creator();

	///	
	static MEulerRotation::RotationOrder	
			convertRotationOrder(MTransformationMatrix::RotationOrder,
								 MStatus *ReturnStatus = NULL);
	///
	static MTransformationMatrix::RotationOrder
					convertRotationOrder(MEulerRotation::RotationOrder,
										 MStatus *ReturnStatus = NULL);
	///
	static const  MPxTransformationMatrix identity; 
	///
	static MTypeId		baseTransformationMatrixId;
protected:
	virtual	MStatus		decomposeMatrix(const MMatrix &);

	MVector				scaleValue;
	MEulerRotation		rotationValue;
	MVector				translationValue;
	MVector				shearValue;
	MPoint 				scalePivotValue;
	MVector				scalePivotTranslationValue;
	MPoint				rotatePivotValue;
	MVector 			rotatePivotTranslationValue;
	MQuaternion			rotateOrientationValue;

private:
	static const char*	className();



	void*				instance;
	
};

// *****************************************************************************
#endif /* __cplusplus */
#endif /* _MPxTransformationMatrix */
