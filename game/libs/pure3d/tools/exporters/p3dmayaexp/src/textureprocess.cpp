/*===========================================================================
    textureprocess.hpp
    created: Feb. 9, 2000
    Torre Zuk

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

/* SEARCH STRINGS

bool TextureExtract::Extract(const MObject& material, const MString& attr, const MString& alphaAttr

void TextureLayer::AddToInventory(const MObject &mayaObj,tlInventory

*/

#pragma warning( disable : 4786 )   // that annoying "identifier was truncated in the debug information" warning.

#ifdef WIN32
#define NO_ENV_REDEF
#include <process.h> // for getpid() 
#include <direct.h>
#endif

#include <maya/MGlobal.h>
#include <maya/MSelectionList.h>
#include <maya/MFloatPointArray.h>
#include <maya/MObjectArray.h>
#include <maya/MIntArray.h>
#include <maya/MFnSet.h>
#include <maya/MDagPath.h>
#include <maya/MItDependencyGraph.h>
#include <maya/MFnMesh.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MPlug.h>
#include <maya/MFnPhongShader.h>
#include <maya/MFnBlinnShader.h>
#include <maya/MFnLambertShader.h>
#include <maya/MFnReflectShader.h>
#include <maya/MAnimUtil.h>
#include <maya/MAnimControl.h>
#include <maya/MTime.h>

#include "atenum.hpp"

#include "dospath.hpp"
#include "tlTriangle.hpp"
#include "tlTriMesh.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlVertex.hpp"
#include "tlTextureAnim.hpp"
#include "tlTexture.hpp"
#include "tlFrameController.hpp"

#include "textureprocess.hpp"
#include "exporterutility.hpp"
#include "exportFunctions.hpp"
#include "animnode.hpp"

#include "iffreader.h" 
#include "iffwriter.h" 

#include <stdio.h>

//===========================================================================
// fexists
//===========================================================================
// Description: Determines if the specified file exists.
//
// Constraints: 
//
//  Parameters: const MString &fname: The path to the filename.
//
//      Return: (bool): TRUE if the specified file exists; else FALSE.
//
//===========================================================================
bool fexists(const MString &fname)
{
    const char* fname_str = fname.asChar();
    FILE *f = fopen(fname_str, "rb");
    if (f != NULL) 
    {
        fclose(f);
        return true;
    }

    return false;
}


//===========================================================================
// fConvertPathDelimiters
//===========================================================================
// Description: Converts, in place, all forward slashes to backslashes
//              within the specified filepath.
//
// Constraints: 
//
//  Parameters: MString& fname: The name to convert; storage for the result.
//
//      Return: (void)
//
//===========================================================================
void fConvertPathDelimiters(MString &fname)
{
    MString tmp;
    char tmp_str[2] = { 0, 0 };

    for (unsigned i = 0; i < fname.length(); ++i)
    {
        tmp_str[0] = fname.asChar()[i];

        if (tmp_str[0] == '/')
        {
            tmp_str[0] = '\\';
        }

        tmp += tmp_str;
    }

    fname = tmp;
}


//===========================================================================
// TextureTransform     (Constructor)
//===========================================================================
// Description: Finds a place2dTexture or place3dTexture node connected to
//              the specified texture node, if such a connection exists.
//
// Constraints: 
//
//  Parameters: const MString& texture_name: The name of the texture node
//                  for which to query for place2d and place3d connections.
//
//===========================================================================
TextureTransform::TextureTransform( const MString& texture_name )
{
    mTextureName    = texture_name;
    mFoundPlacement = false;
    mSavedPlacement = false;

    // Try to find the 2D texture placement   
    MString command = "listConnections -type place2dTexture " + texture_name;
    MStatus status;
    MStringArray result;

    status = MGlobal::executeCommand(command, result);
    if (status == MS::kSuccess)
    {   
        if (result.length() > 0)
        {   
            mPlacementName  = result[0];
            mFoundPlacement = true;
        }
    }


    // If there was no 2D placment, try a 3D placement
    if (!mFoundPlacement)
    {   
        command = "listConnections -type place3dTexture " + texture_name;

        status = MGlobal::executeCommand( command, result );

        if (status == MS::kSuccess)
        {   
            if (result.length() > 0)
            {   
                mPlacementName  = result[0];
                mFoundPlacement = true;
            }
        }
    }
}


