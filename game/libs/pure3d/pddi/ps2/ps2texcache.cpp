//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/ps2/ps2texcache.hpp>
#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/ps2context.hpp>

#include <string.h>
#include <pddi/ps2/ps2debug.hpp>
#include <pddi/base/debug.hpp>
#include <pddi/ps2/ps2perfcounter.hpp>

volatile static int vifHandler = -1;
static const int UPLOAD_QUEUE_ENTRIES = 2048;  // hopefully there isn't more than 1024 pending texture uploads
static const int VIF1_INT_INVALID = 65535;
static volatile ps2Texture* textureUploadQueue[UPLOAD_QUEUE_ENTRIES] __attribute__((aligned(16))) = { NULL };
static volatile int textureUploadQueueHead = 0;


// VIF1 Interrupt Handler 
// This handler is responsible for initiating texture uploads.  An index into the
// textureUploadQueue array is stored in the VIF1 MARK register.  This tells the
// interrupt which texture to upload.
//------------------------------------------------------------------------------
extern "C" int VIF1Handler(int cause)
{
    if(cause == INTC_VIF1)
    {
        const int mark = DGET_VIF1_MARK();

        if ( mark != VIF1_INT_INVALID )
        {
            PDDIASSERT( mark < UPLOAD_QUEUE_ENTRIES && "Too many pending texture uploads!" );
            if(textureUploadQueue[mark])
            {
                ((ps2Texture*)(textureUploadQueue[mark]))->Upload();
                textureUploadQueue[mark] = NULL;                
            }
            DPUT_VIF1_MARK( VIF1_INT_INVALID );  // clear mark register
        }

        DPUT_VIF1_FBRST( 1 << 3 ); // restart VIF1
    }

    ExitHandler();
    return 1;
}

//------------------------------------------------------------------------------
ps2TexCache::ps2TexCache(unsigned start, unsigned size, ps2Context* c)
{
    #ifdef PS2_NO_TEXCACHE    
    // For S H&R, we disable the texcache by default
    forceUploads = true;
    #else
    forceUploads = false;
    #endif

    dummyContext.Init();
    context = c;

    texMemStart = texMemAllocate = start;
    texMemSize = size;
    texMemEnd = start + size;

    #ifndef PS2_NO_TEXCACHE        
    nCacheLines = texMemSize / CACHE_LINE_SIZE;    
    cache = new ps2Texture* [nCacheLines];
    for( int i = 0 ; i < nCacheLines; i++ ) {
        cache[i] = NULL;
    }
    #endif

    // this object should never be created twice
    PDDIASSERT( (vifHandler == -1) && "VIF1 interrupt handler already installed");
    textureUploadQueueHead = 0;
    memset(textureUploadQueue, 0, sizeof(textureUploadQueue));
    // Install the VIF1 handler
    InvalidateTexCache();
    vifHandler = AddIntcHandler(INTC_VIF1, &VIF1Handler, -1);
    PDDIASSERT((vifHandler != -1) && "Couldn't install VIF1 interrupt handler");
    DPUT_VIF1_MARK( VIF1_INT_INVALID );  // clear mark register    
    // oct24/2001 amb : see notice_e.txt and EE User's Manual p144
    DPUT_VIF0_ERR(VIF0_ERR_ME0_M);
    DPUT_VIF1_ERR(VIF1_ERR_ME0_M);
    EnableIntc(INTC_VIF1);
}

ps2TexCache::~ps2TexCache()
{
    DisableIntc(INTC_VIF1);    
    #ifndef PS2_NO_TEXCACHE
    Evict( 0 , nCacheLines );            
    if (cache != NULL) {
        delete[] cache;
    }
    cache = NULL;    
    #endif
}

int ps2TexCache::AllocateCache(ps2Texture* tex)
{
    if((texMemAllocate + tex->GetVramFootprint()) > texMemEnd) {
        texMemAllocate = texMemStart ;
    }

    PDDIASSERT((texMemAllocate + tex->GetVramFootprint()) <= texMemEnd && "Texture is too large to fit into VRAM");

    tex->SetVideoMemoryAddress(texMemAllocate);
    tex->cacheInfo.cacheStart = MemToLines(texMemAllocate);
    tex->cacheInfo.cacheSize = (tex->GetVramFootprint() + CACHE_LINE_SIZE - 1) / CACHE_LINE_SIZE;
    PDDIASSERT(tex->cacheInfo.cacheSize != 0);
    tex->cacheInfo.state = ps2Texture::PS2_TEX_UNCACHED;

    texMemAllocate += (tex->GetVramFootprint());

    PDDIASSERT(((tex->GetVramFootprint()&31) == 0) && "Texture isn't aligned to page boundary");

    if(texMemAllocate >= texMemEnd) {
        texMemAllocate = texMemStart;
    }

    return 0;
}

