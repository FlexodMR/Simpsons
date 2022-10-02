/*===========================================================================
    File:: tlVertex.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlVertex.hpp"
#include <assert.h>
#include <stdio.h>
#include <string.h>

#include "tlPoint.hpp"
#include "tlColour.hpp"
#include "tlUV.hpp"
#include "tlFile.hpp"
#include "pddi/pddienum.hpp"
#include "tlMatrix.hpp"

// Bug fix #492: Initialize tangent() and binormal() in default constructor
tlVertex::tlVertex() : coord(), normal(), tangent(), binormal(),
                       mVertexFormat(PDDI_V_NT | PDDI_V_COLOUR)
{
    int i;
    tlColour initColour;
    for(i = 0; i < MAX_VERT_COLOUR ; i++)
    {
        colour[i] = initColour;
    }
    tlUV inituv;
    for(i = 0; i < MAX_VERT_UV ; i++)
    {
        uv[i] = inituv;
    }
}

tlVertex::tlVertex(const tlPoint& vert, const tlPoint& norm,
                   const tlColour& col0, const tlUV& uv0) : 
        coord(vert),
        normal(norm),
        tangent(),
        binormal(),
        mVertexFormat( PDDI_V_NT | PDDI_V_COLOUR )  // Bug #236
{
    colour[0] = col0;
    uv[0] = uv0;

    int i;
    tlColour initColour;
    for(i = 1; i < MAX_VERT_COLOUR ; i++)
    {
        colour[i] = initColour;
    }
    tlUV inituv;
    for(i = 1; i < MAX_VERT_UV ; i++)
    {
        uv[i] = inituv;
    }
}

// copy constructor
tlVertex::tlVertex(const tlVertex& vertex) : coord(vertex.coord), 
                                             normal(vertex.normal),
                                             tangent(vertex.tangent),
                                             binormal(vertex.binormal),
                                             mVertexFormat( vertex.mVertexFormat )  // Bug #236

{
    int i;
    for(i = 0; i < MAX_VERT_COLOUR ; i++)
    {
        colour[i] = vertex.colour[i];
    }
    for(i = 0; i < MAX_VERT_UV; i++)
    {
        uv[i] = vertex.uv[i];
    }
}

tlVertex::~tlVertex()
{

}

tlVertex*
tlVertex::Clone() const
{
    return new tlVertex(*this);
}

tlVertex*
tlVertex::Interpolate(const tlVertex* v, float t) const
{
    tlVertex* result = Clone();
    result->coord.Interpolate(coord, v->coord, t);
    result->normal.Interpolate(normal, v->normal, t);
    result->normal.Normalize();
    
    unsigned i;
    for(i = 0; i < MAX_VERT_COLOUR; i++)
    {
        result->colour[i] = colour[i].Interpolate(v->colour[i], t);
    }
    
    for(i = 0; i < MAX_VERT_UV; i++)
    {
        result->uv[i] = uv[i].Interpolate(v->uv[i], t);
    }
    return result;
}

void
tlVertex::Read(tlFile* f)
{
    coord = f->GetPoint();
    normal = f->GetPoint();
    tangent = f->GetPoint();
    binormal = f->GetPoint();
    // Bug #236: Note - Vertex format is not read here.
    //           The format is a reflection of the triangle/primGroup/etc.
    //           using the vertex; on its own it has no meaning.
    int i;
    for(i = 0; i < MAX_VERT_COLOUR; i++)
    {
        colour[i] = f->GetColour();
    }
    for(i = 0; i < MAX_VERT_UV; i++)
    {
        uv[i] = f->GetUV();
    }
}

void 
tlVertex::Write(tlFile* f)
{
    f->PutPoint(coord);
    f->PutPoint(normal);
    f->PutPoint(tangent);
    f->PutPoint(binormal);
    // Bug #236: Note - Vertex format is not written here.
    //           The format is a reflection of the triangle/primGroup/etc.
    //           using the vertex; on its own it has no meaning.
    int i;
    for(i = 0; i < MAX_VERT_COLOUR; i++)
    {
        f->PutColour(colour[i]);
    }
    for(i = 0; i < MAX_VERT_UV; i++)
    {
        f->PutUV(uv[i]);
    }
}

void 
tlVertex::Print(int index, int indent)
{
    printf("%*s%3d\n", indent, "", index);
    if( mVertexFormat & PDDI_V_POSITION )
    {
        printf("%*s    XYZ: %3.3f %3.3f %3.3f\n", indent, "", coord.x, coord.y, coord.z);
    }
    if( mVertexFormat & PDDI_V_NORMAL )
    {
        printf("%*s    NORM: %0.3f %0.3f %0.3f\n", indent, "", normal.x,normal.y,normal.z);
    }
    if( mVertexFormat & PDDI_V_TANGENT )
    {
        printf("%*s    TANGENT: %0.3f %0.3f %0.3f\n", indent, "", tangent.x, tangent.y, tangent.z);
    }
    if( mVertexFormat & PDDI_V_BINORMAL)
    {
        printf("%*s    BINORMAL: %0.3f %0.3f %0.3f\n", indent, "", binormal.x, binormal.y, binormal.z);
    }
    int i;
    for(i = 0; i < GetNumberColours(); i++)
    {
        printf("%*s    COLOUR%d: %081x\n", indent, "", i, colour[i].ULong());
    }
    for(i = 0; i < (int)( mVertexFormat & PDDI_V_UVMASK ); i++)
    {
        printf("%*s    UV%d: %1.3f %1.3f\n", indent, "", i, uv[i].u, uv[i].v);
    }
}

void
tlVertex::PrintFormatted(int index, int indent)
{

}

bool
tlVertex::GetFieldValue(char* val, int len) const
{
    char buf[1024];
    char tmp_buf[256];

    sprintf(buf, "Pos(%3.3f, %3.3f, %3.3f), "
                 "Normal(%0.3f, %0.3f, %0.3f), "
                 "Tangent(%0.3f, %0.3f, %0.3f), "
                 "Binormal(%0.3f, %0.3f, %0.3f), ",
            coord.x, coord.y, coord.z,
            normal.x, normal.y, normal.z,
            tangent.x, tangent.y, tangent.z,
            binormal.x, binormal.y, binormal.z);
    unsigned i;
    for(i = 0; i < MAX_VERT_COLOUR; i++)
    {
        sprintf(tmp_buf, ", Colour%d(%081x)", i, colour[i].ULong());
        strcat(buf, tmp_buf);
    }
    for(i = 0; i < MAX_VERT_UV; i++)
    {
        sprintf(tmp_buf, ", UV%d(%1.3f, %1.3f)", i, uv[i].u, uv[i].v);
        strcat(buf, tmp_buf);
    }

    strncpy(val, buf, len);

    return true;
}

bool
tlVertex::GetFieldUpdatable()
{
    return false;
}

bool
tlVertex::SetFieldValue(const char*)
{
    return false;
}

void
tlVertex::Init(unsigned int format)
{

}

// Return the number of colours per vertex.  If multi CBVs are used,
// this function requires mVertexFormat to be accurate.
int 
tlVertex::GetNumberColours() const
{
    int count = 0;

    if(mVertexFormat & PDDI_V_COLOUR)
    {
        count = 1;
    }
    else if(mVertexFormat & PDDI_V_COLOUR2)
    {
        count = PddiNumColourSets(mVertexFormat);
    }

    return count;
}

// Bug #236: Added by Bryan Ewert on 22 Apr 2002
void
tlVertex::SetVertexFormat( unsigned int vertexFormat )
{
    mVertexFormat = vertexFormat;
}

bool
tlVertex::operator==(const tlVertex& a)
{
    return false;
}

void
tlVertex::SetCoord(const tlPoint& v)
{
    coord = v;
}

void      
tlVertex::SetNormal(const tlPoint& n)
{
    normal = n;
}

void      
tlVertex::SetTangent(const tlPoint& t)
{
    tangent = t;
}

void      
tlVertex::SetBinormal(const tlPoint& b)
{
    binormal = b;
}


void
tlVertex::SetColour(const tlColour& c, int i)
{
    assert( (i >= 0) && (i < MAX_VERT_COLOUR));
    colour[i] = c;
}

void 
tlVertex::SetUV(int i, const tlUV& u)
{
    assert( (i >= 0) && (i < MAX_VERT_UV));
    uv[i] = u;
}

int tlVertex::CompareCoord(const tlVertex& otherVertex)
{
     return coord.Compare(otherVertex.coord);
}

int
tlVertex::Compare(const tlVertex& otherVertex)
{
    // compares this and otherVertex 
    // return 0 if they are completely identical
    // return -1 if this "less than" otherVertex
    // return 1 if this "greater than" otherVertex   

    // recall, the guts we're comparing:
    // tlPoint  coord;
    // tlPoint  normal;
    // tlPoint  binormal;
    // tlPoint  tangent;
    // tlColour colour;
    // tlUV     uv[MAX_VERT_UV];

    // ? no tolerance for now
    
    int result = 0;
    
    if ( mVertexFormat & PDDI_V_POSITION )
    {
        result = coord.Compare(otherVertex.coord);
        if(result != 0)
        {
            return result;
        }
    }
    
    if ( mVertexFormat & PDDI_V_NORMAL )
    {
        result = normal.Compare(otherVertex.normal);
        if(result != 0)
        {
            return result;
        }
    }
    
    int i;
    for(i = 0; i < GetNumberColours(); i++)
    {
        result = colour[i].Compare(otherVertex.colour[i]);
        if(result != 0)
        {
            return result;
        }
    }

    if ( mVertexFormat & PDDI_V_UVMASK )
    {
        // ? compare all UV values.
        int i;
        for(i = 0; i < MAX_VERT_UV; i++)
        {
            result = uv[i].Compare(otherVertex.uv[i]);
            if(result != 0)
            {
                return result;
            }
        }
    }

    if ( mVertexFormat & PDDI_V_BINORMAL )
    {
        // Senta: change the binormal and tangent so 
        //        that they have an epsilon value of 0.001

        float epsilon = 0.05F;

        tlPoint diffPoint = binormal - otherVertex.binormal;
        if (fabs(diffPoint.x) < epsilon &&
             fabs(diffPoint.y) < epsilon &&
             fabs(diffPoint.z) < epsilon)
        {
            return 0;
        }
    
        if (binormal.x < otherVertex.binormal.x) return -1;
        if (binormal.x > otherVertex.binormal.x) return 1;
    
        if (binormal.y < otherVertex.binormal.y) return -1;
        if (binormal.y > otherVertex.binormal.y) return 1;
    
        if (binormal.z < otherVertex.binormal.z) return -1;
        if (binormal.z > otherVertex.binormal.z) return 1;
    }

/*   
    result = binormal.Compare(otherVertex.binormal);
    if (result != 0)
    {
        return result;
    }

    result = tangent.Compare(otherVertex.tangent);
    if (result != 0)
    {
        return result;
    }
*/   
    
    return 0;
}


void tlVertex::ScaleCoord(float x, float y, float z)
{
    coord.x = coord.x * x;
    coord.y = coord.y * y;
    coord.z = coord.z * z;
}


void tlVertex::TranslateCoord(float x, float y, float z)
{
    coord.x = coord.x + x;
    coord.y = coord.y + y;
    coord.z = coord.z + z;
}


void tlVertex::TransformCoord(tlMatrix &m)
{
    tlPoint t = coord * m;
    coord = t;
}


void tlVertex::Transform(tlMatrix &m, bool renormalizeNormals)
{
    tlPoint t;
    t = coord * m;
    coord = t;

    t = VectorTransform(m, normal);
    if (renormalizeNormals) normal = Normalize(t);
    else normal = t;
}

void 
tlVertex::FlipUVs()
{
    int i;
    for(i = 0; i < MAX_VERT_UV; i++)
    {
        float tmp = uv[i].u;
        uv[i].u = uv[i].v;
        uv[i].v = tmp;
    }
}

void tlVertex::FlipUV( int i )
{
    assert( i < MAX_VERT_UV );

    float tmp = uv[i].u;
    uv[i].u = uv[i].v;
    uv[i].v = tmp;

}
