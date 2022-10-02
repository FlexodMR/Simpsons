/*===========================================================================
    File:: tlMatrix.cpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlMatrix.hpp"

#include <assert.h>
#include <math.h>
#include <memory.h>
#include <stdlib.h>
#include <string.h>

#include "tlQuat.hpp"
#include "tlPoint.hpp"
#include "tlFile.hpp"


tlMatrix::tlMatrix()
{
    *this = Identity();
}

tlMatrix::tlMatrix(float a,float b,float c,float d,
                   float e,float f,float g,float h,
                   float i,float j,float k,float l,
                   float m,float n,float o,float p)

{
    element[0][0] = a;   element[0][1] = b;   element[0][2] = c;   element[0][3] = d;
    element[1][0] = e;   element[1][1] = f;   element[1][2] = g;   element[1][3] = h;
    element[2][0] = i;   element[2][1] = j;   element[2][2] = k;   element[2][3] = l;
    element[3][0] = m;   element[3][1] = n;   element[3][2] = o;   element[3][3] = p;
}

bool
tlMatrix::operator==(const tlMatrix& m) const
{
    for(int i = 0; i < 4; i++)
    {
        for(int j = 0; j < 4; j++)
        {
            if(element[i][j] != m.element[i][j])
            {
                return false;
            }
        }
    }
    return true;
}

tlPoint
tlMatrix::GetRow(int i) const
{
    assert(i>=0);
    assert(i<4);
    tlPoint pnt;
    pnt.x = element[i][0];
    pnt.y = element[i][1];
    pnt.z = element[i][2];
    return pnt;
}

void
tlMatrix::SetRow(int i, tlPoint p) 
{
    assert(i>=0);
    assert(i<4);
    element[i][0] = p.x;
    element[i][1] = p.y;
    element[i][2] = p.z;
}

tlMatrix operator*(const tlMatrix& a, const tlMatrix& b)
{
    tlMatrix result;

    for(int i = 0; i < 4; i++)
    {
        for(int j = 0; j < 4; j++ )
        {
            float tmp = 0.0f;
            for(int k = 0; k < 4; k++)
            {
                tmp += a.element[i][k] * b.element[k][j];
            }
            result.element[i][j] = tmp;
        }
    }

    return result;
}


tlMatrix Scale(float x, float y, float z)
{
    return tlMatrix(x,0.0f,0.0f,0.0f,
                      0.0f,y,0.0f,0.0f,
                      0.0f,0.0f,z,0.0f,
                      0.0f,0.0f,0.0f,1.0f);
}

tlMatrix Translate(float x,float y,float z)
{
    return tlMatrix(1.0f,0.0f,0.0f,0.0f,
                      0.0f,1.0f,0.0f,0.0f,
                      0.0f,0.0f,1.0f,0.0f,
                      x,y,z,1.0f);
}

tlMatrix RotateX(float a)
{
    return tlMatrix(1.0f,0.0f,0.0f,0.0f,
                      0.0f,static_cast<float>(cos(a)),static_cast<float>(sin(a)),0.0f,
                      0.0f,static_cast<float>(-sin(a)),static_cast<float>(cos(a)),0.0f,
                      0.0f,0.0f,0.0f,1.0f);
}

tlMatrix RotateY(float a) 
{
    return tlMatrix( static_cast<float>(cos(a)),0.0f,static_cast<float>(-sin(a)),0.0f,
                      0.0f,1.0f,0.0f,0.0f,
                      static_cast<float>(sin(a)),0.0f,static_cast<float>(cos(a)),0.0f,
                      0.0f,0.0f,0.0f,1.0f);
}

tlMatrix RotateZ(float a)
{
    return tlMatrix(static_cast<float>(cos(a)),static_cast<float>(sin(a)),0.0f,0.0f,
                      static_cast<float>(-sin(a)),static_cast<float>(cos(a)),0.0f,0.0f,
                      0.0f,0.0f,1.0f,0.0f,
                      0.0f,0.0f,0.0f,1.0f);
}

tlMatrix RotateYZX(float x, float y, float z)
{
    float sx = static_cast<float>(sin(x));
    float sy = static_cast<float>(sin(y));
    float sz = static_cast<float>(sin(z));
    float cx = static_cast<float>(cos(x));
    float cy = static_cast<float>(cos(y));
    float cz = static_cast<float>(cos(z));
    float cxcy = cx*cy;
    float sxsy = sx*sy;
    float sxcy = sx*cy;
    float cxsy = cx*sy;

    return tlMatrix( cy*cz, cxcy*sz + sxsy, sxcy*sz - cxsy, 0.0f,
                          -sz,   cx*cz,          sx*cz,          0.0f,
                          sy*cz, cxsy*sz - sxcy, sxsy*sz + cxcy, 0.0f,
                          0.0f,  0.0f,           0.0f,           1.0f);
}

tlMatrix Shear(float xy, float xz, float yz)
{
    return tlMatrix(1.0f, 0.0f, 0.0f, 0.0f,
                            xy, 1.0f, 0.0f, 0.0f,
                            xz,   yz, 1.0f, 0.0f,
                         0.0f, 0.0f, 0.0f, 1.0f);
}

tlPoint
MatrixToEuler(tlMatrix &mat)
{
    // need to deal with degenerate case where cos(z) is very close to 0
    //
    // we can't individually query cos(z), so have to check -sin(z) and 
    // see if it is very close to 1 or -1

    tlPoint euler;

    const float tolerance = (float)1.0e-15;

    if(fabs(fabs(mat.element[1][0]) - 1.0f) < tolerance)
    {
        // special case
        
        // need to whether sin(z) is +/-
        float sinz;
        if(mat.element[1][0] > 0.0f)  
        {
            // recall element [1][0] is negated
            sinz = -1.0f;
        }
        else
        {
            sinz = 1.0f;
        }
        
        // we know z is 90 or -90 degrees

        // now we need to figure out if we should set x or y to an arbitrary value.

        // of the terms cycz, sycz, cxcz, sxcz
        // we want the x-pair or y-pair that are closer to zero - they are more likely safe values to set

        float x_pair = (float)(fabs(mat.element[1][1]) + fabs(mat.element[1][2]));
        float y_pair = (float)(fabs(mat.element[0][0]) + fabs(mat.element[2][0]));

        // range catchers
        const float one = 1.5708f / 90.0f;
        const float ninety = 1.5708f;
        const float oneeighty = 3.14159f;

        if(x_pair < y_pair)
        {
            // set x 
            
            // hmmm... since there is no way for us to know what the sign of cz is, we can't know what the 
            // sign of cx or sx should be 

            // perhaps the thing to do here is just use atan2 on the 2 elements.

            // then use the result as our setting to simplify the matrix.

            float tempx = (float)atan2(mat.element[1][2], mat.element[1][1]);               
            
            // I would now expect tempx to be either 0, 90, -90, 180, -180
            //
            // we need to know this so we can simplify the matrix to get y from some source other than [0][0] and [2][0]

            if(fabs(tempx) < one) 
            {
                // 0
                // cx = 1
                // sx = 0

                // seems like we're always gonna get 2 choices of where to do atan
                euler.x = 0.0f;
                euler.y = (float)atan2(-mat.element[0][2], mat.element[2][2]);
                euler.z = (float)asin(sinz);
            }
            else if(tempx > 0)
            {
                if(fabs(tempx - ninety) < one)
                {
                    // 90
                    // cx = 0

                    // sx = 1

                    // now 2 choices of what to take the atan of!
                    euler.x = ninety;              
                    euler.y = (float)atan2(mat.element[0][1], -mat.element[2][1]);
                    euler.z = (float)asin(sinz);
                }
                else if(fabs(tempx - oneeighty) < one)
                {
                    // 180
                    // cx = -1
                    // sx = 0
                    euler.x = oneeighty;               
                    euler.y = (float)atan2(mat.element[0][2], -mat.element[2][2]);
                    euler.z = (float)asin(sinz);
                }
                else
                {
                    // I hope we never get here!
                    //
                    // just do the 0 case
                    euler.x = 0.0f;   
                    euler.y = (float)atan2(-mat.element[0][2], mat.element[2][2]);
                    euler.z = (float)asin(sinz);
                }
            }
            else
            {
                if(fabs(tempx + ninety) < one)
                {
                    // -90
                    // cx = 0
                    // sx = -1
                    euler.x = -ninety;                             
                    euler.y = (float)atan2(-mat.element[0][1], mat.element[2][1]);
                    euler.z = (float)asin(sinz);
                }
                else if(fabs(tempx + oneeighty) < one)
                {
                    // -180
                    euler.x = -oneeighty;               
                    euler.y = (float)atan2(mat.element[0][2], -mat.element[2][2]);
                    euler.z = (float)asin(sinz);
                }
                else
                {
                    // I hope we never get here!
                    //
                    // just set to 0
                    euler.x = 0.0f;   
                    euler.y = (float)atan2(-mat.element[0][2], mat.element[2][2]);
                    euler.z = (float)asin(sinz);
                }
            }
        }
        else
        {
            // set y
            // I suppose in this case, the y pair is the one to do the atan on
            float tempy = (float)atan2(mat.element[2][0], mat.element[0][0]);

            if(fabs(tempy) < one) 
            {
                // 0
                // cy = 1
                // sy = 0

                euler.x = (float)atan2(-mat.element[2][1], mat.element[2][2]);
                euler.z = (float)asin(sinz);
                euler.y = 0.0f;
            }
            else if(tempy > 0)
            {
                if(fabs(tempy - ninety) < one)
                {
                    // 90
                    // cy = 0
                    // sy = 1
                
                    euler.x = (float)atan2(mat.element[0][1], -mat.element[0][2]);
                    euler.z = (float)asin(sinz);
                    euler.y = ninety;
                }
                else if(fabs(tempy - oneeighty) < one)
                {
                    // 180
                    // cy = -1
                    // sy = 0

                    euler.x = (float)atan2(mat.element[2][1], -mat.element[2][2]);
                    euler.z = (float)asin(sinz);
                    euler.y = oneeighty;
                }
                else
                {
                    // I hope we never get here!
                    //
                    // just do the 0 case
                    euler.x = (float)atan2(-mat.element[2][1], mat.element[2][2]);
                    euler.z = (float)asin(sinz);
                    euler.y = 0.0f;
                }
            }
            else
            {
                if(fabs(tempy + ninety) < one)
                {
                    // -90
                    // cy = 0
                    // sy = -1
                
                    euler.x = (float)atan2(-mat.element[0][1], mat.element[0][2]);
                    euler.z = (float)asin(sinz);
                    euler.y = -ninety;
                }
                else if(fabs(tempy + oneeighty) < one)
                {
                    // -180
                    // cy = -1
                    // sy = 0

                    euler.x = (float)atan2(mat.element[2][1], -mat.element[2][2]);
                    euler.z = (float)asin(sinz);
                    euler.y = -oneeighty;          
                }
                else
                {
                    // I hope we never get here!
                    //
                    // just set to 0

                    euler.x = (float)atan2(-mat.element[2][1], mat.element[2][2]);
                    euler.z = (float)asin(sinz);
                    euler.y = 0.0f;              
                }
            }
        }        
    }
    else
    {
        // usual extraction should be ok

        euler.x = (float)atan2(mat.element[1][2], mat.element[1][1]);
        euler.y = (float)atan2(mat.element[2][0], mat.element[0][0]);
        euler.z = (float)asin(-mat.element[1][0]);
    }
    
    return euler;
}

tlQuat
MatrixToQuaternion(tlMatrix &mat)
{
    return tlQuat(mat);
}

tlMatrix Identity(void)
{
    return tlMatrix(1.0f,0.0f,0.0f,0.0f,
                         0.0f,1.0f,0.0f,0.0f,
                         0.0f,0.0f,1.0f,0.0f,
                         0.0f,0.0f,0.0f,1.0f);
}

static float idmat[4][4] = {
    {1.0f, 0.0f, 0.0f, 0.0f },
    {0.0f, 1.0f, 0.0f, 0.0f },
    {0.0f, 0.0f, 1.0f, 0.0f },
    {0.0f, 0.0f, 0.0f, 1.0f }
};

void
tlMatrix::IdentityMatrix(void)
{
    memcpy(element,idmat,16*sizeof(float));
}

void
tlMatrix::TransformPointList(int n, tlPoint* src, tlPoint* dest)
{
    if(dest == NULL)
        dest = src;

    for(int i = 0; i < n ; i++)
    {
        dest[i] = src[i] * (*this);
    }
}

// Transform point:  3x3
tlPoint 
VectorTransform(const tlMatrix& M, const tlPoint& V) {
     tlPoint ret;
     ret.x = V.x * M.element[0][0] + V.y * M.element[1][0] + V.z * M.element[2][0];
     ret.y = V.x * M.element[0][1] + V.y * M.element[1][1] + V.z * M.element[2][1];
     ret.z = V.x * M.element[0][2] + V.y * M.element[1][2] + V.z * M.element[2][2];
     return ret;
}

tlMatrix
Inverse(const tlMatrix& M)
{
    tlMatrix res;
    float det;

    /* compute matrix of cofactors */
    res.element[0][0] = (M.element[1][1]*M.element[2][2]-M.element[1][2]*M.element[2][1]);
    res.element[1][0] = (M.element[1][2]*M.element[2][0]-M.element[1][0]*M.element[2][2]);
    res.element[2][0] = (M.element[1][0]*M.element[2][1]-M.element[1][1]*M.element[2][0]);
    
    res.element[0][1] = (M.element[2][1]*M.element[0][2]-M.element[2][2]*M.element[0][1]);
    res.element[1][1] = (M.element[2][2]*M.element[0][0]-M.element[2][0]*M.element[0][2]);
    res.element[2][1] = (M.element[2][0]*M.element[0][1]-M.element[2][1]*M.element[0][0]);
    
    res.element[0][2] = (M.element[0][1]*M.element[1][2]-M.element[0][2]*M.element[1][1]);
    res.element[1][2] = (M.element[0][2]*M.element[1][0]-M.element[0][0]*M.element[1][2]);
    res.element[2][2] = (M.element[0][0]*M.element[1][1]-M.element[0][1]*M.element[1][0]);

    det = M.element[0][0]*res.element[0][0] + M.element[1][0]*res.element[0][1] + M.element[2][0]*res.element[0][2];

    /* divide cofactors by determinant */
    float f = (det==0.0f)? 10000000.0f : 1.0f/det;
    res.element[0][0] *= f; res.element[0][1] *= f; res.element[0][2] *= f;
    res.element[1][0] *= f; res.element[1][1] *= f; res.element[1][2] *= f;
    res.element[2][0] *= f; res.element[2][1] *= f; res.element[2][2] *= f;

    res.element[3][0] = -(M.element[3][0]*res.element[0][0] + M.element[3][1]*res.element[1][0] + M.element[3][2]*res.element[2][0]); 
    res.element[3][1] = -(M.element[3][0]*res.element[0][1] + M.element[3][1]*res.element[1][1] + M.element[3][2]*res.element[2][1]); 
    res.element[3][2] = -(M.element[3][0]*res.element[0][2] + M.element[3][1]*res.element[1][2] + M.element[3][2]*res.element[2][2]); 
    return(res);
}


