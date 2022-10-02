/*===========================================================================
   File:: tlLightmap.cpp

   Copyright (c) 2002 Radical Entertainment, Inc.  All rights reserved.
    
===========================================================================*/
#include "tlLight.hpp"
#include "tlLightmap.hpp"
#include "tlImage.hpp"
#include "tlPrimGroup.hpp"
#include "tlRay.hpp"
#include "tlTable.hpp"
#include "tlTexture.hpp"
#include "tlTriangleIntersect.hpp"
#include "tlVertex.hpp"
   
static const int DEFAULT_WIDTH  = 32;
static const int DEFAULT_HEIGHT = 32;
static const int DEFAULT_SAMPLING_SCALE = 1;
static const char DEFAULT_NAME[] = "ProjectedLightmap";
static const float INVALID = -1.0f;
static const float FTINY   = 1.0e-3f;
static const int BIG_NUM = (int)1.0e6f;
static const int STRING_LENGTH = 128;
static const tlColour COLOUR_WHITE(0xffffffff);
static const tlColour COLOUR_BLACK(0xff000000);
static const tlColour COLOUR_GRAY(0xff7f7f7f);
static const tlColour COLOUR_INVALID(0xffff00ff);

tlProjectedLightmap::tlProjectedLightmap() :
    mWidth( DEFAULT_WIDTH ), mHeight( DEFAULT_HEIGHT ),
    mSamplingScale( DEFAULT_SAMPLING_SCALE ),
    mSampleWidth( DEFAULT_SAMPLING_SCALE * DEFAULT_WIDTH ),
    mSampleHeight( DEFAULT_SAMPLING_SCALE * DEFAULT_HEIGHT ),
    mDensity( INVALID ), mName( NULL ), mTexture( NULL ),
    mIsValid( false), mUseColourTranslucency( false )
{
    mName = new char[STRING_LENGTH + 1];
    
    tlImage image(mSampleWidth, mSampleHeight, 24);
    mTexture = new tlTexture(image);
    SetName( DEFAULT_NAME );

    mWorld2UV.IdentityMatrix();

    mLightmapBounds.Invalidate();
    mShadowBounds.Invalidate();
}

tlProjectedLightmap::~tlProjectedLightmap()
{
    delete[] mName;
}

void tlProjectedLightmap::AddLightmapGeo( tlPrimGroup *prm )
{
    Invalidate();

    mLightmapGeo.Append( prm );

    // Extend the bounding box with this new primgroup.
    int vertIdx;
    for( vertIdx = 0; vertIdx < prm->GetVertexCount(); vertIdx++ )
    {
        const tlVertex *vert = prm->GetVertex( vertIdx );
        mLightmapBounds.AddPoint( vert->GetCoord() );
    }
}
 
void tlProjectedLightmap::AddShadowGeo( tlPrimGroup *prm )
{
    Invalidate();

    mShadowGeo.Append( prm );

    // Extend the bounding box with this new primgroup.
    int vertIdx;
    for( vertIdx = 0; vertIdx < prm->GetVertexCount(); vertIdx++ )
    {
        const tlVertex *vert = prm->GetVertex( vertIdx );
        mShadowBounds.AddPoint( vert->GetCoord() );
    }
}

void tlProjectedLightmap::AddLight( tlLight *light )
{
    Invalidate();

    mLights.Append( light );
}

// Return the lightmap texture coordinate corresponding to a point in world space.
tlUV tlProjectedLightmap::UV( const tlPoint &worldCoord )
{
    Validate();
    
    tlPoint uvw = worldCoord * mWorld2UV;
    
    tlUV uv( uvw.x, uvw.y );

    return uv;
}

void tlProjectedLightmap::SetSuperSampling( int scale )
{
    Invalidate();

    mSamplingScale = rmt::Max( 1, scale );
}

void tlProjectedLightmap::SetWidth( int width )
{
    Invalidate();

    mDensity = INVALID;
    mWidth = rmt::Max( 1, width );
}

void tlProjectedLightmap::SetHeight( int height )
{
    Invalidate();

    mDensity = INVALID;
    mHeight = rmt::Max( 1, height );
}

