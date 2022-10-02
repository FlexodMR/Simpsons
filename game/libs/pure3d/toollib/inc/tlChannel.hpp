//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef __TL_CHANNEL_HPP__
#define __TL_CHANNEL_HPP__

#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include "tlEntity.hpp"
#include "tlFourCC.hpp"
#include "tlColour.hpp"
#include "tlPoint.hpp"
#include "tlQuat.hpp"
#include "tlString.hpp"
#include <assert.h>
#include "tlEventAnimation.hpp" //hack'

#include <map>
#include <iostream>

class tlDataChunk;
class tlChannelManager;

const float SQRT_ONE_HALF = 0.707107F;

// Added by Bryan Ewert on 19 Jul 2002
// When I'm debugging the behavior of this class I often
// want to restrict monitoring it only from a particular template Type
// (for example, tlChannel<tlColour>). This little global class allows 
// me to turn on debug spew when I need it, and turn it off when I don't.
class tlChannelDebug
{
public:
    static bool                 DEBUG;
    static bool                 Debug( void );
};

inline
bool tlChannelDebug::Debug( void )
{
#ifdef _DEBUG
    return DEBUG;
#else   // !define _DEBUG
    return false;
#endif  // _DEBUG
}

/* SEARCH STRINGS

void tlChannel<Type>::Optimize(float tolerance, bool bUsePeakDetection )

*/

//*****************************************************************************************************************
// NOTES:
//      - Memory sizing does not take into account event, string and entity channels!
//      - Compressed quaternions not yet supported in toollib!
//*****************************************************************************************************************

//*****************************************************************************************************************
// Runtime Channel Data Structures Sizes (used for memory image sizing) note these should be 32bit aligned (ie 4 bytes)
//      0 - PC
//      1 - PS2
//      2 - XBOX
//      3 - GC
//*****************************************************************************************************************
const int INT_CHANNEL_SIZES[] = { 32, 36, 32, 32 };
const int FLOAT1_CHANNEL_SIZES[] = { 32, 36, 32, 32 };
const int FLOAT2_CHANNEL_SIZES[] = { 32, 36, 32, 32 };
const int VECTOR_1DOF_CHANNEL_SIZES[] = { 48, 52, 48, 48 };
const int VECTOR_2DOF_CHANNEL_SIZES[] = { 48, 52, 48, 48 };
const int VECTOR_3DOF_CHANNEL_SIZES[] = { 32, 36, 32, 32 };
const int QUATERNION_CHANNEL_SIZES[] = { 32, 36, 32, 32 };
const int ENTITY_CHANNEL_SIZES[] = { 32, 36, 32, 32 };
const int BOOL_CHANNEL_SIZES[] = { 32, 36, 32, 32 };
const int COLOUR_CHANNEL_SIZES[] = { 32, 36, 32, 32 };
const int EVENT_CHANNEL_SIZES[] = { 32, 36, 32, 32 };

//*****************************************************************************************************************
// Runtime Data Type Sizes (used for memory image sizing) note these should be 32bit aligned (ie 4 bytes)
//      0 - PC
//      1 - PS2
//      2 - XBOX
//      3 - GC
//*****************************************************************************************************************
const int SHORT_SIZES[] = { 2, 2, 2, 2 }; 
const int INT_SIZES[] = { 4, 4, 4, 4 }; 
const int FLOAT_SIZES[] = { 4, 4, 4, 4 }; 
const int POINTER_SIZES[] = { 4, 4, 4, 4 };
const int BOOL_SIZES[] = { 1, 4, 1, 1 };
const int COLOUR_SIZES[] = { 4, 4, 4, 4 };

//*****************************************************************************************************************
// Channel Data Template Class
//*****************************************************************************************************************
template <class Type>
class tlChannel
{
public:
    tlChannel();
    tlChannel(const tlChannel<Type>& channel);
    virtual ~tlChannel();

    virtual tlChannel<Type>* Clone() const = 0;

    // set the number of keys in channel, will truncate and add keys if neccessary, returns total number of keys
    virtual unsigned SetNumKeys(unsigned numKeys);

    //removes all keys outside the range and resets the first key to 0
    virtual void SetFrameRange(short start, short stop, bool shiftToZero = true);

    // adds num extra keys at the end of the channel, returns number of keys added
    virtual unsigned AddNumKeys(unsigned numExtraKeys);

    // insert num extra keys at index key, returns number of keys inserted
    virtual unsigned InsertNumKeys(unsigned key, unsigned numExtraKeys);

    // delete num keys at index key, return number of keys deleted
    virtual unsigned DeleteNumKeys(unsigned key, unsigned numExtraKeys);

    // deletes all keys
    virtual void DeleteAllKeys();

    // set all keys
    virtual void SetKeys(unsigned numKeys, const short* frames, const Type* values);

    // get total number of keys
    virtual unsigned GetNumKeys() const;

    //determines the keyframe range
    virtual void GetFrameRange(short& start, short& stop) const;

    // get the frame channel
    virtual const short* GetFrames() const;

    // get the value channel
    virtual const Type* GetValues() const;

    // set an individual key, return true if the key is valid and is set
    virtual bool SetKey(unsigned key, short frame, const Type& value);

    bool HasKey( short atFrame, unsigned& asKey );

    // get an individual key, return true if the key is valid and is correctly retrieved
    virtual bool GetKey(unsigned key, short& frame, Type& value);

    // add one key with the specified values at end of channel, return true if key is added successfully
    virtual bool AddKey(short frame, const Type& value);

    // insert a key with the specified values at the index key, return true if keys is inserted succesffully
    virtual bool InsertKey(unsigned key, short frame, const Type& value);

    // delete an individual key
    virtual bool DeleteKey(unsigned key);

    // find the keyframe that would occur before or at the specified frame
    virtual int FindKey(float frame, bool& bIsKey);

    // shift all the keys
    virtual void ShiftKeys(short delta);

    // stretch or squish a section of keys
    virtual void StretchKeys(unsigned beginKey, unsigned endKey, short delta);

    // scale the time for each keyframe
    virtual void ScaleKeyTimes(float scale);

    // make the last keyframe equal to the first keyframe (actually overwrites last keyframe so be careful)
    virtual void LoopKeys();

    // sort the keys so that the channel is in correct frame order
    virtual void SortKeys();

    // determine if channel data is valid (ie no out of order keyframes, no negative keyframes, etc)
    virtual bool IsValid();

    // make the channel valid (ie sorts keyframes, removes all negative frames, may result in undesirable loss of animation data)
    virtual void MakeValid();

    // determine if channel data is valid (ie no out of order keyframes, no negative keyframes, etc)
    virtual bool IsStatic();

    // make channel data static
    virtual void MakeStatic();

    // calculates the value at the specified frame, will return an interpolated value if no keyframe is found
    virtual Type CalculateValue(float frame);

    // validates and optimizes channel data to remove duplicate and linear keyframes based on percent difference allowed
    virtual void Optimize(float tolerance, bool bUsePeakDetection = true );

    // add extra keys every space frames
    virtual void InsertExtraKeys(unsigned int space);

    // calculate the size needed in runtime memory to store the channel (0=pc,1=ps2,2=xbox,3=gamecube)
    virtual unsigned int CalculateMemoryImageSize(unsigned int console, unsigned int inSize = 0);

    // function used to set whether a channel should interpolate it's keys or not
    virtual void EnableInterpolation(unsigned long enable);

    friend class tlChannelManager;

protected:

    // find bracketing keys that surround the keyframe (if no brackets exist, ie before first of after last key, then return false), mainly used by optimize
    virtual bool FindBracketKeys(float frame, unsigned& beginKey, unsigned& endKey, bool* validKeys = NULL);

    // interpolate a value at specified frame, ignoring any keyframe at the specified frame, mainly used by optimize
    virtual Type Evaluate(float frame, bool* validKeys = NULL) = 0;

    // equality between two values based on a tolerance
    virtual bool WithinTolerance(const Type& value1, const Type& value2, float tolerance) = 0;

    // checks if the specified key is a peak key
    virtual bool IsPeak( const unsigned key ) = 0;

    // function used to delete a key, only a helper function for data types that are arrays of pointers
    virtual void EraseKey(unsigned key);

    // Expanded to (unsigned long) to allow bitfield when used with Vertex Animation
    unsigned long interpolate;
    // Data has changed since the last makeValid call
    bool dirty;
    unsigned numKeys;
    short* frames;
    Type* values;
};

template <class Type>
tlChannel<Type>::tlChannel():
    interpolate(true),
    dirty(true),
    numKeys(0),
    frames(NULL),
    values(NULL)
{
}

template <class Type>
tlChannel<Type>::tlChannel(const tlChannel<Type>& channel):
    interpolate(true),
    dirty(true),
    numKeys(0),
    frames(NULL),
    values(NULL)
{
    SetKeys(channel.GetNumKeys(),channel.GetFrames(),channel.GetValues());
}

template <class Type>
tlChannel<Type>::~tlChannel()
{
    delete [] frames;
    delete [] values;
}

template <class Type>
unsigned tlChannel<Type>::SetNumKeys(unsigned n)
{
    dirty = true;    
    if (n <= 0)
    {
        DeleteAllKeys();
        return 0;
    }
    else if (numKeys != n)
    {
        short* newFrames = new short[n];
        Type* newValues = new Type[n];

        if (numKeys > n)
        {
            unsigned i;
            for (i = 0; i < n; i++)
            {
                newFrames[i] = frames[i];
                newValues[i] = values[i];
            }
            for (i = n; i < numKeys; i++)
            {
                EraseKey(i);
            }
        }
        else if (numKeys > 0)
        {
            unsigned i;
            for (i = 0; i < numKeys; i++)
            {
                newFrames[i] = frames[i];
                newValues[i] = values[i];
            }
            for (i = numKeys; i < n; i++)
            {
                newFrames[i] = frames[numKeys-1];
                newValues[i] = values[numKeys-1];
            }
        }
        else
        {
            memset(newFrames,0,sizeof(short)*n);
            //disabled memset because values should be set by the user
            //if enabled then key types such as tlEvent which have internal
            //objects will have all their initial values specified in there
            //constructors trashed;
            //memset(newValues,0,sizeof(Type)*n);
        }
        delete [] frames;
        delete [] values;
        numKeys = n;
        frames = newFrames;
        values = newValues;
    }
    return numKeys;
}

template <class Type>
void tlChannel<Type>::SetFrameRange(short start, short stop, bool shiftToZero)
{
    dirty = true;
    if (start>=stop)
    {
        stop = start+1;
    }

    if (numKeys>0)
    {
        int numValidKeys = 2;
        bool* validKeys = new bool[numKeys];
        for (unsigned i = 0; i < numKeys; i++)
        {
            if ((frames[i]>start)&&(frames[i]<stop))
            {
                validKeys[i] = true;
                numValidKeys++;
            }
            else
            {
                validKeys[i] = false;
            }
        }

        short* newFrames = NULL;
        Type* newValues = NULL;

        if (numValidKeys > 2)
        {
            newFrames = new short[numValidKeys];
            newValues = new Type[numValidKeys];

            newFrames[0] = start;
            newValues[0] = CalculateValue(start);
            newFrames[numValidKeys-1] = stop;
            newValues[numValidKeys-1] = CalculateValue(stop);

            unsigned currKey = 1;
            for (unsigned j = 0; j < numKeys; j++)
            {
                if (validKeys[j])
                {
                    newFrames[currKey] = frames[j];
                    newValues[currKey] = values[j];
                    currKey++;
                }
            }
        }
        else
        {
            numValidKeys = 1;
            newFrames = new short[numValidKeys];
            newValues = new Type[numValidKeys];

            newFrames[0] = start;
            newValues[0] = CalculateValue(start);
        }

        delete [] frames;
        delete [] values;
        numKeys = numValidKeys;
        frames = newFrames;
        values = newValues;

        if (shiftToZero)
        {
            ShiftKeys(-frames[0]);
        }

        delete [] validKeys;
    }
}

template <class Type>
unsigned tlChannel<Type>::AddNumKeys(unsigned n)
{
    dirty = true;
    return InsertNumKeys(numKeys,n);
}

template <class Type>
unsigned tlChannel<Type>::InsertNumKeys(unsigned key, unsigned n)
{
    dirty = true;
    if ((key>numKeys)||(key<0)||(n<=0))
        return 0;

    unsigned newNumKeys = n+numKeys;
    short* newFrames = new short[newNumKeys];
    Type* newValues = new Type[newNumKeys];

    if (numKeys > 0)
    {
        if (key>0)
        {
            for (unsigned i = 0; i < key; i++)
            {
                newFrames[i] = frames[i];
                newValues[i] = values[i];
            }
        }
        if (key<numKeys)
        {
            for (unsigned i = key; i < numKeys; i++)
            {
                newFrames[i+n] = frames[i];
                newValues[i+n] = values[i];
            }
        }
        if (key==numKeys)
        {
            for (unsigned i = key; i < key+n; i++)
            {
                newFrames[i] = frames[key-1];
                newValues[i] = values[key-1];
            }
        }
        else
        {
            for (unsigned i = key; i < key+n; i++)
            {
                newFrames[i] = frames[key];
                newValues[i] = values[key];
            }
        }
    }
    else
    {
        memset(newFrames,0,sizeof(short)*(newNumKeys));
        //disabled memset because values should be set by the user
        //if enabled then key types such as tlEvent which have internal
        //objects will have all their initial values specified in there
        //constructors trashed;
        //memset(newValues,0,sizeof(Type)*(newNumKeys));
    }

    unsigned numInserted = n;

    delete [] frames;
    delete [] values;
    numKeys = newNumKeys;
    frames = newFrames;
    values = newValues;

    return numInserted;
}

template <class Type>
unsigned tlChannel<Type>::DeleteNumKeys(unsigned key, unsigned n)
{
    dirty = true;
    if ((key >= numKeys)||(key < 0)||(n <= 0))
        return 0;

    unsigned newNumKeys = 0;
    short* newFrames = NULL;
    Type* newValues = NULL;

    if (key == 0)
    {
        if (n >= numKeys)
        {
            DeleteAllKeys();
            return 0;
        }
        else
        {
            newNumKeys = numKeys - n;
            newFrames = new short[newNumKeys];
            newValues = new Type[newNumKeys];

            for (unsigned i = 0; i < newNumKeys; i++)
            {
                newFrames[i] = frames[n+i];
                newValues[i] = values[n+i];
            }
        }
    }
    else if (key+n >= numKeys)
    {
        newNumKeys = numKeys-key;
        newFrames = new short[newNumKeys];
        newValues = new Type[newNumKeys];

        for (unsigned i = 0; i < newNumKeys; i++)
        {
            newFrames[i] = frames[i];
            newValues[i] = values[i];
        }
    }
    else
    {
        newNumKeys = numKeys - n;
        newFrames = new short[newNumKeys];
        newValues = new Type[newNumKeys];

        unsigned i;
        for (i = 0; i < key; i++)
        {
            newFrames[i] = frames[i];
            newValues[i] = values[i];
        }
        for (i = key; i < newNumKeys; i++)
        {
            newFrames[i] = frames[n+i];
            newValues[i] = values[n+i];
        }
    }

    unsigned numDeleted = numKeys-newNumKeys;

    for (unsigned i = 0; i < numDeleted; i++)
    {
        EraseKey(key+i);
    }

    delete [] frames;
    delete [] values;
    numKeys = newNumKeys;
    frames = newFrames;
    values = newValues;

    return numDeleted;
}