//**************************************************
//
// Class Texture Transform
// Destructor
//
//
TextureTransform::~TextureTransform()
{

}


//**************************************************
//
// Class Texture Transform
// Save Transform
//
//
bool TextureTransform::SaveTransform(void)
{

    if (!mFoundPlacement) return false;

    MStatus status;
    MString command;

    command = MString("getAttr ") + mPlacementName + MString(".translateFrame");
    status  = MGlobal::executeCommand( command, mTranslateFrame );

    command = MString("getAttr ") + mPlacementName + MString(".rotateFrame");
    status  = MGlobal::executeCommand( command, mRotateFrame );

    command = MString("getAttr ") + mPlacementName + MString(".offset");
    status  = MGlobal::executeCommand( command, mOffset );

    command = MString("getAttr ") + mPlacementName + MString(".rotateUV");
    status  = MGlobal::executeCommand( command, mRotateUV );

    command = MString("getAttr ") + mPlacementName + MString(".repeatUV");
    status  = MGlobal::executeCommand( command, mRepeatUV );

    mSavedPlacement = true;

    return true;
}


//**************************************************
//
// Class Texture Transform
// Restore Transform
//
//
bool TextureTransform::RestoreTransform(void)
{

    // Don't restore garbage into a placement
    if (!mSavedPlacement) return false;

    char command[1024];
    MStatus status;

    sprintf(command, "setAttr %s.translateFrame %f %f", mPlacementName.asChar(), mTranslateFrame[0], mTranslateFrame[1]);
    status = MGlobal::executeCommand( command );

    sprintf(command, "setAttr %s.rotateFrame %f", mPlacementName.asChar(), mRotateFrame[0]);
    status = MGlobal::executeCommand( command );

    sprintf( command, "setAttr %s.offset %f %f", mPlacementName.asChar(), mOffset[0], mOffset[1]);
    status = MGlobal::executeCommand( command );

    sprintf( command, "setAttr %s.rotateUV %f", mPlacementName.asChar(), mRotateUV[0]);
    status = MGlobal::executeCommand( command );

    sprintf( command, "setAttr %s.repeatUV %f %f", mPlacementName.asChar(), mRepeatUV[0], mRepeatUV[1]);
    status = MGlobal::executeCommand( command );

    return true;

}



//**************************************************
//
// Class Texture Transform
// Zero Transform
//
//
bool TextureTransform::ZeroTransform(void)
{

    // make sure I have a placement to reset
    if (!mFoundPlacement) return false;

    MStatus status;
    MString command;

    command = MString("setAttr ") + mPlacementName + MString(".translateFrame 0 0");
    status  = MGlobal::executeCommand( command );

    command = MString("setAttr ") + mPlacementName + MString(".rotateFrame 0");
    status  = MGlobal::executeCommand( command );

    command = MString("setAttr ") + mPlacementName + MString(".offset 0 0");
    status  = MGlobal::executeCommand( command );

    command = MString("setAttr ") + mPlacementName + MString(".rotateUV 0");
    status  = MGlobal::executeCommand( command );

    command = MString("setAttr ") + mPlacementName + MString(".repeatU 1");
    status  = MGlobal::executeCommand( command );

    command = MString("setAttr ") + mPlacementName + MString(".repeatV 1");
    status  = MGlobal::executeCommand( command );

    return true;

}




//*********************************************************************************
//*********************************************************************************
//*********************************************************************************






//**************************************************
//
// Class Texture Layer
// Default Constructor
//
//
TextureLayer::TextureLayer( const tlColour& diffuse, float trans ) :
    mColourMap(NULL),
    mAlphaMap(NULL),
    mTexture(NULL),
    mColourType( None ),
    mAlphaType( None ),
    mXRes( 8 ),
    mYRes( 8 ),
    mDiffuse( diffuse ),
    mTransparency( trans )
{

}


//**************************************************
//
// Class Texture Layer
// Destructor
//
//
TextureLayer::~TextureLayer()
{
    Clear();
}

void TextureLayer::Clear( void )
{
    delete mColourMap;
    mColourMap = NULL;

    delete mAlphaMap;
    mAlphaMap = NULL;

    delete mTexture;
    mTexture = NULL;
}


