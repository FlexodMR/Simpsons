/*===========================================================================
    File:: tlTsTriangleToTriStripConverter.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

  

    Algoritham used to generate triangle strips is based on:
    
      FAST AND SIMPLE TRIANGLE STRIP GENERATION  by David Kornmann
    
    This paper can be found at:
    http://www.dlc.fi/~dkpa/strip/strip.html

===========================================================================*/

#include <stdio.h>
#include "tlTsTriangleToTriStripConverter.hpp"
#include "tlTsVertexConnectivity.hpp"
#include "tlTsTriangle.hpp"
#include "tlTsEdge.hpp"

#define DEFAULT_VERTEX_CACHE_LEN    16
#define DEFAULT_MAXIMUM_TESTING_LEVEL    7

tlTsTriangleToTriStripConverter::tlTsTriangleToTriStripConverter()
{
    lastEdgeAdded = 0;
    bOptimizeXBox = false;
    vertexCacheLen = DEFAULT_VERTEX_CACHE_LEN;
    maximuLevel = DEFAULT_MAXIMUM_TESTING_LEVEL;
    numberOfReuse = 0;
}

tlTsTriangleToTriStripConverter::~tlTsTriangleToTriStripConverter()
{
    int i; 

    for (i = 0; i < edges.Count(); i ++)
    {
        delete edges[i];
    }

    for (i = 0; i < triangles.Count(); i ++)
    {
        delete triangles[i];
    }

    for (i = 0; i < verts.Count(); i ++)
    {
        delete verts[i];
    }

    for (i = 0; i < triStrips.Count(); i ++)
    {
        delete triStrips[i];
    }
}

tlTable< tlTable<unsigned long int>  *> 
tlTsTriangleToTriStripConverter::Convert(const tlTable<unsigned long int> & triVertsList,
                                                      unsigned int numVerts,
                                                      int maxNumOfVertsPerStrip,
                                                      int maxNumOfTrisPerStrip)
{

    int i;
    // delete any previous tristrip
    for( i = 0; i < triStrips.Count(); i++ )
    {
        delete triStrips[i];
    }
    triStrips.ZeroCount();

    CreateVertexAndTriangleList(triVertsList, numVerts);
    CreateTriangleAdjacencyInformation();

    tlTable<unsigned long int> * strip;

    int nextTriangle;
    int firstTriangle;

    firstTriangle = TriangleWihtMinimuNuberOfAdjacentTriagles();

    int numberOfTriangles = 0;
    numberOfSwaps = 0;

    // limit number of vertices and triangles per strip
    if ( maxNumOfTrisPerStrip > 0 && maxNumOfVertsPerStrip > 0)  
    {
        while ( firstTriangle != -1 )
        {
            strip = new tlTable<unsigned long int>;
            numberOfTriangles = 0;

            nextTriangle = AddFirstTriangleToStrip( firstTriangle, strip );     
            numberOfTriangles++;

            // NOTE: (why subtract 1 from maxNumOfVertsPerStrip)
            // If the last vertex that needs to be added to the strip requires a swap
            // we would go over maxNumOfVertsPerStrip thats why we subtract 1 here to make
            // sure that this does not happen
            while( nextTriangle != -1 
                     && numberOfTriangles < maxNumOfTrisPerStrip 
                     && strip->Count() < maxNumOfVertsPerStrip - 1 )
            {      
                nextTriangle = AddTriangleToStrip(nextTriangle, strip);
                numberOfTriangles++;
            }

            triStrips.Append(strip);
 
            firstTriangle = TriangleWihtMinimuNuberOfAdjacentTriagles();
        }
    }
    else if ( maxNumOfTrisPerStrip > 0 )  
    {
        while ( firstTriangle != -1 )
        {
            strip = new tlTable<unsigned long int>;
            numberOfTriangles = 0;
            
            nextTriangle = AddFirstTriangleToStrip( firstTriangle, strip );     
            numberOfTriangles++;

            while( nextTriangle != -1 
                     && numberOfTriangles < maxNumOfTrisPerStrip)
            {      
                nextTriangle = AddTriangleToStrip(nextTriangle, strip);
                numberOfTriangles++;
            }

            triStrips.Append(strip);


            firstTriangle = TriangleWihtMinimuNuberOfAdjacentTriagles();
        }
    }
    else if ( maxNumOfVertsPerStrip > 0 )
    {
        while ( firstTriangle != -1 )
        {
            strip = new tlTable<unsigned long int>;
            numberOfTriangles = 0;

            nextTriangle = AddFirstTriangleToStrip( firstTriangle, strip );     
            numberOfTriangles++;

            // NOTE: (why subtract 1 from maxNumOfVertsPerStrip)
            // If the last vertex that needs to be added to the strip requires a swap
            // we would go over maxNumOfVertsPerStrip thats why we subtract 1 here to make
            // sure that this does not happen
            while( nextTriangle != -1 
                     && strip->Count() < maxNumOfVertsPerStrip - 1 )
            {      
                nextTriangle = AddTriangleToStrip(nextTriangle, strip);
                numberOfTriangles++;
            }

            triStrips.Append(strip);


            firstTriangle = TriangleWihtMinimuNuberOfAdjacentTriagles();
        }
    }   
    else  // don't limit numbe of triangles in the strip
    {
        while ( firstTriangle != -1 )
        {
            strip = new tlTable<unsigned long int>;
            numberOfTriangles = 0;

            nextTriangle = AddFirstTriangleToStrip( firstTriangle, strip );     
            numberOfTriangles++;

            while( nextTriangle != -1 )
            {      
                nextTriangle = AddTriangleToStrip(nextTriangle, strip);
                numberOfTriangles++;
            }

            triStrips.Append(strip);

            firstTriangle = TriangleWihtMinimuNuberOfAdjacentTriagles();
        }      
    }

    return triStrips;

}

void tlTsTriangleToTriStripConverter::StitchStripFromSrcToDest( tlTable<unsigned long int> &stripSrc, tlTable<unsigned long int> &stripDest )
{
     //don't stitch a empty src strip
     if( stripSrc.Count(  ) == 0 )
          return;

     if( stripDest.Count( ) > 0 ){
          //repeat the last vertext of the destinational strip once
          stripDest.Append( stripDest[ stripSrc.Count( ) - 1 ] );
          
          //repeat the first vertext of the source strip once
          stripDest.Append( stripSrc[ 0 ] );

          int i;
          for( i = 0; i < stripSrc.Count( ); ++i )
                stripDest.Append( stripSrc[ i ] );

     }
}

tlTable<unsigned long int> 
tlTsTriangleToTriStripConverter::ReorderTriangles(const tlTable<unsigned long int> & triVertsList, 
                                                                  unsigned int numVerts)
{
    newTriVertsList.ZeroCount();

    int i;
    // delete any previous tristrip
    for( i = 0; i < triStrips.Count(); i++ )
    {
        delete triStrips[i];
    }
    triStrips.ZeroCount();

    CreateVertexAndTriangleList(triVertsList, numVerts);
    CreateTriangleAdjacencyInformation();

    int nextTriangle;
    int firstTriangle = TriangleWihtMinimuNuberOfAdjacentTriagles();

    while ( firstTriangle != -1 )
    {
        nextTriangle = AddFirstTriangleToReorderedVertexList( firstTriangle, newTriVertsList );     
        
        while( nextTriangle != -1 )
        {      
            nextTriangle = AddTriangleToReorderedVertexList(nextTriangle, newTriVertsList);
        }     

        firstTriangle = TriangleWihtMinimuNuberOfAdjacentTriagles();
    }
    
    return newTriVertsList;

}


