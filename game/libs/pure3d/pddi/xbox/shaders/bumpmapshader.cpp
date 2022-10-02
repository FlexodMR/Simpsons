//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/*
Bumpmap Shader
Jan 31 01      rogrady@radical.ca
There are two different styles of bump map shader here, diffuse and specular, but both are known as 'dotproduct' bumpmappers.
They use the following technique:  Recall the lighting equation- diffuse lighting is L DOT N, where L is the light vector
and N is the normal vector.  We pass in the light vector with a SetLightVector(), convert it to RGBA,
and set that value into the texturefactor renderstate.  This is essentially a constant value.  Now, we need to apply the bumpmap.
This is done by taking our bumpmap texture, set by SetBumpMap(), and using texel-space differencing, calculating the normals
of that bump map.  So our bumpmap is converted into a bunch of normals, which we then use in our lighting.  Note that this
only applies to an infinite light source- positional light sources require the specular method.
Now, when the light shines on our surface, the L DOT N is maximized and our surface becomes brighter.

Last, if one is specified, we add on the base texture.
On hardware with multiple simultaneous texture support, this can all be done in one pass!

If we want to support specular highlights and view-dependent lighting, we must do more.  The constant L vector is no longer
sufficient- we must have a per-pixel lighting value.  This is accomplished by use of a cube map.  What we do is take a bunch
of XYZ vectors from <0,0,0> to <1,1,1>, subtract the camera position and the light position, and convert that to an RGBA value,
and store those values in a cube map.
These cube map values are our 'H' vector.
This corresponds to the specular lighting equation (H DOT N)^P, where H is the halfway vector between the View vector and 
the reflection vector, while N is the normal as above.  P is the specular exponent, or 'shininess' of the surface.

Since we are using texture blending hardware to do this we cannot raise our H DOT N to any exponent without using more passes.
To maximize speed, then, we just use H DOT N and have a fairly un-shiny surface.  Generally it looks ok anyway.

Note that this specular operation requires 3 blending stages, which can be accomplished in a single pass on the Radeon
or in 2 passes on the GeForce.

*/
#include "direct3d.hpp"
#include "context.hpp"
#include "display.hpp"
#include "texture.hpp"
#include "shaderdata.hpp"
#include "shader.hpp"
#include "bumpmapshader.hpp"

#define CUBE_MAP_RESOLUTION 32
#define BUMPMAP_LIGHT_TOL 0.0001

pddiShadeTextureTable d3dBumpMapShader::textureTable[] = 
{
    {PDDI_SP_BASETEX, SHADE_TEXTURE(SetBaseTex)},
    {PDDI_SP_BUMPMAP, SHADE_TEXTURE(SetBumpMap)},
    {PDDI_SP_NULL, NULL}
};

pddiShadeVectorTable d3dBumpMapShader::vectorTable[] =
{
    {PDDI_SP_LIGHTV, SHADE_VECTOR(SetLightVector)},       //must set the light vector for both diffuse and specular mode
    {PDDI_SP_CAMERAV, SHADE_VECTOR(SetCameraVector)},     //only need to set the camera vector for specular mode
    {PDDI_SP_NULL, NULL}
};

pddiShadeIntTable d3dBumpMapShader::intTable[] =         
{
    PDDID3D_STDSHADERPARAM_INT, 
    {PDDI_SP_BMSPECULAR, SHADE_INT(EnableSpecular)},        //puts bumpmapper into specular mode
    {PDDI_SP_BMLIGHTDEP, SHADE_INT(EnableLightDep)},
    {PDDI_SP_NULL, NULL}
};

pddiShadeFloatTable d3dBumpMapShader::floatTable[] = 
{
    PDDID3D_STDSHADERPARAM_FLOAT,
    {PDDI_SP_NULL , NULL}
};


pddiShadeColourTable d3dBumpMapShader::colourTable[] = 
{
    PDDID3D_STDSHADERPARAM_COLOUR,
    {PDDI_SP_LIGHTV , SHADE_COLOUR(SetLightColour)},
    {PDDI_SP_NULL , NULL}
};

