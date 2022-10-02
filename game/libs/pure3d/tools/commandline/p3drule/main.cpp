/*===========================================================================
   File: main.cpp 

   Testbed for Rules system.


   Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#pragma warning(disable:4786)

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include <rule/inc/ruleParser.hpp>
#include <rule/inc/ruleEnv.hpp>

#include <toollib.hpp>
#include "Param.hpp"

Parameters* Param;

int main(int argc, char* argv[])
{
    int returnCode = 0;

    bool bHasWarning = false;
    bool bHasError   = false;

    char inPath[_MAX_PATH];

    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    bool        bAddHistory = ( Param->WriteHistory != 0 );

    if ( Param->RuleFile != NULL ) 
    {
        bool                                bSuccess;
        CRuleParser                         ruleParser( Param->RuleFile, &bSuccess );

        if ( bSuccess )
        {
            // for each file on the command-line, do the following:
            for(int i = 0; i < Param->Files.Count(); i++) 
            {
                CRuleCollection*                    pRuleCollection;
                pRuleCollection = ruleParser.GetCollection();

                if ( FindInPath( Param->Files[i], inPath, "PATH" ) )
                {
                    if ( Param->Verbosity > 0 )
                    {
                        std::clog << "Processing \"" << inPath << "\"" << std::endl;
                    }

                    if ( pRuleCollection != NULL )
                    {
                        pRuleCollection->SetWarnSeverity( Param->WarnTolerance );
                        pRuleCollection->SetErrorSeverity( Param->ErrorTolerance );

                        bSuccess = pRuleCollection->ApplyRules( Param->Files[i], bAddHistory );
                        if ( bSuccess )
                        {
                            if ( pRuleCollection->Status() == CRuleCollection::kStatusWarn )
                            {
                                bHasWarning = true;
                            }

                            if ( pRuleCollection->Status() == CRuleCollection::kStatusError )
                            {
                                bHasError = true;
                            }
                        }
                        else
                        {
                            gRuleLog.Add( CLogEntry( "Failed to apply Rules file." ) );
                            returnCode = -1;
                        }
                    }
                }
                else
                {
                    gRuleLog.Add( CLogEntry( "Could not find specified P3D file." ) );
                    returnCode = -1;
                }
            }

        }   // if Rule parsed correctly
        else
        {
            gRuleLog.Add( CLogEntry( "Failed to parse Rules file." ) );
            returnCode = -1;
        }

    } // end of main for loop

    // Cleanup
    delete Param;

    if ( bHasWarning ) returnCode = 1;
    if ( bHasError ) returnCode = 2;

    if ( returnCode != 0 )
    {
        std::cout << gRuleLog << std::endl;
    }

    return returnCode;
}
