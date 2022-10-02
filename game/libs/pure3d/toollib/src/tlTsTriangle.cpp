/*===========================================================================
    File:: tlTsTriangle.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include "tlTsTriangle.hpp"


tlTsTriangle::tlTsTriangle()
{

}


tlTsTriangle::tlTsTriangle( unsigned int v0, unsigned int v1, unsigned int v2 )
{
    verts[0] = v0;
    verts[1] = v1;
    verts[2] = v2;

    added = false;
    testing = false;

}


tlTsTriangle::~tlTsTriangle()
{

}


int 
tlTsTriangle::IndexOfFirstUnsharedVertex(const tlTsTriangle * tri) const
{
    if(verts[0] != tri->GetVertex(0) && 
          verts[0] != tri->GetVertex(1) && 
          verts[0] != tri->GetVertex(2))
    {
        return 0;
    }
    else if(verts[1] != tri->GetVertex(0) && 
                    verts[1] != tri->GetVertex(1) &&
                    verts[1] != tri->GetVertex(2))
    {
        return 1;
    }
    else if(verts[2] != tri->GetVertex(0) && 
                    verts[2] != tri->GetVertex(1) && 
                    verts[2] != tri->GetVertex(2))
    {
        return 2;
    }
    else
    {      
        // in case when triangles overlap, just return first vertex
        return 0;
    }
}


void 
tlTsTriangle::RemoveAdjacentTriangle(unsigned int tri)
{   

    for (int i = 0; i < adjTris.Count() ; i ++)
    {
        if (adjTris[i] == tri)
        {      
            adjTris.Delete(i, 1);
            break;
        }
    }
}


int 
tlTsTriangle::GetVertexDifferentThen(unsigned int v1, unsigned int v2) const
{
    if (verts[0] != v1 && verts[0] != v2)
    {
        return verts[0];
    }
    else if (verts[1] != v1 && verts[1] != v2)
    {
        return verts[1];
    }
    else if (verts[2] != v1 && verts[2] != v2)
    {
        return verts[2];
    }
    else
    {
        printf("\nERROR: GetVertexDifferentThen\n");
        printf("\nTrinagle has two equivalent vertices\n");
        return -1;
    }
}

int tlTsTriangle::GetVertexNotSharedBy( tlTsTriangle & tri )
{
     for( int i = 0; i < 3; ++i ){
          int j = 0;
          while( ( verts[ i ] != tri.verts[ j ] ) && ( j < 3 ) )
                ++j;

          //verts[ i ] are not share by tri
          if( j == 3 )
                return verts[ i ];

     }

     return -1;
}

bool
tlTsTriangle::ContainsVertices(unsigned int v1, unsigned int v2) const
{
    bool contains = false;

    if (verts[0] == v1)
    {
        if (verts[1] == v2 || verts[2] == v2)
        {
            contains = true;
        }
    }
    else if (verts[1] == v1)
    {
        if (verts[0] == v2 || verts[2] == v2)
        {
            contains = true;
        }
    }
    else if (verts[2] == v1)
    {
        if (verts[0] == v2 || verts[1] == v2)
        {
            contains = true;
        }
    }

    return contains;
}

void tlTsTriangle::AddAdjacentTriangle(unsigned long int tri)
{
    if( adjTris.Count() == 0 )
    {
        adjTris.Append(tri);
    }
    else
    {
        adjTris.AppendUnique(tri);
    }
}

void
tlTsTriangle::Print()
{
    int i;
    for( i=0; i < 3; i++)
    {
        printf("\tVertex %d: %4d\n", i, verts[i]);
    }

    printf("\tAdjecent Triangles:\n");
    for( i = 0; i < adjTris.Count(); i++)
    {
        printf("\t\t %4ld" , adjTris[i]);
    }
}

