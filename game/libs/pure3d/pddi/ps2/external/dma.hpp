//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _DMA_HPP
#define _DMA_HPP

// used by the ps2Display::Screenshot() funciton
void StoreTextureVIF1( 
            u_long128 * base_addr, short start_addr, 
            short pixel_mode, short x,short y, 
            short w, short h, short frame_width );

#endif