// some new methods required for the Jeeves-generated tlSkeletonJointChunk16
void tlMatrix::Init()
{
    IdentityMatrix();
}


void tlMatrix::Print(int index, int indent)
{
    // mark's magic indent trick
    printf("%*s",indent,"");
    printf("%8.4f %8.4f %8.4f %8.4f\n",
             element[0][0], element[0][1], element[0][2], element[0][3]);
    printf("%*s",indent,"");
    printf("%8.4f %8.4f %8.4f %8.4f\n",
             element[1][0], element[1][1], element[1][2], element[1][3]);
    printf("%*s",indent,"");
    printf("%8.4f %8.4f %8.4f %8.4f\n",
             element[2][0], element[2][1], element[2][2], element[2][3]);
    printf("%*s",indent,"");
    printf("%8.4f %8.4f %8.4f %8.4f\n",
             element[3][0], element[3][1], element[3][2], element[3][3]);
    
}


void tlMatrix::PrintFormatted(int index, int indent)
{
    Print(index, indent);
}


void tlMatrix::Read(tlFile* f)
{
    *this = f->GetMatrix();
}


void tlMatrix::Write(tlFile* f)
{
    f->PutMatrix(*this);
}


bool tlMatrix::GetFieldValue(char* val, int len) const
{
    char buf[1024];

    sprintf(buf,
              "%8.4f, %8.4f, %8.4f, %8.4f, "
              "%8.4f, %8.4f, %8.4f, %8.4f, "
              "%8.4f, %8.4f, %8.4f, %8.4f, "
              "%8.4f, %8.4f, %8.4f, %8.4f",
              element[0][0], element[0][1], element[0][2], element[0][3],
              element[1][0], element[1][1], element[1][2], element[1][3],
              element[2][0], element[2][1], element[2][2], element[2][3],
              element[3][0], element[3][1], element[3][2], element[3][3]);
    strncpy(val, buf, len);

    return true;
}

