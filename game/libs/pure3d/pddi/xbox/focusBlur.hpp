//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _FOCUSBLUR_HPP
#define _FOCUSBLUR_HPP

struct FilterSample{
	float fWeight, fOffsetX, fOffsetY;
};

class d3dExtFocusBlurEffect : public pddiExtFocusBlurEffect
{

public:
	d3dExtFocusBlurEffect( d3dContext* c );
	~d3dExtFocusBlurEffect( );
	
	void DrawEffect( FilterMode fm = FM_BOX );
	void BeginFocusBlur( );
	void EndFocusBlur( );
	void SetFocusRange( float n, float f );
    void SetEffectMode( EffectMode m ){ m_effectMode = m; };

    void DrawFocusRange( );
    void DrawFocusRange_old( );

protected:
	/* create a texture which is 
	   a copy of back buffer, and blur it with the specified filter table
	 */
	void BlurBlurryTexture( FilterSample fSample[], int filterNum );	
    void DrawBlurTexture( );
	void CreateBlurryTexture( );

	D3DTexture *m_pBlurTexture;    
	
	static  DWORD   m_dwBlurPixelShader;	//blur pixel shader handle
	static  DWORD	m_dwFocusPixelShader;   //focus pixel shader handle

	float   m_fFocusNear;				//fraction to near clip plane
	float   m_fFocusFar;					//fraction to far clip plane

	d3dContext *m_pContext;
    EffectMode m_effectMode;
};

#endif