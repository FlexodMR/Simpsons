//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     06 August, 2002
//
// Component:   shaderAnimNode
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/shaderAnimNode.hpp"

#include "scene.hpp"
#include "tlShaderAnim.hpp"
#include "tlTranAnimKeys.hpp"
#include "tlFrameController.hpp"

#include <maya/MSelectionList.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MAnimControl.h>
#include <maya/MGlobal.h>

#include <bewert_debug.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

ShaderAnimNode::ShaderAnimNode( const MString& shaderName, tlInventory* pInventory )
:   AnimNode( NULL ),
    mAnimation( NULL ),
    mpInventory( pInventory )
{
    mShaderName = shaderName;
}

ShaderAnimNode::~ShaderAnimNode()
{
    CleanUp();
}


//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

void ShaderAnimNode::GetShaderName( MString& shaderName ) const
{
    shaderName = mShaderName;
}

void ShaderAnimNode::SetupNode( int numframes, float framerate, int startFrame )
{
    MStatus                     status;

    MSelectionList              selList;
    status = MGlobal::getSelectionListByName( mShaderName, selList );
    if ( status == MS::kSuccess )
    {
        // Create tlAnimationGroup for this Shader
        char animname[256];
        ExporterOptions::BuildAnimationName( kShaderAnimationMode, mShaderName.asChar(), animname );

        mAnimation = new InventoryEntity<tlShaderAnim*>( new tlShaderAnim );
        SetFinal( false );

        mAnimation->Entity()->SetName(animname);
        mAnimation->Entity()->SetFrameRate(framerate);
        mAnimation->Entity()->SetNumFrames(numframes);
        mAnimation->Entity()->SetCyclic( mbIsCyclic );

/* ****  AnimRange DISABLED for removal ****

        if ( NumAnimRanges() > 1 )
        {
            if ( mAnimation->Entity() != NULL )
            {
                sprintf( animname, "%s_%d_%d", mAnimation->Entity()->GetName(), startFrame, ( startFrame + numframes - 1 ) );
                mAnimation->Entity()->SetName( animname );
            }
        }

*/

        MObject                 shader;
        selList.getDependNode( 0, shader );
        MFnDependencyNode       fnShader( shader );

        mAnimOptimization.Initialize( shader );

        MPlug exportPlug = fnShader.findPlug("shaderExport", &status);
        unsigned int childCount = exportPlug.numChildren();

        bool bInterpolate;

        for(unsigned int i = 0; i < childCount ; i++)
        {
            MObject attribute = exportPlug.child(i).attribute();
            MFnNumericAttribute fnAttrib(attribute);

            const char *attribName = fnAttrib.name().asChar();

            // *** LIMITATION: The 'shaderExport' compound plug is NOT the attribute which is animated.
            //     The value for this attribute is driven by other plugs which cannot be traced.
            //     It is therefore NOT possible to decide whether this attribute is interpolated
            //     based on incoming animation curves.  Instead, evaluate each integer frame vs.
            //     each point-five frame. If all point-five frames are equal to integer frames,
            //     we have a non-interpolated animation.
            bInterpolate = EvalIsInterpolated( exportPlug.child(i), MTime( static_cast<double>(startFrame), MTime::uiUnit() ), MTime( static_cast<double>( startFrame + numframes ), MTime::uiUnit() ) );

            switch(fnAttrib.unitType())
            {
                case MFnNumericData::kBoolean:
                {
                    tlFourCC            fourCC( fnAttrib.name().asChar() );

                    mAnimation->Entity()->CreateBoolChannel( fourCC, numframes, bInterpolate );
                }
                break;

                case MFnNumericData::kLong:
                {
                    tlFourCC            fourCC( fnAttrib.name().asChar() );
                    mAnimation->Entity()->CreateIntChannel( fourCC, numframes, bInterpolate );
                }
                break;

                case MFnNumericData::kFloat:
                case MFnNumericData::kDouble:
                {
                    tlFourCC            fourCC( fnAttrib.name().asChar() );
                    mAnimation->Entity()->CreateFloatChannel( fourCC, numframes, bInterpolate );
                }
                break;

                case MFnNumericData::k3Float:
                {
                    if ( exportPlug.child(i).numChildren() == 3 )
                    {
                        const char **attribArrayName = new const char* [3];
                        int c;
                        for ( c = 0; c < 3; c++ )
                        {
                            MObject childAttribute = exportPlug.child(i).child(c).attribute();
                            MFnNumericAttribute fnChildAttrib(childAttribute);
                            attribArrayName[c] = fnChildAttrib.name().asChar();

                            bInterpolate  = EvalIsInterpolated( exportPlug.child(i).child(0), MTime( static_cast<double>(startFrame), MTime::uiUnit() ), MTime( static_cast<double>( startFrame + numframes ), MTime::uiUnit() ) );
                            bInterpolate &= EvalIsInterpolated( exportPlug.child(i).child(1), MTime( static_cast<double>(startFrame), MTime::uiUnit() ), MTime( static_cast<double>( startFrame + numframes ), MTime::uiUnit() ) );
                            bInterpolate &= EvalIsInterpolated( exportPlug.child(i).child(2), MTime( static_cast<double>(startFrame), MTime::uiUnit() ), MTime( static_cast<double>( startFrame + numframes ), MTime::uiUnit() ) );
                        }
                        

                        tlFourCC            fourCC( fnAttrib.name().asChar() );
                        mAnimation->Entity()->CreateColourChannel( fourCC, numframes, bInterpolate );

                        delete [] attribArrayName;
                    }
                    else
                    {
                        MGlobal::displayWarning( "Attribute does not have 3 children: " + fnAttrib.name() );
                    }
                }
                break;
            }
        }
    }
}