tlTable<unsigned long int> 
tlTsTriangleToTriStripConverter::GetNotAddedTrianglesAdjacentToTriangle(unsigned int triangleIndex)
{
    tlTable<unsigned long int> notAddedTris;
    tlTable<unsigned long int> adjacentTriangles = triangles[triangleIndex]->GetAdjacentTriangles();

    int i;
    for( i = 0; i < adjacentTriangles.Count(); i++)
    {
        if (!triangles[adjacentTriangles[i]]->GetAdded() && !triangles[adjacentTriangles[i]]->GetTesting())
        {
            notAddedTris.Append(adjacentTriangles[i]);
        }
    }

    return notAddedTris;
}


// Assumes that:
//    - there is 3*k vertices in the triVertsList
//    - vertices are indexed 0 to numVerts
//    - vertices i, i+1, i+2 (where i%3 = 0) define a triangle 
// Returns:
//    - true if succesfull
//    - false otherwise
void 
tlTsTriangleToTriStripConverter::CreateVertexAndTriangleList(const tlTable<unsigned long int> & triVertsList, 
                                                                                 int numVerts)
{
    // loop variable
    int i;    

    // empty vertex list and allocate memory for the vertices
    verts.ZeroCount();
    verts.Resize(numVerts);
    // empty triangle list and allocate memory for the triangles
    triangles.ZeroCount();
    triangles.Resize(numVerts*3); // this might be toomuch
    // create list of vertecies
    tlTsVertexConnectivity * vert;
    for (i=0; i < numVerts; i++)
    {      
        vert = new tlTsVertexConnectivity();
        verts.Append(vert);
    }
    
    // create triangle list and set vertex connectivity
    tlTsTriangle * tri;
    for( i = 0; i < triVertsList.Count(); i = i + 3 )
    {  
        
        if (triVertsList[i]== triVertsList[i+1] 
             || triVertsList[i] == triVertsList[i+2]
             || triVertsList[i+1] == triVertsList[i+2])
        {
            // exclude degenerate triangles
        }
        else
        {
            tri = new tlTsTriangle(triVertsList[i], triVertsList[i+1], triVertsList[i+2]);
            triangles.Append(tri);      
            verts[triVertsList[i]]->IncrementConnectivity();
            verts[triVertsList[i+1]]->IncrementConnectivity();
            verts[triVertsList[i+2]]->IncrementConnectivity();
        }      
    }
}


void 
tlTsTriangleToTriStripConverter::CreateTriangleAdjacencyInformation()
{
    // empty edge list and allocate memory for the edges
    edges.ZeroCount();
    edges.Resize(triangles.Count()*2); // this is just a guess
    lastEdgeAdded = 0;   // reset

    for (int triInd = 0; triInd < triangles.Count(); triInd++)
    {      
        CreateTriangleEdge( triangles[triInd]->GetVertex(0), triangles[triInd]->GetVertex(1), triInd );
        CreateTriangleEdge( triangles[triInd]->GetVertex(0), triangles[triInd]->GetVertex(2), triInd );
        CreateTriangleEdge( triangles[triInd]->GetVertex(1), triangles[triInd]->GetVertex(2), triInd );
    }
}

// Creates an edge for a triangle identified by triIndex.
// If edge alread exists, that means that the edge is shared by triangle triInd and triangle that
// initialy created the edge, then update adjacentcy information for triangles.
// Adjacency information 
void 
tlTsTriangleToTriStripConverter::CreateTriangleEdge(unsigned int v0, unsigned int v1, 
                                                                     unsigned int triInd)
{
    tlTsEdge * edge;
    unsigned int edgeIndex = verts[v0]->EdgeContainingVertex(v1);   
    if( edgeIndex == (unsigned)-1 )
    {
        edge = new tlTsEdge(v0, v1, triInd);
        edges.Append(edge);
        verts[v0]->AddEdge(v1, lastEdgeAdded);                  
        verts[v1]->AddEdge(v0, lastEdgeAdded);      
        lastEdgeAdded++;
    }
    else
    {
        tlTable<unsigned long int> edgeTriangles = edges[edgeIndex]->GetTriangles();
        for ( int i =0; i < edgeTriangles.Count(); i++ )
        {
            triangles[edgeTriangles[i]]->AddAdjacentTriangle(triInd);
            triangles[triInd]->AddAdjacentTriangle(edgeTriangles[i]);
        }
        edges[edgeIndex]->AddTriangle(triInd);
    }

}


// Returns index of a triangle that has smallest number of adjacent triangles 
// and hasn't been added to a triangle strip.
// If there is no more triangles left to be added, -1 is returned.
int
tlTsTriangleToTriStripConverter::TriangleWihtMinimuNuberOfAdjacentTriagles()
{
    int triIndex = -1;
    unsigned int minNumOfAdjTris = 10000;
    for (int i = 0; i < triangles.Count(); i++ )
    {
        if ( !triangles[i]->GetAdded()  
            && triangles[i]->NumberOfAdjacentTriangles() < minNumOfAdjTris
            )
        {
            triIndex = i; 
            minNumOfAdjTris = triangles[i]->NumberOfAdjacentTriangles();         
            if( minNumOfAdjTris == 1 ) 
            {
                break;
            }
        }
    }

    return triIndex;
}

// Returns index of a triangle that has smallest number of adjacent triangles 
// and hasn't been added to a triangle strip.
// If there is no more triangles left to be added, -1 is returned.
int
tlTsTriangleToTriStripConverter::TriangleWithMaximuVertexInStrips( )
{
    tlTable< unsigned long int > triCandidates;
    tlTable< unsigned int > vertexDuplicates;

    int i;
    //get all non-added triangle which has vertex duplicated in the strips
    for( i = 0; i < triangles.Count( ); ++i ){
         if( !triangles[i]->GetAdded()  ){
                unsigned int degree = MaximuDuplicatesInStrips( *triangles[ i ] );
                if( degree > 0 ){
                     triCandidates.Append( (unsigned long &) i );
                     vertexDuplicates.Append( degree );
                }
         }
    }

    int maxiDuplicates = -1;
    for( i = 0; i < vertexDuplicates.Count( ); ++i ){
         if( maxiDuplicates < (int)vertexDuplicates[ i ] )
              maxiDuplicates = vertexDuplicates[ i ];
    }

     int triIndex = -1;
     unsigned int minNumOfAdjTris = 10000;

    if( maxiDuplicates > 0 ){
          tlTable< unsigned long int > triBuffers;    //hold the triangle with the maximum repeated vextex number
          for( i = 0;  i < vertexDuplicates.Count( ); ++i ){
                if( maxiDuplicates == (int)vertexDuplicates[ i ] )
                     triBuffers.Append( triCandidates[ i ] );
          }
    
 
          //now triBuffers holds all triangles that repeats some vertexs on the generated 
          for( i = 0; i < triBuffers.Count( ); ++i ){           
                  if ( triangles[ triBuffers[i] ]->NumberOfAdjacentTriangles() < minNumOfAdjTris )
                  {
                      triIndex = triBuffers[i]; 
                      minNumOfAdjTris = triangles[triBuffers[i]]->NumberOfAdjacentTriangles();         
                      if( minNumOfAdjTris == 1 ) 
                      {
                          break;
                      }
                  }  
          }
    }
    else{

         for ( i = 0; i < triangles.Count(); i++ )
         {
             if ( !triangles[i]->GetAdded()  
                 && triangles[i]->NumberOfAdjacentTriangles() < minNumOfAdjTris
                 )
             {
                 triIndex = i; 
                 minNumOfAdjTris = triangles[i]->NumberOfAdjacentTriangles();         
                 if( minNumOfAdjTris == 1 ) 
                 {
                     break;
                 }
             }
         }

    }
    return triIndex;
}