template <class Type>
void tlChannel<Type>::DeleteAllKeys()
{
    dirty = true;
    if (numKeys > 0)
    {
        for (unsigned i = 0; i < numKeys; i++)
        {
            EraseKey(i);
        }
        numKeys = 0;
        delete [] frames;
        delete [] values;
        frames = NULL;
        values = NULL;
    }
}

template <class Type>
void tlChannel<Type>::SetKeys(unsigned n, const short* f, const Type* v)
{
    dirty = true;
    if ((n>0)&&(f)&&(v))
    {
        DeleteAllKeys();
        numKeys = n;
        frames = new short[numKeys];
        values = new Type[numKeys];

        for (unsigned i = 0; i < n; i++)
        {
            frames[i] = f[i];
            values[i] = v[i];
        }
    }
}

template <class Type>
unsigned tlChannel<Type>::GetNumKeys() const
{
    return numKeys;
}

template <class Type>
void tlChannel<Type>::GetFrameRange(short& start, short& stop) const
{
    start = 0;
    stop = 0;

    if (numKeys>0)
    {
        start = frames[0];
        stop = frames[numKeys-1];
    }
}

template <class Type>
const short* tlChannel<Type>::GetFrames() const
{
    return frames;
}

template <class Type>
const Type* tlChannel<Type>::GetValues() const
{
    return values;
}

template <class Type>
bool tlChannel<Type>::SetKey(unsigned key, short frame, const Type& value)
{
    dirty = true;
    if ((key>=numKeys)||(key<0)||(numKeys<=0))
        return false;

    frames[key] = frame;
    values[key] = value;

    return true;
}

template <class Type>
bool tlChannel<Type>::HasKey( short atFrame, unsigned& asKey )
{
    unsigned key = numKeys;
    while ( key-- )
    {
        if ( frames[key] == atFrame )
        {
            asKey = key;
            return true;
        }
    }

    return false;
}

template <class Type>
bool tlChannel<Type>::GetKey(unsigned key, short& frame, Type& value)
{
    if ((key>=numKeys)||(key<0)||(numKeys<=0))
        return false;

    frame = frames[key];
    value = values[key];

    return true;
}

template <class Type>
bool tlChannel<Type>::AddKey(short frame, const Type& value)
{
    dirty = true;
    AddNumKeys(1);
    return SetKey(numKeys-1,frame,value);
}

template <class Type>
bool tlChannel<Type>::InsertKey(unsigned key, short frame, const Type& value)
{
    dirty = true;
    if ((key>numKeys)||(key<0))
        return false;

    if (InsertNumKeys(key,1)==1)
        return SetKey(key,frame,value);
    else
        return false;
}

template <class Type>
bool tlChannel<Type>::DeleteKey(unsigned key)
{
    dirty = true;
    if ((key>=numKeys)||(key<0)||(numKeys<=0))
        return false;

    return (DeleteNumKeys(key,1)==1);
}

template <class Type>
int tlChannel<Type>::FindKey(float frame, bool& bIsKey)
{
    bIsKey = true;

    if (numKeys<1)
    {
        assert(numKeys>0);
        return -1;
    }

    // if before first key frame return value of first key frame
    if (frame <= (float)frames[0])
    {
        return 0;
    }

    // if after last key frame return value of last key frame
    if (frame >= (float)frames[numKeys - 1])
    {
        return numKeys-1;
    }

    unsigned i = 0;
    for (i = 0; (i < numKeys) && ((float)frames[i] < frame); i++)
    {
        // do nothing, all we want is i
    }

    if ((float)frames[i]==frame)
        return i;
    else
    {
        bIsKey = false;
        return i-1;
    }
}

template <class Type>
void tlChannel<Type>::ShiftKeys(short delta)
{
    dirty = true;
    for (unsigned i = 0; i < numKeys; i++)
    {
        frames[i] += delta;
    }
}

template <class Type>
void tlChannel<Type>::StretchKeys(unsigned beginKey, unsigned endKey, short delta)
{
    dirty = true;
    if ((beginKey<endKey) || (beginKey<0) || (endKey>=numKeys) || (numKeys<=0) || (delta<0))
        return;

    if (delta == 0)
    {
        DeleteNumKeys(beginKey+1,endKey-beginKey);
    }
    else
    {
        if (beginKey==endKey)
        {
            InsertKey(endKey,frames[endKey],values[endKey]);
            endKey++;
        }
        else
        {
            short origDelta = frames[endKey] - frames[beginKey];

            for (unsigned i = beginKey+1; i < endKey; i++)
            {
                frames[i] = (short)((((float)(frames[i]-frames[beginKey]))/origDelta) * delta) + frames[beginKey];
            }
            delta -= origDelta;
        }
        for (unsigned j = endKey; j < numKeys; j++)
        {
            frames[j] += delta;
        }
    }
}

template <class Type>
void tlChannel<Type>::ScaleKeyTimes(float scale)
{
    dirty = true;
    if ((scale == 1.0f) || (scale <= 0.0f))
        return;

    for (unsigned i = 0; i < numKeys; i++)
    {
        frames[i] = (short)((float)frames[i] * scale);
    }
}

template <class Type>
void tlChannel<Type>::LoopKeys()
{
    dirty = true;
    if (numKeys>0)
        values[numKeys-1] = values[0];
}

template <class Type>
void tlChannel<Type>::SortKeys()
{
    dirty = true;
    if (numKeys>1)
    {
        unsigned i;
        for (i = 1; i < numKeys; i++)
        {
            //
            // This frames are bigger that the
            // previous value so just copy
            //
            if (frames[i]<frames[i-1])
            {
                //
                // Now purcolate up the current ith element
                //
                for (int j = i; j >= 1; j--)
                {
                    //
                    // Previous framevalue is bigger than the current
                    // So make a for the jth position
                    //
                    if (frames[j]<=frames[j-1])
                    {
                        //
                        // newFrames is bigger so move it forward
                        //
                        short tmpFrames = frames[j];
                        Type  tmpValues = values[j];

                        frames[j] = frames[j-1];
                        values[j] = values[j-1];

                        //
                        // frames is smaller so move it back...
                        // this will continue up
                        //
                        frames[j-1] = tmpFrames;
                        values[j-1] = tmpValues;
                    }
                }
            }
        }
    }
}

template <class Type>
bool tlChannel<Type>::IsValid()
{
    if (numKeys>0)
    {
        if (frames[0]<0)
            return false;

        for (unsigned i = 1; i < numKeys; i++)
        {
            if ((frames[i]<frames[i-1])||(frames[i]<0))
                return false;
        }
        return true;
    }
    return false;
}

