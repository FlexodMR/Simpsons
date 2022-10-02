shader ReflectShader{
	pddiShaderName environment;							
	registerName pure3DReflectShader;	
	id	0x04000e;						
	Description{
        Maya Shader UI for Pure3D/PDDI 'reflect' Shader. Default is "environment" but may also export as "spheremap".
	}
}

// Note: This must be special-cased in the Exporter. See 'materialProcess.cpp'.
enum ReflectType{
	long        reflectType;
	short       rtyp;
	value       ( Environment, Sphere Map );
	default     0;
    keyable     false;
	description{
		The Reflect Shader may be configured to export with a PDDIShaderName of "environment" or "spheremap".
	}
}
   
color Ambient{
	long        ambient;					
	short       a;
	value       (1.0, 1.0, 1.0);																		
	fourCC	    AMBI;
	affect      aOutColor;				
    keyable     true;
	description{
		the ambient color
	}
}

color Diffuse{
	long        diffuse;					
	short       d;
	value       (1.0, 1.0, 1.0);																		
	fourCC	    DIFF;	
	affect      aOutColor;				
    keyable     true;
	description{
		the diffuse color
	}
}

color Emissive{
	long        emissive;					
	short       e;
	value       (0.0, 0.0, 0.0);																		
	fourCC	    EMIS;
	affect      aOutColor;
    keyable     true;
	description{
		the emissive color
	}
}

color Specular{
	long        specular;					
	short       s;
	value       (0.0, 0.0, 0.0);																		
	fourCC	    SPEC;
	affect      aOutColor;
    keyable     true;
	description{
		the specular color
	}
}

#color ReflectionBlend{
#	long  refBlend;					
#	short refb;
#	value   (0.0, 0.0, 0.0);																		
#	fourCC	ENVB;
#	affect  aOutColor;
#	description{
#		the blending color for relection
#	}
#}

float Shininess{
	long        shininess;					
	short       sh;
	min         0.0;
	max	        200.0;
	value       10.0;
	affect      aOutColor;											
	fourCC	    SHIN;					
    keyable     true;
	description{
		a shininess value
	}
}

float MipmapSharpness{
	long        mmsharpness;					
	short       ms;
	min         0.0;
	max	        1.0;
	value       0.5;										
	fourCC	    MSHP;					
    keyable     true;
	description{
		a value for controling the sharpness of switching level of mipmapped textures attached 
	}
}

enum MipmapMin{
	long        mipmapmin;
	short       mn;
	fourCC      MMIN;
	value       (8, 16, 32, 64, 128, 256, 512, 1024);
	default     0;
    keyable     true;
	description{
		the minimum dimension of mipmaped texture
	}
}

enum MipmapMax{
	long        mipmapmax;
	short       mx;
	fourCC      MMAX;
	value       (8, 16, 32, 64, 128, 256, 512, 1024);
	default     7;
    keyable     true;
	description{
		the minimum dimension of mipmaped texture
	}
}

bool exportMipmaps{
	long exportMipmaps;
	short exmm;
	fourCC MMEX;
	value  false;
	description{
		Whether to generate mipmaps during Export.
	}
}

// Short name must not be '.uv' as this is used by Maya for HW texture mapping.
enum UVMode{
	long        uvMode;
	short       uvm;
	fourCC      UVMD;
	value       (Tile, Clamp);
	default     0;
    keyable     true;
	description{
		a enum of UV mode
	}
}

enum FilterMode{
	long        filterMode;
	short       fm;
	fourCC      FIMD;
	value       (None, Bilinear, Mipmap, Mipmap Bilinear, Mipmap Trilinear);
	default     1;
    keyable     true;
	description{
		a enum of filter mode
	}
}

enum ShadeMode{
	long        shadeMode;
	short       sm;
	fourCC      SHMD;
	value       (Flat, Gouraud);
	affect      aOutColor;
	default     1;
    keyable     true;
	description{
		a enum of shade mode
	}
}

enum BlendMode{
	long        blendMode;
	short       bm;
	fourCC      BLMD;
	value       (None, Alpha,Add,Subtract,Modulate);
	affect      aIsTranslucent;
	default     0;
    keyable     true;
	description{
		a enum of blend mode
	}
}

