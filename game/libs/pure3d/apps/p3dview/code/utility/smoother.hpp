//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _SMOOTHER_HPP_
#define _SMOOTHER_HPP_

template <class T, int COUNT> class Smoother
{
public:
    Smoother(T initial) : 
        runningTotal(initial * COUNT), 
        curSample(0)
    {
        for(unsigned i = 0; i < COUNT; i++)
            samples[i] = initial;

    }

    ~Smoother()
    {
    }

    float Smooth(float sample)
    {
        runningTotal -= samples[curSample];
        samples[curSample] = sample;
        runningTotal += samples[curSample];

        curSample = (curSample + 1) % COUNT;

        return runningTotal / COUNT;
    }

protected:
    T runningTotal;
    unsigned curSample;
    T samples[COUNT];
};


#endif