void ShaderAnimNode::FillNode( int frame )
{
    MStatus                     status;

    MSelectionList              selList;
    status = MGlobal::getSelectionListByName( mShaderName, selList );
    if ( status == MS::kSuccess )
    {
        MObject                 shader;
        selList.getDependNode( 0, shader );
        MFnDependencyNode       fnShader( shader );

        MPlug exportPlug = fnShader.findPlug("shaderExport", &status);
        unsigned int childCount = exportPlug.numChildren();

        for(unsigned int i = 0; i < childCount ; i++)
        {
            ExtractAttribute( exportPlug.child( i ), frame );
        }
    }
}

//===========================================================================
// ShaderAnimNode::ExtractAttribute
//===========================================================================
// Description: This is called by ShaderAnimNode::FillNode(). It handles
//              querying the specified plug for its current value, and
//              storing this as a key in the appropriate animation channel.
//
// Constraints: Only boolean, int (a.k.a. long), float/double, and vector
//              (a.k.a. k3Float) unit types are supported.
//
//  Parameters: 
//
//      Return: 
//
//===========================================================================
MStatus ShaderAnimNode::ExtractAttribute( MPlug& exportPlug, int frame )
{
    MStatus                     status = MS::kSuccess;

    MObject attribute = exportPlug.attribute();

    // for now, assume it's numeric
    MFnNumericAttribute fnAttrib(attribute);
    tlFourCC                    fourCC( fnAttrib.name().asChar() );

    switch(fnAttrib.unitType())
    {
        case MFnNumericData::kBoolean:
        {
            bool value;
            exportPlug.getValue(value);
            mAnimation->Entity()->SetBoolKey( fourCC, frame, value );
            break;
        }

        case MFnNumericData::kInt:
        {
            int value;
            exportPlug.getValue(value);
            mAnimation->Entity()->SetIntKey( fourCC, frame, value );
            break;
        }

        case MFnNumericData::kFloat:
        {
            float value;
            exportPlug.getValue(value);
            mAnimation->Entity()->SetFloatKey( fourCC, frame, value );
            break;
        }

        case MFnNumericData::kDouble:
        {
            double value;
            float fvalue;
            exportPlug.getValue(value);
            fvalue = static_cast<float>(value);
            mAnimation->Entity()->SetIntKey( fourCC, frame, fvalue );
            break;
        }

        // Note: This does not include an Alpha channel..
        //       Currently there is no link between a colour attribute and any
        //       associated alpha. Typically there are added to Pure3D shaders
        //       as 'texture' attributes instead of 'color' attributes.
        //       Texture attributes are not animatable via tlShaderAnim;
        //       they are animated via tlEntity texture animations.
        case MFnNumericData::k3Float:
        {
            if ( exportPlug.numChildren() == 3 )
            {
                tlColour value;
                exportPlug.child(0).getValue(value.red);
                exportPlug.child(1).getValue(value.green);
                exportPlug.child(2).getValue(value.blue);

                // Special case for emissiveAlpha
                MString name = exportPlug.name();
                MStringArray split;
                name.split( '.', split );
                if ( split[1] == "EMIS" )
                {
                    MFnDependencyNode           fnDependNode( exportPlug.node() );
                    MPlug alphaPlug = fnDependNode.findPlug( "emissiveAlpha", &status );
                    if ( status == MS::kSuccess )
                    {
                        alphaPlug.getValue( value.alpha );
                    }
                }

                mAnimation->Entity()->SetColourKey( fourCC, frame, value );
            }
            break;
        }

        default:
        {
            assert( false && "Unsupported MFnNumericData unitType for shader attribute." );
        }
    }

    return status;
}

