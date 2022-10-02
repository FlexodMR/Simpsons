chunk tlPhysicsObjectChunk :
    subchunk( tlPhysicsVectorChunk ),
    subchunk( tlPhysicsInertiaMatrixChunk ),
    subchunk( tlPhysicsJointChunk ),
    chunk_id( Simulation::Physics::OBJECT )  
{
    string  Name;
    ULONG  Version;
    string  StringData;
    ULONG  NumJoints;
    float  Volume;
    float  RestingSensitivity;
}

chunk tlPhysicsJointChunk :
    subchunk( tlPhysicsVectorChunk ),
    subchunk( tlPhysicsInertiaMatrixChunk ),
    chunk_id( Simulation::Physics::JOINT )  
{
    ULONG  Index;
    float  Volume;
    float  Stiffness;
    float  MaxAngle;
    float  MinAngle;
    ULONG  DOF;
}

chunk tlPhysicsVectorChunk :
    chunk_id( Simulation::Physics::VECTOR )  
{
    float  X;
    float  Y;
    float  Z;
}

chunk tlPhysicsInertiaMatrixChunk :
    chunk_id( Simulation::Physics::IMAT )  
{
    float  XX;
    float  XY;
    float  XZ;
    float  YY;
    float  YZ;
    float  ZZ;
}

