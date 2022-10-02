/*===========================================================================
    File:: tlQuat.cpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
/*---------------------------------------------------------------------

 Quaternion operations -- 
    From "Quaternion Calculus and Fast Animation",
    by Ken Shoemake,  in notes for SIGGRAPH 1987 Course # 10, 
     "Computer Animation: 3-D Motion Specification and Control".

-----------------------------------------------------------------------*/

#include "tlQuat.hpp"
#include "tlMatrix.hpp"
#include "tlFile.hpp"

#include <math.h>
#include <stdio.h>
#include <assert.h>
#include <string.h>

#include <iostream>

#define xDBGQUAT

#define EPSILON 0.0001f
#define EPSILON2 (1.0e-8)
#define EPSILON3 0.001
#define COS_EPSILON 0.000001f

#ifndef PI
#define PI 3.1415926535f
#endif

#ifndef HALFPI
#define HALFPI 1.570796326794895f
#endif

#ifndef TWOPI
#define TWOPI 6.283185307f
#endif

#ifdef DBGQUAT
short dbgquat = 1;
#endif

#define NearZero(a) (fabsf(a)<0.00001f)

static int nxt[3] = {1,2,0};

class IdentityQuat: public tlQuat
{
public:
    IdentityQuat() : tlQuat(1.0f,0.0f,0.0f,0.0f) {}
};

static IdentityQuat identQuat;

float DotProduct(const tlQuat& a, const tlQuat& b)
{
    return a.w*b.w + a.x*b.x + a.y*b.y + a.z*b.z;
}

tlQuat operator*(const tlQuat& q, float s)
{
    return(tlQuat(q.w*s,q.x*s,q.y*s,q.z*s));
}

tlQuat operator*(float s, const tlQuat& q)
{
    return(tlQuat(q.w*s,q.x*s,q.y*s,q.z*s));
}

tlQuat operator/(const tlQuat& q, float s)
{
    assert(s!=0.0f);
    return(tlQuat(q.w/s,q.x/s,q.y/s,q.z/s));
}

tlQuat Inverse(const tlQuat& q)
{
    float l,norminv;
    tlQuat qq;
    l = (q.x*q.x + q.y*q.y + q.z*q.z + q.w*q.w);
    if (l==0.0f)
    {
        l = 1.0f;
    }
    norminv = 1.0f/l;
    qq.x = -q.x * norminv;
    qq.y = -q.y * norminv;
    qq.z = -q.z * norminv;
    qq.w = q.w * norminv;
    return(qq);
}

// create Conjugate of quaternion 
tlQuat Conjugate(const tlQuat& q)
{
    tlQuat qq;
    qq.x = -q.x;
    qq.y = -q.y;
    qq.z = -q.z;
    qq.w = q.w;
    return(qq);
}

tlQuat LogN(const tlQuat& q)
{
    float theta,scale;
    tlQuat qq;
    scale = sqrtf(q.x*q.x + q.y*q.y + q.z*q.z );
    theta = atan2f(scale,q.w);
    if (scale > 0.0f)
    {
        scale = theta/scale;
    }
    qq.x = scale*q.x;
    qq.y = scale*q.y;
    qq.z = scale*q.z;
    qq.w = 0.0f;
    return(qq);
}

// Exp: exponentiate quaternion (where q.w==0)  
tlQuat Exp(const tlQuat& q)
{
    float theta,scale;
    tlQuat qq;
    theta = sqrtf(q.x*q.x + q.y*q.y + q.z*q.z);
    scale = 1.0f;
    if (theta >EPSILON)
    {
        scale = sinf(theta)/theta;
    }
    qq.x = scale*q.x;
    qq.y = scale*q.y;
    qq.z = scale*q.z;
    qq.w = cosf(theta);
    return(qq);
}

// -------slerp: Spherical linear interpolation of UNIT quaternions.
//   As t goes from 0 to 1, qt goes from p to q.
//
// slerp(p,q,t) = (p*sin((1-t)*omega) + q*sin(t*omega)) / sin(omega)
//
// NOTE: for repeated slerps on the same curve, can precompute
// omega, sinom, p/sinom, q/sinom.  Also can use table lookups for
// the sin(t*omega) etc.
//----------------------------------------------------

tlQuat Slerp(const tlQuat& q1, const tlQuat& q2, float t)
{
    tlQuat result;
    result.Slerp(q1,q2,t);
    return result;
}

