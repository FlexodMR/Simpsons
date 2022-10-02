//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     20 Nov 2002
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __saveParanoiaCmd_H  
#define __saveParanoiaCmd_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MPxCommand.h>
#include <maya/MArgList.h>
#include <maya/MSyntax.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class saveParanoiaCmd : public MPxCommand
{
public:
    saveParanoiaCmd();
    ~saveParanoiaCmd();
    
    MStatus                     doIt( const MArgList& args );
    static void*                creator();

// Constructor / Destructor
public:

protected:

private:
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __saveParanoiaCmd_H  