unsigned ps2TexCache::AllocRaw( int blockSize, int addrHint )
{
    int addr;

    // size is in blocks, so lets convert into cache lines
    int cacheSize = blockSize / CACHE_LINE_SIZE;

    if ( addrHint > 0 )
    {        
        addr = MemToLines( addrHint );
        PDDIASSERT( (addr >= 0 && addr <= nCacheLines * CACHE_LINE_SIZE) && "Invalid address");       
        Evict( addr , cacheSize );
        return addrHint;
    }

    // return start of texmem
    PDDIASSERT( (cacheSize < nCacheLines) && "Not enough room in VRAM");
    Evict( 0 , cacheSize );

    return LinesToMem(0);
}

bool ps2TexCache::Insert( ps2Texture* tex )
{
    #ifdef PS2_NO_TEXCACHE
    bool doUpload = true;

    if ( 0 == tex->GetVideoMemoryAddress() )
    {
        AllocateCache( tex );
        doUpload = true;
    }

    //Evict(tex->cacheInfo.cacheStart, tex->cacheInfo.cacheSize);
    //Fill(tex->cacheInfo.cacheStart, tex->cacheInfo.cacheSize, tex);
    tex->cacheInfo.state = ps2Texture::PS2_TEX_CACHED;
    context->ADD_STAT(PDDI_STAT_TEXTURE_MISSES, 1);
    return true;

    #else
    bool doUpload = true;    

    if ( 0 == tex->GetVideoMemoryAddress() )
    {
        AllocateCache( tex );
        doUpload = true;
    }

    if( (tex->cacheInfo.state == ps2Texture::PS2_TEX_CACHED) && (tex->GetVideoMemoryAddress() > 0) && (!forceUploads))
    {
        doUpload = false;
    }
    else
    {
        doUpload = true;
    }

    // make sure texture is in a valid spot in the cache
    if ((tex->GetVideoMemoryAddress() < texMemStart) || ((tex->GetVideoMemoryAddress() + tex->GetVramFootprint()) > texMemEnd))
    {
        // this texture is in an invalid spot
        AllocateCache( tex );
        doUpload = true;
    }

    Evict(tex->cacheInfo.cacheStart, tex->cacheInfo.cacheSize);
    Fill(tex->cacheInfo.cacheStart, tex->cacheInfo.cacheSize, tex);
    tex->cacheInfo.state = ps2Texture::PS2_TEX_CACHED;

    if (doUpload)
    {
        context->ADD_STAT(PDDI_STAT_TEXTURE_MISSES, 1);
    }
    else
    {
        context->ADD_STAT(PDDI_STAT_TEXTURE_HITS, 1);
    }

    return doUpload;
    #endif
}

void ps2TexCache::Fill(unsigned start, unsigned size, ps2Texture* tex)
{
#ifdef PS2_NO_TEXCACHE        
    return;
#else
    for(unsigned i = 0; i < size; i++)
    {
        cache[start+i] = tex;
    }
#endif
}

bool ps2TexCache::Overlapping(const ps2Texture* tex, const ps2Texture* tex2) const 
{
    const ps2Texture::ps2TexCacheNode& node1 = tex->cacheInfo;
    const ps2Texture::ps2TexCacheNode& node2 = tex2->cacheInfo;

    bool overlap;

    // check whether node1 overlaps with node2
    overlap = 
        (node1.cacheStart >= node2.cacheStart) &&
        (node1.cacheStart < node2.cacheStart + node2.cacheSize);

    // check whether node2 overlaps with node1
    overlap |= 
        (node2.cacheStart >= node1.cacheStart) &&
        (node2.cacheStart < node1.cacheStart + node1.cacheSize);

    return overlap;
}

void ps2TexCache::ResolveCacheConflict( ps2Texture* tex, ps2Texture* tex2)
{
    // feb20/2001 - amb
    // check if the textures overlap in the cache
    PDDIASSERT( tex && "Invalid texture. Need to specify base texture.");
    PDDIASSERT( tex2 && "Invalid texture. Need to specify secondary texture.");

    // make sure the textures are allocated in the cache
    if ( 0 == tex->GetVideoMemoryAddress() )
    {
        AllocateCache( tex );
        EvictTex(tex);
    }
    if ( 0 == tex2->GetVideoMemoryAddress() )
    {
        AllocateCache( tex2 );
        EvictTex(tex);
    }

    if ( tex == tex2 )
    {
        return;
    }

    if (!Overlapping( tex , tex2)) 
    {
        return;
    }

    // move the smaller texture to a new location in the cache
    ps2Texture *movedTex , *otherTex ;

    if ( tex->cacheInfo.cacheSize > tex2->cacheInfo.cacheSize )
    {
        movedTex = tex2;
        otherTex = tex;
    }
    else
    {
        movedTex = tex;
        otherTex = tex2;
    }

    EvictTex( movedTex );    
    texMemAllocate = texMemStart + (otherTex->cacheInfo.cacheStart + otherTex->cacheInfo.cacheSize);
    PDDIASSERT( (texMemAllocate >= texMemStart && texMemAllocate < texMemEnd) && "Invalid texMem address" );
    AllocateCache( movedTex );
}