// Returns index of the next triangle that should be added to the strip.
// -1 is returned if there is no more triangles to add.
int 
tlTsTriangleToTriStripConverter::AddFirstTriangleToStrip(unsigned int indexOfFirstTriangle, 
                                                                            tlTable<unsigned long int> * strip)
{
    unsigned long int vertex;
    int nextTri;

    tlTsTriangle * firstTriangle = triangles[indexOfFirstTriangle];

    // add triangle to the strip 
    firstTriangle->SetAdded(true);
    // decrement connectivity of each vertex in the triangle 
    for (unsigned int i = 0; i < 3; i++)
    {
        verts[firstTriangle->GetVertex(i)]->DecrementConnectivity();
    }
      
    nextTri = ChooseSecondTriangleForTheStrip(indexOfFirstTriangle);
    
    if(nextTri == -1)
    {      
        for(unsigned int i = 0; i < 3; i++)
        {
            // add vertices
            vertex = firstTriangle->GetVertex(i);
            strip->Append(vertex);         
        }
    }   
    else
    {      
        unsigned int indexOfFirstUnsharedVertex;
        indexOfFirstUnsharedVertex = firstTriangle->IndexOfFirstUnsharedVertex(triangles[nextTri]);      
        // add unshared vertex first
        vertex = firstTriangle->GetVertex(indexOfFirstUnsharedVertex);
        strip->Append(vertex);
        // add next vertex
        vertex = firstTriangle->GetVertex((indexOfFirstUnsharedVertex + 1) % 3);
        strip->Append(vertex);        
        // add next vertex
        vertex = firstTriangle->GetVertex((indexOfFirstUnsharedVertex + 2) % 3);
        strip->Append(vertex);        
    }   

    return nextTri;
}

// Returns index of the next triangle that should be added to the strip.
// -1 is returned if there is no more triangles to add.
int 
tlTsTriangleToTriStripConverter::AddTriangleToStrip(unsigned int indexOfTriangle, 
                                                                     tlTable<unsigned long int> * strip)
{
    unsigned long int vertex;   

    tlTsTriangle * currentTriangle = triangles[indexOfTriangle];

    // mark triangle as added to the strip 
    currentTriangle->SetAdded(true);
    // decrement connectivity of each vertex in the triangle 
    for (unsigned int i = 0; i < 3; i++)
    {
        verts[currentTriangle->GetVertex(i)]->DecrementConnectivity();
    }

    // index of the last vertex in the strip.
    // this should always be >= 2, because we've already added the firts triangle to the strip
    unsigned int lastVertexInd = strip->Count() - 1;  
         
    // add vertex to the strip
    if (currentTriangle->ContainsVertices((*strip)[lastVertexInd], (*strip)[lastVertexInd - 1]))
    {
        vertex = currentTriangle->GetVertexDifferentThen( (*strip)[lastVertexInd], 
                                                                          (*strip)[lastVertexInd - 1]);

        if( IsVertexInCacheOfStrip( vertex, *strip, maximuLevel ) )
             ++numberOfReuse;

        strip->Append(vertex);


    }
    else 
    {
        // swap
        unsigned long int lastVertex = (*strip)[lastVertexInd];
        strip->Delete(lastVertexInd, 1);
        strip->Append((*strip)[lastVertexInd - 2]);
        strip->Append(lastVertex);
        numberOfSwaps++;
        
        // add vertex to the strip
        lastVertexInd = strip->Count() - 1;
        vertex = currentTriangle->GetVertexDifferentThen( (*strip)[lastVertexInd],
                                                                          (*strip)[lastVertexInd - 1]);

        if( IsVertexInCacheOfStrip( vertex, *strip, maximuLevel ) )
             ++numberOfReuse;

        strip->Append(vertex);
    }

    return ChooseNextTriangleForTheStrip(indexOfTriangle, strip);        
}


int tlTsTriangleToTriStripConverter::ChooseSecondTriangleForTheStrip(unsigned int indexOfFirstTriangle)
{
    tlTable<unsigned long int> notAddedAdjacentTriangles;
    notAddedAdjacentTriangles = GetNotAddedTrianglesAdjacentToTriangle(indexOfFirstTriangle);

    if (notAddedAdjacentTriangles.Count() == 0)
    {
        return -1;      
    }
    else if ( notAddedAdjacentTriangles.Count() == 1 )
    {      
        return notAddedAdjacentTriangles[0];        
    }
    else   
    {      
        int nextTri = -1;            
        unsigned int curTri;
        int curTriWeight;
        int minWeight = 10000;
        
        for (int i = 0; i < notAddedAdjacentTriangles.Count(); i++)         
        {
            // choose triangle with the smallest weigt
            // weight = number of adjacent triangles + sum(vertex connectivity)
            curTri = notAddedAdjacentTriangles[i];   
            curTriWeight = GetNotAddedTrianglesAdjacentToTriangle(curTri).Count() 
                                + verts[triangles[curTri]->GetVertex(0)]->GetConnectivity()
                                + verts[triangles[curTri]->GetVertex(1)]->GetConnectivity()
                                + verts[triangles[curTri]->GetVertex(2)]->GetConnectivity();
            if( curTriWeight < minWeight )
            {
                nextTri = curTri;
                minWeight = curTriWeight;
            }
        }               

        return nextTri;
    }
}

int tlTsTriangleToTriStripConverter::ChooseNextTriangleForTheStrip(unsigned int indexOfCurTriangle, 
                                                                                         tlTable<unsigned long int> * strip)
{
    
    unsigned int lastVertexInd = strip->Count() - 1;
    
    tlTable<unsigned long int> notAddedAdjacentTriangles;
    notAddedAdjacentTriangles = GetNotAddedTrianglesAdjacentToTriangle(indexOfCurTriangle);

    // no adjacent triangles
    if ( notAddedAdjacentTriangles.Count() == 0)
    {
        return -1;
    }
    // one adjacent triangle
    else if ( notAddedAdjacentTriangles.Count() == 1 )
    {      
        unsigned int indexOfAdjacentTriangle = notAddedAdjacentTriangles[0];
        // check can we add this triangle to the strip 
        if ( triangles[indexOfAdjacentTriangle]->ContainsVertices( (*strip)[lastVertexInd], 
                                                                                      (*strip)[lastVertexInd - 1])
              ||
              triangles[indexOfAdjacentTriangle]->ContainsVertices( (*strip)[lastVertexInd], 
                                                                                      (*strip)[lastVertexInd - 2])
            )
        {
            return indexOfAdjacentTriangle;
        }
        else 
        {
            return - 1;
        }      
    }
    // more then one adjacent triangle
    else
    {        
        int i; 
        tlTable<tlTsTscWeight *> weightOfTriangles;
        tlTsTscWeight * curTriWeight;
        int maxVertexConnectivity = -10000;
        unsigned int curAdjTri;
        
        for ( i = 0; i < notAddedAdjacentTriangles.Count(); i++)
        {        
            curAdjTri = notAddedAdjacentTriangles[i];
            curTriWeight = new tlTsTscWeight;
            curTriWeight->miniDist = 0;

            // triangle can be added to the strip as the next triangle if it contains:
            //    -  (*strip)[lastVertexInd] and either one of two vertices below
            //       -  (*strip)[lastVertexInd - 1]  (don't need a swap to add this triangle to the strip)
            //       -  (*strip)[lastVertexInd - 2]  (need a swap to add this triangle to the strip)

            if ( triangles[curAdjTri]->ContainsVertices( (*strip)[lastVertexInd], 
                                                                        (*strip)[lastVertexInd - 1]))
            {            
                // no swap is needed
                curTriWeight->swap = -1;
                // can be added
                curTriWeight->canBeAdded = true;
                // get number of adjacent triangles
                curTriWeight->adjacency = GetNotAddedTrianglesAdjacentToTriangle(curAdjTri).Count();
                // get vertex connectivity and update maxVertexConnectivity
                curTriWeight->vertexConnectivity = verts[(*strip)[lastVertexInd - 1] ]->GetConnectivity();
                if( curTriWeight->vertexConnectivity > maxVertexConnectivity)
                {
                    maxVertexConnectivity = curTriWeight->vertexConnectivity;
                }

                //do something special for XBox optimizing only
                if( bOptimizeXBox && strip->Count( ) >= (int)vertexCacheLen )
                     curTriWeight->miniDist = LengthToCachedVertex( indexOfCurTriangle, curAdjTri, maximuLevel, *strip );

            }
            else if ( triangles[curAdjTri]->ContainsVertices( (*strip)[lastVertexInd],
                                                                              (*strip)[lastVertexInd - 2]))
            {
                // swap is needed
                curTriWeight->swap = 1;
                // can be added
                curTriWeight->canBeAdded = true;
                // get number of adjacent triangles
                curTriWeight->adjacency = GetNotAddedTrianglesAdjacentToTriangle(curAdjTri).Count();
                // get vertex connectivity and update maxVertexConnectivity
                curTriWeight->vertexConnectivity = verts[(*strip)[lastVertexInd - 2]]->GetConnectivity();
                if( curTriWeight->vertexConnectivity > maxVertexConnectivity)
                {
                    maxVertexConnectivity = curTriWeight->vertexConnectivity;
                }

                //do something special for XBox optimizing only
                if( bOptimizeXBox && strip->Count( ) >= (int)vertexCacheLen )
                     curTriWeight->miniDist = LengthToCachedVertex( indexOfCurTriangle, curAdjTri, maximuLevel, *strip );

            }
            else
            {
                // cannot add this triangle to the strip because 
                // it does not contain last vertex in the strip ((*strip)[lastVertexInd])
                curTriWeight->canBeAdded = false;
            }

            weightOfTriangles.Append(curTriWeight);
        }

        int minTriangleWeight = 10000;
        // calculate total weight and 
        for(i = 0; i < weightOfTriangles.Count(); i++)
        {
            if (weightOfTriangles[i]->canBeAdded)
            {
                weightOfTriangles[i]->CalculateTotalWeight(maxVertexConnectivity, *this );
                if ( weightOfTriangles[i]->totalWeight < minTriangleWeight )
                {
                    minTriangleWeight = weightOfTriangles[i]->totalWeight;
                }
            }
        }

        int nextTri = -1; // there is a case when none of the triangles can be added because none of them contains
                                // last vertex in the strip.
        // choose first triangle with minimum triangle weight to be the next triangle in the strip
        for(i = 0; i < weightOfTriangles.Count(); i++)
        {
            if (weightOfTriangles[i]->canBeAdded && weightOfTriangles[i]->totalWeight == minTriangleWeight)
            {
                nextTri = notAddedAdjacentTriangles[i];
    
                // if this is a triangle with smallest connectivity stop
                // else search for a trinagle with smallest connectivity
                if (weightOfTriangles[i]->connectivity == -1)
                {               
                    break;
                }
            }
        }

        // delete memory allocated for triangle weights
        for(i = 0; i < weightOfTriangles.Count(); i++)
        {
            delete weightOfTriangles[i];
        }

        return nextTri;
    }
}


