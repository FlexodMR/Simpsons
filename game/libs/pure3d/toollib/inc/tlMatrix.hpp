/*===========================================================================
    File:: tlMatrix.hpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLMATRIX_HPP
#define _TLMATRIX_HPP


class tlQuat;
class tlPoint;
class tlFile;

class tlMatrix
{
public:
    float element[4][4];

    tlMatrix();
    tlMatrix(float,float,float,float,
             float,float,float,float,
             float,float,float,float,
             float,float,float,float);

    // Access i-th row as tlPoint for read or assignment:
    tlPoint& operator[](int i) { return((tlPoint&)(*element[i]));  }
    tlPoint& operator[](int i) const { return((tlPoint&)(*element[i])); }


    bool operator==(const tlMatrix& m) const;

    void TransformPointList(int, tlPoint*, tlPoint* n = 0);

    // Operations on matrix
    void IdentityMatrix();     // Make into the Identity Matrix
    void Zero();      // set all elements to 0

    void Transpose();

    // Both of these functions convert a matrix operating in RH or LH coordinate
    // spaces to matrices operating in LH or RH coordinates, respectively
    //
    void RHSToLHS();
    void LHSToRHS()
        { RHSToLHS(); }

    tlPoint GetRow(int i) const;
    void SetRow(int i, tlPoint p);

    // Apply Incremental transformations to this matrix
    // Equivalent to multiplying on the RIGHT by transform
    void TranslateX(float x);
    void TranslateY(float y);
    void TranslateZ(float z);
    void Translate(float x, float y, float z);
    void Translate(const tlPoint& p);
    void RotateX(float x);  
    void RotateY(float y);
    void RotateZ(float z);
    // if (scaleTranslation == false) the translation component is unaffected:
    void ScaleX(float x, bool scaleTranslation = false);
    void ScaleY(float y, bool scaleTranslation = false);
    void ScaleZ(float z, bool scaleTranslation = false);
    void Scale(float x, float y, float z, bool scaleTranslation = false);
    void Scale(const tlPoint& s, bool scaleTranslation = false);
    void ShearXY(float xy);
    void ShearXZ(float xz);
    void ShearYZ(float yz);
    void Shear(float xy, float xz, float yz);

    // Apply Incremental transformations to this matrix
    // Equivalent to multiplying on the LEFT by transform 
    void PreTranslateX(float x);
    void PreTranslateY(float y);
    void PreTranslateZ(float z);
    void PreTranslate(float x, float y, float z);
    void PreTranslate(const tlPoint& p);
    void PreRotateX(float x);
    void PreRotateY(float y);
    void PreRotateZ(float z);
    // if (scaleTranslation == false) the translation component is unaffected:
    void PreScaleX(float x, bool scaleTranslation = false);
    void PreScaleY(float y, bool scaleTranslation = false);
    void PreScaleZ(float z, bool scaleTranslation = false);
    void PreScale(float x, float y, float z, bool scaleTranslation = false);
    void PreScale(const tlPoint& s, bool scaleTranslation = false);
    void PreShearXY(float xy);
    void PreShearXZ(float xz);
    void PreShearYZ(float yz);
    void PreShear(float xy, float xz, float yz);

    // some new methods required for the Jeeves-generated tlSkeletonJointChunk16
    void Init();
    void Print(int index, int indent);
    void PrintFormatted(int index, int indent);
    void Read(tlFile* f);
    void Write(tlFile* f);

    bool GetFieldValue(char*, int) const;
    static bool GetFieldUpdatable();
    bool SetFieldValue(const char*);
};


tlMatrix operator*(const tlMatrix& a, const tlMatrix& b);
tlMatrix Scale(float,float,float);
tlMatrix Translate(float,float,float);
tlMatrix RotateX(float);
tlMatrix RotateY(float);
tlMatrix RotateZ(float);
tlMatrix RotateYZX(float x,float y ,float z);
tlMatrix Shear(float xy, float xz, float yz);
tlPoint  MatrixToEuler(tlMatrix&);
tlQuat   MatrixToQuaternion(tlMatrix&);
tlPoint  VectorTransform(const tlMatrix& M, const tlPoint& V); // 3 x 3 !!!!!

tlMatrix Identity(void);
tlMatrix Inverse(const tlMatrix& M);

#endif

