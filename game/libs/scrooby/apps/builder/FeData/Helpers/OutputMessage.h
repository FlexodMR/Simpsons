//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the OutputMessage class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __OUTPUTMESSAGE_H
#define __OUTPUTMESSAGE_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

class COutputWindow;


namespace FeData
{
    enum OutputMessageTypesEnum
    {
        DebugOutputMessage,
        InformationOutputMessage,
        WarningOutputMessage,
        ErrorOutputMessage,
        FunnyOutputMessage
    };
}

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to output messages to the user.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class OutputMessage
    {
        public:
            OutputMessage();
            ~OutputMessage();

            void SetOutputWindow( COutputWindow* outputWindow );
            void Add( const char* message, 
                      OutputMessageTypesEnum type = InformationOutputMessage );
            
        protected:

        private:
            COutputWindow* m_OutputWindow;

    };


    //=======================================================================
    // Global Instance
    //=======================================================================
    extern OutputMessage g_OutputMessage;
}


//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

