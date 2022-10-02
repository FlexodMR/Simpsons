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

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "..\Helpers\OutputMessage.h"
#include "..\..\GUI\OutputWindow.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

namespace FeData
{

OutputMessage g_OutputMessage;

//===========================================================================
// Member Functions
//===========================================================================


//===========================================================================
// OutputMessage::OutputMessage
//===========================================================================
// Description: OutputMessage's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

OutputMessage::OutputMessage() :
m_OutputWindow(NULL)
{
}


//===========================================================================
// OutputMessage::~OutputMessage
//===========================================================================
// Description: OutputMessage's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

OutputMessage::~OutputMessage()
{
}


//===========================================================================
// OutputMessage::SetOutputWindow
//===========================================================================
// Description: This is used to set the output window.
//
// Constraints:    None
//
// Parameters:    outputWindow - The output window pointer.
//
// Return:      Nothing
//
//===========================================================================

void OutputMessage::SetOutputWindow( COutputWindow* outputWindow )
{
    m_OutputWindow = outputWindow;

    CTime currentTime = CTime::GetCurrentTime();
    char programStartString[500];
    sprintf( programStartString, "Program started on %02d/%02d/%4d, at %02d:%02d:%02d %s", 
             currentTime.GetMonth(),
             currentTime.GetDay(),
             currentTime.GetYear(),
             currentTime.GetHour() % 12,
             currentTime.GetMinute(),
             currentTime.GetSecond(), 
             ( currentTime.GetHour() >= 12 ) ? "PM" : "AM" );
    m_OutputWindow->AddMessage( programStartString, InformationOutputMessage );
}


//===========================================================================
// OutputMessage::Add
//===========================================================================
// Description: This is used to a message.
//
// Constraints:    None
//
// Parameters:    message - The message to be added.
//              type    - The type of message.
//
// Return:      Nothing
//
//===========================================================================

void OutputMessage::Add( const char* message, OutputMessageTypesEnum type )
{
    if( m_OutputWindow == NULL )
    {
        if( type == DebugOutputMessage )
        {
#ifndef NDEBUG
            TRACE( "\n" );
            TRACE( message );
#endif
        }
        else
        {
            TRACE( "\n" );
            TRACE( message );
        }
    }
    else
    {
        if( type == DebugOutputMessage )
        {
#ifndef NDEBUG
            m_OutputWindow->AddMessage( message, type );
#endif
        }
        else
        {
            m_OutputWindow->AddMessage( message, type );
        }
    }
}


} // End NameSpace