//-----------------------------------------------------------------------------
//
// d3dBumpMapShader::d3dBumpMapShader
//
//-----------------------------------------------------------------------------
d3dBumpMapShader::d3dBumpMapShader(d3dContext* c) :
    d3dShader(c),
    bumpMap(NULL),
    baseTexture(NULL),
    cubeMap(NULL),
    vLight(1.0f, 1.0f, 1.0f),
    vOldLight(1.0f, 1.0f, 1.0f),
    vCamera(0.0f, 0.0f, 1.0f),
    vOldCamera(0.0f, 0.0f, 1.0f),
    lightColour(0,0,0,0)
{
    specularEnabled = false;
  
    m_lightDep = true;
    
    //test for device caps
    LPDIRECT3DDEVICE8 d3d = context->GetDisplay()->GetD3DDevice();
    D3DCAPS8 pCaps;
    d3d->GetDeviceCaps(&pCaps);
    PDDIASSERT((pCaps.TextureOpCaps & D3DTEXOPCAPS_DOTPRODUCT3) && 
             (pCaps.TextureCaps & D3DPTEXTURECAPS_CUBEMAP ) &&
             (pCaps.MaxSimultaneousTextures >= 3));
}

d3dBumpMapShader::~d3dBumpMapShader()
{
    if (baseTexture)
        baseTexture->Release();
    if (bumpMap)
        bumpMap->Release();
    if (cubeMap)
        cubeMap->Release();
    
}

//-----------------------------------------------------------------------------
//
// d3dBumpMapShader::GetType
//
//-----------------------------------------------------------------------------
const char* d3dBumpMapShader::GetType(void)
{
    static char type [] = "bumpmap";
    return type;
}

//-----------------------------------------------------------------------------
//
// d3dBumpMapShader::GetPasses
//
//-----------------------------------------------------------------------------
int  d3dBumpMapShader::GetPasses()
{
    return 1;
}

//-----------------------------------------------------------------------------
// Name: VectortoRGBA()
// Desc: Turns a normalized vector into RGBA form. Used to encode vectors into
//       a height map. 
//-----------------------------------------------------------------------------
DWORD VectortoRGBA( pddiVector* v, FLOAT fHeight )
{
     DWORD r = (DWORD)( 127.0f * v->x + 128.0f );
     DWORD g = (DWORD)( 127.0f * v->y + 128.0f );
     DWORD b = (DWORD)( 127.0f * v->z + 128.0f );
     DWORD a = (DWORD)( 255.0f * fHeight );
     
     return( (a<<24L) + (r<<16L) + (g<<8L) + (b<<0L) );
}

