chunk tlSmartPropChunk :
    subchunk( tlSmartPropStateDataChunk ),
    chunk_id( SmartProp::SMARTPROP )  
{
    ULONG  Version;
    string  Name;
    string  ObjectFactoryName;
    string  Material;
    ULONG  MaterialEnum;
    ULONG  NumBreakables;
    ULONG  RenderingCost;
    ULONG  SimulationCost;
    ULONG  NumStates;
}

chunk tlSmartPropStateDataChunk :
    subchunk( tlSmartPropVisibilitiesDataChunk ),
    subchunk( tlSmartPropFrameControllerDataChunk ),
    subchunk( tlSmartPropEventDataChunk ),
    subchunk( tlSmartPropCallbackDataChunk ),
    subchunk( tlSmartPropAppliedForceDataChunk ),
    subchunk( tlSmartPropBreakableDataChunk ),
    subchunk( tlSmartPropExtraAttributeDataChunk ),
    chunk_id( SmartProp::SMARTPROPSTATEDATA )  
{
    string  Name;
    ULONG  AutoTransition;
    float  OutFrame;
    ULONG  OutState;
    ULONG  CanSimulate;
    ULONG  NumDrawables;
    ULONG  NumFrameControllers;
    ULONG  NumEvents;
    ULONG  NumCallbacks;
    ULONG  NumAppliedForces;
    ULONG  NumExtraAttributes;
}

chunk tlSmartPropVisibilitiesDataChunk :
    chunk_id( SmartProp::SMARTPROPVISIBILITYDATA )  
{
    string  Name;
    ULONG  Visible;
}

chunk tlSmartPropFrameControllerDataChunk :
    chunk_id( SmartProp::SMARTPROPFRAMECONTROLLERDATA )  
{
    string  Name;
    ULONG  Cyclic;
    float  MinFrame;
    float  MaxFrame;
    float  RelativeSpeed;
}

chunk tlSmartPropEventDataChunk :
    chunk_id( SmartProp::SMARTPROPEVENTDATA )  
{
    string  Name;
    ULONG  State;
    ULONG  EventEnum;
}

chunk tlSmartPropCallbackDataChunk :
    chunk_id( SmartProp::SMARTPROPCALLBACKDATA )  
{
    string  Name;
    float  OnFrame;
    ULONG  EventEnum;
}

chunk tlSmartPropAppliedForceDataChunk :
    chunk_id( SmartProp::SMARTPROPAPPLIEDFORCE )  
{
    float  OnFrame;
    float  forceX;
    float  forceY;
    float  forceZ;
    float  posX;
    float  posY;
    float  posZ;
}

chunk tlSmartPropBreakableDataChunk :
    chunk_id( SmartProp::SMARTPROPBREAKABLE )  
{
    ULONG  IsBreakable;
    ULONG  Joint;
    float  OnFrame;
    float  forceX;
    float  forceY;
    float  forceZ;
    float  posX;
    float  posY;
    float  posZ;
    string  Material;
    ULONG  MaterialEnum;
}

chunk tlSmartPropExtraAttributeDataChunk :
    chunk_id( SmartProp::SMARTPROPEXTRAATTRIBUTE )  
{
    string  ExtraAttribute;
}