bool tlMatrix::GetFieldUpdatable()
{
    return false;
}

bool tlMatrix::SetFieldValue(const char*)
{
    return false;
}

// new utility method
void tlMatrix::Transpose()
{
    float temp[4][4];

    temp[0][0] = element[0][0];
    temp[0][1] = element[1][0];
    temp[0][2] = element[2][0];
    temp[0][3] = element[3][0];

    temp[1][0] = element[0][1];
    temp[1][1] = element[1][1];
    temp[1][2] = element[2][1];
    temp[1][3] = element[3][1];

    temp[2][0] = element[0][2];
    temp[2][1] = element[1][2];
    temp[2][2] = element[2][2];
    temp[2][3] = element[3][2];

    temp[3][0] = element[0][3];
    temp[3][1] = element[1][3];
    temp[3][2] = element[2][3];
    temp[3][3] = element[3][3];

    //-------------------------

    int i,j;
    for(i = 0; i < 4; i++)
    {
        for(j = 0; j < 4; j++)
        {
            element[i][j] = temp[i][j];
        }
    }
}

void tlMatrix::RHSToLHS()
{
    element[0][2] = -(element[0][2]);
    element[1][2] = -(element[1][2]);
    element[3][2] = -(element[3][2]);

    element[2][0] = -(element[2][0]);
    element[2][1] = -(element[2][1]);
    element[2][3] = -(element[2][3]);
}