//Compute the "log difference" of two quaternions, p and q, 
// as  ln(qinv(p)*q)
tlQuat LnDif(const tlQuat& p, const tlQuat& q)
{
    tlQuat r;
    r = q/p;
    return(LogN(r));
}

// Compute a, the term used in Boehm-type interpolation.
// a[n] =    q[n]* qexp(-(1/4)*( ln(qinv(q[n])*q[n+1]) +ln( qinv(q[n])*q[n-1] )))

tlQuat QCompA(const tlQuat& qprev,const tlQuat& q, const tlQuat& qnext)
{
    tlQuat qm,qp,r;
    qm = LnDif(q,qprev);
    qp = LnDif(q,qnext);
    r = -0.25f*(tlQuat(qm.w+qp.w,qm.x+qp.x,qm.y+qp.y,qm.z+qp.z));
    return(q*Exp(r));
}

/* --Squad(p,a,b,q; t) = Slerp(Slerp(p,q;t), Slerp(a,b;t); 2(1-t)t).---*/
tlQuat Squad(const tlQuat& p, const tlQuat& a, const tlQuat &b, const tlQuat& q, float t)
{ 
    float k = 2.0f * (1.0f - t)*t;
    return(Slerp(Slerp(p,q,t),Slerp(a,b,t),k));
}

// rotate p by 90 degrees (quaternion space metric) about axis 
tlQuat qorthog(const tlQuat& p, const tlPoint& axis)
{
    return(p*tlQuat(0.0f,axis.x,axis.y,axis.z));
}

// Quaternion interpolation for angles > 2PI.   
tlQuat squadrev(
    float angle,   // angle of rotation 
    const tlPoint& axis, // the axis of rotation 
    const tlQuat& p,     // start quaternion 
    const tlQuat& a,     // start tangent quaternion 
    const tlQuat& b,     // end tangent quaternion 
    const tlQuat& q,     // end quaternion 
    float t     // parameter, in range [0.0,1.0] 
    )
{
    float s,v;
    float omega = angle*0.5f;
    float nrevs = 0.0f;
    tlQuat r,pp,qq;

#ifdef DBGQUAT
    if (dbgquat)
    {
        printf("t = %.5f, ang=%.5f, ax =(%.5f,%.5f,%.5f) \n",t,angle,axis[0],axis[1],axis[2]);
        printf("p = (%.5f,%.5f,%.5f,%.5f) \n",p[0],p[1],p[2],p[3]);
        printf("a = (%.5f,%.5f,%.5f,%.5f) \n",a[0],a[1],a[2],a[3]);
        printf("b = (%.5f,%.5f,%.5f,%.5f) \n",b[0],b[1],b[2],b[3]);
        printf("q = (%.5f,%.5f,%.5f,%.5f) \n",q[0],q[1],q[2],q[3]);
    }
#endif
    if (omega<PI-EPSILON)
    { 
        r = Squad(p,a,b,q,t); 
#ifdef DBGQUAT
        if (dbgquat)
        {
            printf("r1 = (%.5f,%.5f,%.5f,%.5f) \n",r[0],r[1],r[2],r[3]);
        }
#endif
        return(r); 
    }

    while (omega > (PI-EPSILON))
    {
        omega -= PI; nrevs += 1.0f;
    }
    if (omega<0.0f)
    {
        omega = 0.0f;
    }
    
    s = t*angle/PI;        /* 2t(omega+Npi)/pi */
    
    if (s < 1.0f) 
    {
        pp = qorthog(p,axis);
        r = Squad(p,a,pp,pp,s);    /* in first 90 degrees */
    } 
    else 
    {
        if ( ( v = s + 1.0f - 2.0f*(nrevs+(omega/PI)) ) <= 0.0f)
        {
            /* middle part, on great circle(p,q) */
            while (s >= 2.0f) s -= 2.0f;
            pp = qorthog(p,axis);
            r = Slerp(p,pp,s);
        } 
        else 
        {      /* in last 90 degrees */ 
            qq = -qorthog(q,axis);
            r= Squad(qq,qq,b,q,v);
        }
    }
#ifdef DBGQUAT
    if (dbgquat)
    {
        printf("r2 = (%.5f,%.5f,%.5f,%.5f) \n",r[0],r[1],r[2],r[3]);
    }
#endif
    return(r);
}  

void RotateMatrix(tlMatrix& mat, const tlQuat& q)
{
    tlMatrix t;
    q.MakeMatrix(t);
    mat = mat*t;
}

void PreRotateMatrix(tlMatrix& mat, const tlQuat& q)
{
    tlMatrix t;
    q.MakeMatrix(t);
    mat = t*mat;
}

