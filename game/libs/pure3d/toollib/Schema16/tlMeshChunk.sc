#includeschema( tlPrimGroupChunk.sc )
#includeschema( tlBBoxChunk.sc )
#includeschema( tlBSphereChunk.sc )

#includehpp( tlPrimGroupChunk.hpp )
#includehpp( tlBBoxChunk.hpp )
#includehpp( tlBSphereChunk.hpp )
#includehpp( tlPoint.hpp )
#includehpp( tlColour.hpp )
#includehpp( tlUV.hpp )
#includehpp( tlBox.hpp )
#includehpp( tlSphere.hpp )
#includehpp( tlPoint.hpp )

#declaretype( tlPoint )
#declaretype( tlColour )
#declaretype( tlUV )
#declaretype( tlBox )
#declaretype( tlSphere )
#declaretype( tlPoint )

chunk tlMeshChunk :
    subchunk( tlPrimGroupChunk ),
    subchunk( tlBBoxChunk ),
    subchunk( tlBSphereChunk ),
    subchunk( tlRenderStatusChunk ),
    subchunk( tlExpressionOffsetsChunk ),
    chunk_id( Pure3D::Mesh::MESH )  
{
    string  Name;
    ULONG  Version;
    ULONG  NumPrimGroups;
}

chunk tlRenderStatusChunk :
    chunk_id( Pure3D::Mesh::RENDERSTATUS )  
{
    ULONG  CastShadow;
}