// incremental transformations, post-multiply
//
void tlMatrix::TranslateX(float x)
{
    Translate(x, 0.0f, 0.0f);
}

void tlMatrix::TranslateY(float y)
{
    Translate(0.0f, y, 0.0f);
}

void tlMatrix::TranslateZ(float z)
{
    Translate(0.0f, 0.0f, z);
}

void tlMatrix::Translate(float x, float y, float z)
{
    *this = *this * ::Translate(x, y, z);
}

void tlMatrix::Translate(const tlPoint& p)
{
    Translate(p.x, p.y, p.z);
}

void tlMatrix::RotateX(float x)
{
    *this = *this * ::RotateX(x);
}

void tlMatrix::RotateY(float y)
{
    *this = *this * ::RotateY(y);
}

void tlMatrix::RotateZ(float z)
{
    *this = *this * ::RotateZ(z);
}

void tlMatrix::ScaleX(float x, bool scaleTranslation)
{
    Scale(x, 0.0f, 0.0f, scaleTranslation);
}

void tlMatrix::ScaleY(float y, bool scaleTranslation)
{
    Scale(0.0f, y, 0.0f, scaleTranslation);
}

void tlMatrix::ScaleZ(float z, bool scaleTranslation)
{
    Scale(0.0f, 0.0f, z, scaleTranslation);
}