// --- Convert [angle,axis] representation to equivalent quaternion 

tlQuat QFromAngAxis(float ang, const tlPoint& axis)
{
    float omega,s;
    omega = ang*0.5f;
    s = sinf(omega);
    return(tlQuat(cosf(omega),s*axis.x, s*axis.y, s*axis.z));
}

// --- Convert quaternion to equivalent [angle,axis] representation 

void AngAxisFromQ(const tlQuat& q, float *ang, tlPoint& axis)
{
    int i;
    float omega,s;
    tlQuat qn = q; 
    qn.Normalize();
    omega = acosf(qn[3]);
    *ang = 2.0f*omega;
    s = sinf(omega);  
    if (fabsf(s)>0.000001f)
    {
        for (i=1; i<4; i++)
        {
            axis[i]  = qn[i]/s;
        }
    } 
    else 
    {
        axis = tlPoint(0,0,0); 
    }
}

// Compute [angle,axis] corresponding to the rotation from
//    p to q.  Function returns angle, sets axis.  
float QangAxis(const tlQuat& p, const tlQuat& q, tlPoint& axis)
{
    float ang;
    AngAxisFromQ(q/p,&ang,axis);
    return(ang);
}

void DecomposeMatrix(const tlMatrix& mat, tlPoint& p, tlQuat& q, tlPoint& s)
{
    int i;
    tlMatrix nm;
    float sf;
    tlPoint r,nr;
    for (i=0; i<3; i++)
    {
        r = mat.GetRow(i);
        s[i] = sf = Length(r);
        if (fabs(sf)>EPSILON2)
        {
            nr = r/sf;
        } else {
            nr[0] = nr[1] = nr[2] = (float)0.0;
            nr[i] = (float)1.0;
        }
        nm.SetRow(i,nr);
    }
    q = tlQuat(nm);
    p = mat.GetRow(3);
}

tlQuat TransformQuat(const tlMatrix &m, const tlQuat&q )
{
    tlPoint p;
    p = tlPoint(q.x,q.y,q.z);
    p = VectorTransform(m,p);
    return tlQuat(q.w,p.x,p.y,p.z);
}

tlQuat IdentQuat() 
{ 
    return(tlQuat(1.0f,0.0f,0.0f,0.0f)); 
}

tlPoint QuatToEuler(const tlQuat &quaternion)
{
    tlMatrix mat;
    mat.IdentityMatrix();
    quaternion.MakeMatrix(mat);
    return MatrixToEuler(mat);

}

tlQuat EulerToQuat(const tlPoint& euler)
{  
    return tlQuat(euler.x,euler.y,euler.z);
}

std::ostream& operator<<(std::ostream& os, const tlQuat& q) 
{ 
    return os << " w : " << q.w << " x : " << q.x << " y : " << q.y << " z : " << q.z; 
}

//*****************************************************************************
// tlQuat
//*****************************************************************************
tlQuat::tlQuat(const tlAngAxis& aa)
{
    // Make the angle between 0-180
    float angle = aa.angle;
    tlPoint axis = aa.axis;
    if (angle < 0.0f)
    {     
        angle = -angle;
        axis  = -axis;
    }
    while (angle > TWOPI)
    {
        angle -= TWOPI;
    }
    if (fabs(angle) > PI)
    {
        angle -= TWOPI;
    }
    if (angle < 0.0f) 
    {     
        angle = -angle;
        axis  = -axis;
    }

    *this = QFromAngAxis(aa.angle,aa.axis);
}

// MakeQuat: Convert 3x3 rotation matrix to unit quaternion 
tlQuat::tlQuat(const tlMatrix& mat)
{
    float q[4];
    float tr,s;
    int i,j,k;
    tr = mat.element[0][0] + mat.element[1][1] + mat.element[2][2];
    if (tr > 0.0)
    {
        s = sqrtf(tr + 1.0f);
        w = -s * 0.5f;
        if (s!=0.0f)
        {
            s = 0.5f / s;
        }
        x = (mat.element[2][1] - mat.element[1][2]) * s;
        y = (mat.element[0][2] - mat.element[2][0]) * s;
        z = (mat.element[1][0] - mat.element[0][1]) * s;
    } 
    else 
    {
        i = 0;
        if (mat.element[1][1] > mat.element[0][0]) i = 1;
        if (mat.element[2][2] > mat.element[i][i]) i = 2;
        j = nxt[i];
        k = nxt[j];
        s = sqrtf( (mat.element[i][i] - (mat.element[j][j]+mat.element[k][k])) + 1.0f );      

        q[i] = s * 0.5f;
        if (s!=0.0f)
        {
            s = 0.5f / s;
        }
        q[3] = (mat.element[k][j] - mat.element[j][k]) * s;
        q[j] = (mat.element[j][i] + mat.element[i][j]) * s;
        q[k] = (mat.element[k][i] + mat.element[i][k]) * s;

        w = -q[3];
        x = q[0];
        y = q[1];
        z = q[2];
    }  
}