void tlProjectedLightmap::SetName( const char *name )
{
    if(name == NULL)
    {
        return;
    }
       
    strncpy( mName, name, STRING_LENGTH );
    
    if(mTexture != NULL)
    {
        mTexture->SetName( name );
        if( mTexture->GetImageCount() > 0 )
        {
            tlImage *image = mTexture->GetImage( 0 );
            image->SetName( name );
        }
    }
}   

void tlProjectedLightmap::SetWorldDensity( float density )
{
    Invalidate();

    mDensity = density;
}

tlTexture* tlProjectedLightmap::GetTexture()
{
    Validate();

    // HBW: Need to resample texture in requested size, ( mWidth, mHeight ).
    // Also should remap to a 2-power texture.

    return mTexture;
}

int tlProjectedLightmap::GetWidth()
{
    Validate();

    return mWidth;
}

int tlProjectedLightmap::GetHeight()
{
    Validate();

    return mHeight;
}

void tlProjectedLightmap::GenerateLightmap()
{
    tlImage *image = mTexture->GetImage( 0 );

    float du = 1.0f / image->GetWidth();
    float dv = 1.0f / image->GetHeight();

    const tlPoint direction = GetNormal();

    int x, y;
    int MAX_X = image->GetWidth() - 1;
    int MAX_Y = image->GetHeight() - 1;

    // image->Fill(COLOUR_GRAY);
    image->Fill(COLOUR_INVALID);

    bool *valid = new bool[(MAX_X + 1) * (MAX_Y + 1)];
    int i;
    for( i = 0; i < (MAX_X + 1) * (MAX_Y + 1); i++)
    {
        valid[i] = false;
    }

    // Fill in lightmap with directly mapped pixels.
    for(x = 0; x <= MAX_X; x++)
    {
        float u = du * ( 0.5f + (float)x );
        for(y = 0; y <= MAX_Y; y++)
        {
            float v = dv * ( 0.5f + (float)( MAX_Y - y ) );

            const tlPoint uvPos(u, v, 0.0f);
            const tlPoint pos = uvPos * mUV2World;
            const tlPoint check = pos * mWorld2UV;

            // Create 2 test ray in oposite directions.
            tlPoint begin = pos + (-1) * direction;
            tlPoint end = pos + (float)BIG_NUM * direction;
            tlRay forwardRay( begin, end, COLOUR_WHITE );

            begin = pos + direction;
            end = pos + (-BIG_NUM) * direction;
            tlRay reverseRay( begin, end, COLOUR_WHITE );

            // Check if either of these rays intesect with lightmap geo.
            if( mLightmapGeoBSP.BlockTest( forwardRay ) || 
                mLightmapGeoBSP.BlockTest( reverseRay ) )
            {
                const tlTriangle *tri = mLightmapGeoBSP.GetLastIntersectTri();
                tlPoint pnt = mLightmapGeoBSP.GetLastIntersectPoint();

                // Compute the lightmap colour.
                tlColour c = GetColourAtPoint( pnt, tri );
                if(c == COLOUR_INVALID)
                {
                    c = tlColour(0xffff00fe); // Use bright pink only for invalid colours.
                }
                image->SetPixel( x, y, c );
                valid[y * MAX_X + x] = true;
            }

        }
    }

    // Now fill in boundary pixels with valid neighbors.
    for(x = 0; x <= MAX_X; x++)
    {
        for(y = 0; y <= MAX_Y; y++)
        {
            if(!valid[y * MAX_X + x]) // Boundary pixels are marked as invalid
            {
                // Sampling these neighboring pixels.
                const int X_OFFSET[8] = { -1, -1, -1,  0, 0,  1,  1,  1 };
                const int Y_OFFSET[8] = { -1,  0,  1, -1, 1, -1,  0,  1 };
                const float SCALE[8] = {  0.125f, 0.125f, 0.125f, 0.125f,
                                    0.125f, 0.125f, 0.125f, 0.125f };

                tlColour c = COLOUR_BLACK;
                float normalize = 0.0f;
                for( i = 0; i < 8; i++ )
                {
                    const int nearX = x + X_OFFSET[i];
                    const int nearY = y + Y_OFFSET[i];
                    if(nearX < 0 || nearX > MAX_X || nearY < 0 || nearY > MAX_Y)
                    {
                        continue; // Beyond edge of image.
                    }
                    if(!valid[nearY * MAX_X + nearX])
                    {
                        continue; // No valid data.
                    }
                    const tlColour nearColour = image->GetPixel( nearX, nearY );

                    c = c + nearColour * SCALE[i];
                    normalize += SCALE[i];
                }
                if(normalize > 0.1f)
                {
                    c = c * (1.0f / normalize);
                    image->SetPixel( x, y, c );
                }                    
            }                    
        }
    }

    if( mSamplingScale > 1 )
    {
        MinifyLightmap();
    }

    // Change invalid pixels to gray.
    // HBW TODO: fill in all invalid pixels rather than just boundaries.
    // When this is done, the following code is not needed.
    image = mTexture->GetImage( 0 );

    // Data size might have changed with MinifyLightmap().
    MAX_X = image->GetWidth() - 1;
    MAX_Y = image->GetHeight() - 1;

    for( x = 0; x <= MAX_X; x++ )
    {
        for( y = 0; y <= MAX_Y; y++ )
        {
            tlColour c = image->GetPixel( x, y );
            if(c == COLOUR_INVALID)
            {
                image->SetPixel(x, y, COLOUR_GRAY);
            }
        }
    }

    delete[] valid;
}

