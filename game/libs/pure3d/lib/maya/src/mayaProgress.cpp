//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 2, 2001
//
// Component:   mayaProgress
//
// Creator:     Bryan Ewert
//
//===========================================================================

// ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
// ×
// ×  * NOTE: The use of Maya's Main Progress Bar requires Maya v4.x or higher.
// ×
// ×          As such, all MEL access to this control is wrapped within:
// ×            #if ( MAYA_API_VERSION >= 400 )
// ×            #endif
// ×
// ×  The MComputation class is supported in Maya v3, so code using this class is still
// ×  valid for compiling under Maya v3.
// ×
// ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××

//===========================================================================
// Includes
//===========================================================================

#include "../inc/mayaProgress.hpp"

#include <maya/MGlobal.h>

#include <bewert_debug.h>   // enables memory leak tracking

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

MComputation * CMayaProgress::m_computation = NULL;
MString CMayaProgress::m_annotation;

bool CMayaProgress::m_active = false;
bool CMayaProgress::m_interrupted = false;
bool CMayaProgress::m_window = false;

//===========================================================================
// Constructor / Destructor
//===========================================================================

CMayaProgress::CMayaProgress()
{
}

CMayaProgress::~CMayaProgress()
{
    End();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// MProgress::Start         (static)
//===========================================================================
// Description: Start the global progressBar indicator and MComputation task.
//
// Constraints: If progressBar is already started, only clears the Interrupted flag.
//
// Parameters:  int max: The step value at which the progressBar is complete.
//              int min: The step value at which the progressBar is empty.
//
// Return:      (void)
//
//===========================================================================
void CMayaProgress::Start( int max, int min, const char* title )
{
    MString                             command;        // The MEL command.

    if ( !m_active )
    {
        m_computation = new MComputation();
        m_computation->beginComputation();

#if ( MAYA_API_VERSION >= 400 )

        const unsigned int MAX_TITLE = 64;
        char workingTitle[MAX_TITLE];
        strcpy( workingTitle, "Working..." );

        if ( title != NULL )
        {
            strncpy( workingTitle, title, MAX_TITLE-1 );
        }

        if ( m_window )
        {
            // In case anyone else forgot to clear the window...
            command = "progressWindow -endProgress;";

            // Now carry on.
            command = command + "progressWindow -isInterruptable true -title \"";
            command = command + workingTitle;
            command = command + "\" -maxValue ";
            command = command + max;
            command = command + " -minValue ";
            command = command + min;
        }
        else
        {
            command = "global string $gMainProgressBar; progressBar -edit -beginProgress -isInterruptable true -status \"";
            command = command + workingTitle;
            command = command +"\" -maxValue ";
            command = command + max;
            command = command + " -minValue ";
            command = command + min;
            command = command + " $gMainProgressBar;";
        }

        MGlobal::executeCommand( command, false, false );

#endif      // MAYA_API_VERSION

        m_active = true;
    }

    m_interrupted = false;
}

//===========================================================================
// CMayaProgress::Progress          (static)
//===========================================================================
// Description: Updates the global progressBar.  
//
// Constraints: ** No effect under Maya v3 **
//
// Parameters:  int stepValue: The step value for the progressBar.  The step 
//                             value is clamped by the control, so all values
//                             are valid.
//              const char* anno: NULL-terminated string will be used as
//                             the annotation label for the control.  If this
//                             pointer is NULL then the annotation is not
//                             changed.
//
// Return:      (void)
//
//===========================================================================
void CMayaProgress::Progress( int stepValue, const char* anno )
{
#if ( MAYA_API_VERSION >= 400 )

    MString                             command;

    if ( m_window )
    {
        command = "progressWindow -edit -progress ";
        command = command + stepValue;

        command += ";";
    }
    else
    {
        command = "global string $gMainProgressBar; progressBar -edit -progress ";
        command = command + stepValue;

        command = command + " $gMainProgressBar;";
    }

    MGlobal::executeCommand( command, false, false );

    SetAnnotation( anno );

#endif      // MAYA_API_VERSION
}

MString CMayaProgress::Annotation( void )
{
    return m_annotation;
}

void CMayaProgress::SetAnnotation( const char* anno )
{
#if ( MAYA_API_VERSION >= 400 )

    if ( anno == NULL )
    {
        anno = "";
    }

    MString                             command;

    if ( m_window )
    {
        command = "progressWindow -edit -status \"";
        command = command + anno;
        command = command + "\"";

        command += ";";
    }
    else
    {
        command = "global string $gMainProgressBar; progressBar -edit -status \"";
        command = command + anno;
        command = command + "\"";

        command = command + " $gMainProgressBar;";
    }

    MGlobal::executeCommand( command, false, false );

    m_annotation = anno;

#endif      // MAYA_API_VERSION
}

//===========================================================================
// CMayaProgress::Step          (static)
//===========================================================================
// Description: Increments the global progressBar meter by the specified value.
//
// Constraints: ** No effect under Maya v3 **
//
// Parameters:  int stepIncrement: Value by which to increment the progressBar.
//                                 The step value is clamped by the control, so 
//                                 all values are valid.
//              MString* anno: NULL-terminated string will be used as
//                             the annotation label for the control.  If this
//                             pointer is NULL then the annotation is not
//                             changed.
//
// Return:      (void)
//
//===========================================================================
void CMayaProgress::Step( int stepIncrement, const char* anno )
{
#if ( MAYA_API_VERSION >= 400 )

    MString                             command;

    if ( m_window )
    {
        command = "progressWindow -e -step ";
        command = command + stepIncrement;
    }
    else
    {
        command = "global string $gMainProgressBar; progressBar -e -step ";
        command = command + stepIncrement;

        command = command + " $gMainProgressBar;";
    }

    MGlobal::executeCommand( command, false, false );

    SetAnnotation( anno );

#endif      // MAYA_API_VERSION
}

//===========================================================================
// CMayaProgress::End           (static)
//===========================================================================
// Description: Stops and hides the global progressBar, and kills the
//              MComputation task.
//              
//              NOTE: The 'interrupted' flag is persistent and is not
//                    cleared by calling this function.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void CMayaProgress::End( void )
{
    if ( m_active )
    {
        // Stop and hide the global progressBar.
#if ( MAYA_API_VERSION >= 400 )

        MString                         command;

        if ( m_window )
        {
            command = "progressWindow -e -endProgress;";
        }
        else
        {
            command = "global string $gMainProgressBar; progressBar -e -endProgress $gMainProgressBar;";
        }

        MGlobal::executeCommand( command, false, false );

#endif      // MAYA_API_VERSION

        // Kill the MComputation task and delete its object.
        if ( m_computation )
        {
            m_computation->endComputation();
            delete m_computation;
        }

        m_computation = NULL;
        m_active = false;
    }
}

//===========================================================================
// CMayaProgress::PollInterrupt         (static)
//===========================================================================
// Description: Polls Maya's global progressBar and MComputation object to
//              see if either has triggered an interrupt (user pressed the 
//              ESCAPE key).  If either have been triggered then the interrupt 
//              flag is set to TRUE.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if an interrupt has been triggered; else FALSE.
//
//===========================================================================
bool CMayaProgress::PollInterrupt( void )
{
    if ( m_active )
    {
        MString                         command;
        int                             isCancelled = 0;

#if ( MAYA_API_VERSION >= 400 )

        if ( m_window )
        {
            command = "progressWindow -q -isCancelled;";
        }
        else
        {
            command = "global string $gMainProgressBar; progressBar -q -isCancelled $gMainProgressBar;";
        }

        MGlobal::executeCommand( command, isCancelled, false, false );

        m_interrupted |= ( isCancelled != 0 );

#endif      // MAYA_API_VERSION

        m_interrupted |= m_computation->isInterruptRequested();
    }

    return m_interrupted;
}

//===========================================================================
// CMayaProgress::IsActive
//===========================================================================
// Description: Queries if the global progressBar is active.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      TRUE if the progressBar is active; else FALSE.
//
//===========================================================================
bool CMayaProgress::IsActive( void )
{
    return m_active;
}


//===========================================================================
// CMayaProgress::IsInterrupted         (static)
//===========================================================================
// Description: Returns the cached interrupted state for this class.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if interrupt request was detected; else FALSE.
//
//===========================================================================
bool CMayaProgress::IsInterrupted( void )
{
    return m_interrupted;
}

bool CMayaProgress::UseWindow( bool bWindow )
{
    // If already active, cannot change modes.
    if ( !m_active ) m_window = bWindow;

    return m_window;
}