int ps2TexCache::InvalidateTexCache()
{
    #ifndef PS2_NO_TEXCACHE
    asm __volatile__ ("di");
    Evict( 0 , nCacheLines );
    asm __volatile__ ("ei");
    #endif
    return 0;

}

void ps2TexCache::EnsureResident(VifStream& vif, ps2Texture* texture)
{    
    asm __volatile__ ("di");

    bool needToUpload = Insert( texture );
    if ( needToUpload )
    {
        PDDIASSERT( (textureUploadQueue[textureUploadQueueHead] == NULL) && "Upload queue too small!!" );
        textureUploadQueue[textureUploadQueueHead] = texture;

        vif.Nop();// from technotes - Erroneous VIF1 interrupts
        vif.Flush();
        vif.Direct(sizeof(GsDummyContext)/16,&dummyContext);
        vif.FlushA();
        vif.Nop();

        vif.Mark(textureUploadQueueHead);        
        vif.Nop();
        vif.EnableInterrupts(true);
        vif.Nop(); // this code will trigger the VIF1 interrupt
        vif.EnableInterrupts(false);
        vif.Nop();
        textureUploadQueueHead = ( textureUploadQueueHead + 1 ) & (UPLOAD_QUEUE_ENTRIES-1);
    }

    asm __volatile__ ("ei");
}



void ps2TexCache::EnsureResident(VifStream& vif, ps2Texture* tex0, ps2Texture* tex1)
{
    // nv todo: this needs some work
    bool needToUpload;

    asm __volatile__ ("di");
    // make sure the textures dont overlap in vram
    ResolveCacheConflict( tex0 , tex1 );


    needToUpload = Insert( tex0 );
    if ( needToUpload )
    {
        textureUploadQueue[textureUploadQueueHead] = tex0;
        
        vif.Nop();// from technotes - Erroneous VIF1 interrupts
        vif.Flush();
        vif.Direct(sizeof(GsDummyContext)/16,&dummyContext);
        vif.FlushA();
        vif.Nop();

        vif.Mark(textureUploadQueueHead);
        vif.Nop();
        vif.EnableInterrupts(true);
        vif.Nop(); // this code will trigger the VIF1 interrupt
        vif.EnableInterrupts(false);
        vif.Nop();
        textureUploadQueueHead = ( textureUploadQueueHead + 1 ) & (UPLOAD_QUEUE_ENTRIES-1);
    }

    needToUpload = Insert( tex1 );
    if ( needToUpload )
    {
        textureUploadQueue[textureUploadQueueHead] = tex1;

        vif.Nop();// from technotes - Erroneous VIF1 interrupts
        vif.Flush();
        vif.Direct(sizeof(GsDummyContext)/16,&dummyContext);
        vif.FlushA();
        vif.Nop();

        vif.Mark(textureUploadQueueHead);
        vif.Nop();
        vif.EnableInterrupts(true);
        vif.Nop(); // this code will trigger the VIF1 interrupt
        vif.EnableInterrupts(false);
        vif.Nop();
        textureUploadQueueHead = ( textureUploadQueueHead + 1 ) & (UPLOAD_QUEUE_ENTRIES-1);
    }

    asm __volatile__ ("ei");
}

void ps2TexCache::EvictTex(ps2Texture* tex)
{
    PDDIASSERT( tex && "Invalid texture pointer in EvictTex");

    tex->cacheInfo.state = ps2Texture::PS2_TEX_UNCACHED;
    if(tex->GetVideoMemoryAddress() == 0)
    {
        return;
    }
#ifdef PS2_NO_TEXCACHE
    return;
#else

    const int start = tex->cacheInfo.cacheStart;
    const int size  = tex->cacheInfo.cacheSize;

    for(int i = 0; i < size; i++)
    {
        //if(cache[start+i] == tex) {
        //     cache[start+i] = NULL;
        //}
        int idx = start+i;

        if (cache[idx] != tex && cache[idx]!=NULL)
        {
            EvictTex(cache[idx]);
        }
        cache[idx] = NULL;
    }
#endif
}

#ifdef PS2_USE_THE_WATCHER
int ps2TexCache::EnableTextures(bool enable)
{
    return 0;
};

#endif
// disable the texture cache
int ps2TexCache::Disable(bool disable)
{
    InvalidateTexCache();
    #ifndef PS2_NO_TEXCACHE
    forceUploads = disable;
    #else
    forceUploads = true;
    #endif
    
    return 0;  
};