int
tlTsTriangleToTriStripConverter::ChooseSecondTriangleForReordering(unsigned int indexOfFirstTriangle)
{
    return ChooseSecondTriangleForTheStrip(indexOfFirstTriangle);
}


int
tlTsTriangleToTriStripConverter::ChooseNextTriangleForReordering(unsigned int indexOfCurTriangle,
                                                                                      tlTable<unsigned long int> & vertexList)
{
     unsigned int lastVertexInd = vertexList.Count() - 1;
    
    tlTable<unsigned long int> notAddedAdjacentTriangles;
    notAddedAdjacentTriangles = GetNotAddedTrianglesAdjacentToTriangle(indexOfCurTriangle);

    // no adjacent triangles
    if ( notAddedAdjacentTriangles.Count() == 0)
    {
        return -1;
    }
    // one adjacent triangle
    else if ( notAddedAdjacentTriangles.Count() == 1 )
    {      
        return notAddedAdjacentTriangles[0];            
    }
    // more then one adjacent triangle
    else
    {        
        int i; 
        tlTable<tlTsReorderingWeight *> weightOfTriangles;
        tlTsReorderingWeight * curTriWeight;
        bool foundLastTwoVertsTri = false; // found a triangle that contains last two vertices
        int minAdjacency_2verts = 10000;   // for triangles that contain last to vertices in vertexList
        int minAdjacency_1vert = 10000;    // for triangles that contain only one of the last two vertices
        unsigned int curAdjTri;
        
        // we only care does triangle contains last two vertices in vertexList and how many triangles
        // are adjacent to it (triangles that haven't been added so far)
        for ( i = 0; i < notAddedAdjacentTriangles.Count(); i++)
        {        
            curAdjTri = notAddedAdjacentTriangles[i];
            curTriWeight = new tlTsReorderingWeight;
            
            if ( triangles[curAdjTri]->ContainsVertices( vertexList[lastVertexInd], 
                                                                        vertexList[lastVertexInd - 1]))
            {            
                foundLastTwoVertsTri = true;
                curTriWeight->containsLastTwoVerts = true;
                curTriWeight->adjacency = GetNotAddedTrianglesAdjacentToTriangle(curAdjTri).Count();
                if( curTriWeight->adjacency < minAdjacency_2verts )
                {
                    minAdjacency_2verts = curTriWeight->adjacency;
                }
            }
            else
            {
                curTriWeight->containsLastTwoVerts = false;
                curTriWeight->adjacency = GetNotAddedTrianglesAdjacentToTriangle(curAdjTri).Count();
                if( curTriWeight->adjacency < minAdjacency_1vert )
                {
                    minAdjacency_1vert = curTriWeight->adjacency;
                }              
            }

            weightOfTriangles.Append(curTriWeight);
        }

        unsigned int nextTri;      
        // choose a triangle with minimum adjacency, 
        // preferably the one that contains last two vertices in vertexList
        for(i = 0; i < weightOfTriangles.Count(); i++)
        {
            if (foundLastTwoVertsTri)
            {
                if( weightOfTriangles[i]->containsLastTwoVerts 
                     && 
                     weightOfTriangles[i]->adjacency == minAdjacency_2verts
                  )
                {
                    nextTri = notAddedAdjacentTriangles[i];
                    break;
                }
            }
            else
            {
                if( !weightOfTriangles[i]->containsLastTwoVerts 
                     && 
                     weightOfTriangles[i]->adjacency == minAdjacency_1vert
                  )
                {
                    nextTri = notAddedAdjacentTriangles[i];
                    break;
                }
            }
        }

        // delete memory allocated for triangle weights
        for(i = 0; i < weightOfTriangles.Count(); i++)
        {
            delete weightOfTriangles[i];
        }

        return nextTri;
    }
}