template <class Type>
void tlChannel<Type>::MakeValid()
{
    if (!dirty)
    {
        return;
    }

    SortKeys();

    // remove keyframes with duplicate frame values as well as negative frame values
    bool* validKeys = new bool[numKeys];
    unsigned numValidKeys = 0;
    unsigned currKey = 0;
    unsigned newKey = 0;

    validKeys[0] = (frames[0]<0) ? false : true;
    numValidKeys = (frames[0]<0) ? 0 : 1;
    for (currKey = 1; currKey < numKeys; currKey++)
    {
        if ((frames[currKey]<0)||(frames[currKey]==frames[currKey-1]))
        {
            validKeys[currKey] = false;
        }
        else
        {
            numValidKeys++;
            validKeys[currKey] = true;
        }
    }

    // if no valid keys (ie all negative frames) then force the last key to be valid (frame = 0)
    if (numValidKeys==0)
    {
        numValidKeys = 1;
        validKeys[numKeys-1] = true;
        frames[numKeys-1] = 0;
    }

    // create a valid set of keyframes if necessary
    if (numValidKeys!=numKeys)
    {
        short* newFrames = new short[numValidKeys];
        Type* newValues = new Type[numValidKeys];
        for (currKey = 0; currKey < numKeys; currKey++)
        {
            if (validKeys[currKey])
            {
                newFrames[newKey] = frames[currKey];
                newValues[newKey] = values[currKey];
                newKey++;
                assert(newKey<=numValidKeys);
            }
            else
            {
                EraseKey(currKey);
            }
        }
        assert(newKey==numValidKeys);

        delete [] frames;
        delete [] values;
        numKeys = newKey;
        frames = newFrames;
        values = newValues;
    }
    delete [] validKeys;

    dirty = false;
}

template <class Type>
bool tlChannel<Type>::IsStatic()
{
    if (numKeys==1)
    {
        return true;
    }
    else
    {
        for (unsigned i = 1; i < numKeys; i++)
        {
            if (!WithinTolerance(values[0],values[i],0.0f))
            {
                return false;
            }
        }
        return true;
    }
}

template <class Type>
void tlChannel<Type>::MakeStatic()
{
    dirty = true;
    SetNumKeys(1);
}

template <class Type>
Type tlChannel<Type>::CalculateValue(float frame)
{
    bool bIsKey;
    unsigned currKey = FindKey(frame, bIsKey);

    assert(currKey>=0);

    // Added by Bryan Ewert on 03 May 2002
    // This has GOT to be wrong!  Basically this means if the closest
    // key is the first or last key, the value of the first/last key
    // is returned; it doesn't necessarily mean that the frame requested
    // IS the first or last key!
//    if ((currKey==0)||(currKey==(numKeys-1))||((float)frames[currKey]==frame))

    if ( bIsKey )
    {
        return values[currKey];
    }
    else
    {
        return Evaluate(frame);
    }
}