//**************************************************
//
// Class Texture Layer
// Set Texture Name
// Sets the inventory name for this texture
//
void TextureLayer::SetTextureName(const char *texname)
{
    mTextureName = ExporterOptions::BuildNodeName(MString(texname));   
}



//**************************************************
//
// Class Texture Layer
// Set Texture Resolution
//
//
void TextureLayer::SetTextureResolution(int x, int y)
{
    mXRes = x;
    mYRes = y;
}



//**************************************************
//
// Class Texture Layer
// Set Colour File
// Sets the base file name for the colour component for the texture
//
void TextureLayer::SetColourFile(const char *basefname, TextureConnectionType type)
{
    mColourFile = basefname;   
    mColourType = type;
}


//**************************************************
//
// Class Texture Layer
// Sets the base file name for the alpha component for the texture
// Set Alpha File
//
void TextureLayer::SetAlphaFile(const char *alphafname, TextureConnectionType type)
{
    mAlphaFile = alphafname;
    mAlphaType = type;
}


//===========================================================================
// TextureLayer::Load
//===========================================================================
// Description: Loads the texture file for this texture layer.
//
//              First an attempt is made to load the texture via the Pure3D
//              libraries; if this fails, the texture is loaded via Maya's
//              IFF loader.
//
//              Colour and Alpha images are combined into a single Texture.
//
//              Called from TextureAnimNode::AddCurrentTextureToInventory()
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (bool): TRUE if successful; else FALSE.
//
//===========================================================================
bool TextureLayer::Load(void)
{
    // No colour map, no texture at all
    if ( (mColourFile.length() < 1) && (mAlphaFile.length() < 1) && ( mTransparency == 0.0 ) ) return false;

    MString cfoundname;
    MString afoundname;
    bool cfound = false;
    bool afound = false;

    if ( mColourType == File )
    {
        cfound = FindFile(mColourFile, cfoundname);
    }
    else if (mColourType == Procedural) 
    {
        mColourMap = CreateProceduralTexture(mColourFile.asChar(), mXRes, mYRes, mObjectDAGPath );
    }

    if ( mAlphaType == File )
    {
        afound = FindFile(mAlphaFile, afoundname);
    }
    else if ( mAlphaType == Procedural ) 
    {
        mAlphaMap = CreateProceduralTexture(mAlphaFile.asChar(), mXRes, mYRes, mObjectDAGPath );
    }

    // Normal file textures
    // Just Colour
    if (cfound && !afound)
    {
        mColourMap = CreateImageFromP3DPipe(cfoundname.asChar());
        if (mColourMap == NULL) 
        {
            mColourMap = CreateImageFromMayaPipe(cfoundname.asChar());
        }
    }
    // Colour and alpha
    else if (cfound && afound)
    {
        mColourMap = CreateImageFromP3DPipe(cfoundname.asChar());
        if (mColourMap == NULL) 
        {
            mColourMap = CreateImageFromMayaPipe(cfoundname.asChar());
        }
        mAlphaMap  = CreateImageFromMayaPipe(afoundname.asChar());
        if ( mAlphaMap == NULL )
        {
            mAlphaMap  = CreateImageFromP3DPipe(afoundname.asChar());
        }
    }

    // If Transparency is dialed greater than 0.0 but is not mapped, 
    // create a complementary map.
    // REMOVED 4 Oct 2002: Replaced with .emissiveAlpha attribute
//    if ( !afound && ( mTransparency > 0.0 ) )
//    {
//        int width = mXRes;
//        int height = mYRes;
//
//        if ( mColourMap != NULL )
//        {
//            width = mColourMap->GetWidth();
//            height = mColourMap->GetHeight();
//        }
//                
//        mAlphaMap = new tlImage( width, height, 24, false, false );
//        mAlphaMap->Fill( tlColour( mTransparency, mTransparency, mTransparency ) );
//        afound = true;
//    }


    // alpha and not colour
    if (!cfound && afound)
    {
        if ( mAlphaMap == NULL )    // only if it was not created implicitly above
        {
            mAlphaMap  = CreateImageFromMayaPipe(afoundname.asChar());
        }

        // Now create a stand-in colour map filled with the diffuse colour.
        // The alpha map will be combined with this below.
        mColourMap = new tlImage( mAlphaMap->GetWidth(), mAlphaMap->GetHeight(), 32, false, true );
        mColourMap->Fill( mDiffuse );
        mColourMap->SetName( afoundname.asChar() );
    }

    // Make sure that the colour image loaded OK
    if (mColourMap == NULL)
    {
        if (cfoundname.length() <= 0)
        {
            cfoundname = "MISSING_IMAGE";
        }
        mColourMap = MakeMissingTexture(cfoundname.asChar());

//        MString msg = "Cannot load image ";
//        msg += mColourFile;
//        msg += ", replacing with hot pink.";
//        MGlobal::displayWarning(msg);
        gExportLog.Add( CExportLogEntry( ExportLog::kDiskImageNotFoundReplaced, mColourFile ) );
    }

    // Make sure that the alpha image loaded OK
    if ((mAlphaFile.length() > 0) && (mAlphaMap == NULL))
    {
//        MString msg = "Cannot load image ";
//        msg += mAlphaFile;
//        msg += ", ignoring alpha map.";
//        MGlobal::displayWarning(msg);

        gExportLog.Add( CExportLogEntry( ExportLog::kDiskImageNotFoundAlphaIgnored, mAlphaFile ) );
    }

    // Combine the alpha and colour maps
    // Creates the mTexture image
    CombineColourAndAlpha();


    // If there is a colour map, it went well enough to call it a success
    if (mColourMap != NULL)
    {
        return true;
    }
    
    return false;
}