int 
tlTsTriangleToTriStripConverter::AddFirstTriangleToReorderedVertexList(unsigned int indexOfFirstTriangle,
                                                                                              tlTable<unsigned long int> & vertexList)
{
    unsigned long int vertex;
    unsigned int nextTri;

    tlTsTriangle * firstTriangle = triangles[indexOfFirstTriangle];

    // add triangle to the strip 
    firstTriangle->SetAdded(true);
  
    nextTri = ChooseSecondTriangleForReordering(indexOfFirstTriangle);
    
    if(nextTri == (unsigned)-1)
    {      
        for(unsigned int i = 0; i < 3; i++)
        {
            // add vertices
            vertex = firstTriangle->GetVertex(i);         
            vertexList.Append(vertex);         
        }
    }   
    else
    {      
        unsigned int indexOfFirstUnsharedVertex;
        indexOfFirstUnsharedVertex  = firstTriangle->IndexOfFirstUnsharedVertex(triangles[nextTri]);      
        // add unshared vertex first
        vertex = firstTriangle->GetVertex(indexOfFirstUnsharedVertex);
        vertexList.Append(vertex);      
        // add next vertex
        vertex = firstTriangle->GetVertex((indexOfFirstUnsharedVertex + 1) % 3);
        vertexList.Append(vertex);        
        // add next vertex
        vertex = firstTriangle->GetVertex((indexOfFirstUnsharedVertex + 2) % 3);
        vertexList.Append(vertex);        
    }   

    return nextTri;
}

    
int 
tlTsTriangleToTriStripConverter::AddTriangleToReorderedVertexList(unsigned int indexOfTriangle, 
                                                                                        tlTable<unsigned long int> & vertexList)
{
    tlTsTriangle * currentTriangle = triangles[indexOfTriangle];

    // mark triangle as added to the strip 
    currentTriangle->SetAdded(true);
    
    // index of the last vertex in the list.
    // this should always be >= 2, because we've already added the firts triangle to the strip
    unsigned int lastVertexInd = vertexList.Count() - 1;  
         
    unsigned long int v0 = currentTriangle->GetVertex(0);
    unsigned long int v1 = currentTriangle->GetVertex(1);
    unsigned long int v2 = currentTriangle->GetVertex(2);
    // add vertex to the strip
    if (currentTriangle->ContainsVertices(vertexList[lastVertexInd], vertexList[lastVertexInd - 1]) )
    {
        if ( currentTriangle->GetVertex(0) == vertexList[lastVertexInd] )
        {
            if ( currentTriangle->GetVertex(1) == vertexList[lastVertexInd -1] )
            {
                 vertexList.Append(v0);
                 vertexList.Append(v1);
                 vertexList.Append(v2);
            }
            else if ( currentTriangle->GetVertex(2) == vertexList[lastVertexInd -1] )
            {
                vertexList.Append(v2);
                vertexList.Append(v0);
                vertexList.Append(v1);
            }
        }
        else if ( currentTriangle->GetVertex(1) == vertexList[lastVertexInd] )
        {
            if ( currentTriangle->GetVertex(0) == vertexList[lastVertexInd -1] )
            {
                vertexList.Append(v0);
                vertexList.Append(v1);
                vertexList.Append(v2);
            }
            else if ( currentTriangle->GetVertex(2) == vertexList[lastVertexInd -1] )
            {
                vertexList.Append(v1);
                vertexList.Append(v2);
                vertexList.Append(v0);
            }
        }
        else if ( currentTriangle->GetVertex(2) == vertexList[lastVertexInd] )
        {
            if ( currentTriangle->GetVertex(0) == vertexList[lastVertexInd -1] )
            {
                vertexList.Append(v2);
                vertexList.Append(v0);
                vertexList.Append(v1);
            }
            else if ( currentTriangle->GetVertex(1) == vertexList[lastVertexInd -1] )
            {
                vertexList.Append(v1);
                vertexList.Append(v2);
                vertexList.Append(v0);
            }
        }     
    }
    else 
    {
        vertexList.Append(v0);
        vertexList.Append(v1);
        vertexList.Append(v2);
    }

    return ChooseNextTriangleForReordering(indexOfTriangle, vertexList);     
    
}


void 
tlTsTriangleToTriStripConverter::Print(bool printLong)
{

    if (printLong)   
    {
        int i;  
        printf("\nNUMBER OF VERTICES:%6d\n", verts.Count());   
        for(i = 0; i < verts.Count(); i++)
        {
            printf("Vertex: %4d\n", i);
            verts[i]->Print();
        }

        printf("\nNUMBER OF EDGES:%6d\n", edges.Count());
        for(i = 0; i < edges.Count(); i++)
        {
            printf("\nEdge: %4d\n", i);
            edges[i]->Print();
        }

        printf("\nNUMBER OF TRIANGLES:%6d\n", triangles.Count());
        for(i = 0; i < triangles.Count(); i++)
        {
            printf("\nTrianlge: %4d\n", i);
            triangles[i]->Print();
        }

        printf("\nNUMBER OF TRIANGLE STRIPS:%6d\n", triStrips.Count());
        for(i = 0; i < triStrips.Count(); i++)
        {
            printf("\nTriangle Strip: %4d\n", i);
            printf("\tVertex Count: %d\n", triStrips[i]->Count());
            for (int j = 0; j < triStrips[i]->Count(); j++)
            {
                printf("\n\tVertex %d: %4ld\n", j, (*triStrips[i])[j]);
            }
        }
    }
    else
    {
        printf("\nNUMBER OF VERTICES:%6d\n", verts.Count());   
        printf("\nNUMBER OF EDGES:%6d\n", edges.Count());
        printf("\nNUMBER OF TRIANGLES:%6d\n", triangles.Count());
        printf("\nNUMBER OF TRIANGLE STRIPS:%6d\n", triStrips.Count());  
    }
}

void
tlTsTriangleToTriStripConverter::tlTsTscWeight::CalculateTotalWeight(int maxVertexConnectivity, tlTsTriangleToTriStripConverter & converter )
{

     //optimize for XBox, then
     if( converter.GetOptimizeXBox( ) ){
         if( vertexConnectivity < maxVertexConnectivity )
         {
             connectivity = -1;
         }
         else  // >=
         {
             connectivity = 1;
         }        

         totalWeight = connectivity + swap  + adjacency;

         //this vertex could reach for a cached vertex,
         //we set this weight for miniDist as -1, might 
         //need further tune-up for this weight
         if( miniDist > 0 )
              totalWeight += 2;

     }
     else{

         if( vertexConnectivity < maxVertexConnectivity )
         {
             connectivity = -1;
         }
         else  // >=
         {
             connectivity = 1;
         }

         totalWeight = connectivity + swap + adjacency;
    }
}


////        maximuTestingLevel: specify how much level we are going to test
///         for, if ==1, we only test if the adjacent triangle will use
///         cached index. ==2, test the adjacent and the adjacent of the adjacent's
///         triangle
///         return -1 if can't reach a cached vertex by less than maximuTestingLevel steps
int tlTsTriangleToTriStripConverter::LengthToCachedVertex( unsigned long int idxOfCurTri, unsigned long int idxOfPrevTri, int maximuTestingLevel, tlTable< unsigned long int> & strip )
{
     if( maximuTestingLevel == 0 )
          return -1;

     long int v3 = triangles[idxOfCurTri]->GetVertexNotSharedBy( *( triangles[ idxOfPrevTri ] ) );

     if( v3 != -1 )
     {
        return -1;
     }

     tlTable< unsigned long int > notAddedAdjTris = GetNotAddedTrianglesAdjacentToTriangle( idxOfCurTri );

     int i;
     //delete the prev-tri from the found not-added-adjacent-triangles list
     //if prevTri is inside this list, otherwise, an infinite-loop
     //might be caused when recursive query for the length.
     for( i = 0; i < notAddedAdjTris.Count( ); ++i ){
          if( notAddedAdjTris[ i ] == idxOfPrevTri ){
                notAddedAdjTris.Delete( i, 1 );
                break;
          }
     }

     tlTable< int > length;      //contains all length's  to cached index

     int baseLength = 1;
     //test all adjacent and not added triangle
     for( i = 0; i < notAddedAdjTris.Count( ); ++i ){
          tlTsTriangle * adjTri = triangles[ notAddedAdjTris[ i ] ];

          //get the vertex that is not shared by tri and adjTri;
          long int vert = adjTri->GetVertexNotSharedBy( *( triangles[ idxOfCurTri ] ) );

          if( vert != -1 )
          {
              //if vert is in cache
              if( IsVertexInCacheOfStrip( vert, strip,  maximuTestingLevel ) )
                    length.Append( baseLength );
              else{
                    int len = LengthToCachedVertex( notAddedAdjTris[ i ], idxOfCurTri, maximuTestingLevel - 1, strip );
                
                    //if return len is -1, then this triangle will
                    //never arrive cached vertex through non-added triangle.
                    if( len != -1  ){
                         len += baseLength;
                         length.Append( len );
                    }
              }
          }
     }

     //non adjacent triangle will reach cached vertex through
     if( length.Count( ) == 0 )
          return -1;
     else{
          int dist = 100000;
          for( int i = 0; i < length.Count( ); ++i )
                if( length[ i ] < dist )
                     dist = length[ i ];

          return dist;
     }
}

