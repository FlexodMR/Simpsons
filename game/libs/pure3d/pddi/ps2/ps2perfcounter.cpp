//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <pddi/ps2/ps2perfcounter.hpp>

#ifdef PS2_ENABLE_PROFILER 

#include <pddi/ps2/ee.hpp>

unsigned int ps2Perf::frameNum = 1;
ps2Perf* ps2Perf::perfCounters[MAX_PERF_COUNTERS] = {NULL};
int      ps2Perf::numPerfCounters = 0;

// ps2Display
ps2Perf SwapBuffers_perf("ps2Display::SwapBuffers");

// ps2TexCache
ps2Perf AllocRaw_perf("ps2TexCache::AllocRaw");
ps2Perf Insert_perf("ps2TexCache::Insert");

// ps2Context
ps2Perf RebuildTransformContext_perf("ps2Context::RebuildTransformContext");
ps2Perf SyncLight_perf("ps2Context::SyncLight");
ps2Perf PreMultiplyLights_perf("ps2Context::PreMultiplyLights");


//--------------------------------------------------------------------

void ps2Perf::PrintAll()
{
    ps2Perf::SetFrameNum(SwapBuffers_perf.count); // hack to get the current frame#

    for(int i=0;i<numPerfCounters;i++)
    {
        perfCounters[i]->PrintStats();
    }
};

void ps2Perf::ResetAll()
{
    for(int i=0;i<numPerfCounters;i++)
    {
        perfCounters[i]->Reset();
    }
    
}

void ps2Perf::PrintStats()
{        
    #define PRINT_STAT_0(desc,i) if (pc0[i].num) printf(desc "%6d %6d %6d %6d\n",pc0[i].min, pc0[i].max, pc0[i].cur, pc0[i].tot/pc0[i].num);
    #define PRINT_STAT_1(desc,i) if (pc1[i].num) printf(desc "%6d %6d %6d %6d\n",pc1[i].min, pc1[i].max, pc1[i].cur, pc1[i].tot/pc1[i].num);

    float framePercent = (100.0f*pc0[1].tot/EE::ClocksToMs)/(float)frameNum;
    printf("==== %s ====(total iterations)%d (per event)%d (frame%%) %3.4f ===========\n",desc,count,(count/PC0_NO_EVENT),framePercent);
    printf("Event                            min    max    cur    ave  \n");   

    PRINT_STAT_0("Processor cycle               ", 1 );
    PRINT_STAT_0("Single instructions issue     ", 2 );
    PRINT_STAT_0("Branch issued                 ", 3 );
    PRINT_STAT_0("BTAC miss                     ", 4 );
    PRINT_STAT_0("ITLB miss                     ", 5 );
    PRINT_STAT_0("Instruction cache miss        ", 6 );
    PRINT_STAT_0("DTLB accessed                 ", 7 );
    PRINT_STAT_0("Non-blocking load             ", 8 );
    PRINT_STAT_0("WBB single request            ", 9 );
    PRINT_STAT_0("WBB burst request             ",10 );
    PRINT_STAT_0("CPU address bus busy          ",11 );
    PRINT_STAT_0("Instruction completed         ",12 );
    PRINT_STAT_0("Non-BDS instruction completed ",13 );
    PRINT_STAT_0("COP2 instruction completed    ",14 );
    PRINT_STAT_0("Load completed                ",15 );

    PRINT_STAT_1("Low-order branch issued       ", 0 );
    PRINT_STAT_1("Processor cycle               ", 1 );
    PRINT_STAT_1("Dual instructions issue       ", 2 );
    PRINT_STAT_1("Branch miss-predicted         ", 3 );
    PRINT_STAT_1("TLB miss                      ", 4 );
    PRINT_STAT_1("DTLB miss                     ", 5 );
    PRINT_STAT_1("Data cache miss               ", 6 );
    PRINT_STAT_1("WBB single request unavailable", 7 );
    PRINT_STAT_1("WBB burst request unavailable ", 8 );
    PRINT_STAT_1("WBB burst request almost full ", 9 );
    PRINT_STAT_1("WBB burst request full        ",10 );
    PRINT_STAT_1("CPU data bus busy             ",11 );
    PRINT_STAT_1("Instruction completed         ",12 );
    PRINT_STAT_1("Non-BDS instruction completed ",13 );
    PRINT_STAT_1("COP1 instruction completed    ",14 );
    PRINT_STAT_1("Store completed               ",15 );

    #undef PRINT_STAT_0
    #undef PRINT_STAT_1
};



#endif
