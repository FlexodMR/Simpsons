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

struct tlBoneWeightingData
{
    UWORD FirstVertex;

    UWORD JointIndex;

    float Weight;

}

chunk tlSkinChunk :
    subchunk( tlPrimGroupChunk ),
    subchunk( tlBBoxChunk ),
    subchunk( tlBSphereChunk ),
    subchunk( tlExpressionOffsetsChunk ),
    chunk_id( Pure3D::Mesh::SKIN )  
{
    string  Name;
    ULONG  Version;
    string  SkeletonName;
    ULONG  NumPrimGroups;
}

