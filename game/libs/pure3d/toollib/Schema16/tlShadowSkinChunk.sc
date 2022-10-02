#includeschema( tlPrimGroupChunk.sc )
#includeschema( tlBBoxChunk.sc )
#includeschema( tlBSphereChunk.sc )

#includehpp( tlPrimGroupChunk.hpp )
#includehpp( tlBBoxChunk.hpp )
#includehpp( tlBSphereChunk.hpp )
#includehpp( tlPoint.hpp )
#includehpp( tlPoint.hpp )
#includehpp( tlColour.hpp )
#includehpp( tlUV.hpp )
#includehpp( tlBox.hpp )
#includehpp( tlSphere.hpp )

#declaretype( tlPoint )
#declaretype( tlColour )
#declaretype( tlUV )
#declaretype( tlBox )
#declaretype( tlSphere )
#declaretype( tlPoint )

struct tlTopologyStruct
{
    UWORD v0;

    UWORD v1;

    UWORD v2;

    UWORD n0;

    UWORD n1;

    UWORD n2;

}

chunk tlShadowSkinChunk :
    subchunk( tlPositionListChunk ),
    subchunk( tlWeightListChunk ),
    subchunk( tlMatrixListChunk ),
    subchunk( tlTopologyChunk ),
    subchunk( tlBBoxChunk ),
    subchunk( tlBSphereChunk ),
    chunk_id( Pure3D::Mesh::SHADOWSKIN )  
{
    string  Name;
    ULONG  Version;
    string  SkeletonName;
    ULONG  NumVertices;
    ULONG  NumTriangles;
}

chunk tlTopologyChunk :
    chunk_id( Pure3D::Mesh::TOPOLOGY )  
{
    ULONG  NumTopology;
    array( tlTopologyStruct, NumTopology )  Topology;
}

chunk tlShadowMeshChunk :
    subchunk( tlPositionListChunk ),
    subchunk( tlTopologyChunk ),
    subchunk( tlBBoxChunk ),
    subchunk( tlBSphereChunk ),
    chunk_id( Pure3D::Mesh::SHADOWMESH )  
{
    string  Name;
    ULONG  Version;
    ULONG  NumVertices;
    ULONG  NumTriangles;
}

