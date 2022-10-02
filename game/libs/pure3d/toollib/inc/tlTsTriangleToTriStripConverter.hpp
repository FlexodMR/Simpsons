/*===========================================================================
    File:: tlTsTriangleToTriStripConverter.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.



    Algoritham used to generate triangle strips is based on:
    
      FAST AND SIMPLE TRIANGLE STRIP GENERATION  by David Kornmann
    
    This paper can be found at:
    http://www.dlc.fi/~dkpa/strip/strip.html

===========================================================================*/

#ifndef _TLTSTRIANGLETOTRISTRIPCONVERTER_HPP
#define _TLTSTRIANGLETOTRISTRIPCONVERTER_HPP

#include "tlTable.hpp"

class tlTsTriangle;
class tlTsVertexConnectivity;
class tlTsEdge;

class tlTsTriangleToTriStripConverter
{
public:
    tlTsTriangleToTriStripConverter();  
    virtual ~tlTsTriangleToTriStripConverter();
    
    tlTable< tlTable<unsigned long int> *> Convert(const tlTable<unsigned long int> & triVertsList, 
                                                            unsigned int numVerts, 
                                                            int maxNumOfVertsPerStrip,
                                                            int maxNumOfTrisPerStrip);

    tlTable< tlTable<unsigned long int>  *> ConvertWithTesting(const tlTable<unsigned long int> & triVertsList,
                                                      unsigned int numVerts,
                                                      int maxNumOfVertsPerStrip,
                                                      int maxNumOfTrisPerStrip);

    tlTable<unsigned long int> ReorderTriangles(const tlTable<unsigned long int> & triVertsList, 
                                            unsigned int numVerts);
    
    inline unsigned long int GetNumberOfSwaps() { return numberOfSwaps; }
    void Print(bool printLong = false);
    void SetOptimizeXBox( bool flag ){ bOptimizeXBox = flag; };
    bool GetOptimizeXBox( ){ return bOptimizeXBox; };
    void SetVertexCacheLen( unsigned int len ){ vertexCacheLen = len; };
    void SetMaximuTestingLevel( unsigned int level ){ maximuLevel = level; };
    unsigned long int GetNumberOfReuse( ){ return numberOfReuse; };

private:
    // shared functions
    void CreateVertexAndTriangleList(const tlTable<unsigned long int> & triVertsList, int numVerts);
    void CreateTriangleAdjacencyInformation();
    void CreateTriangleEdge(unsigned int v0, unsigned int v1, unsigned int triInd);   
    int TriangleWihtMinimuNuberOfAdjacentTriagles();
    tlTable<unsigned long int> GetNotAddedTrianglesAdjacentToTriangle(unsigned int triangleIndex);
    // triangles to triangle strip conversion function
    int ChooseSecondTriangleForTheStrip(unsigned int indexOfFirstTriangle); 
    int ChooseNextTriangleForTheStrip(unsigned int indexOfCurTriangle, tlTable<unsigned long int> * strip);   
    int AddFirstTriangleToStrip(unsigned int indexOfFirstTriangle, tlTable<unsigned long int> * strip);
    int AddTriangleToStrip(unsigned int indexOfTriangle, tlTable<unsigned long int> * strip);
    // triangle reordering functions 
    // Some video cards have vetex buffer of length 2 or more.
    // To take addvantage of this we try to order triangles in such way
    // that as many triangles as possible are followed by their adjacent triangles.
    // (We try to order triangles as if they were in the triangle strip, but we don't
    //  write them out as triangles strips, but as a list of triangles)
    int ChooseSecondTriangleForReordering(unsigned int indexOfFirstTriangle); 
    int ChooseNextTriangleForReordering(unsigned int indexOfCurTriangle, 
                                                    tlTable<unsigned long int> & vertexList);   
    int AddFirstTriangleToReorderedVertexList(unsigned int indexOfFirstTriangle, 
                                                            tlTable<unsigned long int> & vertexList);
    int AddTriangleToReorderedVertexList(unsigned int indexOfTriangle, 
                                                     tlTable<unsigned long int> & vertexList);
    void StitchStripFromSrcToDest( tlTable<unsigned long int> &stripSrc, tlTable<unsigned long int> &stripDest );

    int LengthToCachedVertex( unsigned long int idxOfCurTri, unsigned long int idxOfPrevTri, int maximuTestingLevel, tlTable< unsigned long int> & strip );
    bool IsVertexInCacheOfStrip( unsigned long int idxOfVert,  tlTable< unsigned long int> & strip, unsigned int curLevel );
    int TriangleWithMaximuVertexInStrips( );
    int MaximuDuplicatesInStrips( tlTsTriangle &tri  );

    int AddFirstTriangleToTestingStrip(unsigned int indexOfFirstTriangle, 
         tlTable<unsigned long int> &strip, tlTable<unsigned long int> &triList, unsigned int firstVertex );

    int AddTriangleToTestingStrip(unsigned int indexOfTriangle, 
                                                                     tlTable<unsigned long int>  & strip, tlTable<unsigned long int>  & triList );

    void FindLongestStrip( int firstTriangle, tlTable<unsigned long int> & strip, int maxNumOfVertsPerStrip, int maxNumOfTrisPerStrip );
    void RestoreStatusFromTestingTriList( tlTable<unsigned long int> &triList );
    void SetStatusForFinalTriList( tlTable<unsigned long int> &triList );

    void MergeTwoAdjacentStrips( tlTable<unsigned long int> &stripSrc, tlTable<unsigned long int> &stripDest );
    void BuildStripFromTriList( tlTable<unsigned long int> & strip, tlTable<unsigned long int> & triList );
    void FindLongestStripEx( int firstTriangle, tlTable<unsigned long int> & strip, int maxNumOfVertsPerStrip, int maxNumOfTrisPerStrip );
private:
    // this structure is use to calculate the weight of a triangle.
    // We use triangl weight to decide which is the next triangle that should be added to the strip
    // in case when triangle added last to the strip has more then one adjacent triangle
    struct tlTsTscWeight
    {
        int vertexConnectivity; // numbe of triangles containing same vertex as this triangle's
                                        // vertex which is already in the strip
        int connectivity; // depends on the vertexConnectivity of this and other triangles (-1 or 1
        int swap;         // 1 if swap is needed; -1 if swap is not needed
        int adjacency;    // [0 - numOfNotAddedAdjacentTris]  
        bool canBeAdded;  // can we add this triangle to the strip or not
        int miniDist;       //the shortest dist from this vertex to cached vertexts

        int totalWeight;  // sum of all weights;

        void CalculateTotalWeight(int maxVertexConnectivity, tlTsTriangleToTriStripConverter &converter );
    };

    struct tlTsReorderingWeight
    {
        bool containsLastTwoVerts;
        int adjacency;
    };

    tlTable<tlTsVertexConnectivity *> verts;
    unsigned int lastEdgeAdded;
    tlTable<tlTsEdge *> edges;
    tlTable<tlTsTriangle *> triangles;   
    tlTable< tlTable<unsigned long int> *> triStrips;
    tlTable<unsigned long int> newTriVertsList;
    unsigned long int numberOfSwaps;
    unsigned long  numberOfReuse;
    bool  bOptimizeXBox;
    unsigned int vertexCacheLen;
    unsigned int maximuLevel;             //maximu level for searching for distance to cached vertex

};

#endif

