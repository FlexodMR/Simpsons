//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



typedef enum _DSP_IMAGE_RSDEFFECTS_FX_INDICES {
    I3DL2_CHAIN_I3DL2_REVERB = 0,
    I3DL2_CHAIN_XTALK = 1,
    ECHO_CHAIN_ECHO = 2,
    REVERB_CHAIN_MINI_REVERB = 3,
    DISTORTION_CHAIN_DISTORTION = 4,
    RMS_CHAIN_RMS = 5,
    SPLITTER_CHAIN_SPLITTER = 6
} DSP_IMAGE_RSDEFFECTS_FX_INDICES;

typedef struct _I3DL2_CHAIN_FX0_I3DL2_REVERB_STATE {
    DWORD dwScratchOffset;        // Offset in bytes, of scratch area for this FX
    DWORD dwScratchLength;        // Length in DWORDS, of scratch area for this FX
    DWORD dwYMemoryOffset;        // Offset in DSP WORDS, of Y memory area for this FX
    DWORD dwYMemoryLength;        // Length in DSP WORDS, of Y memory area for this FX
    DWORD dwFlags;                // FX bitfield for various flags. See xgpimage documentation
    DWORD dwInMixbinPtrs[2];      // XRAM offsets in DSP WORDS, of input mixbins
    DWORD dwOutMixbinPtrs[35];     // XRAM offsets in DSP WORDS, of output mixbins
} I3DL2_CHAIN_FX0_I3DL2_REVERB_STATE, *LPI3DL2_CHAIN_FX0_I3DL2_REVERB_STATE;

typedef const I3DL2_CHAIN_FX0_I3DL2_REVERB_STATE *LPCI3DL2_CHAIN_FX0_I3DL2_REVERB_STATE;

typedef struct _I3DL2_CHAIN_FX1_XTALK_STATE {
    DWORD dwScratchOffset;        // Offset in bytes, of scratch area for this FX
    DWORD dwScratchLength;        // Length in DWORDS, of scratch area for this FX
    DWORD dwYMemoryOffset;        // Offset in DSP WORDS, of Y memory area for this FX
    DWORD dwYMemoryLength;        // Length in DSP WORDS, of Y memory area for this FX
    DWORD dwFlags;                // FX bitfield for various flags. See xgpimage documentation
    DWORD dwInMixbinPtrs[4];      // XRAM offsets in DSP WORDS, of input mixbins
    DWORD dwOutMixbinPtrs[4];     // XRAM offsets in DSP WORDS, of output mixbins
} I3DL2_CHAIN_FX1_XTALK_STATE, *LPI3DL2_CHAIN_FX1_XTALK_STATE;

typedef const I3DL2_CHAIN_FX1_XTALK_STATE *LPCI3DL2_CHAIN_FX1_XTALK_STATE;

typedef struct _ECHO_CHAIN_FX0_ECHO_STATE {
    DWORD dwScratchOffset;        // Offset in bytes, of scratch area for this FX
    DWORD dwScratchLength;        // Length in DWORDS, of scratch area for this FX
    DWORD dwYMemoryOffset;        // Offset in DSP WORDS, of Y memory area for this FX
    DWORD dwYMemoryLength;        // Length in DSP WORDS, of Y memory area for this FX
    DWORD dwFlags;                // FX bitfield for various flags. See xgpimage documentation
    DWORD dwInMixbinPtrs[2];      // XRAM offsets in DSP WORDS, of input mixbins
    DWORD dwOutMixbinPtrs[2];     // XRAM offsets in DSP WORDS, of output mixbins
} ECHO_CHAIN_FX0_ECHO_STATE, *LPECHO_CHAIN_FX0_ECHO_STATE;

typedef const ECHO_CHAIN_FX0_ECHO_STATE *LPCECHO_CHAIN_FX0_ECHO_STATE;