//**************************************************
//
// Class Texture Layer
// Add To Inventory
//
//
void TextureLayer::AddToInventory(const MObject &mayaObj,tlInventory *inv)
{
    bool bStored = false;

    MFnDependencyNode node(mayaObj);

    if (!node.isFromReferencedFile()||!ExporterOptions::ExportAnimReferencesOnly())
    {
        // Don;t even bother if there is no texture here
        if (mTexture == NULL) return;

        // Only put one copy of the texture into the inventory
        tlTexture *tex = toollib_find<tlTexture>(inv, mTexture->GetName());

        if (tex == NULL) 
        {
            inv->Store(mTexture);

            // MEMORY LEAK PATCH: 30 May 2002
            // tlInventory is now responsible for clearing tlTexture object.
            // Set local pointer to NULL -- fuggedabudit.
            mTexture = NULL;
            bStored = true;
            // END MEMORY LEAK PATCH
        }
        else
        {
            MString msg = "Found duplicate texture ";
            msg += mTexture->GetName();
            MGlobal::displayWarning(msg);
        }
    }

    // MEMORY LEAK PATCH: 30 May 2002
    if ( bStored )
    {
        // tlTexture is now NULL and invalid.
        // Clear all texture information.
        Clear();
    }
    // END MEMORY LEAK PATCH
}