//===========================================================================
// tlChannel::Optimize  <template>
//===========================================================================
// Description: This iterates through all keys in the channel (if this is
//              coming from the Maya exporter it likely will have a key at
//              every frame) and compares successive keys against the specified
//              threshold.  Neighbouring keys which are within this tolerance
//              will be reduced.
//
//              - Multiple sequential keys which define the same value are
//                removed, e.g. in the following example keys 2 through 5
//                have the same value.
//
//                            *    *    *    *
//                  0 .. 1 .. 2 .. 3 .. 4 .. 5 .. 6
//
//                When optimized keys 3 and 4 will be removed:
//
//                  0 .. 1 .. 2 .. 5 .. 6
//
//              - Keys are reduced by comparing their value against a linear
//                interpolation between two neighbouring *valid* keys.  A
//                "valid" key is one which has not been tagged for removal,
//                or has specifically been tagged to be preserved.  In the
//                following example keys 2 through 5 all have different
//                values, but their progression could just as well be
//                reproduced via a linear interpolation from key 1 through
//                key 6.
//
//                        -------> linear ------->
//                  0 .. 1 .. 2 .. 3 .. 4 .. 5 .. 6
//
//                When optimized the unnecessary keys are removed:
//
//                  0 .. 1 .. 6
//
//              - "Peak" keys: Whenever a numerical sequence "changes
//                direction" the key at the point of the reversal is considered
//                to be a "peak" key.  Consider the following sequence:
//
//                  { 2.14, 3.14, 6.63, 7.2, 6.9, 6.5, 3.70 }
//
//                The value 7.2 is a "peak" key because the progression changes
//                from increasing values to decreasing values.  Typically these
//                transition points are important to properly reproduce the
//                desired motion in an animation.  Consider that a tolerance of
//                1.0 is provided for this curve.  Casual observation would
//                detect that the four values { 6.63, 7.2, 6.9, 6.5 } could be
//                reduced to a single value because they fall within the
//                specified tolerance.  However, it is important that the 7.2
//                value be preserved to reproduce the proper motion and timing
//                of this animation.
//
//                Peak keys are processed after an initial "within tolerance"
//                scan using a considerably lower tolerance.
//
//                Vector and Quaternion channels use the dot product to assess
//                for peak values.  Any key which alters the tangent of the
//                curve by more than 45º (sqrt(1/2) or 0.7071 radians) is
//                considered to be a peak key.
//
// Constraints:
//
//  Parameters:   float tolerance: Successive keys whose values differ by
//                          less than this value will be deemed redundant
//                          and will be eliminated.
//                boll bUsePeakDetection: This is a "paranoia" flag which
//                          allows for the new V17 animation optimization
//                          features to be disabled, yielding near-identical
//                          results to V16.  This option is adjustable via
//                          the Maya Exporter.
//
//      Return:   (void)
//
//===========================================================================
template <class Type>
void tlChannel<Type>::Optimize(float tolerance, bool bUsePeakDetection )
{
    dirty = true;

    // No peak detection for non-interpolated channels.
    bUsePeakDetection &= ( this->interpolate > 0 );

    MakeValid();

    if (numKeys<=1)
        return;

    bool* validKeys = new bool[numKeys];
    unsigned numValidKeys = 0;
    unsigned currKey = 0;
    unsigned firstValidKey = numKeys;
    unsigned lastValidKey = 0;

    bool* peakKeys = new bool[numKeys];
    bool* validOrPeakKeys = new bool[numKeys];
    // Tolerance for peak keys is less than that of normal keys.
    float peakTolerance = tolerance / 4.0F;

    for (currKey = 0; currKey < numKeys; currKey++)
    {
        peakKeys[currKey] = false;
        validKeys[currKey] = true;
        validOrPeakKeys[currKey] = true;
    }

    // remove keyframes with duplicate values
    currKey = 1;    // start at 1 -- no sense comparing key #0 to key #0
    while (currKey < numKeys)
    {
        bool bLastIsPeak = false;
        while ((currKey<numKeys)&&(WithinTolerance(values[lastValidKey],values[currKey],0.0f)))
        {
            currKey++;
            bLastIsPeak = true;
        }

        for (unsigned i = lastValidKey+1; i < currKey-1; i++)
        {
//            if ( tlChannelDebug::Debug() ) cout << "NUKE duplicate key @ " << frames[i] << endl;
            validKeys[i] = false;
            validOrPeakKeys[i] = false;
        }

        // If keys are non-interpolated, the previous "hold" key is not required. 
        // However, if the previous key is the last valid key, then it's not 
        // a "hold" key and must be preserved.

        // If at least one duplicate key was found, the previous key is a "hold" key.
        if ( ( currKey-1 ) != lastValidKey )
        {
            // If this is an interpolated curve the previous "hold" key must be
            // preserved, so mark it as a peak key.
            if ( this->interpolate )
            {
                peakKeys[currKey-1] = bLastIsPeak;
                validOrPeakKeys[currKey-1] = bLastIsPeak;
            }
            // If the curve is not interpolated, a "hold" key is not necessary.
            else
            {
                validKeys[currKey-1] = false;
                validOrPeakKeys[currKey-1] = false;
            }

        }

        lastValidKey = currKey;

        currKey++;
    }

    // check the keys between key 1 and n-1 for colinear keys
    firstValidKey = numKeys;
    lastValidKey = 0;
    for (currKey = 1; currKey < numKeys-1; currKey++)
    {
        if (validKeys[currKey])
        {
            short frame = frames[currKey];
            Type  value = values[currKey];
            Type  interp = Evaluate((float)frame,validKeys);

            // If this is NOT interpolated then DO NOT cull values
            // by tolerance factor -- it's meaningless!
            if ( !this->interpolate || !WithinTolerance(value,interp,tolerance) )
            {
//                if ( tlChannelDebug::Debug() ) cout << "KEEP key @ " << frame << endl;
                validKeys[currKey] = true;
                validOrPeakKeys[currKey] = true;
                numValidKeys++;
                lastValidKey = currKey;
                if (firstValidKey==numKeys)
                {
                    firstValidKey = currKey;
                }
            }
            else
            {
//                if ( tlChannelDebug::Debug() ) 
//                {
//                    if ( peakKeys[currKey] ) cout << "NUKE PEAK key within tolerance @ " << frame << endl;
//                    else cout << "NUKE key within tolerance @ " << frame << endl;
//                }
                validKeys[currKey] = false;
                validOrPeakKeys[currKey] = false;
            }

            // Peak keys -- keys which indicate a direction change on a particular
            // channel -- are more important than transitional keys.  They are
            // flagged here and then considered in the context of valid keys
            // resulting from the "threshold" assessment above.
            // Peaks that offer insignificant detail (w/r/t tolerance) will be discarded below.
            if ( bUsePeakDetection && IsPeak( currKey ) )
            {
//                if ( tlChannelDebug::Debug() ) cout << "KEEP PEAK @ " << frame << endl;
                peakKeys[currKey] = true;
                validOrPeakKeys[currKey] = true;
            }
        }
    }

    if ( bUsePeakDetection )
    {
        // This loop goes through all keys again looking specifically for "peak" keys
        // that were discarded by the "threshold" loop above.
        // "Peak" key are given higher priority (i.e. a lower tolerance).
        for (currKey = 1; currKey < numKeys-1; currKey++)
        {
            if ( peakKeys[currKey] && !validKeys[currKey])
            {
                // Must not match current key in Evaluate(), so propogate
                // invalid flag to validOrPeakKeys array.
                validOrPeakKeys[currKey] = false;

                short frame = frames[currKey];
                Type  value = values[currKey];
                Type  interp = Evaluate((float)frame,validOrPeakKeys);

                if ( !WithinTolerance(value,interp,peakTolerance) )
                {
//                    if ( tlChannelDebug::Debug() ) cout << "RESTORE PEAK @ " << frame << endl;
                    validKeys[currKey] = true;
                    validOrPeakKeys[currKey] = true;
                    numValidKeys++;
                    lastValidKey = rmt::Max( lastValidKey, currKey );
                    firstValidKey = rmt::Min( firstValidKey, currKey );
                }
                else
                {
//                    if ( tlChannelDebug::Debug() ) cout << "NUKE PEAK @ " << frame << endl;
                    validKeys[currKey] = false;
                }
            }
        }
    }

    // If the first and last frames are not needed trim them off.

    // Note: The start key is IMPORTANT for pose preservation --
    //       only cull it if it EQUALS the previous valid key (i.e. zero tolerance).
    if ((firstValidKey<numKeys)&&(WithinTolerance(values[0],values[firstValidKey], 0.0F )))
    {
        validKeys[0]=false;
    }
    else
    {
        validKeys[0]=true;
        numValidKeys++;
    }

    // Note: The end key is IMPORTANT for pose preservation --
    //       only cull it if it EQUALS the previous valid key (i.e. zero tolerance).
    if (WithinTolerance(values[lastValidKey],values[numKeys-1], 0.0F ))
    {
        validKeys[numKeys-1]=false;
    }
    else
    {
        validKeys[numKeys-1]=true;
        numValidKeys++;
    }

    short* newFrames = new short[numValidKeys];
    Type* newValues = new Type[numValidKeys];
    unsigned newKey = 0;

    for (currKey = 0; currKey < numKeys; currKey++)
    {
        if (validKeys[currKey])
        {
            newFrames[newKey] = frames[currKey];
            newValues[newKey] = values[currKey];
            newKey++;
            assert(newKey<=numValidKeys);
        }
        else
        {
            EraseKey(currKey);
        }
    }
    assert(newKey==numValidKeys);

    delete [] frames;
    delete [] values;
    numKeys = newKey;
    frames = newFrames;
    values = newValues;
    delete [] peakKeys;
    delete [] validOrPeakKeys;
    delete [] validKeys;
}

// Following is the legacy Optimize() code, before Bryan Ewert mucked with it.
// If things break horribly, replace the function above with this one
// to restore V16 behavior.

/*
template <class Type>
void tlChannel<Type>::Optimize(float tolerance, bool bUsePeakDetection )
{
    MakeValid();

    if (numKeys<=1)
        return;

    bool* validKeys = new bool[numKeys];
    unsigned numValidKeys = 0;
    unsigned currKey = 0;
    unsigned firstValidKey = 0;
    unsigned lastValidKey = 0;

    for (currKey = 0; currKey < numKeys; currKey++)
    {
        validKeys[currKey] = true;
    }

    // remove keyframes with duplicate values
    currKey = 0;
    while (currKey < numKeys)
    {
        while ((currKey<numKeys)&&(WithinTolerance(values[lastValidKey],values[currKey],0.0f)))
        {
            currKey++;
        }
        for (int i = lastValidKey+1; i < currKey-1; i++)
        {
            validKeys[i] = false;
        }
        lastValidKey = currKey;
        currKey++;
    }

    // check the keys between key 1 and n-1
    firstValidKey = numKeys;
    lastValidKey = 0;
    for (currKey = 1; currKey < numKeys-1; currKey++)
    {
        if (validKeys[currKey])
        {
            short frame = frames[currKey];
            Type  value = values[currKey];
            Type  interp = Evaluate((float)frame,validKeys);
            if (!WithinTolerance(value,interp,tolerance))
            {
                validKeys[currKey] = true;
                numValidKeys++;
                lastValidKey = currKey;
                if (firstValidKey==numKeys)
                {
                    firstValidKey = currKey;
                }
            }
            else
            {
                validKeys[currKey] = false;
            }
        }
    }

    // if the first and last frames are not needed trim them off
    if ((firstValidKey<numKeys)&&(WithinTolerance(values[0],values[firstValidKey],tolerance)))
    {
        validKeys[0]=false;
    }
    else
    {
        validKeys[0]=true;
        numValidKeys++;
    }
    if (WithinTolerance(values[lastValidKey],values[numKeys-1],tolerance))
    {
        validKeys[numKeys-1]=false;
    }
    else
    {
        validKeys[numKeys-1]=true;
        numValidKeys++;
    }

    short* newFrames = new short[numValidKeys];
    Type* newValues = new Type[numValidKeys];
    unsigned newKey = 0;

    for (currKey = 0; currKey < numKeys; currKey++)
    {
        if (validKeys[currKey])
        {
            newFrames[newKey] = frames[currKey];
            newValues[newKey] = values[currKey];
            newKey++;
            assert(newKey<=numValidKeys);
        }
        else
        {
            EraseKey(currKey);
        }
    }
    assert(newKey==numValidKeys);

    delete [] frames;
    delete [] values;
    numKeys = newKey;
    frames = newFrames;
    values = newValues;
    delete [] validKeys;
}
*/