//-----------------------------------------------------------------------------
//
// 
//
//-----------------------------------------------------------------------------
void d3dBumpMapShader::SetPass(int pass)
{
    if (specularEnabled)
    {
        //cubeMap is essentially our halfway vector
        //the plan here is to select from our cubeMap which becomes the H vector
        //then we use the normal map / bump map to get the N vector, and do a 
        //dotproduct to get the specular illumination
        //last we add the base texture, possibly in a separate pass
        d3d->SetTextures(3, cubeMap, bumpMap, baseTexture);

        d3d->SetTextureCombine(0, D3DTOP_SELECTARG2, D3DTA_CURRENT, D3DTA_TEXTURE);
        d3d->SetTextureCoord(0, D3DTSS_TCI_CAMERASPACENORMAL);
        d3d->SetTextureTransform(0, D3DTTFF_COUNT3 );
        d3d->SetTextureAddress(0, uvMode);
        d3d->SetTextureFilter(0, filterMode);

        d3d->SetTextureCombine(1, D3DTOP_DOTPRODUCT3, D3DTA_CURRENT, D3DTA_TEXTURE);
        d3d->SetTextureCoord(1, 0);
        d3d->SetTextureTransform(1, D3DTTFF_DISABLE );
        d3d->SetTextureAddress(1, uvMode);
        d3d->SetTextureFilter(1, filterMode);

        d3d->SetTextureCombine(2, D3DTOP_MODULATE, D3DTA_CURRENT, D3DTA_TEXTURE);
        d3d->SetTextureCoord(2, 0);
        d3d->SetTextureTransform(2, D3DTTFF_DISABLE );
        d3d->SetTextureAddress(2, uvMode);
        d3d->SetTextureFilter(2, filterMode);
    } //end if specularEnabled == true

    else //we're just doing diffuse bumpmapping
    {
        // Modulate the texture (the normal map) with the light vector (stored
        // above in the texture factor)

        //this is equivalent to an L DOT N operation (aka diffuse illumination)
        //remember that L and N both must be normalized before taking their dotproduct
        //so whoever sets the light vector should have normalized it
        pddiVector d3dLight(vLight.x, vLight.y, -1 );
		d3dLight.Normalize( );
        DWORD dwFactor = VectortoRGBA( &d3dLight, 0.0f );

        d3d->SetTextures(2, bumpMap, baseTexture);

        d3d->SetTextureFactor(dwFactor);
        d3d->SetTextureCombine(0, D3DTOP_DOTPRODUCT3, D3DTA_TFACTOR, D3DTA_TEXTURE);
        SetupTextureSampling(0);

        d3d->SetTextureCombine(1, D3DTOP_MODULATE, D3DTA_CURRENT, D3DTA_TEXTURE);
        d3d->SetTextureCoord(1, 0);
        d3d->SetTextureTransform(1, D3DTTFF_DISABLE );
        d3d->SetTextureAddress(1, uvMode);
        d3d->SetTextureFilter(1, filterMode);
    } //end of diffuse case

    //d3d->SetMaterial(false,false,NULL);
    SetupShading();
    SetupAlphaBlend();
}

//set this texture if you want to blend a base texture with the bump map
//(you probably do)
void d3dBumpMapShader::SetBaseTex(pddiTexture* t)
{
    if (t)
    {
        t->AddRef();
    }
    if (baseTexture)
    {
        baseTexture->Release();
    }
    

    baseTexture = (d3dTexture*)t;
    
}


//SetBumpMap
void d3dBumpMapShader::SetBumpMap(pddiTexture* t)
{
    if(t)
    {
        t->AddRef();
    }
    
    if(bumpMap)
    {
        bumpMap->Release();
    }
    
    bumpMap = (d3dTexture*)t;

}

//takes an (i,j,k) coordinate and transforms it into XYZ vector
void d3dBumpMapShader::GetCubeVector(int i, int cubesize, int x, int y, pddiVector* vector)
{
  float s, t, sc, tc, mag;

  s = ((float)x + 0.5f) / (float)cubesize;
  t = ((float)y + 0.5f) / (float)cubesize;
  sc = s*2.0f - 1.0f;
  tc = t*2.0f - 1.0f;

  switch (i)
  {
  case 0:
     vector->x = 1.0f;
     vector->y = -tc;
     vector->z = -sc;
     break;
  case 1:
     vector->x = -1.0f;
     vector->y = -tc;
     vector->z = sc;
     break;
  case 2:
     vector->x = sc;
     vector->y = 1.0f;
     vector->z = tc;
     break;
  case 3:
     vector->x = sc;
     vector->y = -1.0f;
     vector->z = -tc;
     break;
  case 4:
     vector->x = sc;
     vector->y = -tc;
     vector->z = 1.0f;
     break;
  case 5:
     vector->x = -sc;
     vector->y = -tc;
     vector->z = -1.0f;
     break;
  };

  mag = 1.0f/(float)sqrt(vector->x*vector->x + vector->y*vector->y + vector->z*vector->z);
  vector->x *= mag;
  vector->y *= mag;
  vector->z *= mag;
}

