//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PS2TEXCACHE_HPP_
#define _PS2TEXCACHE_HPP_

#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/ps2vram.hpp>
#include <pddi/base/debug.hpp>
#include <pddi/ps2/packet.hpp>

const int CACHE_LINE_SIZE = 32;


class ps2TexCache
{
public:
    ps2TexCache(unsigned texMemStart, unsigned texMemSize, class ps2Context* c);
    virtual ~ps2TexCache();
    int AllocateCache(ps2Texture*);

    void EnsureResident(VifStream& vif, ps2Texture* tex);
    void EnsureResident(VifStream& vif, ps2Texture* tex0, ps2Texture* tex1);
    
    bool Insert( ps2Texture* );
    void EvictTex(ps2Texture* tex);
    void ResolveCacheConflict( ps2Texture* , ps2Texture* );
    unsigned AllocRaw( int size, int addrHint = -1 );   

    inline unsigned GetTexMemStart() const { return texMemStart; };
    inline unsigned GetTexMemEnd() const { return texMemEnd; };
    inline unsigned GetTexMemSize() const { return texMemSize; };

    //inline int Reset() { dirty++; return 0; };
    int InvalidateTexCache();

    #ifdef PS2_USE_THE_WATCHER
    bool enableTextures;

    int EnableTextures(bool enable);
    #endif
    bool  forceUploads;
    int Disable(bool disable);

protected:
    ps2TexCache(){ /* nop */ };

    inline unsigned MemToLines(unsigned mem)  { return (mem - texMemStart) / CACHE_LINE_SIZE; }
    inline unsigned LinesToMem(unsigned line) { return texMemStart + (line * CACHE_LINE_SIZE); }

    inline void Evict(unsigned start, unsigned size)
    {
        #ifdef PS2_NO_TEXCACHE
        return;
        #else
        for(unsigned i = 0; i < size; i++)
        {
            if(cache[start + i]) {
                EvictTex(cache[start + i]);
            }
        }
        #endif
    }

    void Fill(unsigned start, unsigned size, ps2Texture* tex); 
    bool Overlapping( const ps2Texture* , const ps2Texture* ) const;

    unsigned texMemStart;
    unsigned texMemEnd;
    unsigned texMemSize;
    unsigned texMemAllocate;    
    #ifndef PS2_NO_TEXCACHE
    int nCacheLines;
    ps2Texture** cache;
    #endif

    class ps2Context* context;   
};



#endif // _PS2TEXCACHE_HPP_
