//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PS2_BUILDCONFIG_HPP
#define _PS2_BUILDCONFIG_HPP

#include <pddi/buildconfig.hpp>

// --- these should be tweaked for each game!
#define PS2_MIPMAP_L 0
#define PS2_MIPMAP_K -5.20f

#ifdef DEBUGWATCH
//#define PS2_USE_THE_WATCHER // exposes some PS2 internals in Radcore's Watcher
#else
#undef PS2_USE_THE_WATCHER
#endif

// -------- set up compile time features
//#define PS2_FORCE_16BIT_FRONTBUFFER     // use 16-bit front buffer w/ 32-bit back buffer
//#define PS2_DYNAMIC_TEXTURE_PACKET      // don't use pre-computed DMA packets for texture uploads (slower, smaller)
//#define PS2_DMA_DEBUGGING               // enable dissassembly of mfifo DMA packets (must link with DMAdebug.a)
//#define PS2_FORCE_16BIT_VERTEX_COLOURS  // use 16-bit vertex colours (1-5-5-5 ARGB)
//#define PS2_SWIZZLE_TEXTURES            // runtime swizzle 4 and 8 bit textures for faster uploading to VRAM
//#define PS2_USE_THE_WATCHER             // exposes some PS2 internals in Radcore's Watcher
//#define PS2_ENABLE_PROFILER             // enabled the internal profiler
//#define PS2_NO_TEXCACHE                 // disable texture caching

// Debug build, full debugging support, slow as hell
#ifdef RAD_DEBUG
    #ifndef RAD_MW
        #define DEBUGWATCH
    #endif
    #define PS2_VALIDATE_SHADERS            // assert on incompatible shaders and vertex types
    #define PS2_MFIFO_SANITY_CHECKS         // check for mfifo timeouts
    //#define PS2_DETECT_RISKY_DELETIONS      // assert if a texture is deleted the same frame it was used (possible corrpution)
    #define PS2_USE_GAMMA_TABLES            // use gamma tables for gamma corrected images
    #define PS2_USE_THE_WATCHER             // exposes some PS2 internals in Radcore's Watcher
    #define PS2_ENABLE_PROFILER             // enabled the internal profiler
    //#define PS2_NON_MEMORY_IMAGE_WARNING  // warn if memory images aren't being used
#else

// Tune build configuration, some debugging, high speed 
#ifdef RAD_TUNE
    #ifndef RAD_MW
        #define DEBUGWATCH
    #endif
    #define PS2_VALIDATE_SHADERS
    #define PS2_MFIFO_SANITY_CHECKS
    //#define PS2_DETECT_RISKY_DELETIONS
    #define PS2_USE_GAMMA_TABLES            // use gamma tables for gamma corrected images
    #define PS2_USE_THE_WATCHER             // exposes some PS2 internals in Radcore's Watcher
    #define PS2_ENABLE_PROFILER             // enabled the internal profiler
    //#define PS2_NON_MEMORY_IMAGE_WARNING
#else

// Release build config, no debugging at all, maximum speed
#ifdef RAD_RELEASE
//#define PS2_VALIDATE_SHADERS
//#define PS2_MFIFO_SANITY_CHECKS
//#define PS2_DETECT_RISKY_DELETIONS
//#define PS2_NON_MEMORY_IMAGE_WARNING
#define PS2_NO_TEXCACHE

#endif
#endif
#endif


#endif
