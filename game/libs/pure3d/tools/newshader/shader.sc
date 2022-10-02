shader %BASENAME%{
	pddiShaderName simple;							
	registerName %REGISTERNAME%;	
	id	%ID%;						
	Description{
		%DESCRIPTION%
	}
}
   
color Ambient{
	long  ambient;					
	short a;
	value   (1.0, 1.0, 1.0);																		
	fourCC	AMBI;
	affect  aOutColor;				
	description{
		the ambient color
	}
}

color Diffuse{
	long  diffuse;					
	short d;
	value   (1.0, 1.0, 1.0);																		
	fourCC	DIFF;	
	affect  aOutColor;				
	description{
		the diffuse color
	}
}

color Emissive{
	long  emissive;					
	short e;
	value   (0.0, 0.0, 0.0);																		
	fourCC	EMIS;
	affect  aOutColor;
	description{
		the emissive color
	}
}

color Specular{
	long  specular;					
	short s;
	value   (0.0, 0.0, 0.0);																		
	fourCC	SPEC;
	affect  aOutColor;
	description{
		the specular color
	}
}

float Shininess{
	long  shininess;					
	short sh;
	min   0.0;
	max	  200.0;
	value 10.0;
	affect aOutColor;											
	fourCC	SHIN;					
	description{
		a shininess value
	}
}

float MipmapSharpness{
	long  mmsharpness;					
	short ms;
	min   0.0;
	max	  1.0;
	value 0.5;										
	fourCC	MSHP;					
	description{
		a value for controling the sharpness of switching level of mipmapped textures attached 
	}
}

enum MipmapMin{
	long mipmapmin;
	short mn;
	fourCC MMIN;
	value (8, 16, 32, 64, 128, 256, 512, 1024);
	default 0;
	description{
		the minimum dimension of mipmaped texture
	}
}

enum MipmapMax{
	long mipmapmax;
	short mx;
	fourCC MMAX;
	value (8, 16, 32, 64, 128, 256, 512, 1024);
	default 7;
	description{
		the minimum dimension of mipmaped texture
	}
}

enum UVMode{
	long uvMode;
	short uv;
	fourCC UVMD;
	value (Tile, Clamp);
	default 0;
	description{
		a enum of UV mode
	}
}

enum FilterMode{
	long filterMode;
	short fm;
	fourCC FIMD;
	value (None, Bilinear, Mipmap, Mipmap Bilinear, Mipmap Trilinear);
	default 1;
	description{
		a enum of filter mode
	}
}

enum ShadeMode{
	long shadeMode;
	short sm;
	fourCC SHMD;
	value (Flat, Gouraud);
	affect aOutColor;
	default 1;
	description{
		a enum of shade mode
	}
}

enum BlendMode{
	long blendMode;
	short bm;
	fourCC BLMD;
	value (None, Alpha,Add,Subtract,Modulate);
	affect aIsTranslucent;
	default 0;
	description{
		a enum of blend mode
	}
}

enum AlphaCompare{
	long alphaCompare;
	short ac;
	fourCC ACMP;
	value (None, Always, Less, LessEqual, Greater, GreaterEqual, Equal, NotEqual);
	default 4;
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
	long alphaTest;
	short at;
	fourCC ATST;
	value  false;
	description{
		a bool value for testing alpha
	}
}

strarray TextureAttributes{
	long textureAttributes;
	short txat;
	value ( TEX );
	description{
		texture attributes
	}
}

strarray TexturePlugs{
	long texturePlugs;
	short txpl;
	value ( color );
	description{
		texture plugins
	}
}

strarray TextureAlphaPlugs{
	long textureAlphaPlugs;
	short txapl;
	value ( transparency );
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