//**************************************************
//
// Class Texture Layer
// Find File
// Private Method
//
bool TextureLayer::FindFile(MString &base, MString &foundfname)
{

    if (base.length() < 1) return false;

    //cout << "Trying to load texture file: " << base.asChar() << endl;

    // get the user path from Maya
    MString userpath;
    MGlobal::executeCommand("workspace -fn", userpath);
    userpath += "\\";

    // Get the texture paths from maya
    MString pathscombined;
    MGlobal::executeCommand("workspace -rte textures", pathscombined);
    MStringArray texture_paths, image_paths, source_image_paths;
    pathscombined.split(';', texture_paths);

    // get the source images paths from maya
    MGlobal::executeCommand("workspace -rte sourceImages", pathscombined);
    pathscombined.split(';', source_image_paths);

    // get the source images paths from maya
    MGlobal::executeCommand("workspace -rte images", pathscombined);
    pathscombined.split(';', image_paths);


    int a;
    for (a = 0; a < (int) texture_paths.length(); a++) texture_paths[a] += "\\"; 
    for (a = 0; a < (int) source_image_paths.length(); a++)   source_image_paths[a] += "\\"; 
    for (a = 0; a < (int) image_paths.length(); a++)   image_paths[a] += "\\"; 

    // try just the base name

    foundfname = base;
    fConvertPathDelimiters(foundfname);
    if (fexists(foundfname)) return true;

    // try with the user path
    foundfname = userpath;
    foundfname += base;
    fConvertPathDelimiters(foundfname);
    if (fexists(foundfname)) return true;


    // Look in all of the other dirs specified for textures
    for (a = 0; a < (int)texture_paths.length(); a++)
    {
        foundfname = texture_paths[a];
        foundfname += base;
        fConvertPathDelimiters(foundfname);
        if (fexists(foundfname)) return true;
    }

    for (a = 0; a < (int)texture_paths.length(); a++)
    {
        foundfname =  userpath;
        foundfname += texture_paths[a];
        foundfname += base;
        fConvertPathDelimiters(foundfname);
        if (fexists(foundfname)) return true;
    }

    // Look in all of the other dirs specified for images
    for (a = 0; a < (int)source_image_paths.length(); a++)
    {
        foundfname = source_image_paths[a];
        foundfname += base;
        fConvertPathDelimiters(foundfname);
        if (fexists(foundfname)) return true;
    }

    for (a = 0; a < (int)source_image_paths.length(); a++)
    {
        foundfname =  userpath;
        foundfname += source_image_paths[a];
        foundfname += base;
        fConvertPathDelimiters(foundfname);
        if (fexists(foundfname)) return true;
    }

    // Look in all of the other dirs specified for images
    for (a = 0; a < (int)image_paths.length(); a++)
    {
        foundfname = image_paths[a];
        foundfname += base;
        fConvertPathDelimiters(foundfname);
        if (fexists(foundfname)) return true;
    }

    for (a = 0; a < (int)image_paths.length(); a++)
    {
        foundfname =  userpath;
        foundfname += image_paths[a];
        foundfname += base;
        fConvertPathDelimiters(foundfname);
        if (fexists(foundfname)) return true;
    }


    // we have failed, clear the return name and return failure
//    MString msg = "Failed to find texture file ";
//    msg += base;
//    MGlobal::displayError(msg);
//    gExportLog.Add( CExportLogEntry( ExportLog::kDiskImageNotFound, base ) );

    foundfname = "";
    return false;      
}



//===========================================================================
// TextureLayer::CreateImageFromP3DPipe
//===========================================================================
// Description: Attempts to load the specified image using the tlImage
//              class.
//
// Constraints: 
//
//  Parameters: const char* fname: The filepath to the image.
//
//      Return: (tlImage*): Pointer to the tlImage data; NULL if unsuccessful.
//
//===========================================================================
tlImage *TextureLayer::CreateImageFromP3DPipe(const char *fname)
{

    tlImage *image = new tlImage;

    bool ok = image->Load(fname);

    if (!ok) 
    {
        delete image;
        return NULL;
    }

    // If width or height is not a power of 2, delete the image and abort.
    if ((image->GetWidth() & (image->GetWidth() - 1)) || (image->GetHeight() & (image->GetHeight() - 1)))
    {
        delete image;
        return NULL;
    }

    image->SetName(mTextureName.asChar());

    return image;
}