//CreateCubeMap
//this lets us transform an XYZ vertex coord into an RGB triple, so that we can
//use the hardware DOTPRODUCT3 instruction
//Calls GetCubeVector() which takes an index (kind of like s,t,u coords)
// into a 32x32x6 cube map and returns an XYZ vector
void d3dBumpMapShader::CreateCubeMap()
{
    if (!m_cubeMapSupported) return; 

    if (cubeMap) return;

    int i,j,k;
    D3DLOCKED_RECT  d3dlr;
    D3DSURFACE_DESC descBack;
    HRESULT d3dok;

    LPDIRECT3DCUBETEXTURE8 d3dCubeMap;
    LPDIRECT3DDEVICE8 d3d = context->GetDisplay()->GetD3DDevice();
    
    // get format of back buffer
    IDirect3DSurface8* pBackBuffer = NULL;
    
    d3dok = d3d->GetBackBuffer(0, D3DBACKBUFFER_TYPE_MONO, &pBackBuffer);
    if (d3dok != D3D_OK)
        return;
    pBackBuffer->GetDesc(&descBack);
    pBackBuffer->Release();
    
    //need to allocate from managed rather than default pool so that we can lock it for writing
    d3dok = d3d->CreateCubeTexture(CUBE_MAP_RESOLUTION, 1, NULL, descBack.Format, D3DPOOL_MANAGED, &d3dCubeMap);
    PDDIASSERT(d3dok == D3D_OK);
    
    // For each world space coord from <0,0,0> to <1,1,1>,
    // generate a corresponding RGB vector
    //we assume all vectors passed in are normalized   
    for (k = 0; k < 6; k++)
    {
        d3dok = d3dCubeMap->LockRect(static_cast<D3DCUBEMAP_FACES>(k), 0, &d3dlr, NULL, NULL);
        PDDIASSERT(d3dok == D3D_OK);
        DWORD* pPixel = (DWORD*)d3dlr.pBits;
        PDDIASSERT(pPixel);
        pddiVector camVect;
        camVect.x = vCamera.x;
        camVect.y = vCamera.y;
        camVect.z = vCamera.z;
        pddiVector tempVect;
        for( j = 0; j < CUBE_MAP_RESOLUTION; j++  )
        {
            for( i = 0; i < CUBE_MAP_RESOLUTION; i++ )
            {
                GetCubeVector(k, CUBE_MAP_RESOLUTION, i, j, &tempVect);
                tempVect.x+=vLight.x;
                tempVect.y+=vLight.y;
                tempVect.z+=vLight.z;
                tempVect.x+=camVect.x;
                tempVect.y+=camVect.y;
                tempVect.z+=camVect.z;
				tempVect.Normalize( );                

                *pPixel++ = VectortoRGBA( &tempVect, 1.0f);
            }
        }
        d3dCubeMap->UnlockRect(static_cast<D3DCUBEMAP_FACES>(k), 0);
    }
    cubeMap = new d3dTexture(context, d3dCubeMap);
}

bool d3dBumpMapShader::diff(pddiVector a, pddiVector b)
{
    float magA = a.x*a.x+a.y*a.y+a.z*a.z;
    float magB = b.x*b.x+b.y*b.y+b.z*b.z;
    a.Set(a.x/magA,a.y/magA,a.z/magA);
    b.Set(b.x/magB,b.y/magB,b.z/magB);
    
    a.x-=b.x;a.y-=b.y;a.z-=b.z;      //translate a - b to origin
    
    if ((a.x * a.x + a.y * a.y + a.z * a.z) > BUMPMAP_LIGHT_TOL)   //magnitude of a - b
        return true;
    else return false;
}

void d3dBumpMapShader::SetLightVector(const pddiVector& vL)
{
    if (m_lightDep)
    {
        vLight = vL;
        if ((specularEnabled)  && diff(vLight, vOldLight) )
        {
            CreateCubeMap();     //more properly, RE-create cube map- need to redo it to account for moving light
            
        }
        vOldLight.Set(vLight.x, vLight.y, vLight.z);
    }
}

void d3dBumpMapShader::SetLightColour(pddiColour c)
{
    lightColour = c;
}

void d3dBumpMapShader::SetCameraVector(const pddiVector& vL)
{
    vCamera = vL;

    if ((specularEnabled) && diff(vCamera, vOldCamera) )
    {
        CreateCubeMap();  //more properly, RE-create cube map- need to redo it to account for moving camera
    }
    vOldCamera.Set(vCamera.x, vCamera.y, vCamera.z);

}

void d3dBumpMapShader::EnableLightDep(int b)
{
    m_lightDep = b;
}

