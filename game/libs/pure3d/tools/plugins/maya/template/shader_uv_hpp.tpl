@perl use Wrap;
@perl $Wrap::columns = 80;
@perl sub max { my($a,$b) = @_; ($a>$b)?($a):($b);}
@perl sub pad { my($len,$str) = @_; sprintf("%-${len}s",$str); }
@perl ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
@perl $year = $year+1900;
@perl my $shadername;
@perl my $filename;
@perl my $shaderid;
@perl my $pddiname;
@perl my $registername;
@perl my $decription;
@foreach shader_list 
    @perl $shadername = "P3D$shader_name";
    @perl $filename = "p3d$shader_name";
    @perl $filename .= ".hpp";
    @perl $shaderid = $shader_id;
    @perl $pddiname = $shader_pddiShaderName;
    @perl $registername = $shader_registerName;
    @perl $description = $shader_description;
@end
@perl print "Generating .\\src\\$filename\n";
@openfile .\\src\\$filename
#ifndef __${shadername}_H__
#define __${shadername}_H__

/*===========================================================================
    Automatically generated by Jeeves, don't edit.  Edit ${shadername}.sc instead

    File: $filename

    $description
    
    Copyright (c) $year Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
#include <maya/MPxHwShaderNode.h>

#include <tlImage.hpp>

#include <GL/gl.h>      // remember to link with "opengl32.lib"

const int NUM_TEX_COORDS_PER_VERTEX = 2;
const int NUM_COLORS_PER_VERTEX = 2;
const int NUM_COLOR_CHANNELS_PER_VERTEX = 4;

enum ${shadername}_Texture_Objects
{
@perl $counter = 0;
@foreach texture_list
    @if( !defined $texture_attribute || $texture_attribute eq "true" )
    @if( $counter eq 0 ) 
    ${texture_name}_TEXTURE_OBJECT = 0,
    @else
    ${texture_name}_TEXTURE_OBJECT,
    @endif
@perl $counter++;
    @endif
@end
    NUM_${shadername}_TEXTURE_OBJECTS
};

//
// DESCRIPTION: $description
///////////////////////////////////////////////////////
class $shadername : public MPxHwShaderNode
{
public:
    $shadername();
    virtual           ~$shadername();

    virtual MStatus   compute( const MPlug&, MDataBlock& );
    virtual void      postConstructor();

    virtual MStatus bind(const MDrawRequest& request,
                         M3dView& view);

    virtual MStatus unbind(const MDrawRequest& request,
                           M3dView& view);

    virtual MStatus geometry( const MDrawRequest& request,
                              M3dView& view,
                              int prim,
                              unsigned int writable,
                              int indexCount,
                              const unsigned int * indexArray,
                              int vertexCount,
                              const float * vertexArray,
                              int normalCount,
                              const float ** normalArrays,
                              int colorCount,
                              const float ** colorArrays,
                              int texCoordCount,
                              const float ** texCoordArrays);

    virtual int texCoordsPerVertex()   { return NUM_TEX_COORDS_PER_VERTEX; }
    virtual int colorsPerVertex()      { return NUM_COLORS_PER_VERTEX; }

    static void *     creator();
    static MStatus    initialize();
    static MTypeId    id;

protected:
    // All New Added Textures Go Here:
@foreach texture_list
    @if( !defined $texture_attribute || $texture_attribute eq "true" )
    static MObject  a${texture_name};
    static MObject  a${texture_name}R;
    static MObject  a${texture_name}G;
    static MObject  a${texture_name}B;
    MString         mCurrent${texture_name};    // Use to track currently loaded file texture.
    bool            Bind${texture_name}( void );
    bool            ${texture_name}HasAlpha( void ) const;
    @endif

@end   
    // All New Added Colors Go Here:
@foreach color_list
    @if( !defined $color_attribute || $color_attribute eq "true" )
    static MObject  a${color_name}R;
    static MObject  a${color_name}G;
    static MObject  a${color_name}B;
    static MObject  a${color_name};
    @endif
    @if (defined $color_fourCC)
    static MObject  aExport$color_fourCC;        //export
    static MObject  aExport${color_fourCC}R;        //export red
    static MObject  aExport${color_fourCC}G;        //export green
    static MObject  aExport${color_fourCC}B;        //export blud
    @endif

@end
    // All New Added enums Go Here:
@foreach enum_list
    @if( !defined $enum_attribute || $enum_attribute eq "true" )
    static MObject  a${enum_name};
    @endif
    @if (defined $enum_fourCC)
    static MObject  aExport$enum_fourCC;        //export
    @endif

@end   

    // All New Added floats Go Here:
@foreach float_list
    @if( !defined $float_attribute || $float_attribute eq "true" )
    static MObject  a${float_name};
    @endif
    @if( defined $float_fourCC )
    static MObject  aExport$float_fourCC;        //export
    @endif

@end   
  
    // All New Added ints Go Here:
@foreach int_list
    @if( !defined $int_attribute || $int_attribute eq "true" )
    static MObject  a${int_name};
    @endif
    @if( defined $int_fourCC )
    static MObject  aExport$int_fourCC;        //export
    @endif

@end  

    // All New Added  bools Go Here:
@foreach bool_list
    @if( !defined $bool_attribute || $bool_attribute eq "true" )
    static MObject  a${bool_name};
    @endif
    @if( defined $bool_fourCC )
    static MObject  aExport$bool_fourCC;        //export
    @endif

@end  

    // All New Added  StringArray Go Here:
@foreach strarray_list
    @if( !defined $strarray_attribute || $strarray_attribute eq "true" )
    static MObject  a${strarray_name};
    @endif
    @if( defined $strarray_fourCC )
    static MObject  aExport$strarray_fourCC;        //export
    @endif

@end 
 
    // output 
    static MObject  aOutColorR;
    static MObject  aOutColorG;
    static MObject  aOutColorB;
    static MObject  aOutColor;

    static MObject  aOutTransR;
    static MObject  aOutTransG;
    static MObject  aOutTransB;
    static MObject  aOutTrans;

    // exporter API attributes
    static MObject  aIsTranslucent;
    static MObject  aVertexNeeds;
    static MObject  aVertexMask;

    // export
    static MObject  aPDDIShaderName;
    static MObject  aVertexShaderName;
    static MObject  aExport;

    // internal attributes
    static MObject  aPointCameraX;
    static MObject  aPointCameraY;
    static MObject  aPointCameraZ;
    static MObject  aPointCamera;
    static MObject  aNormalCameraX;
    static MObject  aNormalCameraY;
    static MObject  aNormalCameraZ;
    static MObject  aNormalCamera;
    static MObject  aTriangleNormalCameraX;
    static MObject  aTriangleNormalCameraY;
    static MObject  aTriangleNormalCameraZ;
    static MObject  aTriangleNormalCamera;
    static MObject  aLightDirectionX;
    static MObject  aLightDirectionY;
    static MObject  aLightDirectionZ;
    static MObject  aLightDirection;
    static MObject  aLightIntensityR;
    static MObject  aLightIntensityG;
    static MObject  aLightIntensityB;
    static MObject  aLightIntensity;
    static MObject  aLightAmbient;
    static MObject  aLightDiffuse;
    static MObject  aLightSpecular;
    static MObject  aLightShadowFraction;
    static MObject  aPreShadowIntensity;
    static MObject  aLightBlindData;
    static MObject  aLightData;

    static MObject  aUVCoord;
    static MObject  aUCoord;
    static MObject  aVCoord;

    static MObject  aObjectId;

private:

@foreach texture_list
    @if( !defined $texture_attribute || $texture_attribute eq "true" )
    tlImage*        m${texture_name}Image;
    unsigned char*  m${texture_name}ImageDataOriginal;
    unsigned char*  m${texture_name}ImageData;
    unsigned int    m${texture_name}ImageDataSize;
    float           m${texture_name}LastBlend[4];
    void            Flush${texture_name}( void );
    @endif
@end
    
    GLuint          mTextureObjects[ NUM_${shadername}_TEXTURE_OBJECTS ];

    static void exporterAttributes();
    MStatus getFloat3(MObject attr, float value[3]);
    MStatus getFloat(MObject attr, float& value);
    MStatus compute_output( const MPlug&plug, MDataBlock& block );

    static int GetIntDefault( const char* attr, int nDefault = 0 );
    static float GetFloatDefault( const char* attr, float fDefault = 0.0f );
    static void GetColorDefault( const char* attr, float *cDefault );
};

#endif  //__${shadername}_H__