void tlMatrix::Scale(float x, float y, float z, bool scaleTranslation)
{
    tlMatrix tmp = *this * ::Scale(x, y, z);

    if (scaleTranslation)
    {
        *this = tmp;
    }
    else
    {
        for (int j = 0; j < 3; ++j)
        {
            for (int i = 0; i < 3; ++i)
            {
                element[j][i] = tmp.element[j][i];
            }
        }
    }
}

void tlMatrix::Scale(const tlPoint& s, bool scaleTranslation)
{
    Scale(s.x, s.y, s.z, scaleTranslation);
}

void tlMatrix::ShearXY(float xy)
{
    Shear(xy, 0.0f, 0.0f);
}

void tlMatrix::ShearXZ(float xz)
{
    Shear(0.0f, xz, 0.0f);
}

void tlMatrix::ShearYZ(float yz)
{
    Shear(0.0f, 0.0f, yz);
}

void tlMatrix::Shear(float xy, float xz, float yz)
{
    *this = *this * ::Shear(xy, xz, yz);
}

// incremental transformations, pre-multiply
//
void tlMatrix::PreTranslateX(float x)
{
    PreTranslate(x, 0.0f, 0.0f);
}

void tlMatrix::PreTranslateY(float y)
{
    PreTranslate(0.0f, y, 0.0f);
}