typedef struct _REVERB_CHAIN_FX0_MINI_REVERB_STATE {
    DWORD dwScratchOffset;        // Offset in bytes, of scratch area for this FX
    DWORD dwScratchLength;        // Length in DWORDS, of scratch area for this FX
    DWORD dwYMemoryOffset;        // Offset in DSP WORDS, of Y memory area for this FX
    DWORD dwYMemoryLength;        // Length in DSP WORDS, of Y memory area for this FX
    DWORD dwFlags;                // FX bitfield for various flags. See xgpimage documentation
    DWORD dwInMixbinPtrs[2];      // XRAM offsets in DSP WORDS, of input mixbins
    DWORD dwOutMixbinPtrs[35];     // XRAM offsets in DSP WORDS, of output mixbins
} REVERB_CHAIN_FX0_MINI_REVERB_STATE, *LPREVERB_CHAIN_FX0_MINI_REVERB_STATE;

typedef const REVERB_CHAIN_FX0_MINI_REVERB_STATE *LPCREVERB_CHAIN_FX0_MINI_REVERB_STATE;

typedef struct _DISTORTION_CHAIN_FX0_DISTORTION_STATE {
    DWORD dwScratchOffset;        // Offset in bytes, of scratch area for this FX
    DWORD dwScratchLength;        // Length in DWORDS, of scratch area for this FX
    DWORD dwYMemoryOffset;        // Offset in DSP WORDS, of Y memory area for this FX
    DWORD dwYMemoryLength;        // Length in DSP WORDS, of Y memory area for this FX
    DWORD dwFlags;                // FX bitfield for various flags. See xgpimage documentation
    DWORD dwInMixbinPtrs[1];      // XRAM offsets in DSP WORDS, of input mixbins
    DWORD dwOutMixbinPtrs[1];     // XRAM offsets in DSP WORDS, of output mixbins
} DISTORTION_CHAIN_FX0_DISTORTION_STATE, *LPDISTORTION_CHAIN_FX0_DISTORTION_STATE;

typedef const DISTORTION_CHAIN_FX0_DISTORTION_STATE *LPCDISTORTION_CHAIN_FX0_DISTORTION_STATE;

typedef struct _RMS_CHAIN_FX0_RMS_STATE {
    DWORD dwScratchOffset;        // Offset in bytes, of scratch area for this FX
    DWORD dwScratchLength;        // Length in DWORDS, of scratch area for this FX
    DWORD dwYMemoryOffset;        // Offset in DSP WORDS, of Y memory area for this FX
    DWORD dwYMemoryLength;        // Length in DSP WORDS, of Y memory area for this FX
    DWORD dwFlags;                // FX bitfield for various flags. See xgpimage documentation
    DWORD dwInMixbinPtrs[6];      // XRAM offsets in DSP WORDS, of input mixbins
} RMS_CHAIN_FX0_RMS_STATE, *LPRMS_CHAIN_FX0_RMS_STATE;

typedef const RMS_CHAIN_FX0_RMS_STATE *LPCRMS_CHAIN_FX0_RMS_STATE;

typedef struct _SPLITTER_CHAIN_FX0_SPLITTER_STATE {
    DWORD dwScratchOffset;        // Offset in bytes, of scratch area for this FX
    DWORD dwScratchLength;        // Length in DWORDS, of scratch area for this FX
    DWORD dwYMemoryOffset;        // Offset in DSP WORDS, of Y memory area for this FX
    DWORD dwYMemoryLength;        // Length in DSP WORDS, of Y memory area for this FX
    DWORD dwFlags;                // FX bitfield for various flags. See xgpimage documentation
    DWORD dwInMixbinPtrs[1];      // XRAM offsets in DSP WORDS, of input mixbins
    DWORD dwOutMixbinPtrs[8];     // XRAM offsets in DSP WORDS, of output mixbins
} SPLITTER_CHAIN_FX0_SPLITTER_STATE, *LPSPLITTER_CHAIN_FX0_SPLITTER_STATE;

typedef const SPLITTER_CHAIN_FX0_SPLITTER_STATE *LPCSPLITTER_CHAIN_FX0_SPLITTER_STATE;