bool tlTsTriangleToTriStripConverter::IsVertexInCacheOfStrip( unsigned long int idxOfVert,  tlTable< unsigned long int> & strip, unsigned int curLevel )
{
     tlTable< unsigned long int > cachedVertex;
     cachedVertex.ZeroCount( );

     int count = 0;
     int i;
     for( i = strip.Count( ) - 1; i >= 0; --i ){
          int j = 0;
          while( j < cachedVertex.Count( ) && cachedVertex[ j ] != strip[ i ] )
                ++j;

          if( j >= cachedVertex.Count( )  ){
                cachedVertex.Append( strip[ i ] );
                ++count;

                if( count >= (int)vertexCacheLen )
                     break;
          }
     }
     
     int delta = maximuLevel - curLevel;

     for(  i = 0; i < (int)(vertexCacheLen - delta); ++i ){
          int idx = cachedVertex.Count( ) - i - 1;

          if( (idx >= 0) && (cachedVertex[ idx ] == idxOfVert) )
                return true;
     }

     return false;
}

int tlTsTriangleToTriStripConverter::MaximuDuplicatesInStrips( tlTsTriangle &tri  )
{
     int degree = 0;

     //To Do:  tri.verts agains triStrips.
     for( int i = 0; i < triStrips.Count( ); ++i ){
          int count = 0;
          if( IsVertexInCacheOfStrip( tri.GetVertex( 0 ),  *triStrips[ i ], maximuLevel ) )
                ++count;
     
          if( IsVertexInCacheOfStrip( tri.GetVertex( 1 ),  *triStrips[ i ], maximuLevel ) )
                ++count;

          if( IsVertexInCacheOfStrip( tri.GetVertex( 2 ),  *triStrips[ i ], maximuLevel ) )
                ++count;
     
          if( degree < count )
                degree = count;

          if( degree == 3 )
                return degree;
     }

     return degree;
}

//////////////////////////////////////////////////
///     Search for the longest strips always
///
tlTable< tlTable<unsigned long int>  *> 
tlTsTriangleToTriStripConverter::ConvertWithTesting(const tlTable<unsigned long int> & triVertsList,
                                                      unsigned int numVerts,
                                                      int maxNumOfVertsPerStrip,
                                                      int maxNumOfTrisPerStrip)
{

    // delete any previous tristrip
    for( int i = 0; i < triStrips.Count(); i++ )
    {
        delete triStrips[i];
    }
    triStrips.ZeroCount();

    CreateVertexAndTriangleList(triVertsList, numVerts);
    CreateTriangleAdjacencyInformation();

    tlTable<unsigned long int> * strip;

    int firstTriangle;

    firstTriangle = TriangleWihtMinimuNuberOfAdjacentTriagles();

    int numberOfTriangles = 0;
    numberOfSwaps = 0;

     while ( firstTriangle != -1 ){
            strip = new tlTable<unsigned long int>;
            numberOfTriangles = 0;

            FindLongestStripEx( firstTriangle, *strip, maxNumOfVertsPerStrip, maxNumOfTrisPerStrip );

            triStrips.Append(strip);

            firstTriangle = TriangleWihtMinimuNuberOfAdjacentTriagles();
     }

    return triStrips;

}

void tlTsTriangleToTriStripConverter::FindLongestStrip( int firstTriangle, tlTable<unsigned long int> & strip, int maxNumOfVertsPerStrip, int maxNumOfTrisPerStrip )
{

     tlTable<unsigned long int>  tempStrip[ 3 ];
     tlTable<unsigned long int>  tempTriList[ 3 ];

     int i;
     for( i = 0; i < 3; ++i ){
          tempStrip[ i ].ZeroCount( );
          tempTriList[ i ].ZeroCount( );
     }

     //get there strips based on the three edge of firstTriangle
     for(  i = 0; i < 3; ++i ){
          int nextTriangle;
          int numberOfTriangles = 0;
          nextTriangle = AddFirstTriangleToTestingStrip( firstTriangle, tempStrip[ i ], tempTriList[ i ], i  );     

          ++numberOfTriangles;

          // limit number of vertices and triangles per strip
          if ( maxNumOfTrisPerStrip > 0 && maxNumOfVertsPerStrip > 0) { 
    
                 // NOTE: (why subtract 1 from maxNumOfVertsPerStrip)
                 // If the last vertex that needs to be added to the strip requires a swap
                 // we would go over maxNumOfVertsPerStrip thats why we subtract 1 here to make
                 // sure that this does not happen
                 while( nextTriangle != -1 
                          && numberOfTriangles < maxNumOfTrisPerStrip 
                          && tempStrip[ i ].Count() < maxNumOfVertsPerStrip - 1 )
                 {      
                     nextTriangle = AddTriangleToTestingStrip( nextTriangle, tempStrip[ i ], tempTriList[ i ] );
                     numberOfTriangles++;
                 }
          
          }
          else if ( maxNumOfTrisPerStrip > 0 ){
                 while( nextTriangle != -1 
                          && numberOfTriangles < maxNumOfTrisPerStrip)
                 {      
                     nextTriangle = AddTriangleToTestingStrip( nextTriangle, tempStrip[ i ], tempTriList[ i ] );
                     numberOfTriangles++;
                 }
          }
          else if ( maxNumOfVertsPerStrip > 0 ){
 
                 // NOTE: (why subtract 1 from maxNumOfVertsPerStrip)
                 // If the last vertex that needs to be added to the strip requires a swap
                 // we would go over maxNumOfVertsPerStrip thats why we subtract 1 here to make
                 // sure that this does not happen
                 while( nextTriangle != -1 
                          && tempStrip[ i ].Count() < maxNumOfVertsPerStrip - 1 )
                 {      
                     nextTriangle = AddTriangleToTestingStrip( nextTriangle, tempStrip[ i ], tempTriList[ i ] );
                     numberOfTriangles++;
                 }
          }   
          else{  // don't limit numbe of triangles in the strip
          
                 while( nextTriangle != -1 )
                 {      
                     nextTriangle = AddTriangleToTestingStrip( nextTriangle, tempStrip[ i ], tempTriList[ i ] );
                     numberOfTriangles++;
                 }

          }

          RestoreStatusFromTestingTriList( tempTriList[ i ] );
     }

     //find the longest strip from tempTriList;
     int idx = 0;
     int count = 0;
     for( i = 0; i < 3; ++i ){
          if( tempTriList[ i ].Count( ) > count ){
                idx = i;
                count = tempTriList[ i ].Count( );
          }
     }

     //copy longest strip
     strip.ZeroCount( );
     for( i = 0; i < tempStrip[ idx ].Count( ); ++i )
          strip.Append( tempStrip[ idx ][ i ] );

     //now set the status from final strip
     SetStatusForFinalTriList( tempTriList[ idx ] );
}