tlQuat::tlQuat( float ax, float ay, float az )
{
    float cx, sx, cy, sy, cz, sz;
  
    //   SinCos(ax*0.5f, &sx, &cx);
      sx = sinf( ax*0.5f );
      cx = cosf( ax*0.5f );
      
    //   SinCos(ay*0.5f, &sy, &cy);
      sy = sinf( ay*0.5f );
      cy = cosf( ay*0.5f );
      
    //   SinCos(az*0.5f, &sz, &cz);
      sz = sinf( az*0.5f );
      cz = cosf( az*0.5f );
      
    // compute y*z
    float cycz = cy*cz;
    float sysz = sy*sz;
    float sycz = sy*cz;
    float cysz = cy*sz;
    // compute (y*z)*x

    w = cycz*cx + sysz*sx;
    x = cycz*sx - sysz*cx;
    y = sycz*cx - cysz*sx;
    z = cysz*cx + sycz*sx;
}

// Product of two quaternions
tlQuat& tlQuat::operator*=(const tlQuat& q)
{
    tlQuat qp;
    qp.w = w*q.w - x*q.x - y*q.y - z*q.z;
    qp.x = w*q.x + x*q.w + y*q.z - z*q.y;
    qp.y = w*q.y + y*q.w + z*q.x - x*q.z;
    qp.z = w*q.z + z*q.w + x*q.y - y*q.x;

    *this = qp;
    return *this;
}

// Ratio of two quaternions: This creates a result quaternion r = p/q, such
// that q*r = p.  (order of multiplication is important)
tlQuat& tlQuat::operator/=(const tlQuat& q)
{   
    tlQuat tmp = q;
    tmp.Inverse();
    tlQuat qp = tmp * (*this);
    *this = qp;
    return *this;
}

// Product of two quaternions
tlQuat tlQuat::operator*(const tlQuat& q) const
{
    tlQuat qp;
    qp.w = w*q.w - x*q.x - y*q.y - z*q.z;
    qp.x = w*q.x + x*q.w + y*q.z - z*q.y;
    qp.y = w*q.y + y*q.w + z*q.x - x*q.z;
    qp.z = w*q.z + z*q.w + x*q.y - y*q.x;
    return qp;
}

// Ratio of two quaternions: This creates a result quaternion r = p/q, such
// that q*r = p.  (order of multiplication is important)

tlQuat tlQuat::operator/(const tlQuat& q) const
{
    tlQuat tmp = q;
    tmp.Inverse();
    return ( tmp * (* this));
}

// MakeClosest: modify q so it is on same side of hypersphere as qto 
tlQuat& tlQuat::MakeClosest(const tlQuat& qto)
{
    float dot =  x*qto.x + y*qto.y + z*qto.z+ w*qto.w;
    if (dot<0.0)
    {
        x = -x; y = -y; z = -z; w = -w;
    }
    return *this;
}

int tlQuat::operator==(const tlQuat &a) const
{
    tlQuat q1 = (*this);
    tlQuat q2 = a;
    q1.Normalize();
    q2.Normalize();
    return (q1-q2).IsIdentity();
}

int tlQuat::IsIdentity() const
{
    return (NearZero(x)&&NearZero(y)&&NearZero(z));
}

// qnorm: normalize a quaternion 
void tlQuat::Normalize()
{
    float l,c;
    l =  sqrtf(x*x + y*y + z*z + w*w);
    if (l==0.0f)
    {
        w = 1.0f;   
        y = z = x = 0.0f;
    } 
    else 
    {
        c = 1.0f/l;
        (*this) *= c;
    }
}