template <class Type>
void tlChannel<Type>::InsertExtraKeys(unsigned int space)
{
    dirty = true;

    if (space==0)
        return;

    int numExtraKeys = 0;

    for (unsigned i = 0; i < numKeys-1; i++ )
    {
        numExtraKeys += (frames[i+1] - frames[i])/space;
    }

    if(numExtraKeys>0)
    {
        int newNumKeys = numExtraKeys+numKeys;
        short* newFrames = new short[newNumKeys];
        Type* newValues = new Type[newNumKeys];

        int index = 0;
        for (unsigned i = 0; i < numKeys-1; i++ )
        {
            newFrames[index] = frames[i];
            newValues[index] = values[i];
            int numKeysNeeded = (frames[i+1] - frames[i])/space;
            for(int j = 0; j < numKeysNeeded; j++)
            {
                index++;
                newFrames[index] = frames[i] + (space * (j+1));
                newValues[index] = Evaluate((float)newFrames[index]);
            }
        }

        newFrames[newNumKeys-1] = frames[numKeys-1];
        newValues[newNumKeys-1] = values[numKeys-1];

        delete [] frames;
        delete [] values;
        numKeys = newNumKeys;
        frames = newFrames;
        values = newValues;
    }
}

template <class Type>
unsigned int tlChannel<Type>::CalculateMemoryImageSize(unsigned int console, unsigned int size)
{
    size = ((size + 3) & ~3) + (numKeys*SHORT_SIZES[console]);
    return size;
}

template <class Type>
void tlChannel<Type>::EnableInterpolation(unsigned long enable)
{
    interpolate = enable;
}


template <class Type>
bool tlChannel<Type>::FindBracketKeys(float frame, unsigned& beginKey, unsigned& endKey, bool* validKeys)
{
    if (numKeys<1)
    {
        assert(numKeys>0);
        return false;
    }

    // if before first key frame return value of first key frame
    if (frame <= (float)frames[0])
    {
        beginKey = endKey = 0;
        return false;
    }

    // if after last key frame return value of last key frame
    if (frame >= (float)frames[numKeys - 1])
    {
        beginKey = endKey = numKeys-1;
        return false;
    }

    unsigned i = 0;
    for (i = 0; (i < numKeys) && ((float)frames[i] < frame); i++)
    {
        // do nothing, all we want is i
    }

    beginKey = i - 1;
    endKey = i;

    while((float)frames[beginKey]==frame)
    {
        if (beginKey == 0)
        {
            return false;
        }
        else
        {
            beginKey--;
        }
    }

    while((float)frames[endKey]==frame)
    {
        if (endKey == numKeys-1)
        {
            return false;
        }
        else
        {
            endKey++;
        }
    }

    if (validKeys)
    {
        while(!validKeys[beginKey])
        {
            if (beginKey == 0)
            {
                return false;
            }
            else
            {
                beginKey--;
            }
        }
        while(!validKeys[endKey])
        {
            if (endKey == numKeys-1)
            {
                return false;
            }
            else
            {
                endKey++;
            }
        }
    }

    return true;
}

template <class Type>
void tlChannel<Type>::EraseKey(unsigned key)
{
}

//*****************************************************************************************************************
// Actual Channel Data Classes
//*****************************************************************************************************************
class tlIntChannel : public tlChannel<int>
{
public:
    tlIntChannel();
    tlIntChannel(const tlIntChannel& channel);
    virtual ~tlIntChannel();

    virtual tlChannel<int>* Clone() const;

    // calculate the size needed in runtime memory to store the channel
    virtual unsigned int CalculateMemoryImageSize(unsigned int console, unsigned int inSize = 0);

protected:

    // interpolate and return a value at specified frame
    virtual int Evaluate(float frame, bool* validKeys = NULL);

    // difference between two values
    virtual bool WithinTolerance(const int& value1, const int& value2, float tolerance);

    // checks if the specified key is a peak key
    virtual bool IsPeak( const unsigned key );
};

class tlFloat1Channel : public tlChannel<float>
{
public:
    tlFloat1Channel();
    tlFloat1Channel(const tlFloat1Channel& channel);
    virtual ~tlFloat1Channel();

    virtual tlChannel<float>* Clone() const;

    // calculate the size needed in runtime memory to store the channel
    virtual unsigned int CalculateMemoryImageSize(unsigned int console, unsigned int inSize = 0);

protected:

    // interpolate and return a value at specified frame
    virtual float Evaluate(float frame, bool* validKeys = NULL);

    // difference between two values
    virtual bool WithinTolerance(const float& value1, const float& value2, float tolerance);

    // checks if the specified key is a peak key
    virtual bool IsPeak( const unsigned key );
};

class tlFloat2Channel : public tlChannel<tlPoint2D>
{
public:
    tlFloat2Channel();
    tlFloat2Channel(const tlFloat2Channel& channel);
    virtual ~tlFloat2Channel();

    virtual tlChannel<tlPoint2D>* Clone() const;

    // calculate the size needed in runtime memory to store the channel
    virtual unsigned int CalculateMemoryImageSize(unsigned int console, unsigned int inSize = 0);

protected:

    // interpolate and return a value at specified frame
    virtual tlPoint2D Evaluate(float frame, bool* validKeys = NULL);

    // difference between two values
    virtual bool WithinTolerance(const tlPoint2D& value1, const tlPoint2D& value2, float tolerance);

    // checks if the specified key is a peak key
    virtual bool IsPeak( const unsigned key );
};

class tlVectorChannel : public tlChannel<tlPoint>
{
public:
    tlVectorChannel();
    tlVectorChannel(const tlVectorChannel& channel);
    virtual ~tlVectorChannel();

    virtual tlChannel<tlPoint>* Clone() const;

    // determine whether x, y, z are static
    int CountDOF(bool& x, bool& y, bool& z, float tolerance);

    // calculate the size needed in runtime memory to store the channel
    virtual unsigned int CalculateMemoryImageSize(unsigned int console, unsigned int inSize = 0);

protected:

    // interpolate and return a value at specified frame
    virtual tlPoint Evaluate(float frame, bool* validKeys = NULL);

    // difference between two values
    virtual bool WithinTolerance(const tlPoint& value1, const tlPoint& value2, float tolerance);

    // checks if the specified key is a peak key
    virtual bool IsPeak( const unsigned key );
};

class tlQuaternionChannel : public tlChannel<tlQuat>
{
public:
    tlQuaternionChannel();
    tlQuaternionChannel(const tlQuaternionChannel& channel);
    virtual ~tlQuaternionChannel();

    virtual tlChannel<tlQuat>* Clone() const;

    tlFourCC GetFormat();
    void SetFormat(const tlFourCC& format);

    // calculate the size needed in runtime memory to store the channel
    virtual unsigned int CalculateMemoryImageSize(unsigned int console, unsigned int inSize = 0);

protected:

    // interpolate and return a value at specified frame
    virtual tlQuat Evaluate(float frame, bool* validKeys = NULL);

