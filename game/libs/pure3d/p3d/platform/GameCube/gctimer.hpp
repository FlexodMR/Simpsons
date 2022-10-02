//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GAMECUBETIMER_HPP
#define _GAMECUBETIMER_HPP

#include <dolphin/os.h>

//*******************************************************
class GameCubeTimer
{
 public:

    GameCubeTimer(void) { mStartTime = 0; mEndTime = 0; }

    void StartTiming(void) { mStartTime = OSGetTime(); }
    void EndTiming(void)   { mEndTime   = OSGetTime(); }

    float ElapsedTimeMs(void)
    {
        float us = (float) OSTicksToMicroseconds(mEndTime - mStartTime);
        return us / 1000.0F;
    }
    
 private:

    OSTime mStartTime;
    OSTime mEndTime;
};
    
// See Chapter 11 in the Gekko User's Manual for info on the meanings of these enums
enum gcPMCSource1
{ 
    None1 = 0,
    ProcessorCycles1,
    InstructionsCompleted1,
    TimeBaseTransitions1,
    InstructionsDispatched1,
    EIEIOCount,
    ITLBSearchCycles,
    L2CacheHits,
    ValidEADeliveries,
    IABRHits,
    L1MissAboveThreshold,
    UnresolvedBranches,
    SecondBranchStallCycles
};

enum gcPMCSource2
{ 
    None2 = 0,
    ProcessorCycles2,
    InstructionsCompleted2,
    TimeBaseTransitions2,
    InstructionsDispatched2,
    L1ICacheMisses,
    ITLBMissCount,
    L2ICacheMisses,
    NotTakenBranchPredictionCount,
    Reserved2,
    ReservedLoadCount,
    LoadStoreCompleted,
    SnoopCount,
    L1ToL2CastoutCount,
    SystemUnitInstructionCount,
    L1ICacheMissStallCount,
    FirstCorrectBranchPredictionCount
};

enum gcPMCSource3
{ 
    None3 = 0,
    ProcessorCycles3,
    InstructionsCompleted3, 
    TimeBaseTransitions3,
    InstructionsDispatched3,
    L1DCacheMisses,
    DTLBMissCount,
    L2DCacheMissCount,
    PredictedTakenBranchCount,
    Reserved3,
    ConditionalStoresCompleted,
    FPUInstructionsCompleted,
    L2SnoopCastoutCount,
    L2CacheHitCount,
    Reserved3_,
    L1CacheLoadMissCycles,
    SecondCorrectBranchPredictionCount,
    BPULRCRStallCycleCount
};


enum gcPMCSource4
{ 
    None4 = 0,
    ProcessorCycles4,
    InstructionsCompleted4, 
    TimeBaseTransitions4,
    InstructionsDispatched4,
    L2CacheCastouts,
    DTLBSearchCycleCount,
    Reserved4,
    MispredictedBranchCount,
    Reserved4_,
    ConditionalStoresCompletedWithReserverationIntact,
    SYNCCount,
    SnoopRequestRetireCount,
    IntegerInstructionsCompleted,
    BPUStallCyclesOnTooManyBracnhes
};

        
        



//*******************************************************
class GameCubePerformanceMonitor
{
 public:

    GameCubePerformanceMonitor(void)
    {
        mSource1 = ProcessorCycles1;
        mSource2 = L1ICacheMissStallCount;
        mSource3 = InstructionsCompleted3;
        mSource4 = IntegerInstructionsCompleted;

        mCount1 = 0;
        mCount2 = 0;
        mCount3 = 0;
        mCount4 = 0;
    }

  ~GameCubePerformanceMonitor()
    {
    }

    void SetPMCSource1(gcPMCSource1 s) { mSource1 = s; }
    void SetPMCSource2(gcPMCSource2 s) { mSource2 = s; }
    void SetPMCSource3(gcPMCSource3 s) { mSource3 = s; }
    void SetPMCSource4(gcPMCSource4 s) { mSource4 = s; }

    unsigned long Count1(void) { return mCount1; }
    unsigned long Count2(void) { return mCount2; }
    unsigned long Count3(void) { return mCount3; }
    unsigned long Count4(void) { return mCount4; }

    void Start(void)
    {
        register unsigned mmcr0stop  = 0x80010000 + (((int)mSource1) << 6) + ((int)mSource2);
        register unsigned mmcr0start = 0x00010000 + (((int)mSource1) << 6) + ((int)mSource2);
        register unsigned mmcr1 = (((int)mSource3) << 27) + (((int)mSource4) << 22);
        register unsigned zero  = 0;      

        asm 
        {
            mtspr 952, mmcr0stop
            mtspr 956, mmcr1
            mtspr 953, zero
            mtspr 954, zero
            mtspr 957, zero
            mtspr 958, zero
            mtspr 952, mmcr0start
        }
    }


    void Stop(void)
    {
        register unsigned stop = 0x80000000;
        register unsigned long c1;
        register unsigned long c2;
        register unsigned long c3;
        register unsigned long c4;
        asm
        {
            mtspr 952, stop // turn off counting
            mfspr c1, 953
            mfspr c2, 954
            mfspr c3, 957
            mfspr c4, 958
        }

        mCount1 = c1;
        mCount2 = c2;
        mCount3 = c3;
        mCount4 = c4;
    }

 private:

    gcPMCSource1 mSource1;
    gcPMCSource2 mSource2;
    gcPMCSource3 mSource3;
    gcPMCSource4 mSource4;

    unsigned long mCount1;
    unsigned long mCount2;
    unsigned long mCount3;
    unsigned long mCount4;
};

#endif _GAMECUBETIMER_HPP