void ShaderAnimNode::OptimizeNode( void )
{
    if ( mAnimation->Entity() )
    {

#ifndef ANIMNODE_DISABLE_OPTIMIZE
        tlAnimationTolerances                   tolerances;
        tolerances.SetUsePeakDetection( ExporterOptions::UsePeakDetection() );

        if ( mAnimOptimization.Enable() )
        {
            tolerances.SetFloatTolerance( mAnimOptimization.ThresholdFloat() );
            tolerances.SetColourTolerance( mAnimOptimization.ThresholdColour());
        }

        CDEBUG << "Shader optimization: -> Float = " << tolerances.FloatTolerance() << "; Colour = " << tolerances.ColourTolerance() << endl;

        mAnimation->Entity()->RoughOptimization( tolerances );

        mAnimation->Entity()->RemoveStaticChannels();

#endif      // ANIMNODE_DISABLE_OPTIMIZE

        if ( mAnimation->Entity()->IsStatic() )
        {
            //
            // Make sure to remove from the inventory!!!
            //
            SceneNode::Inventory()->Remove(mAnimation->Entity());
            mAnimation->DeleteEntity();
        }
    }
}

tlFrameController* ShaderAnimNode::FinalizeNode( void )
{
    tlFrameController*          pFC = NULL;

    if ( mAnimation->Entity() )
    {
        char newName[256];
        if ( !ValidateName( mAnimation->Entity()->GetName(), newName ) )
        {
            mAnimation->Entity()->SetName( newName );
        }

        // Create Frame Controller
        pFC = new tlFrameController;
        pFC->SetName(mAnimation->Entity()->GetName());
        pFC->SetType(Pure3DAnimationTypes::SHADER_SHAD);

        // Pure3D Inventory uses decorated name.
        char decoratedName[256];
        ExporterOptions::BuildShaderName( mShaderName.asChar(), decoratedName );
        pFC->SetHierarchyName( decoratedName );

        pFC->SetAnimationName(mAnimation->Entity()->GetName());

        mAnimation->Store( SceneNode::Inventory() );
        SceneNode::Inventory()->Store(pFC);

        SetFinal();
    }

    return pFC;
}

//===========================================================================
// ShaderAnimNode::Cleanup
//===========================================================================
// Description: Deletes all tlShaderAnim instances which were not added
//              to the Inventory (using InventoryEntity's ::Stored() query).
//
//              Regardless if the tlShaderAnim was used, the InventoryEntity
//              holding the object will be deleted.
//
//              ** Note: This is called during Export at the end of each
//                       AnimRange. In this way, it is not necessary to store
//                       an array of tlShaderAnim's for each AnimRange; rather
//                       the cleanup occurs on-the-fly.  See AnimNode::Export().
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void ShaderAnimNode::CleanUp( void )
{
    if ( mAnimation != NULL )
    {
        if ( !mAnimation->Stored() )
        {
            mAnimation->DeleteEntity();
        }
        delete mAnimation;
        mAnimation = NULL;
    }
}
