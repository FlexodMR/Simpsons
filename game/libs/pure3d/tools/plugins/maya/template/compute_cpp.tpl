@perl use Wrap;
@perl $Wrap::columns = 80;
@perl sub max { my($a,$b) = @_; ($a>$b)?($a):($b);}
@perl sub pad { my($len,$str) = @_; sprintf("%-${len}s",$str); }
@perl ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
@perl $year = $year+1900;
@perl my $shadername;
@perl my $filename;
@perl my $headerfilename;
@perl my $shaderid;
@perl my $pddiname;
@perl my $registername;
@perl my $decription;
@foreach shader_list 
    @perl $shadername = "P3D$shader_name";
    @perl $filename = "compute.cpp";
    @perl $headerfilename = "p3d$shader_name";
    @perl $headerfilename .= ".hpp";
    @perl $shaderid = $shader_id;
    @perl $pddiname = $shader_pddiShaderName;
    @perl $registername = $shader_registerName;
    @perl $description = $shader_description;
@end
@perl print "Generating $filename\n";
@openfile $filename 
/*===========================================================================
    File: $filename

    $description
    
    Copyright (c) $year Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
#include <math.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>
#include <maya/MArrayDataHandle.h>
#include <maya/MFnStringData.h>
#include <maya/MFnStringArrayData.h>
#include <maya/MFnLightDataAttribute.h>
#include <maya/MFloatVector.h>
#include "$headerfilename"


//
// Comput the color and transparency of the shader
// for outputing
/////////////////////////////////////////////////////////////////////////////
MStatus ${shadername}::compute_output(
const MPlug&      plug,
        MDataBlock& block ) 
{ 
    if( plug == aOutColor || 
         plug == aOutColorR ||
         plug == aOutColorG ||
         plug == aOutColorB ||
         plug == aOutTrans || 
         plug == aOutTransR ||
         plug == aOutTransG ||
         plug == aOutTransB )
    {
        MFloatVector resultColor(0.0f,0.0f,0.0f);

        MFloatVector& surfaceColor  = block.inputValue( aColor ).asFloatVector();

        // get sample surface shading parameters
        MFloatVector& surfaceNormal = block.inputValue( aNormalCamera ).asFloatVector();
        MFloatVector& faceNormal = block.inputValue( aTriangleNormalCamera ).asFloatVector();

        MFloatVector& cameraPosition = block.inputValue( aPointCamera ).asFloatVector();

        MFloatVector& ambientColor  = block.inputValue( aAmbient ).asFloatVector();
        MFloatVector& diffuseColor  = block.inputValue( aDiffuse ).asFloatVector();
        MFloatVector& emissiveColor = block.inputValue( aEmissive ).asFloatVector();
        MFloatVector& specularColor  = block.inputValue( aSpecular ).asFloatVector();
        float shininess = block.inputValue( aShininess ).asFloat();
        short shademode = block.inputValue( aShadeMode ).asShort();

        float specularR, specularG, specularB;
        float diffuseR, diffuseG, diffuseB;
        diffuseR = diffuseG = diffuseB = specularR = specularG = specularB = 0.0f;

        // get light list
        MArrayDataHandle lightData = block.inputArrayValue( aLightData );
        int numLights = lightData.elementCount();

        // iterate through light list and get ambient/diffuse values
        for( int count=1; count <= numLights; count++ )
        {
            MDataHandle currentLight = lightData.inputValue();
            MFloatVector& lightIntensity = currentLight.child(aLightIntensity).asFloatVector();
  
            // find ambient component
            if( currentLight.child(aLightAmbient).asBool() ) {
                diffuseR += lightIntensity[0] * ambientColor[0];
                diffuseG += lightIntensity[1] * ambientColor[1];
                diffuseB += lightIntensity[2] * ambientColor[2];
            }

            // find diffuse and specular component
            if( currentLight.child(aLightDiffuse).asBool() )
            {
                MFloatVector& lightDirection = currentLight.child(aLightDirection).asFloatVector();

                float cosln;
                if(shademode == 0)       // PDDI_FLAT
                {
                    // flat
                    cosln = lightDirection * faceNormal;
                }
                else
                {
                    cosln = lightDirection * surfaceNormal;
                }
 
                if( cosln > 0.0f )  // calculate only if facing light
                {
                    diffuseR += lightIntensity[0] * cosln * diffuseColor[0];
                    diffuseG += lightIntensity[1] * cosln * diffuseColor[1];
                    diffuseB += lightIntensity[2] * cosln * diffuseColor[2];
                }

                cameraPosition.normalize();

                if( cosln > 0.0f ) // calculate only if facing light
                {
                    float RV = ( ( (2*surfaceNormal) * cosln ) - lightDirection ) * cameraPosition;
                    if( RV < 0.0 ) RV = -RV;

                    if ( shininess < 0 ) shininess = -shininess;

                    float s = powf( RV, shininess );

                    specularR += lightIntensity[0] * s * specularColor[0]; 
                    specularG += lightIntensity[1] * s * specularColor[1]; 
                    specularB += lightIntensity[2] * s * specularColor[2]; 
                }
            }
            if( !lightData.next() ) break;
        }

        // factor incident light with surface color and add emissive
        resultColor[0] = ( diffuseR * surfaceColor[0] ) + specularR + emissiveColor[0];
        resultColor[1] = ( diffuseG * surfaceColor[1] ) + specularG + emissiveColor[1];
        resultColor[2] = ( diffuseB * surfaceColor[2] ) + specularB + emissiveColor[2];


        // set ouput color attribute
        MDataHandle outColorHandle = block.outputValue( aOutColor );
        MFloatVector& outColor = outColorHandle.asFloatVector();
        outColor = resultColor;
        outColorHandle.setClean();

        MFloatVector& transparency = block.inputValue( aInTrans ).asFloatVector();

        // set ouput transparency
        MDataHandle outTransHandle = block.outputValue( aOutTrans );
        MFloatVector& outTrans = outTransHandle.asFloatVector();
        outTrans = transparency;
        outTransHandle.setClean();

      return MS::kSuccess;
    }
    
    return MS::kUnknownParameter;

}