//      Add first triangle to testing strip, return the next tri
//      firstVertex --  0:  0, 1, 2
//                      1:  1, 2, 0
//                      2:  2, 0, 1
int tlTsTriangleToTriStripConverter::AddFirstTriangleToTestingStrip(unsigned int indexOfFirstTriangle, 
                                                                            tlTable<unsigned long int> &strip, tlTable<unsigned long int> &triList, unsigned int firstVertex )
{
    unsigned long  tri;

    tlTsTriangle * firstTriangle = triangles[indexOfFirstTriangle];

    // add triangle to the strip 
    firstTriangle->SetTesting(true);

    int i;
    // decrement connectivity of each vertex in the triangle 
    for ( i = 0; i < 3; i++){
        verts[firstTriangle->GetVertex(i)]->DecrementConnectivity();
    }
    
    tri = indexOfFirstTriangle;
    triList.Append( tri );

    for( i = 0; i < 3; ++i ){
         unsigned long idx = ( i + firstVertex )%3 ;
         idx = firstTriangle->GetVertex( idx );
         strip.Append(  idx );
    }

    unsigned int v1 = ( 1 + firstVertex )%3;
    unsigned int v2 = ( 2 + firstVertex )%3;

    v1 = firstTriangle->GetVertex( v1 );
    v2 = firstTriangle->GetVertex( v2 );
    
    int nexttri = -1;

    tlTable<unsigned long > adjTris  = firstTriangle->GetAdjacentTriangles( );

    //find the adjacent triangle of firstTriangle which contains v1, v2
    for( i = 0; i < adjTris.Count( ); ++i ){
         tlTsTriangle * tri = triangles[ adjTris[ i ] ];
         if( tri->ContainsVertices( v1, v2 )  && !tri->GetAdded( ) && !tri->GetTesting( ) ){
              nexttri = adjTris[ i ];
              break;
         }
    }

    return nexttri;

}


// Returns index of the next triangle that should be added to the strip.
// -1 is returned if there is no more triangles to add.
int 
tlTsTriangleToTriStripConverter::AddTriangleToTestingStrip(unsigned int indexOfTriangle, 
                                                                     tlTable<unsigned long int>  & strip, tlTable<unsigned long int>  & triList )
{
    unsigned long  tri, vertex;   

    tlTsTriangle * currentTriangle = triangles[indexOfTriangle];

    // mark triangle as added to the strip 
    currentTriangle->SetTesting(true);
    // decrement connectivity of each vertex in the triangle 
    for (unsigned int i = 0; i < 3; i++)
    {
        verts[currentTriangle->GetVertex(i)]->DecrementConnectivity();
    }


    tri = indexOfTriangle;
    triList.Append( tri  );

  // this should always be >= 2, because we've already added the firts triangle to the strip
    unsigned int lastVertexInd = strip.Count() - 1;  
         
    // add vertex to the strip
    if (currentTriangle->ContainsVertices( strip[lastVertexInd], strip[lastVertexInd - 1]))
    {
        vertex = currentTriangle->GetVertexDifferentThen( strip[lastVertexInd], 
                                                                          strip[lastVertexInd - 1]);

        if( IsVertexInCacheOfStrip( vertex, strip, maximuLevel ) )
             ++numberOfReuse;

        strip.Append(vertex);


    }
    else 
    {
        // swap
        unsigned long int lastVertex = strip[lastVertexInd];
        strip.Delete(lastVertexInd, 1);
        strip.Append( strip[lastVertexInd - 2]);
        strip.Append(lastVertex);
        numberOfSwaps++;
        
        // add vertex to the strip
        lastVertexInd = strip.Count() - 1;
        vertex = currentTriangle->GetVertexDifferentThen( strip[lastVertexInd],
                                                                          strip[lastVertexInd - 1]);

        if( IsVertexInCacheOfStrip( vertex, strip, maximuLevel ) )
             ++numberOfReuse;

        strip.Append(vertex);
    }
    return ChooseNextTriangleForTheStrip(indexOfTriangle, &strip);        
}

void tlTsTriangleToTriStripConverter::RestoreStatusFromTestingTriList( tlTable<unsigned long int> &triList )
{

     for( int j = 0; j < triList.Count( ); ++j ){
         tlTsTriangle * currentTriangle = triangles[triList[ j ] ];

         // mark triangle as added to the strip 
         currentTriangle->SetTesting(false);
         // decrement connectivity of each vertex in the triangle 
         for (unsigned int i = 0; i < 3; i++)
         {
             verts[currentTriangle->GetVertex(i)]->IncrementConnectivity();
         }
     }
        
}

void tlTsTriangleToTriStripConverter::SetStatusForFinalTriList( tlTable<unsigned long int> &triList )
{

     for( int j = 0; j < triList.Count( ); ++j ){
         tlTsTriangle * currentTriangle = triangles[triList[ j ]];

         // mark triangle as added to the strip 
         currentTriangle->SetAdded(true);
         // decrement connectivity of each vertex in the triangle 
         for (unsigned int i = 0; i < 3; i++)
         {
             verts[currentTriangle->GetVertex(i)]->DecrementConnectivity();
         }
     }
        
}

