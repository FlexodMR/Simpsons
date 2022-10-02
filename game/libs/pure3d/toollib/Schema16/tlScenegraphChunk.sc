#includehpp( tlMatrix.hpp )

chunk tlScenegraphChunk :
    subchunk( tlScenegraphRootChunk ),
    chunk_id( Pure3D::SceneGraph::SCENEGRAPH )  
{
    string  Name;
    ULONG  Version;
}

chunk tlScenegraphRootChunk :
    subchunk( tlScenegraphBranchChunk ),
    subchunk( tlScenegraphTransformChunk ),
    subchunk( tlScenegraphDrawableChunk ),
    subchunk( tlScenegraphAttachmentChunk ),
    subchunk( tlScenegraphCameraChunk ),
    subchunk( tlScenegraphLightGroupChunk ),
    subchunk( tlScenegraphVisibilityChunk ),
    chunk_id( Pure3D::SceneGraph::ROOT )  
{
}

chunk tlScenegraphBranchChunk :
    subchunk( tlScenegraphBranchChunk ),
    subchunk( tlScenegraphTransformChunk ),
    subchunk( tlScenegraphDrawableChunk ),
    subchunk( tlScenegraphAttachmentChunk ),
    subchunk( tlScenegraphCameraChunk ),
    subchunk( tlScenegraphLightGroupChunk ),
    subchunk( tlScenegraphVisibilityChunk ),
    chunk_id( Pure3D::SceneGraph::BRANCH )  
{
    string  Name;
    ULONG  NChildren;
}

chunk tlScenegraphTransformChunk :
    subchunk( tlScenegraphTransformChunk ),
    subchunk( tlScenegraphDrawableChunk ),
    subchunk( tlScenegraphAttachmentChunk ),
    subchunk( tlScenegraphCameraChunk ),
    subchunk( tlScenegraphLightGroupChunk ),
    subchunk( tlScenegraphVisibilityChunk ),
    chunk_id( Pure3D::SceneGraph::TRANSFORM )  
{
    string  Name;
    ULONG  NChildren;
    tlMatrix  Transform;
}

chunk tlScenegraphVisibilityChunk :
    subchunk( tlScenegraphBranchChunk ),
    subchunk( tlScenegraphTransformChunk ),
    subchunk( tlScenegraphDrawableChunk ),
    subchunk( tlScenegraphAttachmentChunk ),
    subchunk( tlScenegraphCameraChunk ),
    subchunk( tlScenegraphLightGroupChunk ),
    subchunk( tlScenegraphVisibilityChunk ),
    chunk_id( Pure3D::SceneGraph::VISIBILITY )  
{
    string  Name;
    ULONG  NChildren;
    ULONG  IsVisible;
}

chunk tlScenegraphAttachmentChunk :
    subchunk( tlScenegraphAttachmentPointChunk ),
    chunk_id( Pure3D::SceneGraph::ATTACHMENT )  
{
    string  Name;
    string  DrawablePoseName;
    ULONG  NPoints;
}

chunk tlScenegraphAttachmentPointChunk :
    subchunk( tlScenegraphBranchChunk ),
    subchunk( tlScenegraphTransformChunk ),
    subchunk( tlScenegraphDrawableChunk ),
    subchunk( tlScenegraphAttachmentChunk ),
    subchunk( tlScenegraphCameraChunk ),
    subchunk( tlScenegraphLightGroupChunk ),
    subchunk( tlScenegraphVisibilityChunk ),
    chunk_id( Pure3D::SceneGraph::ATTACHMENTPOINT )  
{
    ULONG  Joint;
}

chunk tlScenegraphDrawableChunk :
    subchunk( tlScenegraphSortOrderChunk ),
    chunk_id( Pure3D::SceneGraph::DRAWABLE )  
{
    string  Name;
    string  DrawableName;
    ULONG  IsTranslucent;
}

chunk tlScenegraphCameraChunk :
    chunk_id( Pure3D::SceneGraph::CAMERA )  
{
    string  Name;
    string  CameraName;
}

chunk tlScenegraphLightGroupChunk :
    chunk_id( Pure3D::SceneGraph::LIGHTGROUP )  
{
    string  Name;
    string  LightGroupName;
}

chunk tlScenegraphSortOrderChunk :
    chunk_id( Pure3D::SceneGraph::SORTORDER )  
{
    float  SortOrder;
}