    // difference between two values
    virtual bool WithinTolerance(const tlQuat& value1, const tlQuat& value2, float tolerance);

    // checks if the specified key is a peak key
    virtual bool IsPeak( const unsigned key );

    tlFourCC format;
};

class tlStringChannel : public tlChannel<tlString>
{
public:
    tlStringChannel();
    tlStringChannel(const tlStringChannel& channel);
    virtual ~tlStringChannel();

    virtual tlChannel<tlString>* Clone() const;

    // set all keys
    virtual void SetKeys(unsigned numKeys, const short* frames, const tlString* values);

    bool IsEntityChannel();
    void SetIsEntityChannel(bool entity);

    // calculate the size needed in runtime memory to store the channel
    virtual unsigned int CalculateMemoryImageSize(unsigned int console, unsigned int inSize = 0); 

protected:

    // interpolate and return a value at specified frame
    virtual tlString Evaluate(float frame, bool* validKeys = NULL);

    // difference between two values
    virtual bool WithinTolerance(const tlString& value1, const tlString& value2, float tolerance);

    // checks if the specified key is a peak key
    virtual bool IsPeak( const unsigned key );

    bool isEntityChannel;
};

class tlBoolChannel : public tlChannel<bool>
{
public:
    tlBoolChannel();
    tlBoolChannel(const tlBoolChannel& channel);
    virtual ~tlBoolChannel();

    virtual tlChannel<bool>* Clone() const;

    int CountNumStateChanges();

    // calculate the size needed in runtime memory to store the channel
    virtual unsigned int CalculateMemoryImageSize(unsigned int console, unsigned int inSize = 0);

protected:

    // interpolate and return a value at specified frame
    virtual bool Evaluate(float frame, bool* validKeys = NULL);

    // difference between two values
    virtual bool WithinTolerance(const bool& value1, const bool& value2, float tolerance);

    // checks if the specified key is a peak key
    virtual bool IsPeak( const unsigned key );
};

class tlColourChannel : public tlChannel<tlColour>
{
public:
    tlColourChannel();
    tlColourChannel(const tlColourChannel& channel);
    virtual ~tlColourChannel();

    virtual tlChannel<tlColour>* Clone() const;

    // calculate the size needed in runtime memory to store the channel
    virtual unsigned int CalculateMemoryImageSize(unsigned int console, unsigned int inSize = 0);

protected:

    // interpolate and return a value at specified frame
    virtual tlColour Evaluate(float frame, bool* validKeys = NULL);

    // difference between two values
    virtual bool WithinTolerance(const tlColour& value1, const tlColour& value2, float tolerance);
    
    // checks if the specified key is a peak key
    virtual bool IsPeak( const unsigned key );
};

class tlEventChannel : public tlChannel<tlEvent>
{
public:
    tlEventChannel();
    tlEventChannel(const tlEventChannel& channel);
    virtual ~tlEventChannel();

    virtual tlChannel<tlEvent>* Clone() const;

    // set all keys
    virtual void SetKeys(unsigned numKeys, const short* frames, const tlEvent* values);

    // returns closest event
    virtual tlEvent CalculateValue(float frame);

    // no reason to optimize event animations
    virtual void Optimize(float tolerance, bool bUsePeakDetection) { /**/ }

    // calculate the size needed in runtime memory to store the channel
    virtual unsigned int CalculateMemoryImageSize(unsigned int console, unsigned int inSize = 0);

protected:

    // returns closest event
    virtual tlEvent Evaluate(float frame, bool* validKeys = NULL);

    // all return false, don't care if event are duplicated
    virtual bool WithinTolerance(const tlEvent& value1, const tlEvent& value2, float tolerance) { return false; }

    // checks if the specified key is a peak key
    virtual bool IsPeak( const unsigned key ) { return false; }
};

//*****************************************************************************************************************
// Channel Container Class
//*****************************************************************************************************************
template <class Type>
class tlChannelContainer
{
public:
    tlChannelContainer();
    tlChannelContainer(const tlChannelContainer<Type>& container);
    virtual ~tlChannelContainer();

    // equal operator overloaded
    virtual tlChannelContainer<Type>& operator=(const tlChannelContainer<Type>& container);

    unsigned int GetNumChannels();
    tlChannel<Type>* GetChannelByIndex(unsigned int index);
    tlFourCC GetChannelCodeByIndex(unsigned int index);

    // set/add a channel to the channels table (note : channel data is duplicated so caller must deal with original channel data)
    void SetChannel(const tlFourCC& code, const tlChannel<Type>* channel);

    // retrieve channel data
    tlChannel<Type>* GetChannel(const tlFourCC& code);

    // delete a channel from the channels table
    void DeleteChannel(const tlFourCC& code);

    // delete all channels from the channels table
    void DeleteAllChannels();

    // determine if all channel data is valid
    bool AreAllChannelsValid();

    // make if all channel data valid
    void MakeAllChannelsValid();
    
    // determine if all channel data is static
    bool AreAllChannelsStatic();

    // make all channel data is static
    void MakeAllChannelsStatic();

    // optimize all channels in channels table
    void OptimizeAllChannels(float tolerance = 0.0f, bool bUsePeakDetection = true );

    // remove all static channels
    void RemoveStaticChannels();

    // removes all keys outside the range and resets the first key to 0
    void SetFrameRange(short start, short stop, bool shiftToZero = true);

    // gets the min, max frame of all the channels
    void GetFrameRange(short& start, short& stop);

    // shift all the keys
    virtual void ShiftKeys(short delta);

    // stretch or squish a section of keys
    virtual void StretchKeys(unsigned beginKey, unsigned endKey, short delta);

    // scale the time for each keyframe
    virtual void ScaleKeyTimes(float scale);

    // make the last keyframe equal to the first keyframe (actually overwrites last keyframe so be careful)
    virtual void LoopKeys();

    // add extra keys every space frames
    virtual void InsertExtraKeys(unsigned int space);

    // calculate the size needed in runtime memory to store the channel (0=pc,1=ps2,2=xbox,3=gamecube)
    virtual unsigned int CalculateMemoryImageSize(unsigned int console, unsigned int inSize = 0);

    friend class tlChannelManager;

protected:
    std::map<tlFourCC, tlChannel<Type>*> channels;
};

template <class Type>
tlChannelContainer<Type>::tlChannelContainer():
    channels()
{
}

template <class Type>
tlChannelContainer<Type>::tlChannelContainer(const tlChannelContainer<Type>& container):
    channels()
{
    *this = container;
}

template <class Type>
tlChannelContainer<Type>::~tlChannelContainer()
{
    DeleteAllChannels();
}

template <class Type>
tlChannelContainer<Type>& tlChannelContainer<Type>::operator=(const tlChannelContainer<Type>& container)
{
    if( this == &container)
    {
        return *this;
    }
    DeleteAllChannels();
    for(std::map<tlFourCC,tlChannel<Type>*>::const_iterator i = container.channels.begin() ; i != container.channels.end(); ++i)
    {
        channels[i->first] = (i->second)->Clone();
    }
    return *this;
}

template <class Type>
unsigned int tlChannelContainer<Type>::GetNumChannels()
{
    return channels.size();
}

template <class Type>
tlChannel<Type>* tlChannelContainer<Type>::GetChannelByIndex(unsigned int index)
{
    if (index>GetNumChannels())
        return NULL;

    int current = 0;
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        if (index == current)
        {
            return i->second;
        }
        current++;
    }
    return NULL;
}