//===========================================================================
// TextureLayer::CreateImageFromMayaPipe
//===========================================================================
// Description: Loads the specified image via Maya's IFFimageReader class
//              and copies the data to a new tlImage object.
//
// Constraints: 
//
//  Parameters: const char* fname: The filepath for the image to load.
//
//      Return: (tlImage*): Pointer to the tlImage data; NULL if unsuccessful.
//
//===========================================================================
tlImage *TextureLayer::CreateImageFromMayaPipe(const char *fname)
{

    IFFimageReader reader;
    MStatus rstat;

    rstat = reader.open(fname);
    if (rstat != MS::kSuccess)
    {
        gExportLog.Add( CExportLogEntry( ExportLog::kDiskImageNotFound, fname ) );
        return NULL;
    }

    int imageWidth, imageHeight;
    rstat = reader.getSize(imageWidth, imageHeight);
    if (rstat != MS::kSuccess)
    {   
        reader.close();
        return NULL;
    }

    // Test image for power of two size
    if ((imageWidth & (imageWidth - 1)) || (imageHeight & (imageHeight - 1)))
    {
        MString dim = fname;
        dim += " (";
        dim += imageWidth;
        dim += "×";
        dim += imageHeight;
        dim += ")";
        gExportLog.Add( CExportLogEntry( ExportLog::kImageDimensionsNotPowerOfTwo, dim ) );

        return NULL;
    }


    rstat = reader.readImage();
    if (rstat != MS::kSuccess)
    {
        reader.close();
        return NULL;
    }

    // Now we can read the image into our area.  We only deal with 8 bit colours
    // so if it is a 16 bit file, we will truncate down to 8 bits.
    int   x, y;
    const byte *pixel = reader.getPixelMap();

    int bytesPerChannel = reader.getBytesPerChannel();
    int bytesPerPixel   = (bytesPerChannel == 1) ? 4 : 8;

    // Need to see if we actually read in an image file
    if (pixel == NULL) return NULL;

    // image now has the pixels truncated down to 8 bits per channel
    // with the correct RGBA ordering, time to build a tlImage for it
    tlImage *tlimage = new tlImage(imageWidth, imageHeight, 32, false, false);

//    tlimage->SetName(mTextureName.asChar());

    // Behavior change: 11 Mar 2002
    // Now names the tlImage using the filename from the specified path.
    // This allows, for example, the alpha layer to have a different
    // name than the color layer.  This was added specifically to allow
    // reporting of colour/alpha dimension mismatches.
    // (see TextureLayer::CombineColourAndAlpha()
    char jfn[_MAX_PATH];
    strcpy( jfn, fname );
    tlimage->SetName(JustFileName(jfn));

    for ( y = 0; y < imageHeight; y++ ) 
    {
        for ( x = 0; x < imageWidth; x++, pixel += bytesPerPixel ) 
        {
            // IFFimageReader uses 0xbbggrraa format.
            if ( bytesPerChannel == 1 )
            {
                tlimage->SetPixel(x, y, tlColour(pixel[2], pixel[1], pixel[0], pixel[3]));
            } 
            else 
            {
                // least significant bits used
                tlimage->SetPixel(x, y, tlColour(pixel[4], pixel[2], pixel[0], pixel[6]));
            }   
        }                   
    }   

    // Done fiddling with the Maya image reader, close it down
    rstat = reader.close();

    // Fix inverted image
    tlimage->FlipY();

    return tlimage;
}



//*****************************************************
//
// Class Texture Layer
// MakeTextureFromProceduralTexture
//
//
tlImage *TextureLayer::CreateProceduralTexture(const char *texturename, int xres, int yres, const MDagPath& dagPath )
{
    //
    // Will use the convertSolidTx command to generate the image to use.
    //

    //if ( userOptions->tex.ignorePlacement )
    //{
    //   saveTransforms( textureName );
    //}

    char buf[1024];
    _getcwd(buf,1024);

    char temp_tex_file[1024];
    //GetTempPath(256, temp_tex_file);
    sprintf(temp_tex_file, "%s/%s_convert", buf, texturename);
    
    char temp_file_node[256];
    strcpy(temp_file_node, texturename);
    strcat(temp_file_node, "_file");

    unsigned a;
    for (a = 0; a < strlen(temp_tex_file); a++) 
    {
        if (temp_tex_file[a] == '\\') temp_tex_file[a] = '/';
    }

    char command[4096];
    sprintf(command, "convertSolidTx -rx %d -ry %d -n \"%s\" -fin \"%s\" %s %s",
                xres, yres,                                     // size
                temp_file_node,                                 // name of file node
                temp_tex_file,                                  // output file name
                texturename,                                    // texture
                dagPath.fullPathName().asChar() );              // mesh object

    //MGlobal::displayInfo(command);
    //return NULL;

    MStatus status = MGlobal::executeCommand(command);

    //if (userOptions->tex.ignorePlacement)
    //{
    //   restoreTransforms( textureName );
    //}

    if (status != MS::kSuccess)
    {
//        MString msg = "error from convertSolidTx ";
//        msg += status.errorString();
//        MGlobal::displayError(msg);
        gExportLog.Add( CExportLogEntry( ExportLog::kProceduralTextureFailure, texturename ) );
        return NULL;
    }

    tlImage *image = CreateImageFromMayaPipe(temp_tex_file);

    sprintf(command, "delete %s", temp_file_node);
    MGlobal::executeCommand(command);
    unlink(temp_tex_file);

    return image;

}



