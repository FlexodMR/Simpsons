chunk tlStatePropChunk :
    subchunk( tlStatePropStateDataChunk ),
    chunk_id( StateProp::STATEPROP )  
{
    ULONG  Version;
    string  Name;
    string  ObjectFactoryName;
    ULONG  NumStates;
}

chunk tlStatePropStateDataChunk :
    subchunk( tlStatePropVisibilitiesDataChunk ),
    subchunk( tlStatePropFrameControllerDataChunk ),
    subchunk( tlStatePropEventDataChunk ),
    subchunk( tlStatePropCallbackDataChunk ),
    chunk_id( StateProp::STATEPROPSTATEDATA )  
{
    string  Name;
    ULONG  AutoTransition;
    ULONG  OutState;
    ULONG  NumDrawables;
    ULONG  NumFrameControllers;
    ULONG  NumEvents;
    ULONG  NumCallbacks;
    float  OutFrame;
}

chunk tlStatePropVisibilitiesDataChunk :
    chunk_id( StateProp::STATEPROPVISIBILITYDATA )  
{
    string  Name;
    ULONG  Visible;
}

chunk tlStatePropFrameControllerDataChunk :
    chunk_id( StateProp::STATEPROPFRAMECONTROLLERDATA )  
{
    string  Name;
    ULONG   Cyclic;
    ULONG   NumberOfCycles;
    ULONG   HoldFrame;
    float   MinFrame;
    float   MaxFrame;
    float   RelativeSpeed;
}

chunk tlStatePropEventDataChunk :
    chunk_id( StateProp::STATEPROPEVENTDATA )  
{
    string  Name;
    ULONG  State;
    ULONG  EventEnum;
}

chunk tlStatePropCallbackDataChunk :
    chunk_id( StateProp::STATEPROPCALLBACKDATA )  
{
    string  Name;
    ULONG  EventEnum;
    float  OnFrame;
}