/////////////////////////////////////////////////////////////////////////////////
//      starting from firstTriangle, testing tristrips followed by firstTriangle's
////    adjacent triangle to find out the longest strip strp1
///     then find the second longest strip strp2
///     merge strp1 and strp2 
void tlTsTriangleToTriStripConverter::FindLongestStripEx( int firstTriangle, tlTable<unsigned long int> & strip, int maxNumOfVertsPerStrip, int maxNumOfTrisPerStrip )
{

     tlTable<unsigned long int>  tempStrip[ 3 ];
     tlTable<unsigned long int>  tempTriList[ 3 ];

     int i;
     for( i = 0; i < 3; ++i ){
          tempStrip[ i ].ZeroCount( );
          tempTriList[ i ].ZeroCount( );
     }

     //get there strips based on the three edge of firstTriangle
     for(  i = 0; i < 3; ++i ){
          int nextTriangle;
          int numberOfTriangles = 0;
          nextTriangle = AddFirstTriangleToTestingStrip( firstTriangle, tempStrip[ i ], tempTriList[ i ], i  );     

          ++numberOfTriangles;

          // limit number of vertices and triangles per strip
          if ( maxNumOfTrisPerStrip > 0 && maxNumOfVertsPerStrip > 0) { 
    
                 // NOTE: (why subtract 1 from maxNumOfVertsPerStrip)
                 // If the last vertex that needs to be added to the strip requires a swap
                 // we would go over maxNumOfVertsPerStrip thats why we subtract 1 here to make
                 // sure that this does not happen
                 while( nextTriangle != -1 
                          && numberOfTriangles < maxNumOfTrisPerStrip 
                          && tempStrip[ i ].Count() < maxNumOfVertsPerStrip - 1 )
                 {      
                     nextTriangle = AddTriangleToTestingStrip( nextTriangle, tempStrip[ i ], tempTriList[ i ] );
                     numberOfTriangles++;
                 }
          
          }
          else if ( maxNumOfTrisPerStrip > 0 ){
                 while( nextTriangle != -1 
                          && numberOfTriangles < maxNumOfTrisPerStrip)
                 {      
                     nextTriangle = AddTriangleToTestingStrip( nextTriangle, tempStrip[ i ], tempTriList[ i ] );
                     numberOfTriangles++;
                 }
          }
          else if ( maxNumOfVertsPerStrip > 0 ){
 
                 // NOTE: (why subtract 1 from maxNumOfVertsPerStrip)
                 // If the last vertex that needs to be added to the strip requires a swap
                 // we would go over maxNumOfVertsPerStrip thats why we subtract 1 here to make
                 // sure that this does not happen
                 while( nextTriangle != -1 
                          && tempStrip[ i ].Count() < maxNumOfVertsPerStrip - 1 )
                 {      
                     nextTriangle = AddTriangleToTestingStrip( nextTriangle, tempStrip[ i ], tempTriList[ i ] );
                     numberOfTriangles++;
                 }
          }   
          else{  // don't limit numbe of triangles in the strip
          
                 while( nextTriangle != -1 )
                 {      
                     nextTriangle = AddTriangleToTestingStrip( nextTriangle, tempStrip[ i ], tempTriList[ i ] );
                     numberOfTriangles++;
                 }

          }

          RestoreStatusFromTestingTriList( tempTriList[ i ] );
     }

     //find the longest strip from tempTriList;
     int idx = 0;
     int count = 0;
     for( i = 0; i < 3; ++i ){
          if( tempTriList[ i ].Count( ) > count ){
                idx = i;
                count = tempTriList[ i ].Count( );
          }
     }

     //copy longest strip
     strip.ZeroCount( );
     for( i = 0; i < tempStrip[ idx ].Count( ); ++i )
          strip.Append( tempStrip[ idx ][ i ] );

     //now set the status from final strip
     SetStatusForFinalTriList( tempTriList[ idx ] );


     //search for the second longest strip
     for(  i = 0; i < 3; ++i ){
          if( i == idx )
                continue;

          tempStrip[ i ].ZeroCount( );
          tempTriList[ i ].ZeroCount( );
     }

     //get there strips based on the three edge of firstTriangle
     for(  i = 0; i < 3; ++i ){

          if( i == idx )
                continue;

          int nextTriangle;
          int numberOfTriangles = 0;
          nextTriangle = AddFirstTriangleToTestingStrip( firstTriangle, tempStrip[ i ], tempTriList[ i ], i  );     

          ++numberOfTriangles;

          // limit number of vertices and triangles per strip
          if ( maxNumOfTrisPerStrip > 0 && maxNumOfVertsPerStrip > 0) { 
    
                 // NOTE: (why subtract 1 from maxNumOfVertsPerStrip)
                 // If the last vertex that needs to be added to the strip requires a swap
                 // we would go over maxNumOfVertsPerStrip thats why we subtract 1 here to make
                 // sure that this does not happen
                 while( nextTriangle != -1 
                          && numberOfTriangles < maxNumOfTrisPerStrip 
                          && tempStrip[ i ].Count() < maxNumOfVertsPerStrip - 1 )
                 {      
                     nextTriangle = AddTriangleToTestingStrip( nextTriangle, tempStrip[ i ], tempTriList[ i ] );
                     numberOfTriangles++;
                 }
          
          }
          else if ( maxNumOfTrisPerStrip > 0 ){
                 while( nextTriangle != -1 
                          && numberOfTriangles < maxNumOfTrisPerStrip)
                 {      
                     nextTriangle = AddTriangleToTestingStrip( nextTriangle, tempStrip[ i ], tempTriList[ i ] );
                     numberOfTriangles++;
                 }
          }
          else if ( maxNumOfVertsPerStrip > 0 ){
 
                 // NOTE: (why subtract 1 from maxNumOfVertsPerStrip)
                 // If the last vertex that needs to be added to the strip requires a swap
                 // we would go over maxNumOfVertsPerStrip thats why we subtract 1 here to make
                 // sure that this does not happen
                 while( nextTriangle != -1 
                          && tempStrip[ i ].Count() < maxNumOfVertsPerStrip - 1 )
                 {      
                     nextTriangle = AddTriangleToTestingStrip( nextTriangle, tempStrip[ i ], tempTriList[ i ] );
                     numberOfTriangles++;
                 }
          }   
          else{  // don't limit numbe of triangles in the strip
          
                 while( nextTriangle != -1 )
                 {      
                     nextTriangle = AddTriangleToTestingStrip( nextTriangle, tempStrip[ i ], tempTriList[ i ] );
                     numberOfTriangles++;
                 }

          }

          RestoreStatusFromTestingTriList( tempTriList[ i ] );
     }

          //find the longest strip from tempTriList;
     int idxSecondStrip = 0;
     count = 0;
     for( i = 0; i < 3; ++i ){
          if( i == idx )
                continue;

          if( tempTriList[ i ].Count( ) > count ){
                idxSecondStrip = i;
                count = tempTriList[ i ].Count( );
          }
     }

     //the second longest strip has one triangle, we don't
     //merge it to strip
     if( count <= 1 )
          return;


     tlTable<unsigned long int>  secondStrip;
     tlTable<unsigned long int>  secondTriList;
     secondStrip.ZeroCount( );
     secondTriList.ZeroCount( );

     for( i = tempTriList[ idxSecondStrip ].Count( ) - 1; i >= 0; --i ){
          unsigned long tri = tempTriList[ idxSecondStrip ][ i ];
          secondTriList.Append( tri );
     }


     //merge tempTriList[ idx ] to secondTriList
     for( i = 1; i < tempTriList[ idx ].Count( ); ++i )
          secondTriList.Append( tempTriList[ idx ][ i ] );

     //build strip from the triangle list
     BuildStripFromTriList( secondStrip, secondTriList );

     //now secondstrip hold the merged strip
//    MergeTwoAdjacentStrips( strip, secondStrip );

     tempTriList[idxSecondStrip].Delete( 0, 1 );

     //now set the status from second trilist
     SetStatusForFinalTriList( tempTriList[idxSecondStrip] );

     strip.ZeroCount( );

     for( i = 0; i < secondStrip.Count( ); ++i )
          strip.Append( secondStrip[ i ] );

}


void tlTsTriangleToTriStripConverter::BuildStripFromTriList( tlTable<unsigned long int> & strip, tlTable<unsigned long int> & triList )
{

     tlTsTriangle *firstTri = triangles[ triList[ 0 ] ];
     tlTsTriangle *secondTri = triangles[ triList[ 1 ] ];

     int firstVert = firstTri->IndexOfFirstUnsharedVertex( secondTri );

     int i;
     for( i = 0; i < 3; ++i ){
          unsigned long vertex = firstTri->GetVertex( (firstVert + i )%3 );
          strip.Append( vertex );
     }

     tlTsTriangle * currentTriangle;
     for( i = 1; i < triList.Count( ); ++i ){
          currentTriangle = triangles[ triList[ i ] ];

         // index of the last vertex in the strip.
         // this should always be >= 2, because we've already added the firts triangle to the strip
         unsigned int lastVertexInd = strip.Count() - 1;  
         
         // add vertex to the strip
         if (currentTriangle->ContainsVertices( strip[lastVertexInd], strip[lastVertexInd - 1]))
         {
             unsigned long vertex = currentTriangle->GetVertexDifferentThen( strip[lastVertexInd], 
                                                                                strip[lastVertexInd - 1]);

             if( IsVertexInCacheOfStrip( vertex, strip, maximuLevel ) )
                  ++numberOfReuse;

             strip.Append(vertex);


         }
         else 
         {
             // swap
             unsigned long int lastVertex = strip[lastVertexInd];
             strip.Delete(lastVertexInd, 1);
             strip.Append( strip[lastVertexInd - 2]);
             strip.Append(lastVertex);
             numberOfSwaps++;
        
             // add vertex to the strip
             lastVertexInd = strip.Count() - 1;
             unsigned long vertex = currentTriangle->GetVertexDifferentThen( strip[lastVertexInd],
                                                                                strip[lastVertexInd - 1]);

             if( IsVertexInCacheOfStrip( vertex, strip, maximuLevel ) )
                  ++numberOfReuse;

             strip.Append(vertex);
         }

     }
}


////////////////////////////////////////////////////////////////////
///     Merge two strips to one. 
///     the stripDest's last triangle is the same as the 
///     first triangle of stripSrc
void tlTsTriangleToTriStripConverter::MergeTwoAdjacentStrips( tlTable<unsigned long int> &stripSrc, tlTable<unsigned long int> &stripDest )
{
    //need no swap here for merging
     int count = stripDest.Count( );
     
     if( ( (stripDest[ count - 1 ] != stripSrc[ 1 ] ) && (stripDest[ count - 1 ] != stripSrc[ 2 ] ) ) ||
          ( (stripDest[ count - 2 ] != stripSrc[ 1 ] ) && (stripDest[ count - 2 ] != stripSrc[ 2 ] ) ) ){

          //swap the last triangle of stripDest
          unsigned int lastVertexInd = stripDest.Count() - 1; 
          unsigned long int lastVertex = stripDest[lastVertexInd];
          stripDest.Delete(lastVertexInd, 1);
          stripDest.Append( stripDest[lastVertexInd - 2]);
          stripDest.Append(lastVertex);
     }

     int i;
     for( i = 3; i < stripSrc.Count( ); ++i )
          stripDest.Append( stripSrc[ i ] );       

}