void tlProjectedLightmap::ConstructBSPTree( tlBSPTree *tritree, tlTable<tlPrimGroup*> &prms,
                                            const tlBox &bounds )
{
    const float EXPANSION = 2.0f;
    const float MAXIMUM_SPLIT_NUM = 30;
    tlTable<tlTriangleIntersect*> triangles;

    int prmIdx;
    for( prmIdx = 0; prmIdx < prms.Count(); prmIdx++ )
    {
        tlPrimGroup *prm = prms[prmIdx];
        
        int triIdx;
        for( triIdx = 0; triIdx < prm->GetTriangleCount(); triIdx++ )
        {
            tlTriangleIntersect *tri = new tlTriangleIntersect(prm->GetTriangle( triIdx ) );
            tri->SetPrimGroup( prm );

            triangles.Append( tri );
        }
    }

    tlBox box( bounds );

    // Make sure the box has volume.
    if( box.high.x == box.low.x )
    {
        box.high.x += EXPANSION;
        box.low.x  -= EXPANSION;
    }
    else if( box.high.y == box.low.y )
    {
        box.high.y += EXPANSION;
        box.low.y  -= EXPANSION;
    }
    else if( box.high.z == box.low.z )
    {
        box.high.z += EXPANSION;
        box.low.z  -= EXPANSION;
    }
    
    box.high.x += FTINY;
    box.low.x  -= FTINY;
    box.high.y += FTINY;
    box.low.y  -= FTINY;
    box.high.z += FTINY;
    box.low.z  -= FTINY;
    
    tlPoint p;
    p.x = box.Length() / MAXIMUM_SPLIT_NUM;
    p.y = box.Width()  / MAXIMUM_SPLIT_NUM;
    p.z = box.Height() / MAXIMUM_SPLIT_NUM;

    tlBSPTreeNode * node = tritree->Construct( triangles, box, p );
    tritree->SetRoot( node );
}