//--------------------------------------------------------
// MakeMatrix: Convert quaternion to rotation matrix;
//  Quaternion need not be unit magnitude.  When it always is,
//  this routine can be simplified 
void tlQuat::MakeMatrix(tlMatrix& mat)  const
{
    float s,xs,ys,zs,wx,wy,wz,xx,xy,xz,yy,yz,zz,den;

    if (w==1.0f)
    {
        mat.IdentityMatrix();
        return;     
    }
    // For unit q, just set s = 2.0; or or set xs = q.x + q.x, etc 
    den = (x*x + y*y + z*z + w*w);
    if (den!=0.0)
    {
        s = 2.0f/den;
    }

    xs = x * s;   ys = y * s;  zs = z * s;
    wx = w * xs;  wy = w * ys; wz = w * zs;
    xx = x * xs;  xy = x * ys; xz = x * zs;
    yy = y * ys;  yz = y * zs; zz = z * zs;

    mat.element[0][0] = 1.0f - (yy +zz);
    mat.element[1][0] = xy - wz;
    mat.element[2][0] = xz + wy;

    mat.element[0][1] = xy + wz;
    mat.element[1][1] = 1.0f - (xx +zz);
    mat.element[2][1] = yz - wx;

    mat.element[0][2] = xz - wy;
    mat.element[1][2] = yz + wx;
    mat.element[2][2] = 1.0f - (xx + yy);

    mat.element[0][3] = 0.0f;
    mat.element[1][3] = 0.0f;
    mat.element[2][3] = 0.0f;
}

tlQuat tlQuat::Interpolate(const tlQuat& q, float t) const
{
    tlQuat tmp;
    tmp.Slerp(*this,q,t);
    return tmp;
}

void tlQuat::Read(tlFile* f)
{
    w = f->GetFloat();
    x = f->GetFloat();
    y = f->GetFloat();
    z = f->GetFloat();
}

void tlQuat::Write(tlFile* f)
{
    f->PutFloat(w);
    f->PutFloat(x);
    f->PutFloat(y);
    f->PutFloat(z);
}

void tlQuat::Print(int index, int indent)
{
    printf("%*s%4d %8.4f %8.4f %8.4f %8.4f\n",indent,"", index, x, y, z, w);
}

void tlQuat::PrintFormatted(int index, int indent)
{
    assert("unimplemented" == 0);
}

void tlQuat::Init()
{
    x = y = z = w = 0.0f;
}

bool tlQuat::GetFieldValue(char* val, int len) const
{
    char buf[256];

    sprintf(buf, "%8.4f, %8.4f, %8.4f, %8.4f", x, y, z, w);
    strncpy(val, buf, len);

    return true;
}

bool tlQuat::GetFieldUpdatable()
{
    return true;
}

bool tlQuat::SetFieldValue(const char* value)
{    
    sscanf( value, "%f, %f, %f, %f", &x, &y, &z, &w);    
    return true;
}

//*****************************************************************************
// tlCompressedQuat
//*****************************************************************************
int tlCompressedQuat::operator==(const tlCompressedQuat &a) const
{
    tlQuat q1 = (*this).UnCompress();
    tlQuat q2 = a.UnCompress();
    q1.Normalize();
    q2.Normalize();
    return (q1-q2).IsIdentity();
}

void tlCompressedQuat::Read(tlFile* f)
{
    w = f->GetWord();
    x = f->GetWord();
    y = f->GetWord();
    z = f->GetWord();
}

void tlCompressedQuat::Write(tlFile* f)
{
    f->PutWord(w);
    f->PutWord(x);
    f->PutWord(y);
    f->PutWord(z);
}

void tlCompressedQuat::Print(int index, int indent)
{
    printf("%*s%4d %d %d %d %d\n",indent,"", index, x, y, z, w);
}

void tlCompressedQuat::PrintFormatted(int index, int indent)
{
    assert("unimplemented" == 0);
}

void tlCompressedQuat::Init()
{
    tlQuat quat;
    quat.Identity();
    Compress( quat );
}

bool tlCompressedQuat::GetFieldValue(char* val, int len) const
{
    char buf[256];

    sprintf(buf, "%d, %d, %d, %d", x, y, z, w);
    strncpy(val, buf, len);

    return true;
}

bool tlCompressedQuat::GetFieldUpdatable()
{
    return true;
}

bool tlCompressedQuat::SetFieldValue(const char* value)
{    
    sscanf( value, "%d, %d, %d, %d", &x, &y, &z, &w);    
    return true;
}

//*****************************************************************************
// tlAngAxis
//*****************************************************************************
tlAngAxis::tlAngAxis(const tlQuat &q)
{
    AngAxisFromQ(q,&angle,axis);
}

int tlAngAxis::GetNumRevs()
{
    return int(angle/TWOPI);
}

void tlAngAxis::SetNumRevs(int num)
{
    angle += float(num)*TWOPI;
}