//**************************************************
//
// Class Texture Layer
// Combine Colour And Alpha
// Combines the colour and alpha channels
// Private Method
//
void TextureLayer::CombineColourAndAlpha()
{
    if (mTexture != NULL) delete mTexture;

    int bitdepth = mColourMap->GetBpp();
    bool ispal   = mColourMap->IsPalettized();

    // If both Colour and Alpha map exist, AND
    // if the dimensions of the Colour map do not match the Alpha map,
    // then warn user.
    if ( ( ( mColourMap != NULL ) && ( mAlphaMap != NULL ) ) &&
         (
           ( mColourMap->GetWidth() != mAlphaMap->GetWidth() ) ||
           ( mColourMap->GetHeight() != mAlphaMap->GetHeight() )
         )
       )
    {
        MString           message;
        message  = mColourMap->GetName();
        message += " [ ";
        message += mColourMap->GetWidth();
        message += "×";
        message += mColourMap->GetHeight();
        message += " ] vs. ";
        message += mAlphaMap->GetName();
        message += " [ ";
        message += mAlphaMap->GetWidth();
        message += "×";
        message += mAlphaMap->GetHeight();
        message += " ]";
        gExportLog.Add( CExportLogEntry( ExportLog::kColourAlphaDimensionMismatch, message ) );
    }

    mColourMap->FillAlphaFromImageColour(mAlphaMap);

    // Only invert the alpha supplied from maps, the P3D default alpha is opaque!
    if (mAlphaMap != NULL) mColourMap->InvertAlpha();

    mTexture = new tlTexture(*mColourMap);
    mTexture->SetName( mTextureName.asChar() );
    if ((bitdepth < 24) && (mAlphaMap != NULL || mColourMap->HasAlpha()))
        mTexture->Convert(bitdepth, ispal, true);
}




//**************************************************
//
// Class Texture Layer
// Make Missing Texture
// If a file texture cannot be found by the exporter a 
// hot pink one will be created to fill in for it.
// Private Method
//
tlImage *TextureLayer::MakeMissingTexture(const char *name)
{
    // Create the fake image
    tlImage *image = new tlImage(16, 16, 32, false, false);

    image->Fill(tlColour(1.0f, 0.0f, 1.0f, 1.0f));
    image->SetName(name);

    return image;
}





//*********************************************************************************
//*********************************************************************************
//*********************************************************************************





//*******************************************************
//
// Class Texture Extract
// Default Constructor
//
//
TextureExtract::TextureExtract(void) :
    mInventory(NULL),
    mColourLayerCount(0),
    mColourLayerTimeIndex(NULL),
    mColourLayer(NULL),
    mIncandescenceLayerCount(0),
    mIncandescenceLayerTimeIndex(NULL),
    mIncandescenceLayer(NULL)
{

}

//*******************************************************
//
// Class Texture Extract
// Cleanup
//
//
void TextureExtract::Cleanup(void)
{
    
    int a;
    for (a = 0; a < mColourLayerCount; a++)
    {
        if (NULL != mColourLayer[mColourLayerTimeIndex[a]]) delete mColourLayer[mColourLayerTimeIndex[a]];
        mColourLayer[mColourLayerTimeIndex[a]] = NULL;
    }

    for (a = 0; a < mIncandescenceLayerCount; a++) 
    {
        if (NULL != mIncandescenceLayer[mIncandescenceLayerTimeIndex[a]]) delete mIncandescenceLayer[mIncandescenceLayerTimeIndex[a]];
        mIncandescenceLayer[mIncandescenceLayerTimeIndex[a]] = NULL;
    }

    if (mColourLayer != NULL)        delete[] mColourLayer;
    if (mIncandescenceLayer != NULL) delete[] mIncandescenceLayer;

    if (mColourLayerTimeIndex != NULL)        delete[] mColourLayerTimeIndex;
    if (mIncandescenceLayerTimeIndex != NULL) delete[] mIncandescenceLayerTimeIndex;

    mColourLayer                 = NULL;
    mColourLayerTimeIndex        = NULL;
    mIncandescenceLayer          = NULL;
    mIncandescenceLayerTimeIndex = NULL;

    mColourLayerCount = 0;
    mIncandescenceLayerCount = 0;
}