// Compute the transform matrices between UV space and world space.  The target width
// and height are the pixel size of the image to be actually written to.  mWidth and
// mHeight are the full image size which may be larger (eg. padded to make 2^N.)
void tlProjectedLightmap::ComputeTransforms( int targetWidth, int targetHeight )
{
    const tlMatrix SWAP_XY = tlMatrix( 0.0f, 1.0f, 0.0f, 0.0f,
                                       1.0f, 0.0f, 0.0f, 0.0f,
                                       0.0f, 0.0f, 1.0f, 0.0f,
                                       0.0f, 0.0f, 0.0f, 1.0f );
    const tlMatrix SWAP_YZ = tlMatrix( 1.0f, 0.0f, 0.0f, 0.0f,
                                       0.0f, 0.0f, 1.0f, 0.0f,
                                       0.0f, 1.0f, 0.0f, 0.0f,
                                       0.0f, 0.0f, 0.0f, 1.0f );

    float useableFractionX = (float)(targetWidth  - 2 ) / (float)mSampleWidth;
    float useableFractionY = (float)(targetHeight - 2 ) / (float)mSampleHeight;

    tlPoint size = mLightmapBounds.high - mLightmapBounds.low;
    int axis;
    for( axis = 0; axis < 3; axis++ )
    {
        if( size[axis] <= FTINY )
        {
            size[axis] = 1.0f;  // Make sure inverse will not blow up.
        }
    }

    // Compute world to UV matrix.
    mWorld2UV.IdentityMatrix();
    mWorld2UV = mWorld2UV * Translate( -mLightmapBounds.low.x,
                                       -mLightmapBounds.low.y,
                                       -mLightmapBounds.low.z);
    mWorld2UV = mWorld2UV * Scale( 1.0f / size.x, 1.0f / size.y, 1.0f / size.z );

    switch( GetNormalAxis() )
    {
        case 0:
            mWorld2UV = mWorld2UV * SWAP_XY;
            mWorld2UV = mWorld2UV * SWAP_YZ;
            break;
        case 1:
            mWorld2UV = mWorld2UV * SWAP_YZ;
            break;
        case 2:
            break;
    }

    mWorld2UV = mWorld2UV * Scale( useableFractionX, useableFractionY, 1.0f );
    mWorld2UV = mWorld2UV * Translate( 1.0f / (float)mSampleWidth, 1.0f / (float)mSampleHeight, 0.0f );

    // Compute UV to world matrix.
    mUV2World.IdentityMatrix();
    mUV2World = mUV2World * Translate( -1.0f / (float)mSampleWidth, -1.0f / (float)mSampleHeight, 0.0f );
    mUV2World = mUV2World * Scale( 1.0f / useableFractionX, 1.0f / useableFractionY, 1.0f );

    switch( GetNormalAxis() )
    {
        case 0:
            mUV2World = mUV2World * SWAP_YZ;
            mUV2World = mUV2World * SWAP_XY;
            break;
        case 1:
            mUV2World = mUV2World * SWAP_YZ;
            break;
        case 2:
            break;
    }

    mUV2World = mUV2World * Scale( size.x, size.y, size.z );
    mUV2World = mUV2World * Translate( mLightmapBounds.low.x,
                                       mLightmapBounds.low.y,
                                       mLightmapBounds.low.z);
}

void tlProjectedLightmap::Invalidate()
{
    mIsValid = false;
}

void tlProjectedLightmap::Validate()
{
    // Already validated.
    if( mIsValid )
    {
        return;
    }

    // No geo on which to construct lightmap (i.e. nothing to do).
    if( mLightmapGeo.Count() == 0 )
    {
        return;
    }

    ConstructBSPTree( &mLightmapGeoBSP, mLightmapGeo, mLightmapBounds );
    ConstructBSPTree( &mShadowGeoBSP, mShadowGeo, mShadowBounds );

    int targetWidth  = mWidth;
    int targetHeight = mHeight;

    if( mDensity > 0.0f ) // Valid sample density.
    {
        int normalAxis = GetNormalAxis();
        tlPoint diagonal = mLightmapBounds.high - mLightmapBounds.low;

        float width  = ( normalAxis == 1 ) ? diagonal.x : diagonal.y;
        float height = ( normalAxis == 2 ) ? diagonal.y : diagonal.z;

        targetWidth  = (int)( rmt::Ceil( width  * mDensity ) );
        targetHeight = (int)( rmt::Ceil( height * mDensity ) );

        mWidth  = rmt::NextPow2( targetWidth );
        mHeight = rmt::NextPow2( targetHeight );
    }

    mSampleWidth  = mSamplingScale * mWidth;
    mSampleHeight = mSamplingScale * mHeight;
    targetWidth   *= mSamplingScale;
    targetHeight  *= mSamplingScale;

    ComputeTransforms( targetWidth, targetHeight );

    // Set the texture dimensions
    mTexture->SetSize( mSampleWidth, mSampleHeight );
    mTexture->GetImage( 0 )->Resize( mSampleWidth, mSampleHeight );

    // Lightmap the scene.
    GenerateLightmap();

    mIsValid = true;
}

int tlProjectedLightmap::GetNormalAxis() const
{
    int minAxis = 1;

    tlPoint diagonal( mLightmapBounds.high - mLightmapBounds.low );

    float minSize = 1e10f;
    int axis;
    for( axis = 0; axis < 3; axis++ )
    {
        if( diagonal[axis] < minSize )
        {
            minAxis = axis;
            minSize = diagonal[minAxis];
        }
    }

    return minAxis;
}