enum AlphaCompare{
	long        alphaCompare;
	short       ac;
	fourCC      ACMP;
	value       (None, Always, Less, LessEqual, Greater, GreaterEqual, Equal, NotEqual);
	default     4;
    keyable     true;
	description{
		a enum of blend mode
	}
}

enum ProceduralXRes{
	long proceduralXRes;
	short pxres;
	value (global, 8, 16, 32, 64, 128, 256,  512, 1024);
	default 0;
	description{
		an enum of x-side resolution
	}
}

enum ProceduralYRes{
	long proceduralYRes;
	short pyres;
	value (global, 8, 16, 32, 64, 128, 256,  512, 1024);
	default 0;
	description{
		an enum of y-side resolution
	}
}

bool AlphaTest{
	long        alphaTest;
	short       at;
	fourCC      ATST;
	value       false;
    keyable     true;
	description{
		a bool value for testing alpha
	}
}

strarray TextureAttributes{
	long textureAttributes;
	short txat;
	value ( TEX, REFL );
	description{
		texture attributes
	}
}

strarray TexturePlugs{
	long texturePlugs;
	short txpl;
	value ( color, reflect );
	description{
		texture plugins
	}
}

strarray TextureAlphaPlugs{
	long textureAlphaPlugs;
	short txapl;
	value ( transparency, reflecttrans );
	description{
		texture alpha plugins
	}
}

texture Color{
	long  color;					
	short c;
	value   (0.0, 0.58824, 0.644);
	affect aOutColor;								
	transparency  InTrans;												
	fourCC	TEX;					
	description{
		a color texture
	}
}

color ColorBlend{
  	long        colorBlend;					
  	short       colb;
	affect      aOutColor;											
	value       (1.0, 1.0, 1.0);
	fourCC	    COLB;
    keyable     true;
  	description{
  		color blending
  	}
}

texture InTrans{
	long  transparency;					
	short it;							
	affect  aOutTrans;			
	affect	aOutColor;					
	value   (0.0, 0.0, 0.0);			
	fourCC	TEX;					
	description{
		a transparency texture
	}
}

color InTransBlend{
  	long        transparencyBlend;					
  	short       trnb;
	affect      aOutColor;											
	value       (1.0, 1.0, 1.0);
	fourCC	    TRNB;
    keyable     true;
  	description{
  		transparency blending
  	}
}

bool DynamicallyLit{
	long        dynamicallyLit;
	short       dl;
	fourCC	    LIT;
	value       true;
	affect      aVertexNeeds;
	affect      aVertexMask;
    keyable     true;
	description{
		if the shader is dynamically lit or not;
	}
}

bool DoubleSided{
	long        doubleSided;
	short       ds;
	fourCC      2SID;
	value       false;
    keyable     true;
	description{
		if the shader takes effect on 2-side of an object
	}
}

texture Reflect{
	long  reflect;					
	short r;
	value   (0.0, 0.58824, 0.644);
	affect aOutColor;								
	transparency  reflectTransparency;												
	fourCC	REFL;					
	description{
		a reflection texture
	}
}

color ReflectBlend{
  	long        reflectBlend;					
  	short       refb;
	value       (0.5, 0.5, 0.5);
	affect      aOutColor;											
	fourCC	    ENVB;
    keyable     true;
  	description{
  		reflection blending
  	}
}

enum ZTest{
	long        zTest;
	short       ztst;
	fourCC      ZTST;
	value       (Default, Force Off, Force On (unsupported) );
	default     0;
    keyable     true;
	description{
		Controls whether this shader overrides the current Z-Test state.
	}
}

enum ZWrite{
	long        zWrite;
	short       zwrt;
	fourCC      ZWRT;
	value       (Default, Force Off, Force On (unsupported) );
	default     0;
    keyable     true;
	description{
		Controls whether this shader overrides the current Z-Write state.
	}
}

float AlphaCompareThreshold{
	long        alphaCompareThreshold;
	short       acth;
	fourCC	    ACTH;
	min         0.0;
	max	        1.0;
	value       0.5;
    keyable     true;
	description{
		The alpha threshold used by the "Alpha Compare" test.
	}
}

#int ReflectTrans{
#	long  reflectBlend;					
#	short refb;								
#	min 0;
#	max 255;
#	affect aOutColor;								
#	value   255;
#	fourCC	ENVB;					
#	description{
#		reflection blending
#	}
#}