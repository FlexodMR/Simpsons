typedef struct {
    char *name;
    char *longname;
    int startbit;
    int length;
} FIELD;

typedef struct {
    u_char address;
    char *regname;
    char *description;
    int numfields;
    FIELD fields[12];
} GSREGISTER;

static GSREGISTER gRegs[] = {
    { 0x42,    "ALPHA_1",            "Alpha Blending settings", 5,
        {
            { "A", "A", 0, 2 },
            { "B", "B", 2, 2 },
            { "C", "C", 4, 2 },
            { "D", "D", 6, 2 },
            { "FIX", "FIX", 32, 8 }
        }
    }, 
    { 0x43,    "ALPHA_2",            "Alpha Blending settings", 5,
        {
            { "A", "A", 0, 2 },
            { "B", "B", 2, 2 },
            { "C", "C", 4, 2 },
            { "D", "D", 6, 2 },
            { "FIX", "FIX", 32, 8 }
        }
    }, 
    { 0x50,    "BITBLTBUF",        "Intra-Buffer Transmission settings", 6,
        {
            { "SBP", "Source Buffer Base Pointer", 0, 14 },
            { "SBW", "Source Buffer Width", 16, 6 },
            { "SPSM", "Source Pixel Storage Format", 24, 6 },
            { "DBP", "Destination Buffer Base Pointer", 32, 14 },
            { "DBW", "Destination Buffer Width", 48, 6 },
            { "DPSM", "Destination Pixel Storage Format", 56, 6 }
        }
    },
    { 0x08,    "CLAMP_1",            "Texture Wrap mode", 6,
        {
            { "WMS", "Wrap Mode (Horizontal)", 0, 2 },
            { "WMT", "Wrap Mode (Vertical)", 2, 2 },
            { "MINU", "Clamp Parameter in U dir. (MIN)", 4, 10 },
            { "MAXU", "Clamp Parameter in U dir. (MAX)", 14, 10 },
            { "MINV", "Clamp Parameter in V dir. (MIN)", 24, 10 },
            { "MAXV", "Clamp Parameter in V dir. (MAX)", 34, 10 }
        }
    },
    { 0x09,    "CLAMP_2",            "Texture Wrap mode", 6,
        {
            { "WMS", "Wrap Mode (Horizontal)", 0, 2 },
            { "WMT", "Wrap Mode (Vertical)", 2, 2 },
            { "MINU", "Clamp Parameter in U dir. (MIN)", 4, 10 },
            { "MAXU", "Clamp Parameter in U dir. (MAX)", 14, 10 },
            { "MINV", "Clamp Parameter in V dir. (MIN)", 24, 10 },
            { "MAXV", "Clamp Parameter in V dir. (MAX)", 34, 10 }
        }
    },
    { 0x46,    "COLCLAMP",            "Colour Clamp control", 1,
        {
            { "CLAMP", "Colour Clamping Method", 0, 1 }
        }
    },
    { 0x44,    "DIMX",                "Dither Matrix setting", 1,
        {
            { "DIMX", "Dither Matrix", 0, 1 }    // This is not accurate
        }
    },
    { 0x45,    "DTHE",                "Dither Control", 0,
    },
    { 0x4a,    "FBA_1",            "Alpha Correction value", 1,
        {
            { "FBA", "MSB of Alpha value for drawing to Frame Buffer", 0, 1 }
        }
    },
    { 0x4b,    "FBA_2",            "Alpha Correction value", 1,
        {
            { "FBA", "MSB of Alpha value for drawing to Frame Buffer", 0, 1 }
        }
    },
    { 0x61,    "FINISH",            "FINISH Event Occurence Request", 0,
    },
    { 0x0a,    "FOG",                "Vertex Fog Value setting", 1,
        {
            { "F", "Fog", 56, 8 }
        }
    },
    { 0x3d,    "FOGCOL",            "Distant Fog Colour settings", 3,
        {
            { "FCR", "Fog Colour Red", 0, 8 },
            { "FCG", "Fog Colour Green", 8, 8 },
            { "FCB", "Fog Colour Blue", 16, 8 }
        }
    },
    { 0x4c,    "FRAME_1",            "Frame Buffer setting", 4,
        {
            { "FBP", "Frame Buffer Pointer", 0, 9 },
            { "FBW", "Frame Buffer Width", 16, 6 },
            { "PSM", "Pixel Storage Format", 24, 6 },
            { "FBMSK", "Frame Buffer Drawing Mask", 32, 32 }
        }
    },
    { 0x4d,    "FRAME_2",            "Frame Buffer setting", 4,
        {
            { "FBP", "Frame Buffer Pointer", 0, 9 },
            { "FBW", "Frame Buffer Width", 16, 6 },
            { "PSM", "Pixel Storage Format", 24, 6 },
            { "FBMSK", "Frame Buffer Drawing Mask", 32, 32 }
        }
    },
    { 0x54,    "HWREG",            "Intra-Buffer Transmission Port", 2,
        {
            { "DATA(L)", "DATA (Low 32 bits)", 0, 32 },
            { "DATA(H)", "DATA (High 32 bits)", 32, 32 },
        }
    },
    { 0x62,    "LABEL",            "LABEL Event Occurence Request", 2,
        {
            { "ID", "Value written to SIGLBLID register", 0, 32 },
            { "IDMSK", "Whether or not the corresponding SIGBLID bit is updated", 32, 32 }
        }
    },
    { 0x34,    "MIPTBP1_1",        "MIPMAP settings (Level 1 to 3)", 6,
        {
            { "TBP1", "MIPMAP Level 1 Texture Base Pointer", 0, 14 },
            { "TBW1", "MIPMAP Level 1 Texture Buffer Width", 14, 6 },
            { "TBP2", "MIPMAP Level 2 Texture Base Pointer", 20, 14 },
            { "TBW2", "MIPMAP Level 2 Texture Buffer Width", 34, 6 },
            { "TBP3", "MIPMAP Level 3 Texture Base Pointer", 40, 14 },
            { "TBW3", "MIPMAP Level 3 Texture Buffer Width", 54, 6 }
        }
    },
    { 0x35,    "MIPTBP1_2",        "MIPMAP settings (Level 1 to 3)", 6,
        {
            { "TBP1", "MIPMAP Level 1 Texture Base Pointer", 0, 14 },
            { "TBW1", "MIPMAP Level 1 Texture Buffer Width", 14, 6 },
            { "TBP2", "MIPMAP Level 2 Texture Base Pointer", 20, 14 },
            { "TBW2", "MIPMAP Level 2 Texture Buffer Width", 34, 6 },
            { "TBP3", "MIPMAP Level 3 Texture Base Pointer", 40, 14 },
            { "TBW3", "MIPMAP Level 3 Texture Buffer Width", 54, 6 }
        }
    },
    { 0x36,    "MIPTBP2_1",        "MIPMAP settings (Level 4 to 6)", 6,
        {
            { "TBP4", "MIPMAP Level 4 Texture Base Pointer", 0, 14 },
            { "TBW4", "MIPMAP Level 4 Texture Buffer Width", 14, 6 },
            { "TBP5", "MIPMAP Level 5 Texture Base Pointer", 20, 14 },
            { "TBW5", "MIPMAP Level 5 Texture Buffer Width", 34, 6 },
            { "TBP6", "MIPMAP Level 6 Texture Base Pointer", 40, 14 },
            { "TBW6", "MIPMAP Level 6 Texture Buffer Width", 54, 6 }
        }
    },
    { 0x37,    "MIPTBP2_2",        "MIPMAP settings (Level 4 to 6)", 6,
        {
            { "TBP4", "MIPMAP Level 4 Texture Base Pointer", 0, 14 },
            { "TBW4", "MIPMAP Level 4 Texture Buffer Width", 14, 6 },
            { "TBP5", "MIPMAP Level 5 Texture Base Pointer", 20, 14 },
            { "TBW5", "MIPMAP Level 5 Texture Buffer Width", 34, 6 },
            { "TBP6", "MIPMAP Level 6 Texture Base Pointer", 40, 14 },
            { "TBW6", "MIPMAP Level 6 Texture Buffer Width", 54, 6 }
        }
    },    
    { 0x49,    "PABE",                "Pixel Level Alpha Blending control", 1,
        {
            { "PABE", "Alpha Blending Control Performed in Units of Pixels", 0, 1 }
        }
    },
    { 0x00,    "PRIM",                "Drawing Primitive settings", 9,
        {
            { "PRIM", "Drawing Primitive Type", 0, 3 },
            { "IIP", "Shading Method (Flat/Gouraud)", 3, 1 },
            { "TME", "Texture Mapping", 4, 1 },
            { "FGE", "Fogging", 5, 1 },
            { "ABE", "Alpha Blending", 6, 1 },
            { "AA1", "Anti-Aliasing", 7, 1 },
            { "FST", "Method of specifying texture coords (STQ/UV)", 8, 1 },
            { "CTXT", "Context", 9, 1 },
            { "FIX", "Fragment Value Control", 10, 1 }
        }
    },
    { 0x1b,    "PRMODE",            "Drawing Primitive Attribute settings", 8,
        {
            { "IIP", "Shading Method (Flat/Gouraud)", 3, 1 },
            { "TME", "Texture Mapping", 4, 1 },
            { "FGE", "Fogging", 5, 1 },
            { "ABE", "Alpha Blending", 6, 1 },
            { "AA1", "Anti-Aliasing", 7, 1 },
            { "FST", "Method of specifying texture coords (STQ/UV)", 8, 1 },
            { "CTXT", "Context", 9, 1 },
            { "FIX", "Fragment Value Control", 10, 1 }
        }
    },
    { 0x1a,    "PRMODECONT",        "Enable Primitive Attribute setting", 1,
        {
            { "AC", "Attributes of primitives specified by PRMODE (0) or PRIM (1)", 0, 1 }
        }
    },
    { 0x01,    "RGBAQ",            "Vertex Colour setting", 5,
        {
            { "R", "Red", 0, 8 },
            { "G", "Green", 8, 8 },
            { "B", "Blue", 16, 8 },
            { "A", "Alpha", 24, 8 },
            { "Q", "Q", 32, 32 }
        }
    },
    { 0x22,    "SCANMSK",            "Raster Address Mask setting", 1,
        {
            { "MSK", "Even/odd row drawing control", 0, 2 }
        }
    },
    { 0x40,    "SCISSOR_1",        "Scissoring Area settings", 4,
        {
            { "SCAX0", "Drawing area upper left X coord", 0, 11 },
            { "SCAX1", "Drawing area lower right X coord", 16, 11 },
            { "SCAY0", "Drawing area upper left Y coord", 32, 11 },
            { "SCAY1", "Drawing area lower right Y coord", 48, 11 }
        }
    },
    { 0x41,    "SCISSOR_2",        "Scissoring Area settings", 4,
        {
            { "SCAX0", "Drawing area upper left X coord", 0, 11 },
            { "SCAX1", "Drawing area lower right X coord", 16, 11 },
            { "SCAY0", "Drawing area upper left Y coord", 32, 11 },
            { "SCAY1", "Drawing area lower right Y coord", 48, 11 }
        }
    },
    { 0x60,    "SIGNAL",            "SIGNAL Event Occurence Request", 2,
        {
            { "ID", "Value written to SIGLBLID register", 0, 32 },
            { "IDMSK", "Whether or not the corresponding SIGBLID bit is updated", 32, 32 }
        }
    },
    { 0x02,    "ST",                "Vertex Texture Coordinate setting", 2,
        {
            { "S", "S Texture Coord", 0, 32 },
            { "T", "T Texture Coord", 32, 32 }
        }
    },
    { 0x47,    "TEST_1",            "Pixel Test Control", 8,
        {
            { "ATE", "Alpha Test", 0, 1 },
            { "ATST", "Alpha Test Method", 1, 2 },
            { "AREF", "Alpha Value to be compared/referred to", 4, 8 },
            { "AFAIL", "Processing method when Alpha Test fails", 12, 2 },
            { "DATE", "Destination Alpha Test", 14, 1 },
            { "DATM", "Destination Alpha Test Mode", 15, 1 },
            { "ZTE", "Depth Test", 16, 1 },
            { "ZTST", "Depth Test Method", 17, 2 }
        }
    },
    { 0x48,    "TEST_2",            "Pixel Test Control", 8,
        {
            { "ATE", "Alpha Test", 0, 1 },
            { "ATST", "Alpha Test Method", 1, 2 },
            { "AREF", "Alpha Value to be compared/referred to", 4, 8 },
            { "AFAIL", "Processing method when Alpha Test fails", 12, 2 },
            { "DATE", "Destination Alpha Test", 14, 1 },
            { "DATM", "Destination Alpha Test Mode", 15, 1 },
            { "ZTE", "Depth Test", 16, 1 },
            { "ZTST", "Depth Test Method", 17, 2 }
        }
    },
    { 0x06,    "TEX0_1",            "Texture information setting", 12,
        {
            { "TBP0", "Texture Base Pointer", 0, 14 },
            { "TBW", "Texture Buffer Width", 14, 6 },
            { "PSM", "Pixel Storage Method", 20, 6 },
            { "TW", "Texture width", 26, 4 },
            { "TH", "Texture height", 30, 4 },
            { "TCC", "Texture Colour Component", 34, 1 },
            { "TFX", "Texture Function", 35, 2 },
            { "CBP", "CLUT Buffer Base Pointer", 37, 14 },
            { "CPSM", "CLUT Pixel Storage Format", 51, 4 },
            { "CSM", "CLUT Storage Mode", 55, 1 },
            { "CSA", "CLUT Entry Offset", 56, 5 },
            { "CLD", "CLUT Buffer Load Control", 61, 3 }
        }
    },
    { 0x07,    "TEX0_2",            "Texture information setting", 12,
        {
            { "TBP0", "Texture Base Pointer", 0, 14 },
            { "TBW", "Texture Buffer Width", 14, 6 },
            { "PSM", "Pixel Storage Method", 20, 6 },
            { "TW", "Texture width", 26, 4 },
            { "TH", "Texture height", 30, 4 },
            { "TCC", "Texture Colour Component", 34, 1 },
            { "TFX", "Texture Function", 35, 2 },
            { "CBP", "CLUT Buffer Base Pointer", 37, 14 },
            { "CPSM", "CLUT Pixel Storage Format", 51, 4 },
            { "CSM", "CLUT Storage Mode", 55, 1 },
            { "CSA", "CLUT Entry Offset", 56, 5 },
            { "CLD", "CLUT Buffer Load Control", 61, 3 }
        }
    },
    { 0x14,    "TEX1_1",            "Texture information setting", 7,
        {
            { "LCM", "LOD Calculation Method", 0, 1 },
            { "MXL", "Maximum MIP Level (0-6)", 2, 3 },
            { "MMAG", "Filter when Texture is expanded (LOD < 0)", 5, 1 },
            { "MMIN", "Filter when Texture is reduced (LOD >= 0)", 6, 3 },
            { "MTBA", "Base address specification of MIPMAP Texture 1", 9, 1 },
            { "L", "LOD Parameter L", 19, 2 },
            { "K", "LOD Parameter K", 32, 12 }
        }
    },
    { 0x15,    "TEX1_2",            "Texture information setting", 7,
        {
            { "LCM", "LOD Calculation Method", 0, 1 },
            { "MXL", "Maximum MIP Level (0-6)", 2, 3 },
            { "MMAG", "Filter when Texture is expanded (LOD < 0)", 5, 1 },
            { "MMIN", "Filter when Texture is reduced (LOD >= 0)", 6, 3 },
            { "MTBA", "Base address specification of MIPMAP Texture 1", 9, 1 },
            { "L", "LOD Parameter L", 19, 2 },
            { "K", "LOD Parameter K", 32, 12 }
        }
    },
    { 0x16,    "TEX2_1",            "Texture information setting", 6,
        {
            { "PSM", "Pixel Storage Method", 20, 6 },
            { "CBP", "CLUT Buffer Base Pointer", 37, 14 },
            { "CPSM", "CLUT Pixel Storage Format", 51, 4 },
            { "CSM", "CLUT Storage Mode", 55, 4 },
            { "CSA", "CLUT Entry Offset", 56, 5 },
            { "CLD", "CLUT Buffer Load Control", 61, 3 }
        }
    },
    { 0x17,    "TEX2_2",            "Texture information setting", 6,
        {
            { "PSM", "Pixel Storage Method", 20, 6 },
            { "CBP", "CLUT Buffer Base Pointer", 37, 14 },
            { "CPSM", "CLUT Pixel Storage Format", 51, 4 },
            { "CSM", "CLUT Storage Mode", 55, 4 },
            { "CSA", "CLUT Entry Offset", 56, 5 },
            { "CLD", "CLUT Buffer Load Control", 61, 3 }
        }
    },
    { 0x3b,    "TEXA",                "Texture Alpha Value setting", 3,
        {
            { "TA0", "'As' value referred to when A field is 0 in RGBA16 or RGB24 format", 0, 8 },
            { "TA1", "'As' value referred to when A field is 1 in RGBA16 format", 32, 8 },
            { "AEM", "Method of expanding Texture Alpha", 15, 1 }
        }
    },
    { 0x1c,    "TEXCLUT",            "CLUT Position specication", 3,
        {
            { "CBW", "CLUT Buffer Width", 0, 6 },
            { "COU", "CLUT Offset U", 6, 6 },
            { "COV", "CLUT Offset V", 12, 10 }
        }
    },
    { 0x3f,    "TEXFLUSH",            "Texture Page Buffer disabling", 0,
        {
        }
    },
    { 0x53,    "TRXDIR",            "Activate Intra-Buffer Transmission", 1,
        {
            { "XDIR", "Transmission direction", 0, 2 }
        }
    },
    { 0x51,    "TRXPOS",            "Intra-Buffer Transmission Area settings", 5,
        {
            { "SSAX", "X Coord of Upper Left Source Rectangluar Area", 0, 11 },
            { "SSAY", "Y Coord of Upper Left Source Rectangluar Area", 16, 11 },
            { "DSAX", "X Coord of Upper Left Dest Rectangluar Area", 32, 11 },
            { "DSAY", "Y Coord of Upper Left Dest Rectangluar Area", 48, 11 },
            { "DIR", "Pixel Transmission Order", 59, 2 }
        }
    },
    { 0x52,    "TRXREG",            "Intra-Buffer Transmission Area settings", 2,
        {
            { "RRW", "Width of Transmission Area", 0, 12 },
            { "RRH", "Height of Transmission Area", 32, 12 }
        }
    },
    { 0x03,    "UV",                "Vertex Texture Coordinate setting", 2,
        {
            { "U", "Texel Coordinate U", 0, 16 },
            { "V", "Texel Coordinate V", 16, 16 }
        }
    },
    { 0x18,    "XYOFFSET_1",        "Offset value settings", 2,
        {
            { "OFX", "Offset X", 0, 16 },
            { "OFY", "Offset Y", 32, 16 }
        }
    },
    { 0x19,    "XYOFFSET_2",        "Offset value settings", 2,
        {
            { "OFX", "Offset X", 0, 16 },
            { "OFY", "Offset Y", 32, 16 }
        }
    },
    { 0x05,    "XYZ2",                "Vertex Coordinate Value settings", 3,
        {
            { "X", "X", 0, 16 },
            { "Y", "Y", 16, 16 },
            { "Z", "Z", 32, 32 }
        }
    },
    { 0x0d,    "XYZ3",                "Vertex Coordinate Value settings (ADC=1, no Kick)", 3,
        {
            { "X", "X", 0, 16 },
            { "Y", "Y", 16, 16 },
            { "Z", "Z", 32, 32 }
        }
    },
    { 0x04,    "XYZF2",            "Vertex Coordinate Value settings", 4,
        {
            { "X", "X", 0, 16 },
            { "Y", "Y", 16, 16 },
            { "Z", "Z", 32, 24 },
            { "F", "F", 56, 8 }
        }
    },
    { 0x0c,    "XYZF3",            "Vertex Coordinate Value settings (ADC=1, no Kick)", 4,
        {
            { "X", "X", 0, 16 },
            { "Y", "Y", 16, 16 },
            { "Z", "Z", 32, 24 },
            { "F", "F", 56, 8 }
        }
    },
    { 0x4e,    "ZBUF_1",            "Z-Buffer settings", 3,
        {
            { "ZBP", "Z-Buffer Base Pointer", 0, 8 },
            { "PSM", "Pixel Storage Format", 24, 4 },
            { "ZMSK", "Z Value Drawing Mask", 32, 1 }
        }
    },
    { 0x4f,    "ZBUF_2",            "Z-Buffer settings", 3,
        {
            { "ZBP", "Z-Buffer Base Pointer", 0, 8 },
            { "PSM", "Pixel Storage Format", 24, 4 },
            { "ZMSK", "Z Value Drawing Mask", 32, 1 }
        }
    },
    
        // Privileged Registers
        // All have top bit set in address field.
    { 0x8e,    "BGCOLOR",            "Background Colour setting", 3,
        {
            { "R", "R", 0, 8 },
            { "G", "G", 8, 8 },
            { "B", "B", 16, 8 }
        }
    },
    { 0xc4,    "BUSDIR",            "Hist I/F Bus Switching", 1,
        {
            { "DIR", "Interface Transmission Direction", 0, 1 }
        }
    },
    { 0xc0,    "CSR",                "System Status", 6,
        {
            { "SIGNAL", "Signal Event Control", 0, 1 },
            { "FINISH", "Finish Event Control", 1, 1 },
            { "HSINT", "HSync Interrupt Control", 2, 1 },
            { "VSINT", "VSync Interrupt Control", 3, 1 },
            { "FLUSH", "Drawing Suspend and FIFO clear", 8, 1 },
            { "RESET", "GS System Reset", 9, 1 }
        }
    },
    { 0x87,    "DISPFB1",            "Rectangular Area Read Output Circuit 1", 5,
        {
            { "FBP", "Frame Buffer Base Pointer", 0, 9 },
            { "FBW", "Frame Buffer Width", 9, 6 },
            { "PSM", "Pixel Storage Format", 15, 5 },
            { "DBX", "X Position in Rectangular Area in Buffer (pixels)", 32, 11 },
            { "DBY", "Y Position in Rectangular Area in Buffer (pixels)", 43, 11 }
        }
    },
    { 0x89,    "DISPFB2",            "Rectangular Area Read Output Circuit 2", 5,
        {
            { "FBP", "Frame Buffer Base Pointer", 0, 9 },
            { "FBW", "Frame Buffer Width", 9, 6 },
            { "PSM", "Pixel Storage Format", 15, 5 },
            { "DBX", "X Position in Rectangular Area in Buffer (pixels)", 32, 11 },
            { "DBY", "Y Position in Rectangular Area in Buffer (pixels)", 43, 11 }
        }
    },
    { 0x88,    "DISPLAY1",            "Rectangular Area Read Output Circuit 1", 6,
        {
            { "DX", "Display Area X Position (VCK Units)", 0, 12 },
            { "DY", "Display Area Y Position (Raster Units)", 12, 11 },
            { "DW", "Display Area Width (VCK Units)", 32, 12 },
            { "DH", "Display Area Height (Pixel Units)", 44, 11 },
            { "MAGH", "Magnification in H direction", 23, 4 },
            { "MAGV", "Magnification in V direction", 27, 2 }
        }
    },
    { 0x8a,    "DISPLAY2",            "Rectangular Area Read Output Circuit 2", 6,
        {
            { "DX", "Display Area X Position (VCK Units)", 0, 12 },
            { "DY", "Display Area Y Position (Raster Units)", 12, 11 },
            { "DW", "Display Area Width (VCK Units)", 32, 12 },
            { "DH", "Display Area Height (Pixel Units)", 44, 11 },
            { "MAGH", "Magnification in H direction", 23, 4 },
            { "MAGV", "Magnification in V direction", 27, 2 }
        }
    },
    { 0x8b,    "EXTBUF",            "Feedback Write Buffer setting", 8,
        {
            { "EXBP", "Base Pointer of buffer where data is written", 0, 14 },
            { "EXBW", "Width of buffer where data is written", 14, 6 },
            { "FBIN", "Input Source Selection", 20, 2 },
            { "WFFMD", "Interlace mode", 22, 1 },
            { "EMODA", "Input Alpha Processing Method", 23, 2 },
            { "EMODC", "Input Colour Processing Method", 25, 2 },
            { "WDX", "X Coordinate in rectangular area where input image data is written", 32, 11 },
            { "WDY", "Y Coordinate in rectangular area where input image data is written", 43, 11 }
        }
    },
    { 0x8c,    "EXTDATA",            "Feedback Write setting", 6,
        {
            { "SX", "X Coordinate of rectangular area where input image is written", 0, 12 },
            { "SY", "Y Coordinate of rectangular area where input image is written", 12, 11 },
            { "SMPH", "H direction sampling rate (VCK Units)", 23, 4 },
            { "SMPV", "V direction sampling rate", 27, 2 },
            { "WW", "Rectangular Area Width", 32, 12 },
            { "WH", "Rectangular Area Height", 44, 11 }
        }
    },
    { 0x8d,    "EXTWRITE",            "Feedback Write Function control", 1,
        {
            { "WRITE", "Activation/Deactivation of write", 0, 1 }
        }
    },
    { 0xc1,    "IMR",                "Interrupt Mask control", 4, 
        {
            { "SIGMSK", "SIGNAL Event Interrupt Mask", 8, 1 },
            { "FINISHMSK", "FINISH Event Interrupt Mask", 9, 1 },
            { "HSMSK", "HSync Interrupt Mask", 10, 1 },
            { "VSMSK", "VSync Interrupt Mask", 11, 1 }
        }
    },
    { 0x80,    "PMODE",            "PCRTC Mode setting", 7,
        {
            { "EN1", "Read Circuit 1 enable", 0, 1 },
            { "EN2", "Read Circuit 2 enable", 1, 1 },
            { "CRTMD", "CRT Output Switching", 2, 3 },
            { "MMOD", "Alpha Value Selection for Alpha Blending", 5, 1 },
            { "AMOD", "OUT1 Alpha Output Selection", 6, 1 },
            { "SLBG", "Alpha Blending Method Selection", 7, 1 },
            { "ALP", "Fixed Alpha Buffer Value (0xff = 1.0)", 8, 8 }
        }
    },
    { 0xc8,    "SIGLBLID",            "Signal ID Value read", 2,
        {
            { "SIGID", "ID Value set by SIGNAL Register", 0, 32 },
            { "LABID", "ID Value set by LABEL Register", 32, 32 }
        }
    },
    { 0x82,    "SMODE2",            "Video Synchronisation mode settings", 3,
        {
            { "INT", "Interlace Mode Setting", 0, 1 },
            { "FFMD", "Field/Frame setting", 1, 1 },
            { "DPMS", "VESA DPMS Mode Setting", 2, 2 }
        }
    },

    { 0xfd, "NOP",                "(this isn't a real GS register)", 0,
    },
    { 0xfe, "RESERVED",            "*RESERVED* - 0xb is in a REGS field in GIFTAG.", 0,
    },
    { 0xff, "NOP",                "No operation", 0,
    }
};



