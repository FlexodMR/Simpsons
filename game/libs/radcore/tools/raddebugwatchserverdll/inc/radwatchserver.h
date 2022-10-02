//=============================================================================
//
// File:        radwatchserver.h
//
// Subsystem:   Foundation Technologies - watch server interface
//
// Description: This file contain interface needed for exporting watcher server
//              C interface to other Windows based C++ compiler
//
// Revisions:   April 09, 2002      James Tan
//
//=============================================================================

#ifndef RADWATCHSERVER
#define RADWATCHSERVER

//=============================================================================
// Build Configuration Check
//=============================================================================

//
// Do not include any build configuration check, this is not cross platform
// interface.
//
// #if !defined(RAD_GAMECUBE) && !defined(RAD_PS2) && !defined(RAD_XBOX) && !defined(RAD_WIN32)
//    #error 'FTech requires definition of RAD_GAMECUBE, RAD_PS2, RAD_XBOX, or RAD_WIN32'
// #endif

//=============================================================================
// Include Files
//=============================================================================

//
// Do not include any system header file or compiler specific header files.
// Since different compiler will not have those header file distributed with
// them.
//

//
// All interfaces are exported via C functions. This allow us to export
// functionality to other Windows based C++ compiler such as C++ builder.
//

//=============================================================================
// Data Defintions
//=============================================================================
extern "C"
{

    // Represents the various data types in watch.
    //
    enum radWatchServerWPType
    {
        radWatchServerWPDUnsignedInt,
        radWatchServerWPDInt,
        radWatchServerWPDUnsignedShort,
        radWatchServerWPDShort,
        radWatchServerWPDUnsignedChar,
        radWatchServerWPDChar,
        radWatchServerWPDBoolean,
        radWatchServerWPDFloat,
        radWatchServerWPDEnum,
        radWatchServerWPDString,
        radWatchServerWPDVector,
        radWatchServerWPDFunction,
        radWatchServerWPDDummy = 0xffffffff,            // Dummy is there to force some compiler treat
                                                        // radWatchServerWPType as int size datatype.
    };

    //
    // Watch point creation data.
    //
    struct radWatchServerWPAttribute
    {
        radWatchServerWPType m_DataType;        // data type of the watch point creation.
        union                                   // actual data in union form.
        {
            struct
            {
                unsigned int    m_Max;
                unsigned int    m_Min;
            } m_UIntAttr;
            struct
            {
                int             m_Max;
                int             m_Min;
            } m_IntAttr;
            struct
            {
                unsigned short  m_Max;
                unsigned short  m_Min;
            } m_UShortAttr;
            struct
            {
                short           m_Max;
                short           m_Min;
            } m_ShortAttr;
            struct 
            {
                unsigned char   m_Max;
                unsigned char   m_Min;
            } m_UCharAttr;
            struct 
            {
                char            m_Max;
                char            m_Min;
            } m_CharAttr;
            struct 
            {
                float           m_Max;
                float           m_Min;
            } m_FloatAttr;
            struct 
            {   
                unsigned int    m_Length;
            } m_StringAttr;
            struct 
            {
                float           m_Max;
                float           m_Min;
            } m_VectorAttr;
            struct
            {
                char **         m_ppEnumNameList;
                int *           m_pEnumValueList;
                unsigned int    m_EnumCount;
            } m_EnumAttr;
        } m_DataAttrib;
    };

    //
    // Value of the watch point
    //
    struct radWatchServerWPValue
    {
        radWatchServerWPType m_DataType;        // data type of the watch point
        union                                   // actual data in union form.
        {
            unsigned int    m_UIntValue;
            int             m_IntValue;
            unsigned short  m_UShortValue;
            short           m_ShortValue;
            unsigned char   m_UCharValue;
            char            m_CharValue;
            float           m_FloatValue;
            char *          m_StringValue;
            struct
            {
                float       m_x;
                float       m_y;
                float       m_z;
            } m_VectorValue;

            bool            m_BooleanValue;
            int             m_EnumValue;
        } m_DataValue;
    };

    //
    // Connection status call back function.
    //
    // Parameter
    //      connected - true if connected, false if disconnected
    //
    typedef void (radWatchServerConnectionStatusCallBack)
                (
                    bool connected,                 // true if connected
                    void * pUserData                // user data
                );

    //
    // Watch point creation/deletion call back, only pass to user the name
    // of the watch point. User should copy the string locally, because the
    // watch point may get deleted. Then query for it's attributes using
    // radWatchServerSelectWPAttribute( )
    //
    typedef void (radWatchServerOnWPChangeCallBack)
                (
                    const char *    pWPName,        // name of the watch point
                    bool            isCreate,       // true if creating a WP, false deleting
                    void *          pUserData       // user data
                );

    //
    // Watch point value change callback, only pass to user the name of the
    // watch point. User should copy the string locally, because the watch
    // point may get deleted. Then query for it's value using
    // radWatchServerSelectWPValue( )
    //
    typedef void (radWatchServerOnRecieveWPValueCallBack)
                (
                    const char *    pWPName,        // name of the watch point
                    void *          pUserData       // user data
                );

    //========================================================================
    // C Interface definitions
    //========================================================================

    //
    // Return the last error message.
    //
    const char * __stdcall radWatchServerGetLastErrorMessage( void );

    //
    // Initialize watch server on the host PC, can only be initialized once.
    // Initalization will also create connection between host PC and client
    // console system.
    //
    // Parameters
    //
    //      pTargetName - the name of the target to connect to, if NULL,
    //                  default target will be used.
    //      updateTimeInMilliSec - amount of time between each polling
    //      pStatusCallBack - Status callback for the communication channel.
    //                  If user choose not to recieve any callback, set it to
    //                  NULL.
    //      radWatchServerOnWPChangeCallBack - callback when new watch point
    //                  is created or old watch point is deleted. If user
    //                  choose not to recieve any callback, set it to NULL.
    //      radWatchServerOnRecieveWPValueCallBack - callback when value for
    //                  a watch point has been changed. If user choose not
    //                  to recieve any callback, set it to NULL.
    //      pUserData - user pointer
    // Return
    //      true if initialized successfully, false otherwise
    //
    bool __stdcall radWatchServerInitialize
                (
                    const char * pTargetName = NULL,
                    unsigned int updateTimeInMilliSec = 500,
                    radWatchServerConnectionStatusCallBack * pStatusCallBack = NULL,
                    radWatchServerOnWPChangeCallBack * pWPChangeCallBack = NULL,
                    radWatchServerOnRecieveWPValueCallBack * pWPValueCallBack = NULL,
                    void * pUserData = NULL
                );

    //
    // Terminate watch server on the host PC, including debug communication.
    // channel used by watch server.
    //
    void __stdcall radWatchServerTerminate( void );

    //
    // Service the watch server, it will do dispatch callback and service
    // internal systems. Call it often!!!
    //
    void __stdcall radWatchServerService( void );

    //
    // Get the name of watch server client.
    //
    const char * __stdcall radWatchServerGetTargetName( void );

    //
    // Return true if connection has been established with client.
    //
    bool __stdcall radWatchServerIsConnected( void );

    //
    // Set/Get the update time for watcher.
    //
    void __stdcall radWatchServerSetUpdateTimeInterval
                (
                    unsigned int updateTimeInMilliSecond
                );

    unsigned int __stdcall radWatchServerGetUpdateTimeInterval( void );

    //========================================================================
    // Enumerate Callback style watch point walk through. Entries are sorted
    // in BREATH-FIRST SEARCH ORDER, and each watch point is in string order.
    //========================================================================
    typedef void (radWatchServerEnumerateWatchPointsCallBack)
                (
                    const char *    pWPName,        // name of the watch point
                    void *          pUserData       // user data
                );

    void __stdcall radWatchServerEnumerateWatchPoints
                (
                    radWatchServerEnumerateWatchPointsCallBack * pWatchPointCallBack,
                    void * pUserData
                );

    //========================================================================
    // Query style data read/write
    //========================================================================

    //
    // Query a watch point attribute by full name, return false if
    // cannot find watch point or pWPAttributes == NULL.
    // Must call radWatchServerFreeWPAttribute( ) to free memory allocated by
    // radWatchServerSelectWPAttribute( ).
    //
    // for example:
    //
    // radWatchServerWPAttribute Attribute;
    //
    // //
    // // get attribute which also does allocation internally
    // //
    // radWatchServerSelectWPAttribute( "\\Game\\SomeData", & Attribute );
    //
    // ... do some stuff ...
    //
    // //
    // // free memory allocated by the radWatchServerSelectWPAttribute( )
    // //
    // radWatchServerFreeWPAttribute( & Attribute );
    //
    //
    bool __stdcall radWatchServerSelectWPAttribute
                (
                    const char * pWPName,
                    radWatchServerWPAttribute * pWPAttributes
                );

    //
    // Free memory allocated by radWatchServerSelectWPAttribute( )
    //
    void __stdcall radWatchServerFreeWPAttribute( radWatchServerWPAttribute * pWPAttributes );

    //
    // Query a watch point attribute by full name, return false if
    // cannot find watch point or pWPValue == NULL.
    //
    bool __stdcall radWatchServerSelectWPValue
                (
                    const char * pWPName,
                    radWatchServerWPValue * pWPValue
                );

    //
    // Free memory allocated by radWatchServerSelectWPValue( )
    //
    void __stdcall radWatchServerFreeWPValue( radWatchServerWPValue * pWPValue );

    //
    // Query a watch point attribute by full name, return false if
    // cannot find watch point, pWPValue == NULL, or pWPValue doesn't
    // match actual watch point type.
    //
    bool __stdcall radWatchServerUpdateWPValue
                (
                    const char * pWPName,
                    const radWatchServerWPValue * pWPValue
                );
};

#endif  // RADWATCHSERVER
