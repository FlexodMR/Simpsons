//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlTable.hpp"
#include <assert.h>
#include <memory.h>
#include <string.h>

#define MIN(a,b) ((a)<(b)?(a):(b))

static void
resize(tlTabHdr **pth, int num, int elsize)
{
    if (num==0) {
        if (*pth) {                            
            free(*pth);  *pth  = 0; 
        }
    }
    if (*pth==0) { 
        *pth = (tlTabHdr *)malloc(sizeof(tlTabHdr)+elsize*num);
        (*pth)->count = 0;
        memset((*pth),0,sizeof(tlTabHdr)+elsize*num);
    }
    else
    {
        tlTabHdr* tmp = (tlTabHdr *)malloc(sizeof(tlTabHdr)+elsize*num);
        memset(tmp,0,sizeof(tlTabHdr)+elsize*num);
        memcpy(tmp, *pth, sizeof(tlTabHdr)+elsize*(MIN((*pth)->nalloc,num)));

        free( *pth );
        *pth = tmp;
    }
}

int 
tlTBMakeSize(tlTabHdr** pth, int num, int elsize)
{ 
    resize(pth, num, elsize); 
    tlTabHdr *tb = *pth;
    if (tb==0) return(0);
    tb->nalloc = num;
    tb->count = MIN(tb->count,tb->nalloc);
    return(1);
}

void
tlTBSetCount(tlTabHdr** pth,int n, int elsize)
{
    tlTabHdr *tb = *pth;
    if (n==0) {
        if (tb) tb->count=0;
        return;
        }
    if (tb==0||tb->nalloc<n) {
        tlTBMakeSize(pth,n,elsize);
        tb = *pth;
        tb->count = n;
        }
    else 
        tb->count = n;
    }

#define PTR(i) ((char *)tb+sizeof(tlTabHdr)+(i)*elsize)

int
tlTBInsertAt(tlTabHdr** pth,int at, int num, void *el, int elsize, int extra)
{ 
    tlTabHdr *tb = *pth;
    int oldCount;
    if (num==0) 
        return(at);
    if (tb==0) {
        assert(at==0);
        oldCount=0;
        resize(pth,num+extra,elsize);
        if (pth==0) return(-1);
        tb = *pth;
        tb->nalloc = num+extra;
    }

    else if (tb->count+num>tb->nalloc)  {
        oldCount = tb->count;
        assert(at<=oldCount);
        int newnum = (tb->count + num) * 2;
        resize(pth,newnum,elsize);
        if (pth==0) return(-1);
        tb = *pth;
        tb->nalloc = newnum;
    }
    else {
        oldCount = tb->count;
        assert (at<=oldCount);
    }
    if (at<oldCount) {
        int nmove = oldCount-at;
        memmove(PTR(at+num), PTR(at), nmove*elsize);
    }
    memmove(PTR(at),el,num*elsize);
    tb->count += num;       
    return(at);
}

int
tlTBCopy(tlTabHdr** pth,int at, int num, void *el, int elsize)
{ 
    tlTBMakeSize(pth, num, elsize);
    (*pth)->count = 0; 
    return(tlTBInsertAt(pth,0, num, el, elsize,0)); 
}

int
tlTBDelete(tlTabHdr** pth,int starting, int num, int elsize)
{
    tlTabHdr *tb = *pth;
    if (tb==NULL) return(0);
    if (starting<tb->count) {
        if (starting+num>tb->count) 
            num = tb->count-starting;
        else 
            memmove(PTR(starting),PTR(starting+num), (tb->count-starting-num)*elsize);
        tb->count-=num;
    }  
    return(tb->count);
} 