//===========================================================================
// TextureExtract::Extract
//===========================================================================
// Description: The main function called (from MaterialProcess::ExtractTextures)
//              to extract the texture file information for the specified
//              shader.
//
// Constraints: 
//
//  Parameters: const MObject& material: The Maya Material node.
//              const MString& attr: The attribute to trace for colour file texture nodes.
//              const MString& alphaAttr: The attribute to trace for alpha nodes.
//              const int depth: Typically 1; >1 specifies volume shader.
//              MString &texture: Storage for the texture name.
//
//      Return: (bool): TRUE if successful; else FALSE.
//
//===========================================================================
bool TextureExtract::Extract(const MObject& material, const MString& attr, const MString& alphaAttr, const int depth, MString &texture)
{
    texture = "";

    if (mInventory == NULL) return false;

    MStatus                     status;

    // Make a node dunction set from the shader node
    MFnDependencyNode           node;
    MPlug                       plug;
    status = node.setObject(material);
    MString material_name = node.name(&status);

    // Has the user requested mipmaps for this texture?
    const int kMipmapMinValues[8] = { 8, 16, 32, 64, 128, 256, 512, 1024 };
    bool bExportMipmaps = false;
    int mipmapMin = kMipmapMinValues[0];
    
    plug = node.findPlug( "exportMipmaps", &status );
    if ( status == MS::kSuccess )
    {
        plug.getValue( bExportMipmaps );
    }

    plug = node.findPlug( "mipmapmin", &status );
    if ( status == MS::kSuccess )
    {
        int enumIndex;
        plug.getValue( enumIndex );
        mipmapMin = kMipmapMinValues[enumIndex];
    }

    // Has this material node been processed already?
    MFnDependencyNode       fnDependNode( material );
    bool bQueued = TextureAnimNode::HasQueuedTexture( fnDependNode.name() );

    // If material node has already been processed, don't add it again.
    if ( ExporterOptions::ExportAnimations() && !bQueued )
    {
        TextureAnimNode*        pTextureAnim = new TextureAnimNode( material, attr, alphaAttr, this->mObjectDAGPath, depth, bExportMipmaps, mipmapMin );

        AnimNode::AddNode(pTextureAnim);

        // The TextureAnimNode self-initializes and sets its TextureName
        // to the currently loaded texture.  Store this name for a return value.
        texture = pTextureAnim->GetCurrentColourFile();
    }
    else
    {
        // Use transient TextureAnimNode object for the convenience of ::GetCurrentColorFile.
        // Note: This will add the material to TextureAnimNode's "queued" list, 
        //       so query its queued status before doing this.
        TextureAnimNode         textureAnim( material, attr, alphaAttr, this->mObjectDAGPath, depth, bExportMipmaps, mipmapMin );
        texture = textureAnim.GetCurrentColourFile();
    }

    Cleanup();
    return true;
}


//===========================================================================
// TextureExtract::GetConnection
//===========================================================================
// Description: Gets the name and type for the connection to the specified
//              plug on the specified object.
//
// Constraints: 
//
//  Parameters: const MString& object: The name of the Maya node.
//              const MString& attr: The name of the attribute to trace.
//              MString& connected: Storage for the name of the node
//                                  connected to the specified plug.
//              TextureConnectionType &type: Storage for the connection type.
//
//      Return: (bool): TRUE if successful; else FALSE.
//
//===========================================================================
bool TextureExtract::GetConnection(const MString& object, const MString& attr, MString &connected, TextureLayer::TextureConnectionType &type)
{
    MString      command;
    MStringArray result;
    MStatus      status;
    
    // Setup default exit
    type = TextureLayer::None;
    connected = "";

    // See if anything is conected
    command = MString("listConnections ") + object + MString(".") + attr + MString(";");
    status  = MGlobal::executeCommand(command, result);
    
    if (status != MS::kSuccess) return false;
    if (!result.length() || !result[0].length()) return false;

    // save the connected object
    connected = result[0];
    
    // See what type of object is connected
    command = MString("ls -st ") + result[0];
    status = MGlobal::executeCommand(command, result);
    if (status != MS::kSuccess) return false;


    // Is this a file texture?
    if ((result.length() == 2) && result[1].length() && (result[1] == MString("file")))
    {
        type = TextureLayer::File;
        return true;
    }

    // How 'bout a projected texture
    if ((result.length() == 2) && result[1].length() && (result[1] == MString("projection")))
    {
        type = TextureLayer::Projection;
        return true;
    }

    // Or perhaps I should assume it is a procedural one
    type = TextureLayer::Procedural;
    connected = result[0];
    return true;
}