tlPoint tlProjectedLightmap::GetNormal() const
{
    const static float NORMALS[3][3] = { { 1.0f,  0.0f, 0.0f },
                                         { 0.0f, -1.0f, 0.0f },
                                         { 0.0f,  0.0f, 1.0f } };

    int i = GetNormalAxis();
    tlPoint normal( NORMALS[i][0], NORMALS[i][1], NORMALS[i][2] );

    return normal;
}

tlColour tlProjectedLightmap::GetColourAtPoint( const tlPoint &pos, const tlTriangle *tri )
{
    tlColour colour(COLOUR_BLACK);

    int i;
    for( i = 0; i < mLights.Count(); i++ )
    {
        bool bInShadow = false;
        tlColour transColour = COLOUR_BLACK;

        tlLight *light = mLights[i];
        
        // If this point is not lighted by this light go to next
        // sampling point.
        if( !( light->IsLighted( pos ) ) )
        {
            continue;
        }
        
        tlPoint normal = tri->NormalAtPoint( pos );
        
        // If lights[i] is enabled to cast shadow, then we test if the
        // lights are blocked by geometry or not.
        if( light->CastShadow( ) == true ){
            int meshIdx = -1;
            
            // Test if the light is blocked by a mesh or not.
            tlPoint begin = pos + FTINY * normal;
            tlPoint end;
            if( light->Type() == tlLight::Directional )
            {
                end = begin + (-BIG_NUM) * light->Direction();
            }
            else
            {
                end   = mLights[i]->Position();
            }
            tlRay ray( begin, end, COLOUR_WHITE );
                       
            bInShadow = mShadowGeoBSP.BlockTest( ray );
            if(bInShadow == true)
            {                
                transColour = mShadowGeoBSP.TranslucencyTest( ray ) * light->DiffuseLight( pos, normal );
                if( !mUseColourTranslucency )
                {
                    // Use simple average to determine intensity of grayscale.
                    float intensity = (transColour.red + transColour.green + transColour.blue) / 3.0f;
                    transColour = tlColour(intensity, intensity, intensity);
                }
            }
        }
        
        //test if tmpTri is this or is NULL
        if( bInShadow == false ){    //lights[i] does contribute
            colour = colour + light->DiffuseLight( pos, normal );
        }
        else
        {
            colour = colour + transColour;
        }
    }

    const tlPrimGroup *primGroup = tri->GetPrimGroup();
    if( primGroup )
    {
        const tlShader *shader = primGroup->GetShaderPtr();

        if( shader && shader->HasColourParam( "DIFF" ) )
        {
            const tlColour materialDiffuseColour( shader->GetColourParam( "DIFF" ) );
            colour = colour * materialDiffuseColour;
        }
    }

    colour.alpha = 1.0f;
        
    return colour;
}

// This will average down an image by integer increments.  This should eventually
// be moved into tlImage with a more robust interface.
void tlProjectedLightmap::MinifyLightmap()
{
    if( mSampleWidth == mWidth && mSampleHeight == mHeight )
    {
        return; // Nothing to do.
    }

    tlImage *image = mTexture->GetImage( 0 );
    tlImage oldImage( *image );

    image->Resize( mWidth, mHeight );
    mTexture->SetSize( mWidth, mHeight );

    int x, y;
    for( x = 0; x < mWidth; x++ )
    {
        const int w = mSamplingScale * x;
        for( y = 0; y < mHeight; y++ )
        {
            // For each pixel in the new resized image, average the value of the
            // corresponding pixels in the old image.
            const int h = mSamplingScale * y;
            tlColour sumPixels = COLOUR_BLACK;
            int numValidColours = 0;

            int i, j;
            for( i = 0; i < mSamplingScale; i++ )
            {
                for( j = 0; j < mSamplingScale; j++ )
                {
                    tlColour c = oldImage.GetPixel( w + i, h + j );
                    
                    if(c == COLOUR_INVALID)
                    {
                        continue;
                    }
                    sumPixels = sumPixels + c;
                    numValidColours++;
                }
            }

            tlColour avePixels;

            if(numValidColours == 0)
            {
                avePixels = COLOUR_INVALID;
            }
            else
            {
                avePixels = sumPixels * (1.0f / (float)numValidColours);
            }
            
            image->SetPixel( x, y, avePixels);
        }
    }
}


