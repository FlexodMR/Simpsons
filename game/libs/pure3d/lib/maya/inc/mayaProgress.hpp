//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 2, 2001
//
// Component:   mayaProgress
//
// Description: Progress Bar and abort detection.
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MAYAPROGRESS_H  
#define __MAYAPROGRESS_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MString.h>
#include <maya/MComputation.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Description: Utilizes Maya's and MComputation API class and
//              global progressBar (4.0, via MEL) to provide progress
//              indication and abort functionality.
//
// Constraints: The global progressBar is available in Maya 4.0 only.
//              The MComputation class provides abort functionality for
//              Maya v3 and Maya v4.
//
//===========================================================================

class CMayaProgress
{
public:
    static void                         Start( int max = 100, int min = 0, const char* title = NULL );

//    static int                          Progress();
    static void                         Progress( int stepValue, const char* anno = NULL );

    static void                         SetAnnotation( const char* anno );
    static MString                      Annotation( void );

    static void                         Step( int stepIncrement = 1, const char* anno = NULL );

    static void                         End();

    static bool                         IsActive();             // Is the global progressBar active?
    static bool                         PollInterrupt();        // Request status from Maya UI.
    static bool                         IsInterrupted();        // Query state cached in this class.

    static bool                         UseWindow( bool bWindow );

// Constructor / Destructor
public:
    CMayaProgress::CMayaProgress();
    CMayaProgress::~CMayaProgress();

protected:
    // No protected members.

private:
    static MComputation*                m_computation;
    static MString                      m_annotation;

    static bool                         m_active;
    static bool                         m_interrupted;
    static bool                         m_window;

};

//===========================================================================
// Inlines
//===========================================================================

#endif // __MAYAPROGRESS_H  