void tlMatrix::PreTranslateZ(float z)
{
    PreTranslate(0.0f, 0.0f, z);
}

void tlMatrix::PreTranslate(float x, float y, float z)
{
    *this = ::Translate(x, y, z) * *this;
}

void tlMatrix::PreTranslate(const tlPoint& p)
{
    PreTranslate(p.x, p.y, p.z);
}

void tlMatrix::PreRotateX(float x)
{
    *this = ::RotateX(x) * *this;
}

void tlMatrix::PreRotateY(float y)
{
    *this = ::RotateY(y) * *this;
}

void tlMatrix::PreRotateZ(float z)
{
    *this = ::RotateZ(z) * *this;
}

void tlMatrix::PreScaleX(float x, bool scaleTranslation)
{
    PreScale(x, 0.0f, 0.0f, scaleTranslation);
}

void tlMatrix::PreScaleY(float y, bool scaleTranslation)
{
    PreScale(0.0f, y, 0.0f, scaleTranslation);
}

void tlMatrix::PreScaleZ(float z, bool scaleTranslation)
{
    PreScale(0.0f, 0.0f, z, scaleTranslation);
}

void tlMatrix::PreScale(float x, float y, float z, bool scaleTranslation)
{
    tlMatrix tmp = ::Scale(x, y, z) * *this;

    if (scaleTranslation)
    {
        *this = tmp;
    }
    else
    {
        for (int j = 0; j < 3; ++j)
        {
            for (int i = 0; i < 3; ++i)
            {
                element[j][i] = tmp.element[j][i];
            }
        }
    }
}

void tlMatrix::PreScale(const tlPoint& s, bool scaleTranslation)
{
    PreScale(s.x, s.y, s.z, scaleTranslation);
}

void tlMatrix::PreShearXY(float xy)
{
    PreShear(xy, 0.0f, 0.0f);
}

void tlMatrix::PreShearXZ(float xz)
{
    PreShear(0.0f, xz, 0.0f);
}

void tlMatrix::PreShearYZ(float yz)
{
    PreShear(0.0f, 0.0f, yz);
}

void tlMatrix::PreShear(float xy, float xz, float yz)
{
    *this = ::Shear(xy, xz, yz) * *this;
}

