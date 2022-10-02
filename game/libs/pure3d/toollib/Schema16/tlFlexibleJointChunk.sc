struct FlexibleJointConnectionData
{
    ULONG Index1;

    ULONG Index2;

    float Length;

    UWORD OnBranch;

}

struct FlexibleJointHingeData
{
    ULONG Index1;

    ULONG Index2;

    ULONG Index3;

}

chunk tlFlexibleJointChunk :
    subchunk( tlFlexibleJointParametersChunk ),
    subchunk( tlFlexibleLambdaJointParamChunk ),
    subchunk( tlFlexibleJointDefinitionChunk ),
    chunk_id( Simulation::Flexible::JOINT )  
{
    string  Name;
    ULONG  Version;
}

chunk tlFlexibleLambdaJointParamChunk :
    chunk_id( Simulation::Flexible::JOINT_LAMBDA )  
{
    string  Name;
    float  LambdaF;
    float  LambdaD;
    float  KappaF;
    float  KappaD;
    float  Wind1DKf;
}

chunk tlFlexibleJointParametersChunk :
    chunk_id( Simulation::Flexible::JOINT_PARAMETERS )  
{
    string  Name;
    float  Stretch1Dkf;
    float  Stretch1Dkd;
    float  Bend1Dkf;
    float  Bend1Dkd;
    float  Wind1DKf;
}

chunk tlFlexibleJointDefinitionChunk :
    chunk_id( Simulation::Flexible::JOINT_DEFINITION )  
{
    string  Name;
    string  ParametersName;
    string  RestingPosParametersName;
    string  ConnectionParametersName;
    UWORD  Gravity;
    UWORD  SimMethod;
    UWORD  UseRestingPos;
    UWORD  RestMethod;
    UWORD  UpdateMethod;
    UWORD  UseVirtualJoint;
    UWORD  Solver;
    float  ExternalDensityFactor;
    ULONG  NumJointIndex;
    array( ULONG, NumJointIndex )  FlexibleJointIndex;
    ULONG  NumFixJointIndex;
    array( ULONG, NumFixJointIndex )  FlexibleFixJointIndex;
    ULONG  NumEndOfBranchIndex;
    array( ULONG, NumEndOfBranchIndex )  EndOfBranchIndex;
    ULONG  NumConnection;
    array( FlexibleJointConnectionData, NumConnection )  FlexibleJointConnection;
    ULONG  NumHinge;
    array( FlexibleJointHingeData, NumHinge )  FlexibleJointHinge;
}