template <class Type>
tlFourCC tlChannelContainer<Type>::GetChannelCodeByIndex(unsigned int index)
{
    if (index>GetNumChannels())
        return Pure3DAnimationChannels::UNDEFINED;

    int current = 0;
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        if (index == current)
        {
            return i->first;
        }
        current++;
    }
    return Pure3DAnimationChannels::UNDEFINED;
}

template <class Type>
void tlChannelContainer<Type>::SetChannel(const tlFourCC& code, const tlChannel<Type>* channel)
{
    if (channel)
    {
        if (channels.find(code)!=channels.end())
        {
            delete channels[code];
        }
        channels[code] = channel->Clone();
    }
}

template <class Type>
tlChannel<Type>* tlChannelContainer<Type>::GetChannel(const tlFourCC& code)
{
    if (channels.find(code)!=channels.end())
    {
        return channels[code];
    }
    else
    {
        return NULL;
    }
}

template <class Type>
void tlChannelContainer<Type>::DeleteChannel(const tlFourCC& code)
{
    if (channels.find(code)!=channels.end())
    {
        delete channels[code];
    }
    channels.erase(code);
}

template <class Type>
void tlChannelContainer<Type>::DeleteAllChannels()
{
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        delete i->second;
        i->second = NULL;
    }
    channels.clear();
}

template <class Type>
bool tlChannelContainer<Type>::AreAllChannelsValid()
{
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        if (i->second->IsValid()==false)
            return false;
    }
    return true;
}

template <class Type>
void tlChannelContainer<Type>::MakeAllChannelsValid()
{
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        i->second->MakeValid();
    }
}

template <class Type>
bool tlChannelContainer<Type>::AreAllChannelsStatic()
{
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        if (i->second->IsStatic()==false)
            return false;
    }
    return true;
}

template <class Type>
void tlChannelContainer<Type>::MakeAllChannelsStatic()
{
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        i->second->MakeStatic();
    }
}

template <class Type>
void tlChannelContainer<Type>::OptimizeAllChannels(float tolerance, bool bUsePeakDetection )
{
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        i->second->Optimize(tolerance, bUsePeakDetection );
    }
}

template <class Type>
void tlChannelContainer<Type>::RemoveStaticChannels()
{
    unsigned int numStaticChannels = 0;
    unsigned int staticChannels[1024];
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        if (i->second->IsStatic())
        {
            staticChannels[numStaticChannels] = i->first;
            numStaticChannels++;
        }
    }
    for (unsigned int j = 0; j < numStaticChannels; j++)
    {
        delete channels[tlFourCC(staticChannels[j])];
        channels.erase(tlFourCC(staticChannels[j]));
    }
}

template <class Type>
void tlChannelContainer<Type>::SetFrameRange(short start, short stop, bool shiftToZero)
{
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        i->second->SetFrameRange(start,stop, shiftToZero);
    }
}

template <class Type>
void tlChannelContainer<Type>::GetFrameRange(short& start, short& stop)
{
    bool notSet = true;

    for(std::map<tlFourCC,tlChannel<Type>*>::const_iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        if (notSet)
        {
            i->second->GetFrameRange(start,stop);
            notSet = false;
        }
        else
        {
            short min = 0;
            short max = 0;
            i->second->GetFrameRange(min,max);
            if (min<start)
            {
                start = min;
            }
            if (max>stop)
            {
                stop = max;
            }
        }
    }
}

template <class Type>
void tlChannelContainer<Type>::ShiftKeys(short delta)
{
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        i->second->ShiftKeys(delta);
    }
}

template <class Type>
void tlChannelContainer<Type>::StretchKeys(unsigned beginKey, unsigned endKey, short delta)
{
    if (beginKey>endKey)
        return;

    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        i->second->StretchKeys(beginKey,endKey,delta);
    }
}

template <class Type>
void tlChannelContainer<Type>::ScaleKeyTimes(float scale)
{
    if ((scale == 1.0f) || (scale <= 0.0f))
        return;

    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        i->second->ScaleKeyTimes(scale);
    }
}

template <class Type>
void tlChannelContainer<Type>::LoopKeys()
{
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        i->second->LoopKeys();
    }
}

template <class Type>
void tlChannelContainer<Type>::InsertExtraKeys(unsigned int space)
{
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        i->second->InsertExtraKeys(space);
    }
}

template <class Type>
unsigned int tlChannelContainer<Type>::CalculateMemoryImageSize(unsigned int console, unsigned int size)
{
    for(std::map<tlFourCC,tlChannel<Type>*>::iterator i = channels.begin() ; i != channels.end(); ++i)
    {
        size = i->second->CalculateMemoryImageSize(console, size);
    }
    return size;
}

//*****************************************************************************************************************
// Channel Load/Save Manager
//*****************************************************************************************************************
class tlChannelManager
{
public:
    tlChannelManager() {};
    ~tlChannelManager() {};

    // load/save all the channels of a specific data type
    // return the number of channels loaded/saved

    static int LoadIntChannels(tlChannelContainer<int>* channels,tlDataChunk* ch);
    static int LoadFloat1Channels(tlChannelContainer<float>* channels,tlDataChunk* ch);
    static int LoadFloat2Channels(tlChannelContainer<tlPoint2D>* channels,tlDataChunk* ch);
    static int LoadVectorChannels(tlChannelContainer<tlPoint>* channels,tlDataChunk* ch);
    static int LoadQuaternionChannels(tlChannelContainer<tlQuat>* channels,tlDataChunk* ch);
    static int LoadStringChannels(tlChannelContainer<tlString>* channels, tlDataChunk* ch);
    static int LoadBoolChannels(tlChannelContainer<bool>* channels, tlDataChunk* ch);
    static int LoadColourChannels(tlChannelContainer<tlColour>* channels,tlDataChunk* ch);
    static int LoadEventChannels(tlChannelContainer<tlEvent>* channels,tlDataChunk* ch);

    static int SaveIntChannels(tlChannelContainer<int>* channels,tlDataChunk* ch);
    static int SaveFloat1Channels(tlChannelContainer<float>* channels,tlDataChunk* ch);
    static int SaveFloat2Channels(tlChannelContainer<tlPoint2D>* channels,tlDataChunk* ch);
    static int SaveVectorChannels(tlChannelContainer<tlPoint>* channels,tlDataChunk* ch);
    static int SaveQuaternionChannels(tlChannelContainer<tlQuat>* channels,tlDataChunk* ch);
    static int SaveStringChannels(tlChannelContainer<tlString>* channels,tlDataChunk* ch);
    static int SaveBoolChannels(tlChannelContainer<bool>* channels,tlDataChunk* ch);
    static int SaveColourChannels(tlChannelContainer<tlColour>* channels,tlDataChunk* ch);
    static int SaveEventChannels(tlChannelContainer<tlEvent>* channels,tlDataChunk* ch);

    static tlIntChannel* LoadInToIntChannel(tlDataChunk* ch);
    static tlFloat1Channel* LoadInToFloat1Channel(tlDataChunk* ch);
    static tlFloat2Channel* LoadInToFloat2Channel(tlDataChunk* ch);
    static tlVectorChannel* LoadInToVectorChannel(tlDataChunk* ch);
    static tlQuaternionChannel* LoadInToQuaternionChannel(tlDataChunk* ch);
    static tlStringChannel* LoadInToStringChannel(tlDataChunk* ch);
    static tlBoolChannel* LoadInToBoolChannel(tlDataChunk* ch);
    static tlColourChannel* LoadInToColourChannel(tlDataChunk* ch);
};

#endif

