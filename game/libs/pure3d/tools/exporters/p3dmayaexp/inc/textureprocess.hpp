/*===========================================================================
    textureprocess.hpp
    created: Feb. 4, 2000
    Torre Zuk

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _TEXTUREPROCESS_HPP
#define _TEXTUREPROCESS_HPP


#include "tlInventory.hpp"
#include "tlTexture.hpp"
#include "tlImage.hpp"
//#include "tlPDDIEnum.hpp"


#include "exporteroptions.hpp"
#include "materialprocess.hpp"

#include <maya/MDoubleArray.h>



//**************************************************
//
// Class Texture Layer
//
//
//
class TextureLayer
{

 public:

    TextureLayer( const tlColour& diffuse = tlColour( 0.0f, 0.0f, 0.0f, 1.0f ), float transparency = 0.0F );
    ~TextureLayer();

    enum TextureConnectionType { None = 0, File, Procedural, Projection, Invalid, NumTextureConnectionTypes }; 

    // Sets the inventory name for this texture
    void SetTextureName(const char *texfname);
    void SetTextureResolution(int x, int y);
    void SetObjectDAGPath( const MDagPath& dagPath ) { mObjectDAGPath = dagPath; }

    // Sets the base file name for the colour and alpha components for the texture
    void SetColourFile(const char *basefname, TextureConnectionType type = File);
    void SetAlphaFile(const char *basefname, TextureConnectionType type = File);

    char *TextureName(void) { return (char *)mTextureName.asChar(); }
    char *ColourFile(void)  { return (char *)mColourFile.asChar();  }
    TextureConnectionType ColourType(void)  { return mColourType; }
    char *AlphaFile(void)   { return (char *)mAlphaFile.asChar();   }
    TextureConnectionType AlphaType(void)   { return mAlphaType; }

    MString &TextureNameM(void) { return mTextureName; }
    MString &ColourFileM(void)  { return mColourFile;  }
    MString &AlphaFileM(void)   { return mAlphaFile;   }

    // Loads and creates the texture
    bool Load(void);
    void AddToInventory(const MObject &mayaObj, tlInventory *inv);   

    void Clear( void );

    // Image map accessors
    tlTexture *Texture(void)   { return mTexture;   }
    tlImage   *ColourMap(void) { return mColourMap; }
    tlImage   *AlphaMap(void)  { return mAlphaMap;  }

 private:

    MString     mTextureName;
    MString     mColourFile;
    tlImage*    mColourMap;
    tlColour    mDiffuse;
    float       mTransparency;

    MString   mAlphaFile;
    tlImage *mAlphaMap;

    TextureConnectionType mColourType;
    TextureConnectionType mAlphaType;

    // This is the complete texture with the alpha and colour layers combined
    tlTexture  *mTexture;

    MDagPath                    mObjectDAGPath;
    int mXRes, mYRes;


    // Make sure that foundfname is at least 1024 characters long!
    bool    FindFile(MString &base, MString &foundfname);
    tlImage *CreateImageFromP3DPipe(const char *fname);
    tlImage *CreateImageFromMayaPipe(const char *fname);
    tlImage *CreateProceduralTexture(const char *fname, int xres, int yres, const MDagPath& dagPath );

    void CombineColourAndAlpha(void);
    
    tlImage *MakeMissingTexture(const char *name);
};

//***************************************
//
// class TextureTransform
//
//
class TextureTransform
{

 public:

    TextureTransform(const MString& texture_name);
  ~TextureTransform();

    bool SaveTransform(void);
    bool RestoreTransform(void);

    bool ZeroTransform(void);

 private:

    MString mTextureName;
    MString mPlacementName;
    bool    mFoundPlacement;
    
    bool  mSavedPlacement;

    MDoubleArray mRotateFrame; 
    MDoubleArray mTranslateFrame;
    MDoubleArray mRepeatUV;
    MDoubleArray mRotateUV;
    MDoubleArray mOffset;

};

//*******************************************************
//
// Class Texture Extract
//
//
class TextureExtract
{

 public:
        
    TextureExtract(void);
  ~TextureExtract() { ; }

    // So I don't have to pass these around everywhere inside the extractor
    void SetInventory(tlInventory *inv)           { mInventory = inv; }
    void SetObjectDAGPath( const MDagPath& dagPath )           { mObjectDAGPath = dagPath; }
    void SetProceduralResolution(int x, int y)    { mXProcRes = x; mYProcRes = y; }


    // Lots o'fun inside!
    bool Extract(const MObject& shader, const MString& plug, const MString& alphaplug, const int depth, MString &texture);
  
    // Simpler version, no texture animations or alpha
//    bool TextureExtract::SimpleExtract(MObject &mayaObj, MStringArray &textures);

    static bool GetConnection(const MString& object, const MString& plug, MString &connected, TextureLayer::TextureConnectionType &type);

 private:

    tlInventory*                mInventory;
    MDagPath                    mObjectDAGPath;

    bool                        mCyclic;
    int                         mColourLayerCount;
    int*                        mColourLayerTimeIndex;
    TextureLayer**              mColourLayer;

    int                         mIncandescenceLayerCount;
    int*                        mIncandescenceLayerTimeIndex;
    TextureLayer**              mIncandescenceLayer;
    
    int                         mXProcRes;
    int                         mYProcRes;

// ** BEGIN OBSOLETE **

//    bool                        CreateTextureLayerFromPlug(const MString& object, const MString& plug, TextureLayer **&layers, int *&time_index, int &layer_count, bool& cyclic);
//    bool                        GetFileTextureFilenames( const MString& texture, MStringArray &filename, bool& cyclic);

// ** END OBSOLETE **

    void Cleanup(void);
};



#endif // _TEXTUREPROCESS_HPP

