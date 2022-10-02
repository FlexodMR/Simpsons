//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlChannel.hpp"

#include "atenum.hpp"
#include "tlKeyDefs.hpp"
#include "tlDataChunk.hpp"
#include "tlChannelChunk.hpp"

//old chunk formats;
#include "tlTranAnimKeys.hpp"
#include "tlPoseAnimChunk16.hpp"
#include "tlEntityChannelChunk16.hpp"

#ifdef WIN32
#pragma warning(disable:4786)
#endif

// Added by Bryan Ewert on 19 Jul 2002
// See notes at the top of tlChannel.hpp
bool tlChannelDebug::DEBUG = false;

static const float quatEpsilon = (1.0f/360.0f); // one degree of slop allowed

static const unsigned INTERPOLATION_MODE_VERSION = 0;
static const unsigned INT_CHANNEL_VERSION = 0;
static const unsigned FLOAT1_CHANNEL_VERSION = 0;
static const unsigned FLOAT2_CHANNEL_VERSION = 0;
static const unsigned VECTOR1DOF_CHANNEL_VERSION = 0;
static const unsigned VECTOR2DOF_CHANNEL_VERSION = 0;
static const unsigned VECTOR3DOF_CHANNEL_VERSION = 0;
static const unsigned QUATERNION_CHANNEL_VERSION = 0;
static const unsigned COMPRESSED_QUATERNION_CHANNEL_VERSION = 0;
static const unsigned QUATERNION_FORMAT_VERSION = 0;
static const unsigned STRING_CHANNEL_VERSION = 0;
static const unsigned ENTITY_CHANNEL_VERSION = 0;
static const unsigned BOOL_CHANNEL_VERSION = 0;
static const unsigned COLOUR_CHANNEL_VERSION = 0;
static const unsigned EVENT_CHANNEL_VERSION  = 0;

#define ENABLE_PEAK 1

//********************************************************************
//  tlIntChannel template class
//       store channel data
//********************************************************************
tlIntChannel::tlIntChannel():
    tlChannel<int>()
{
}

tlIntChannel::tlIntChannel(const tlIntChannel& channel):
    tlChannel<int>(channel)
{
}

tlIntChannel::~tlIntChannel()
{
}

tlChannel<int>*
tlIntChannel::Clone() const
{
    tlIntChannel* temp = new tlIntChannel;
    temp->SetKeys(numKeys,frames,values);
    return temp;
}

unsigned int
tlIntChannel::CalculateMemoryImageSize(unsigned int console, unsigned int size)
{
    if (console<4)
    {
        size = ((size + 3) & ~3) + INT_CHANNEL_SIZES[console];
        size = tlChannel<int>::CalculateMemoryImageSize(console, size);
        size = ((size + 3) & ~3) + (numKeys*INT_SIZES[console]);
        return size;
    }
    return 0;
}

int
tlIntChannel::Evaluate(float frame, bool* validKeys)
{
    unsigned prevKey = 0;
    unsigned nextKey = 0;

    if (FindBracketKeys(frame,prevKey,nextKey,validKeys))
    {
        float prevKeyFrame = (float)frames[prevKey];
        float nextKeyFrame = (float)frames[nextKey];

        float deltaFrame = nextKeyFrame - prevKeyFrame;
        int deltaValue = values[nextKey] - values[prevKey];

        // return weighted average of data between key frames
        return (int)((frame - prevKeyFrame) * (deltaValue/deltaFrame)) + values[prevKey];
    }
    else
    {
        return values[prevKey];
    }
}

bool
tlIntChannel::WithinTolerance(const int& value1, const int& value2, float tolerance)
{
    return (abs(value1-value2)<=(int)tolerance);
}

bool
tlIntChannel::IsPeak( const unsigned key )
{
    bool bIsPeak = false;

#if ENABLE_PEAK

    if ( numKeys > 2 )
    {
        // If this key is the first key and
        //    the next key is below its adjacent keys or
        //    the next key is above its adjacent keys...
        if ( key == 0 )
        {
            if  (
                    ( values[0] < values[1] && values[1] > values[2] ) ||
                    ( values[0] > values[1] && values[1] < values[2] )
                )
            {
                bIsPeak = true;
            }
        }
        // If this key is the last key and
        //    the previous key is below its adjacent keys or
        //    the previous key is above its adjacent keys...
        else if ( key == ( numKeys - 1 ) )
        {
            if  (
                    ( values[key] < values[key-1] && values[key-1] > values[key-2] ) ||
                    ( values[key] > values[key-1] && values[key-1] < values[key-2] )
                )
            {
                bIsPeak = true;
            }
        }
        // If this key is below both adjacent keys or
        //    this key is above both adjacent keys, and
        else
        {
            tlPoint v0 = tlPoint( 1, values[key+1], 0 ) - tlPoint( 1, values[key], 0 );
            tlPoint v1 = tlPoint( 1, values[key], 0 ) - tlPoint( 1, values[key-1], 0 );
            v0.Normalize();
            v1.Normalize();
            if ( v0.Equals( tlPoint( 0.0F, 0.0F, 0.0F ) ) ) v0 = tlPoint( 1.0F, 0.0F, 0.0F );
            if ( v1.Equals( tlPoint( 0.0F, 0.0F, 0.0F ) ) ) v1 = tlPoint( 1.0F, 0.0F, 0.0F );

            if (
//                    ( values[key] < values[key-1] && values[key] < values[key+1] ) ||
//                    ( values[key] > values[key-1] && values[key] > values[key+1] ) ||

                    // If this key represents a change in curve tangent of > 45º
                    // then consider this a significant key value.
                    ( v0.Dot( v1 ) <= SQRT_ONE_HALF )
                )
            {
                bIsPeak = true;
            }
        }
    }

#endif      // ENABLE_PEAK

    return bIsPeak;
}

//********************************************************************
//  tlFloat1Channel template class
//       store channel data
//********************************************************************
tlFloat1Channel::tlFloat1Channel():
    tlChannel<float>()
{
}

tlFloat1Channel::tlFloat1Channel(const tlFloat1Channel& channel):
    tlChannel<float>(channel)
{
}

tlFloat1Channel::~tlFloat1Channel()
{
}

tlChannel<float>*
tlFloat1Channel::Clone() const
{
    tlFloat1Channel* temp = new tlFloat1Channel;
    temp->SetKeys(numKeys,frames,values);
    return temp;
}

unsigned int
tlFloat1Channel::CalculateMemoryImageSize(unsigned int console, unsigned int size)
{
    if (console<4)
    {
        size = ((size + 3) & ~3) + FLOAT1_CHANNEL_SIZES[console];
        size = tlChannel<float>::CalculateMemoryImageSize(console, size);
        size = ((size + 3) & ~3) + (numKeys*FLOAT_SIZES[console]);
        return size;
    }
    return 0;
}

float
tlFloat1Channel::Evaluate(float frame, bool* validKeys)
{
    unsigned prevKey = 0;
    unsigned nextKey = 0;

    if (FindBracketKeys(frame,prevKey,nextKey,validKeys))
    {
        float prevKeyFrame = (float)frames[prevKey];
        float nextKeyFrame = (float)frames[nextKey];

        float deltaFrame = nextKeyFrame - prevKeyFrame;
        float deltaValue = (float)(values[nextKey] - values[prevKey]);

        // return weighted average of data between key frames
        return ((frame - prevKeyFrame) * (deltaValue/deltaFrame)) + values[prevKey];
    }
    else
    {
        return values[prevKey];
    }
}

bool
tlFloat1Channel::WithinTolerance(const float& value1, const float& value2, float tolerance)
{
    return (fabsf(value1-value2)<=tolerance);
}

bool
tlFloat1Channel::IsPeak( const unsigned key )
{
    bool bIsPeak = false;

#if ENABLE_PEAK

    if ( numKeys > 2 )
    {
        // If this key is the first key and
        //    the next key is below its adjacent keys or
        //    the next key is above its adjacent keys...
        if ( key == 0 )
        {
            if  (
                    ( values[0] < values[1] && values[1] > values[2] ) ||
                    ( values[0] > values[1] && values[1] < values[2] )
                )
            {
                bIsPeak = true;
            }
        }
        // If this key is the last key and
        //    the previous key is below its adjacent keys or
        //    the previous key is above its adjacent keys...
        else if ( key == ( numKeys - 1 ) )
        {
            if  (
                    ( values[key] < values[key-1] && values[key-1] > values[key-2] ) ||
                    ( values[key] > values[key-1] && values[key-1] < values[key-2] )
                )
            {
                bIsPeak = true;
            }
        }
        // If this key is below both adjacent keys or
        //    this key is above both adjacent keys, and
        else
        {
            tlPoint v0 = tlPoint( 1.0F, values[key+1], 0.0F ) - tlPoint( 1.0F, values[key], 0.0F );
            tlPoint v1 = tlPoint( 1.0F, values[key], 0.0F ) - tlPoint( 1.0F, values[key-1], 0.0F );
            v0.Normalize();
            v1.Normalize();
            if ( v0.Equals( tlPoint( 0.0F, 0.0F, 0.0F ) ) ) v0 = tlPoint( 1.0F, 0.0F, 0.0F );
            if ( v1.Equals( tlPoint( 0.0F, 0.0F, 0.0F ) ) ) v1 = tlPoint( 1.0F, 0.0F, 0.0F );

            if (
//                    ( values[key] < values[key-1] && values[key] < values[key+1] ) ||
//                    ( values[key] > values[key-1] && values[key] > values[key+1] ) ||

                    // If this key represents a change in curve tangent of > 45º
                    // then consider this a significant key value.
                    ( v0.Dot( v1 ) <= SQRT_ONE_HALF )
                )
            {
                bIsPeak = true;
            }
        }
    }

#endif      // ENABLE_PEAK

    return bIsPeak;
}

//********************************************************************
//  tlFloat2Channel template class
//       store channel data
//********************************************************************
tlFloat2Channel::tlFloat2Channel():
    tlChannel<tlPoint2D>()
{
}

tlFloat2Channel::tlFloat2Channel(const tlFloat2Channel& channel):
    tlChannel<tlPoint2D>(channel)
{
}

tlFloat2Channel::~tlFloat2Channel()
{
}

tlChannel<tlPoint2D>*
tlFloat2Channel::Clone() const
{
    tlFloat2Channel* temp = new tlFloat2Channel;
    temp->SetKeys(numKeys,frames,values);
    return temp;
}

unsigned int
tlFloat2Channel::CalculateMemoryImageSize(unsigned int console, unsigned int size)
{
    if (console<4)
    {
        size = ((size + 3) & ~3) + FLOAT2_CHANNEL_SIZES[console];
        size = tlChannel<tlPoint2D>::CalculateMemoryImageSize(console, size);
        size = ((size + 3) & ~3) + (numKeys*2*FLOAT_SIZES[console]);
        return size;
    }
    return 0;
}

tlPoint2D
tlFloat2Channel::Evaluate(float frame, bool* validKeys)
{
    unsigned prevKey = 0;
    unsigned nextKey = 0;

    if (FindBracketKeys(frame,prevKey,nextKey,validKeys))
    {
        float prevKeyFrame = (float)frames[prevKey];
        float nextKeyFrame = (float)frames[nextKey];

        float deltaFrame = nextKeyFrame - prevKeyFrame;
        tlPoint2D deltaValue = values[nextKey] - values[prevKey];

        float temp = (frame - prevKeyFrame) / deltaFrame;
        tlPoint2D result;

        result.x = (temp * deltaValue.x) + values[prevKey].x;
        result.y = (temp * deltaValue.y) + values[prevKey].y;

        // return weighted average of data between key frames
        return result;
    }
    else
    {
        return values[prevKey];
    }
}

bool
tlFloat2Channel::WithinTolerance(const tlPoint2D& value1, const tlPoint2D& value2, float tolerance)
{
    return ((fabsf(value1.x-value2.x)<=tolerance)&&(fabsf(value1.y-value2.y)<=tolerance));
}

bool
tlFloat2Channel::IsPeak( const unsigned key )
{
    bool bIsPeak = false;

#if ENABLE_PEAK

    if ( numKeys > 2 )
    {
        // If this key is the first key and
        //    the next key is below its adjacent keys or
        //    the next key is above its adjacent keys...
        if ( key == 0 )
        {
            if  (
                    ( values[0].u < values[1].u && values[1].u > values[2].u ) ||
                    ( values[0].u > values[1].u && values[1].u < values[2].u ) ||
                    ( values[0].v < values[1].v && values[1].v > values[2].v ) ||
                    ( values[0].v > values[1].v && values[1].v < values[2].v )
                )
            {
                bIsPeak = true;
            }
        }
        // If this key is the last key and
        //    the previous key is below its adjacent keys or
        //    the previous key is above its adjacent keys...
        else if ( key == ( numKeys - 1 ) )
        {
            if  (
                    ( values[key].u < values[key-1].u && values[key-1].u > values[key-2].u ) ||
                    ( values[key].u > values[key-1].u && values[key-1].u < values[key-2].u ) ||
                    ( values[key].v > values[key-1].v && values[key-1].v < values[key-2].v ) ||
                    ( values[key].v > values[key-1].v && values[key-1].v < values[key-2].v )
                )
            {
                bIsPeak = true;
            }
        }
        // If this key is below both adjacent keys or
        //    this key is above both adjacent keys, and
        else
        {
            tlPoint v0 = tlPoint( 1.0F, values[key+1].u, values[key+1].v ) - tlPoint( 1.0F, values[key].u, values[key].v );
            tlPoint v1 = tlPoint( 1.0F, values[key].u, values[key].v ) - tlPoint( 1.0F, values[key-1].u, values[key-1].v );
            v0.Normalize();
            v1.Normalize();
            if ( v0.Equals( tlPoint( 0.0F, 0.0F, 0.0F ) ) ) v0 = tlPoint( 1.0F, 0.0F, 0.0F );
            if ( v1.Equals( tlPoint( 0.0F, 0.0F, 0.0F ) ) ) v1 = tlPoint( 1.0F, 0.0F, 0.0F );

            if (
//                    ( values[key].u < values[key-1].u && values[key].u < values[key+1].u ) ||
//                    ( values[key].u > values[key-1].u && values[key].u > values[key+1].u ) ||
//                    ( values[key].v < values[key-1].v && values[key].v < values[key+1].v ) ||
//                    ( values[key].v > values[key-1].v && values[key].v > values[key+1].v )

                    // If this key represents a change in curve tangent of > 45º
                    // then consider this a significant key value.
                    ( v0.Dot( v1 ) <= SQRT_ONE_HALF )
                )
            {
                bIsPeak = true;
            }
        }
    }

#endif      // ENABLE_PEAK

    return bIsPeak;
}

//********************************************************************
//  tlVectorChannel template class
//       store channel data
//********************************************************************
tlVectorChannel::tlVectorChannel():
    tlChannel<tlPoint>()
{
}

tlVectorChannel::tlVectorChannel(const tlVectorChannel& channel):
    tlChannel<tlPoint>(channel)
{
}

tlVectorChannel::~tlVectorChannel()
{
}

tlChannel<tlPoint>*
tlVectorChannel::Clone() const
{
    tlVectorChannel* temp = new tlVectorChannel;
    temp->SetKeys(numKeys,frames,values);
    return temp;
}

int
tlVectorChannel::CountDOF(bool& x, bool& y, bool& z, float tolerance)
{
    x = false;
    y = false;
    z = false;

    unsigned i;
    int numDOF = 0;

    // hack to eliminate small noise values that are a result of exporter
    // giving back values that aren't static even though they are
    if (tolerance == 0.0f)
    {
        tolerance = 0.00001f;
    }

    for (i = 1; i < numKeys; i++)
    {
        if (fabsf(values[0].x - values[i].x) > tolerance)
        {
            x = true;
            numDOF++;
            break;
        }

    }

    for (i = 1; i < numKeys; i++)
    {
        if (fabsf(values[0].y - values[i].y) > tolerance)
        {
            y = true;
            numDOF++;
            break;
        }
    }

    for (i = 1; i < numKeys; i++)
    {
        if (fabsf(values[0].z - values[i].z) > tolerance)
        {
            z = true;
            numDOF++;
            break;
        }
    }

    return numDOF;
}

unsigned int
tlVectorChannel::CalculateMemoryImageSize(unsigned int console, unsigned int size)
{
    bool x, y, z;

    if (console<4)
    {
        switch (CountDOF(x,y,z,0.0f))
        {
            case 1:
            {
                size = ((size + 3) & ~3) + VECTOR_1DOF_CHANNEL_SIZES[console];
                size = tlChannel<tlPoint>::CalculateMemoryImageSize(console, size);
                size = ((size + 3) & ~3) + (numKeys*FLOAT_SIZES[console]);
                return size;
                break;
            }
            case 2:
            {
                size = ((size + 3) & ~3) + VECTOR_2DOF_CHANNEL_SIZES[console];
                size = tlChannel<tlPoint>::CalculateMemoryImageSize(console, size);
                size = ((size + 3) & ~3) + (numKeys*2*FLOAT_SIZES[console]);
                return size;
                break;
            }
            default:
            {
                size = ((size + 3) & ~3) + VECTOR_3DOF_CHANNEL_SIZES[console];
                size = tlChannel<tlPoint>::CalculateMemoryImageSize(console, size);
                size = ((size + 3) & ~3) + (numKeys*3*FLOAT_SIZES[console]);
                return size;
                break;
            }
        }
    }
    return 0;
}

tlPoint
tlVectorChannel::Evaluate(float frame, bool* validKeys)
{
    unsigned prevKey = 0;
    unsigned nextKey = 0;

    if (FindBracketKeys(frame,prevKey,nextKey,validKeys))
    {
        float prevKeyFrame = (float)frames[prevKey];
        float nextKeyFrame = (float)frames[nextKey];

        float deltaFrame = nextKeyFrame - prevKeyFrame;
        tlPoint deltaValue = values[nextKey] - values[prevKey];

        float temp = (frame - prevKeyFrame) / deltaFrame;
        tlPoint result;

        result.x = (temp * deltaValue.x) + values[prevKey].x;
        result.y = (temp * deltaValue.y) + values[prevKey].y;
        result.z = (temp * deltaValue.z) + values[prevKey].z;

        // return weighted average of data between key frames
        return result;
    }
    else
    {
        return values[prevKey];
    }
}

bool
tlVectorChannel::WithinTolerance(const tlPoint& value1, const tlPoint& value2, float tolerance)
{
    // hack to eliminate small noise values that are a result of exporter
    // giving back values that aren't static even though they are
    if (tolerance == 0.0f)
    {
        tolerance = 0.00001f;
    }
    return ((fabsf(value1.x-value2.x)<=tolerance)&&(fabsf(value1.y-value2.y)<=tolerance)&&(fabsf(value1.z-value2.z)<=tolerance));
}

bool
tlVectorChannel::IsPeak( const unsigned key )
{
    bool bIsPeak = false;

#if ENABLE_PEAK

    if ( numKeys > 2 )
    {
        // If this key is the first key and
        //    the next key is below its adjacent keys or
        //    the next key is above its adjacent keys...
        if ( key == 0 )
        {
            tlPoint v0 = values[1] - values[0];
            tlPoint v1 = values[2] - values[1];
            if ( v0.Equals( tlPoint( 0.0F, 0.0F, 0.0F ) ) ) v0 = tlPoint( 1.0F, 0.0F, 0.0F );
            if ( v1.Equals( tlPoint( 0.0F, 0.0F, 0.0F ) ) ) v1 = tlPoint( 1.0F, 0.0F, 0.0F );

            if  ( v0.Dot( v1 ) <= 0.0F )    // right-angle considered change of direction
            {
                bIsPeak = true;
            }
        }
        // If this key is the last key and
        //    the previous key is below its adjacent keys or
        //    the previous key is above its adjacent keys...
        else if ( key == ( numKeys - 1 ) )
        {
            tlPoint v0 = values[key] - values[key-1];
            tlPoint v1 = values[key-1] - values[key-2];
            if ( v0.Equals( tlPoint( 0.0F, 0.0F, 0.0F ) ) ) v0 = tlPoint( 1.0F, 0.0F, 0.0F );
            if ( v1.Equals( tlPoint( 0.0F, 0.0F, 0.0F ) ) ) v1 = tlPoint( 1.0F, 0.0F, 0.0F );

            if  ( v0.Dot( v1 ) <= 0.0F )    // right-angle considered change of direction
            {
                bIsPeak = true;
            }
        }
        // If this key is below both adjacent keys or
        //    this key is above both adjacent keys
        else
        {
            tlPoint v0 = values[key+1] - values[key];
            tlPoint v1 = values[key] - values[key-1];
            v0.Normalize();
            v1.Normalize();
            if ( v0.Equals( tlPoint( 0.0F, 0.0F, 0.0F ) ) ) v0 = tlPoint( 1.0F, 0.0F, 0.0F );
            if ( v1.Equals( tlPoint( 0.0F, 0.0F, 0.0F ) ) ) v1 = tlPoint( 1.0F, 0.0F, 0.0F );

            // If this key represents a change in curve tangent of > 45º
            // then consider this a significant key value.
            if  (
                    v0.Dot( v1 ) <= SQRT_ONE_HALF
                )
            {
                bIsPeak = true;
            }
        }
    }

#endif      // ENABLE_PEAK

    return bIsPeak;
}

//********************************************************************
//  tlQuaternionChannel template class
//       store channel data
//********************************************************************
tlQuaternionChannel::tlQuaternionChannel():
    tlChannel<tlQuat>(),
    format(0,0,0,0)
{
}

tlQuaternionChannel::tlQuaternionChannel(const tlQuaternionChannel& channel):
    tlChannel<tlQuat>(channel),
    format(0,0,0,0)
{
}

tlQuaternionChannel::~tlQuaternionChannel()
{
}

tlChannel<tlQuat>*
tlQuaternionChannel::Clone() const
{
    tlQuaternionChannel* temp = new tlQuaternionChannel;
    temp->SetKeys(numKeys,frames,values);
    return temp;
}

tlFourCC
tlQuaternionChannel::GetFormat()
{
    return format;
}

void
tlQuaternionChannel::SetFormat(const tlFourCC& f)
{
    format = f;
}

unsigned int
tlQuaternionChannel::CalculateMemoryImageSize(unsigned int console, unsigned int size)
{
    if (console<4)
    {
        switch(format)
        {
            case Pure3DAnimationChannels::Quaternion::ONE_DOT_FIFTEEN:
            {
                size = ((size + 3) & ~3) + QUATERNION_CHANNEL_SIZES[console];
                size = tlChannel<tlQuat>::CalculateMemoryImageSize(console, size);
                size = ((size + 3) & ~3) + (numKeys*2*FLOAT_SIZES[console]);
                return size;
                break;
            }
            default:
            {
                size = ((size + 3) & ~3) + QUATERNION_CHANNEL_SIZES[console];
                size = tlChannel<tlQuat>::CalculateMemoryImageSize(console, size);
                size = ((size + 3) & ~3) + (numKeys*4*FLOAT_SIZES[console]);
                return size;
                break;
            }
        }
    }
    return 0;
}

tlQuat
tlQuaternionChannel::Evaluate(float frame, bool* validKeys)
{
    unsigned prevKey = 0;
    unsigned nextKey = 0;

    if (FindBracketKeys(frame,prevKey,nextKey,validKeys))
    {
        return Slerp(values[prevKey],values[nextKey],(frame-(float)frames[prevKey])/((float)frames[nextKey]-(float)frames[prevKey]));
    }
    else
    {
        return values[prevKey];
    }
}

bool
tlQuaternionChannel::WithinTolerance(const tlQuat& value1, const tlQuat& value2, float tolerance)
{
    tlQuat v1 = value1;
    tlQuat v2 = value2;

    v1.Normalize();
    v2.Normalize();

    if (tolerance==0.0f)
    {
        float epsilon = 0.000001f; // correct is 1/2^20
        float w = fabsf(v1.w-v2.w);
        float x = fabsf(v1.x-v2.x);
        float y = fabsf(v1.y-v2.y);
        float z = fabsf(v1.z-v2.z);

        return ((w<=epsilon)&&(x<=epsilon)&&(y<=epsilon)&&(z<=epsilon));
    }
    else
    {
        float dot = DotProduct(v1,v2);
        if (dot>1.0f)
        {
            dot = 1.0f;
        }
        else if (dot<0.0f)
        {
            dot = 0.0f;
        }
        return (fabsf(acosf(dot))<=tolerance);
    }
}

bool
tlQuaternionChannel::IsPeak( const unsigned key )
{
    bool bIsPeak = false;

#if ENABLE_PEAK

    if ( numKeys > 2 )
    {
        // If this key is the first key and
        //    the next key is below its adjacent keys or
        //    the next key is above its adjacent keys...
        if ( key == 0 )
        {
            tlQuat v0 = values[1] - values[0];
            tlQuat v1 = values[2] - values[1];
            if ( v0 == tlQuat( 0.0F, 0.0F, 0.0F, 0.0F ) ) v0.Identity();
            if ( v1 == tlQuat( 0.0F, 0.0F, 0.0F, 0.0F ) ) v1.Identity();

            if  ( DotProduct( v0, v1 ) <= 0.0F )    // right-angle considered change of direction
            {
                bIsPeak = true;
            }
        }
        // If this key is the last key and
        //    the previous key is below its adjacent keys or
        //    the previous key is above its adjacent keys...
        else if ( key == ( numKeys - 1 ) )
        {
            tlQuat v0 = values[key] - values[key-1];
            tlQuat v1 = values[key-1] - values[key-2];
            if ( v0 == tlQuat( 0.0F, 0.0F, 0.0F, 0.0F ) ) v0.Identity();
            if ( v1 == tlQuat( 0.0F, 0.0F, 0.0F, 0.0F ) ) v1.Identity();

            if  ( DotProduct( v0, v1 ) <= 0.0F )    // right-angle considered change of direction
            {
                bIsPeak = true;
            }
        }
        // If this key is below both adjacent keys or
        //    this key is above both adjacent keys
        else
        {
            tlQuat v0 = values[key+1] - values[key];
            tlQuat v1 = values[key] - values[key-1];
            v0.Normalize();
            v1.Normalize();
            if ( v0 == tlQuat( 0.0F, 0.0F, 0.0F, 0.0F ) ) v0.Identity();
            if ( v1 == tlQuat( 0.0F, 0.0F, 0.0F, 0.0F ) ) v1.Identity();

            // If this key represents a change in curve tangent of > 45º
            // then consider this a significant key value.
            if  (
                    DotProduct( v0, v1 ) <= SQRT_ONE_HALF
                )
            {
                bIsPeak = true;
            }
        }
    }

#endif      // ENABLE_PEAK

    return bIsPeak;
}

//********************************************************************
//  tlStringChannel template class
//       store channel data
//********************************************************************
tlStringChannel::tlStringChannel():
    tlChannel<tlString>(),
    isEntityChannel(false)
{
}

tlStringChannel::tlStringChannel(const tlStringChannel& channel):
    tlChannel<tlString>(channel),
    isEntityChannel(false)
{
}

tlStringChannel::~tlStringChannel()
{
}

tlChannel<tlString>*
tlStringChannel::Clone() const
{
    tlStringChannel* temp = new tlStringChannel;
    temp->SetKeys(numKeys,frames,values);
    return temp;
}

void
tlStringChannel::SetKeys(unsigned n, const short* f, const tlString* v)
{
    dirty = true;
    if (n>0)
    {
        DeleteAllKeys();
        numKeys = n;
        frames = new short[numKeys];
        values = new tlString[numKeys];

        memcpy(frames,f,sizeof(short)*numKeys);

        for (unsigned i = 0; i < n; i++)
        {
            values[i] = v[i];
        }
    }
}

bool
tlStringChannel::IsEntityChannel()
{
    return isEntityChannel;
}

void
tlStringChannel::SetIsEntityChannel(bool entity)
{
    isEntityChannel = entity;
}

unsigned int 
tlStringChannel::CalculateMemoryImageSize(unsigned int console, unsigned int size)
{
    if (console<4)
    {
        if (isEntityChannel)
        {
            size = ((size + 3) & ~3) + ENTITY_CHANNEL_SIZES[console];
            size = tlChannel<tlString>::CalculateMemoryImageSize(console, size);
            size = ((size + 3) & ~3) + (numKeys*POINTER_SIZES[console]);
            return size;
        }
    }
    return 0;
}

tlString 
tlStringChannel::Evaluate(float frame, bool* validKeys)
{
    unsigned prevKey = 0;
    unsigned nextKey = 0;

    FindBracketKeys(frame,prevKey,nextKey,validKeys);

    return values[prevKey];
}

bool
tlStringChannel::WithinTolerance(const tlString& value1, const tlString& value2, float tolerance)
{
    return (strcmp(value1.GetString(),value2.GetString())==0);
}

bool
tlStringChannel::IsPeak( const unsigned key  )
{
    return false;
}

//********************************************************************
//  tlBoolChannel template class
//       store channel data
//********************************************************************
tlBoolChannel::tlBoolChannel():
    tlChannel<bool>()
{
}

tlBoolChannel::tlBoolChannel(const tlBoolChannel& channel):
    tlChannel<bool>(channel)
{
}

tlBoolChannel::~tlBoolChannel()
{
}

tlChannel<bool>*
tlBoolChannel::Clone() const
{
    tlBoolChannel* temp = new tlBoolChannel;
    temp->SetKeys(numKeys,frames,values);
    return temp;
}

int
tlBoolChannel::CountNumStateChanges()
{
    int numStateChanges = 0;
    bool currState = values[0];

    for (unsigned i = 1; i < numKeys; i++)
    {
        if (values[i]!=currState)
        {
            currState = values[i];
            numStateChanges++;
        }
    }

    if (numStateChanges == 0)
    {
        numStateChanges = 1;
    }

    return numStateChanges;
}

unsigned int
tlBoolChannel::CalculateMemoryImageSize(unsigned int console, unsigned int size)
{
    size = ((size + 3) & ~3) + BOOL_CHANNEL_SIZES[console];
    size = ((size + 3) & ~3) + (CountNumStateChanges()*SHORT_SIZES[console]);
    return size;
}

bool
tlBoolChannel::Evaluate(float frame, bool* validKeys)
{
    unsigned prevKey = 0;
    unsigned nextKey = 0;

    FindBracketKeys(frame,prevKey,nextKey,validKeys);

    return values[prevKey];
}

bool
tlBoolChannel::WithinTolerance(const bool& value1, const bool& value2, float tolerance)
{
    return (value1 == value2);
}

bool
tlBoolChannel::IsPeak( const unsigned key )
{
   return false;
}

//********************************************************************
//  tlColourChannel template class
//       store channel data
//********************************************************************
tlColourChannel::tlColourChannel():
    tlChannel<tlColour>()
{
}

tlColourChannel::tlColourChannel(const tlColourChannel& channel):
    tlChannel<tlColour>(channel)
{
}

tlColourChannel::~tlColourChannel()
{
}

tlChannel<tlColour>*
tlColourChannel::Clone() const
{
    tlColourChannel* temp = new tlColourChannel;
    temp->SetKeys(numKeys,frames,values);
    return temp;
}

unsigned int
tlColourChannel::CalculateMemoryImageSize(unsigned int console, unsigned int size)
{
    if (console<4)
    {
        size = ((size + 3) & ~3) + COLOUR_CHANNEL_SIZES[console];
        size = tlChannel<tlColour>::CalculateMemoryImageSize(console, size);
        size = ((size + 3) & ~3) + (numKeys*COLOUR_SIZES[console]);
        return size;
    }
    return 0;
}

tlColour
tlColourChannel::Evaluate(float frame, bool* validKeys)
{
    unsigned prevKey = 0;
    unsigned nextKey = 0;

    if (FindBracketKeys(frame,prevKey,nextKey,validKeys))
    {
        float prevKeyFrame = (float)frames[prevKey];
        float nextKeyFrame = (float)frames[nextKey];

        float deltaFrame = nextKeyFrame - prevKeyFrame;
        tlColour deltaValue(values[nextKey].red - values[prevKey].red, values[nextKey].green - values[prevKey].green,
                            values[nextKey].blue - values[prevKey].blue, values[nextKey].alpha - values[prevKey].alpha);

        float temp = (frame - prevKeyFrame) / deltaFrame;
        tlColour result;

        result.red = (temp * deltaValue.red) + values[prevKey].red;
        result.green = (temp * deltaValue.green) + values[prevKey].green;
        result.blue = (temp * deltaValue.blue) + values[prevKey].blue;
        result.alpha = (temp * deltaValue.alpha) + values[prevKey].alpha;

        // return weighted average of data between key frames
        return result;
    }
    else
    {
        return values[prevKey];
    }
}

bool
tlColourChannel::WithinTolerance(const tlColour& value1, const tlColour& value2, float tolerance)
{
    int colourTolerance = (int)(tolerance * 255.0f);
    return ((abs(value1.RedCh()-value2.RedCh())<=colourTolerance)&&(abs(value1.GreenCh()-value2.GreenCh())<=colourTolerance)&&(abs(value1.BlueCh()-value2.BlueCh())<=colourTolerance)&&(abs(value1.AlphaCh()-value2.AlphaCh())<=colourTolerance));
}

bool
tlColourChannel::IsPeak( const unsigned key )
{
    bool bIsPeak = false;

#if ENABLE_PEAK

    if ( numKeys > 2 )
    {
        // If this key is the first key and
        //    the next key is below its adjacent keys or
        //    the next key is above its adjacent keys...
        if ( key == 0 )
        {
            if  (
                    ( values[0].red < values[1].red && values[1].red > values[2].red ) ||
                    ( values[0].red > values[1].red && values[1].red < values[2].red ) ||
                    ( values[0].green < values[1].green && values[1].green > values[2].green ) ||
                    ( values[0].green > values[1].green && values[1].green < values[2].green ) ||
                    ( values[0].blue < values[1].blue && values[1].blue > values[2].blue ) ||
                    ( values[0].blue > values[1].blue && values[1].blue < values[2].blue ) ||
                    ( values[0].alpha < values[1].alpha && values[1].alpha > values[2].alpha ) ||
                    ( values[0].alpha > values[1].alpha && values[1].alpha < values[2].alpha )
                )
            {
                bIsPeak = true;
            }
        }
        // If this key is the last key and
        //    the previous key is below its adjacent keys or
        //    the previous key is above its adjacent keys...
        else if ( key == ( numKeys - 1 ) )
        {
            if  (
                    ( values[key].red < values[key-1].red && values[key-1].red > values[key-2].red ) ||
                    ( values[key].red > values[key-1].red && values[key-1].red < values[key-2].red ) ||
                    ( values[key].green < values[key-1].green && values[key-1].green > values[key-2].green ) ||
                    ( values[key].green > values[key-1].green && values[key-1].green < values[key-2].green ) ||
                    ( values[key].blue < values[key-1].blue && values[key-1].blue > values[key-2].blue ) ||
                    ( values[key].blue > values[key-1].blue && values[key-1].blue < values[key-2].blue ) ||
                    ( values[key].alpha < values[key-1].alpha && values[key-1].alpha > values[key-2].alpha ) ||
                    ( values[key].alpha > values[key-1].alpha && values[key-1].alpha < values[key-2].alpha )
                )
            {
                bIsPeak = true;
            }
        }
        // If this key is below both adjacent keys or
        //    this key is above both adjacent keys
        else if (
                    ( values[key].red < values[key-1].red && values[key].red <= values[key+1].red ) ||
                    ( values[key].red > values[key-1].red && values[key].red >= values[key+1].red ) ||
                    ( values[key].green < values[key-1].green && values[key].green <= values[key+1].green ) ||
                    ( values[key].green > values[key-1].green && values[key].green >= values[key+1].green ) ||
                    ( values[key].blue < values[key-1].blue && values[key].blue <= values[key+1].blue ) ||
                    ( values[key].blue > values[key-1].blue && values[key].blue >= values[key+1].blue ) ||
                    ( values[key].alpha < values[key-1].alpha && values[key].alpha <= values[key+1].alpha ) ||
                    ( values[key].alpha > values[key-1].alpha && values[key].alpha >= values[key+1].alpha )
                )
        {
            bIsPeak = true;
        }
    }

#endif      // ENABLE_PEAK

    return bIsPeak;
}

//********************************************************************
//  tlEventChannel template class
//       store channel data
//********************************************************************
tlEventChannel::tlEventChannel():
    tlChannel<tlEvent>()
{
}

tlEventChannel::tlEventChannel(const tlEventChannel& channel):
    tlChannel<tlEvent>(channel)
{
}

tlEventChannel::~tlEventChannel()
{
}

tlChannel<tlEvent>*
tlEventChannel::Clone() const
{
    tlEventChannel* temp = new tlEventChannel;
    temp->SetKeys(numKeys,frames,values);
    return temp;
}

void tlEventChannel::SetKeys(unsigned numKeys,const short* frames,const tlEvent* values)
{
    dirty = true;
    tlChannel<tlEvent>::SetKeys(numKeys, frames, values);
    if(this->numKeys>0)
    {
        assert(IsValid());
    }
}


tlEvent
tlEventChannel::CalculateValue(float frame)
{
    return Evaluate(frame);
}

unsigned int
tlEventChannel::CalculateMemoryImageSize(unsigned int console, unsigned int size)
{
    if (console<4)
    {
        size = ((size + 3) & ~3) + EVENT_CHANNEL_SIZES[console];
        size = tlChannel<tlEvent>::CalculateMemoryImageSize(console, size);
        size = ((size + 3) & ~3) + (numKeys*POINTER_SIZES[console]);
        return size;
    }
    return 0;
}

tlEvent
tlEventChannel::Evaluate(float frame, bool* validKeys)
{
    unsigned prevKey = 0;
    unsigned nextKey = 0;

    FindBracketKeys(frame,prevKey,nextKey,validKeys);

    return values[prevKey];
}

//********************************************************************
//  tlChannelManager class
//       loads and saves Channel subchunks
//********************************************************************
int
tlChannelManager::LoadIntChannels(tlChannelContainer<int>* channels, tlDataChunk* ch)
{
    if (channels==NULL)
        return 0;

    int numChannels = 0;

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::Animation::ChannelData::INT :
            {
                tlIntChannelChunk* channelChunk = dynamic_cast<tlIntChannelChunk*> (subChunk);
                assert( channelChunk );
                assert( channelChunk->Version() == FLOAT1_CHANNEL_VERSION);

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                channels->channels[channelChunk->GetParam()] = LoadInToIntChannel(channelChunk);
                assert(channels->channels[channelChunk->GetParam()]);

                break;
            }
            default:
                break;
        }
    }

    return numChannels;
}

int
tlChannelManager::LoadFloat1Channels(tlChannelContainer<float>* channels, tlDataChunk* ch)
{
    if (channels==NULL)
        return 0;

    int numChannels = 0;

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::Animation::ChannelData::FLOAT_1 :
            {
                tlFloat1ChannelChunk* channelChunk = dynamic_cast<tlFloat1ChannelChunk*> (subChunk);
                assert( channelChunk );
                assert( channelChunk->Version() == FLOAT1_CHANNEL_VERSION);

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                channels->channels[channelChunk->GetParam()] = LoadInToFloat1Channel(channelChunk);
                assert(channels->channels[channelChunk->GetParam()]);

                break;
            }
            default:
                break;
        }
    }

    return numChannels;
}

int
tlChannelManager::LoadFloat2Channels(tlChannelContainer<tlPoint2D>* channels, tlDataChunk* ch)
{
    if (channels==NULL)
        return 0;

    int numChannels = 0;

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::Animation::ChannelData::FLOAT_2 :
            {
                tlFloat2ChannelChunk* channelChunk = dynamic_cast<tlFloat2ChannelChunk*> (subChunk);
                assert( channelChunk );
                assert( channelChunk->Version() == FLOAT2_CHANNEL_VERSION);

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                channels->channels[channelChunk->GetParam()] = LoadInToFloat2Channel(channelChunk);
                assert(channels->channels[channelChunk->GetParam()]);

                break;
            }
            default:
                break;
        }
    }

    return numChannels;
}

int
tlChannelManager::LoadVectorChannels(tlChannelContainer<tlPoint>* channels, tlDataChunk* ch)
{
    if (channels==NULL)
        return 0;

    int numChannels = 0;

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::Animation::ChannelData::VECTOR_1DOF :
            {
                tlVector1DOFChannelChunk* channelChunk = dynamic_cast<tlVector1DOFChannelChunk*> (subChunk);
                assert( channelChunk );
                assert( channelChunk->Version() == VECTOR1DOF_CHANNEL_VERSION);

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                channels->channels[channelChunk->GetParam()] = LoadInToVectorChannel(channelChunk);
                assert(channels->channels[channelChunk->GetParam()]);

                break;
            }
            case Pure3D::Animation::ChannelData::VECTOR_2DOF :
            {
                tlVector2DOFChannelChunk* channelChunk = dynamic_cast<tlVector2DOFChannelChunk*> (subChunk);
                assert( channelChunk );
                assert( channelChunk->Version() == VECTOR2DOF_CHANNEL_VERSION);

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                channels->channels[channelChunk->GetParam()] = LoadInToVectorChannel(channelChunk);
                assert(channels->channels[channelChunk->GetParam()]);

                break;
            }
            case Pure3D::Animation::ChannelData::VECTOR_3DOF :
            {
                tlVector3DOFChannelChunk* channelChunk = dynamic_cast<tlVector3DOFChannelChunk*> (subChunk);
                assert( channelChunk );
                assert( channelChunk->Version() == VECTOR3DOF_CHANNEL_VERSION);

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                channels->channels[channelChunk->GetParam()] = LoadInToVectorChannel(channelChunk);
                assert(channels->channels[channelChunk->GetParam()]);

                break;
            }
            default:
                break;
        }
    }

    return numChannels;
}

int
tlChannelManager::LoadQuaternionChannels(tlChannelContainer<tlQuat>* channels, tlDataChunk* ch)
{
    if (channels==NULL)
        return 0;

    int numChannels = 0;

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::Animation::ChannelData::QUATERNION :
            {
                tlQuaternionChannelChunk* channelChunk = dynamic_cast<tlQuaternionChannelChunk*> (subChunk);
                assert( channelChunk );
                assert( channelChunk->Version() == QUATERNION_CHANNEL_VERSION);

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                channels->channels[channelChunk->GetParam()] = LoadInToQuaternionChannel(channelChunk);
                assert(channels->channels[channelChunk->GetParam()]);

                break;
            }
            case Pure3D::Animation::ChannelData::COMPRESSED_QUATERNION :
            {
                tlCompressedQuaternionChannelChunk* channelChunk = dynamic_cast<tlCompressedQuaternionChannelChunk*> (subChunk);
                assert( channelChunk );
                assert( channelChunk->Version() == COMPRESSED_QUATERNION_CHANNEL_VERSION);

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                channels->channels[channelChunk->GetParam()] = LoadInToQuaternionChannel(channelChunk);
                assert(channels->channels[channelChunk->GetParam()]);

                break;
            }
            default:
                break;
        }
    }

    return numChannels;
}

int
tlChannelManager::LoadStringChannels(tlChannelContainer<tlString>* channels, tlDataChunk* ch)
{
    if (channels==NULL)
        return 0;

    int numChannels = 0;

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::Animation::ChannelData::STRING :
            {
                tlStringChannelChunk* channelChunk = dynamic_cast<tlStringChannelChunk*> (subChunk);
                assert( channelChunk );
                assert( channelChunk->Version() == STRING_CHANNEL_VERSION);

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                channels->channels[channelChunk->GetParam()] = LoadInToStringChannel(channelChunk);
                assert(channels->channels[channelChunk->GetParam()]);

                break;
            }
            case Pure3D::Animation::ChannelData::ENTITY :
            {
                tlEntityChannelChunk* channelChunk = dynamic_cast<tlEntityChannelChunk*> (subChunk);
                assert( channelChunk );
                assert( channelChunk->Version() == ENTITY_CHANNEL_VERSION);

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                channels->channels[channelChunk->GetParam()] = LoadInToStringChannel(channelChunk);
                assert(channels->channels[channelChunk->GetParam()]);

                break;
            }
            default:
                break;
        }
    }

    return numChannels;
}

int
tlChannelManager::LoadBoolChannels(tlChannelContainer<bool>* channels, tlDataChunk* ch)
{
    if (channels==NULL)
        return 0;

    int numChannels = 0;

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::Animation::ChannelData::BOOL :
            {
                tlBoolChannelChunk* channelChunk = dynamic_cast<tlBoolChannelChunk*> (subChunk);
                assert( channelChunk );
                assert( channelChunk->Version() == BOOL_CHANNEL_VERSION);

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                channels->channels[channelChunk->GetParam()] = LoadInToBoolChannel(channelChunk);
                assert(channels->channels[channelChunk->GetParam()]);

                break;
            }
            default:
                break;
        }
    }

    return numChannels;
}

int
tlChannelManager::LoadColourChannels(tlChannelContainer<tlColour>* channels, tlDataChunk* ch)
{
    if (channels==NULL)
        return 0;

    int numChannels = 0;

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::Animation::ChannelData::COLOUR :
            {
                tlColourChannelChunk* channelChunk = dynamic_cast<tlColourChannelChunk*> (subChunk);
                assert( channelChunk );
                assert( channelChunk->Version() == COLOUR_CHANNEL_VERSION);

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                channels->channels[channelChunk->GetParam()] = LoadInToColourChannel(channelChunk);
                assert(channels->channels[channelChunk->GetParam()]);
                break;
            }
            default:
                break;
        }
    }

    return numChannels;
}

int
tlChannelManager::LoadEventChannels(tlChannelContainer<tlEvent>* channels,tlDataChunk* ch)
{
    if (channels==NULL)
        return 0;

    int numChannels = 0;

    int subChunkCount = ch->SubChunkCount();

    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::Animation::ChannelData::EVENT:
            {

                tlEventChannelChunk* channelChunk = dynamic_cast<tlEventChannelChunk*> (subChunk);
                assert( channelChunk );

                if (channels->channels.find(channelChunk->GetParam())!=channels->channels.end())
                {
                    delete channels->channels[channelChunk->GetParam()];
                }
                else
                {
                    numChannels++;
                }

                tlEventChannel* eventChannel = new tlEventChannel;
                channels->channels[channelChunk->GetParam()] = eventChannel;
                eventChannel->SetNumKeys(channelChunk->GetNumFrames());

                //
                // Now go through the subchunks and Get the Events
                //
                int eventChunkCount = channelChunk->SubChunkCount();
                for (int j = 0; j < eventChunkCount; j++)
                {
                    tlDataChunk* subChunk = channelChunk->GetSubChunk(j);
                    if(subChunk->ID() == Pure3D::Animation::ChannelData::EVENT_OBJECT)
                    {
                        tlEventChunk* eventChunk = dynamic_cast<tlEventChunk*>(subChunk);
                        tlEvent* event = new tlEvent(eventChunk);
                        eventChannel->SetKey(j, eventChunk->GetTime(), *event);
                    }
                }
            }
            default:
                break;
        }
    }

    return numChannels;
}

int
tlChannelManager::SaveIntChannels(tlChannelContainer<int>* channels, tlDataChunk* ch)
{
    int numChannels = 0;

    for(std::map<tlFourCC,tlChannel<int>*>::iterator i = channels->channels.begin() ; i != channels->channels.end(); ++i)
    {
        tlIntChannel* channel = dynamic_cast<tlIntChannel*>(i->second);
        assert(channel);
        channel->MakeValid();

        tlIntChannelChunk* chunk = new tlIntChannelChunk();
        chunk->SetVersion(INT_CHANNEL_VERSION);
        chunk->SetParam(i->first);
        chunk->SetNumFrames(channel->numKeys);
        chunk->SetFrames((unsigned short*)channel->frames, channel->numKeys);
        chunk->SetValues((unsigned long*)channel->values, channel->numKeys);

        tlChannelInterpolationModeChunk* modeCh = new tlChannelInterpolationModeChunk();
        modeCh->SetVersion(INTERPOLATION_MODE_VERSION);
        modeCh->SetInterpolate(channel->interpolate);
        chunk->AppendSubChunk(modeCh);

        ch->AppendSubChunk(chunk);
        numChannels++;
    }

    return numChannels;
}

int
tlChannelManager::SaveFloat1Channels(tlChannelContainer<float>* channels, tlDataChunk* ch)
{
    int numChannels = 0;

    for(std::map<tlFourCC,tlChannel<float>*>::iterator i = channels->channels.begin() ; i != channels->channels.end(); ++i)
    {
        tlFloat1Channel* channel = dynamic_cast<tlFloat1Channel*>(i->second);
        assert(channel);
        channel->MakeValid();

        tlFloat1ChannelChunk* chunk = new tlFloat1ChannelChunk();
        chunk->SetVersion(FLOAT1_CHANNEL_VERSION);
        chunk->SetParam(i->first);
        chunk->SetNumFrames(channel->numKeys);
        chunk->SetFrames((unsigned short*)channel->frames, channel->numKeys);
        chunk->SetValues(channel->values, channel->numKeys);

        tlChannelInterpolationModeChunk* modeCh = new tlChannelInterpolationModeChunk();
        modeCh->SetVersion(INTERPOLATION_MODE_VERSION);
        modeCh->SetInterpolate(channel->interpolate);
        chunk->AppendSubChunk(modeCh);

        ch->AppendSubChunk(chunk);
        numChannels++;
    }

    return numChannels;
}

int
tlChannelManager::SaveFloat2Channels(tlChannelContainer<tlPoint2D>* channels, tlDataChunk* ch)
{
    int numChannels = 0;

    for(std::map<tlFourCC,tlChannel<tlPoint2D>*>::iterator i = channels->channels.begin() ; i != channels->channels.end(); ++i)
    {
        tlFloat2Channel* channel = dynamic_cast<tlFloat2Channel*>(i->second);
        assert(channel);
        channel->MakeValid();

        tlFloat2ChannelChunk* chunk = new tlFloat2ChannelChunk();
        chunk->SetVersion(FLOAT2_CHANNEL_VERSION);
        chunk->SetParam(i->first);
        chunk->SetNumFrames(channel->numKeys);
        chunk->SetFrames((unsigned short*)channel->frames, channel->numKeys);
        chunk->SetValues(channel->values, channel->numKeys);

        tlChannelInterpolationModeChunk* modeCh = new tlChannelInterpolationModeChunk();
        modeCh->SetVersion(INTERPOLATION_MODE_VERSION);
        modeCh->SetInterpolate(channel->interpolate);
        chunk->AppendSubChunk(modeCh);

        ch->AppendSubChunk(chunk);
        numChannels++;
    }

    return numChannels;
}

int
tlChannelManager::SaveVectorChannels(tlChannelContainer<tlPoint>* channels, tlDataChunk* ch)
{
    int numChannels = 0;

    for(std::map<tlFourCC,tlChannel<tlPoint>*>::iterator i = channels->channels.begin() ; i != channels->channels.end(); ++i)
    {
        tlVectorChannel* channel = dynamic_cast<tlVectorChannel*>(i->second);
        assert(channel);
        channel->MakeValid();

        bool x, y, z;

        switch (channel->CountDOF(x, y, z, 0.0f))
        {
            case 1 :
            {
                tlVector1DOFChannelChunk* chunk = new tlVector1DOFChannelChunk();
                chunk->SetVersion(VECTOR1DOF_CHANNEL_VERSION);
                chunk->SetParam(i->first);
                chunk->SetMapping(x ? 0 : y ? 1 : 2);
                chunk->SetConstants(channel->values[0]);
                chunk->SetNumFrames(channel->numKeys);
                chunk->SetFrames((unsigned short*)channel->frames, channel->numKeys);

                float* tempValues = new float[channel->numKeys];

                for (unsigned i = 0; i < channel->numKeys; i++)
                {
                    if (x)
                    {
                        tempValues[i] = channel->values[i].x;
                    }
                    else if (y)
                    {
                        tempValues[i] = channel->values[i].y;
                    }
                    else
                    {
                        tempValues[i] = channel->values[i].z;
                    }
                }

                chunk->SetValues(tempValues, channel->numKeys);
                delete [] tempValues;

                tlChannelInterpolationModeChunk* modeCh = new tlChannelInterpolationModeChunk();
                modeCh->SetVersion(INTERPOLATION_MODE_VERSION);
                modeCh->SetInterpolate(channel->interpolate);
                chunk->AppendSubChunk(modeCh);

                ch->AppendSubChunk(chunk);
                numChannels++;

                break;
            }
            case 2 :
            {
                tlVector2DOFChannelChunk* chunk = new tlVector2DOFChannelChunk();
                chunk->SetVersion(VECTOR2DOF_CHANNEL_VERSION);
                chunk->SetParam(i->first);
                chunk->SetMapping(!x ? 0 : !y ? 1 : 2);
                chunk->SetConstants(channel->values[0]);
                chunk->SetNumFrames(channel->numKeys);
                chunk->SetFrames((unsigned short*)channel->frames, channel->numKeys);

                tlPoint2D* tempValues = new tlPoint2D[channel->numKeys];

                for (unsigned i = 0; i < channel->numKeys; i++)
                {
                    if (!x)
                    {
                        tempValues[i].x = channel->values[i].y;
                        tempValues[i].y = channel->values[i].z;
                    }
                    else if (!y)
                    {
                        tempValues[i].x = channel->values[i].x;
                        tempValues[i].y = channel->values[i].z;
                    }
                    else
                    {
                        tempValues[i].x = channel->values[i].x;
                        tempValues[i].y = channel->values[i].y;
                    }
                }

                chunk->SetValues(tempValues, channel->numKeys);
                delete [] tempValues;

                tlChannelInterpolationModeChunk* modeCh = new tlChannelInterpolationModeChunk();
                modeCh->SetVersion(INTERPOLATION_MODE_VERSION);
                modeCh->SetInterpolate(channel->interpolate);
                chunk->AppendSubChunk(modeCh);

                ch->AppendSubChunk(chunk);
                numChannels++;

                break;
            }
            default:
            {
                tlVector3DOFChannelChunk* chunk = new tlVector3DOFChannelChunk();
                chunk->SetVersion(VECTOR3DOF_CHANNEL_VERSION);
                chunk->SetParam(i->first);
                chunk->SetNumFrames(channel->numKeys);
                chunk->SetFrames((unsigned short*)channel->frames, channel->numKeys);
                chunk->SetValues(channel->values, channel->numKeys);

                tlChannelInterpolationModeChunk* modeCh = new tlChannelInterpolationModeChunk();
                modeCh->SetVersion(INTERPOLATION_MODE_VERSION);
                modeCh->SetInterpolate(channel->interpolate);
                chunk->AppendSubChunk(modeCh);

                ch->AppendSubChunk(chunk);
                numChannels++;
                break;
            }
        }
    }

    return numChannels;
}

int
tlChannelManager::SaveQuaternionChannels(tlChannelContainer<tlQuat>* channels, tlDataChunk* ch)
{
    int numChannels = 0;

    for(std::map<tlFourCC,tlChannel<tlQuat>*>::iterator i = channels->channels.begin() ; i != channels->channels.end(); ++i)
    {
        tlQuaternionChannel* channel = dynamic_cast<tlQuaternionChannel*>(i->second);
        assert(channel);
        channel->MakeValid();

        if (channel->GetFormat() == Pure3DAnimationChannels::Quaternion::ONE_DOT_FIFTEEN) 
        {
            tlCompressedQuaternionChannelChunk* chunk = new tlCompressedQuaternionChannelChunk();
            chunk->SetVersion(COMPRESSED_QUATERNION_CHANNEL_VERSION);
            chunk->SetParam(i->first);
            chunk->SetNumFrames(channel->numKeys);
            chunk->SetFrames((unsigned short*)channel->frames, channel->numKeys);

            tlCompressedQuat* temp = new tlCompressedQuat[channel->numKeys];
            for (unsigned j = 0; j < channel->numKeys; j++)
            {
                channel->values[j].Normalize();
                temp[j].Compress(channel->values[j]);
            }

            chunk->SetValues(temp, channel->numKeys);

            delete [] temp;

            tlChannelInterpolationModeChunk* modeCh = new tlChannelInterpolationModeChunk();
            modeCh->SetVersion(INTERPOLATION_MODE_VERSION);
            modeCh->SetInterpolate(channel->interpolate);
            chunk->AppendSubChunk(modeCh);

            ch->AppendSubChunk(chunk);
        }
        else
        {
            tlQuaternionChannelChunk* chunk = new tlQuaternionChannelChunk();
            chunk->SetVersion(QUATERNION_CHANNEL_VERSION);
            chunk->SetParam(i->first);
            chunk->SetNumFrames(channel->numKeys);
            chunk->SetFrames((unsigned short*)channel->frames, channel->numKeys);

            for (unsigned j = 0; j < channel->numKeys; j++)
            {
                channel->values[j].Normalize();
            }

            chunk->SetValues(channel->values, channel->numKeys);

            if (channel->GetFormat()!=0)
            {
                tlQuaternionFormatChunk* formatChunk = new tlQuaternionFormatChunk;
                formatChunk->SetVersion(QUATERNION_FORMAT_VERSION);
                formatChunk->SetFormat(channel->GetFormat());
                chunk->AppendSubChunk(formatChunk);
            }

            tlChannelInterpolationModeChunk* modeCh = new tlChannelInterpolationModeChunk();
            modeCh->SetVersion(INTERPOLATION_MODE_VERSION);
            modeCh->SetInterpolate(channel->interpolate);
            chunk->AppendSubChunk(modeCh);

            ch->AppendSubChunk(chunk);
        }
        numChannels++;
    }

    return numChannels;
}

int
tlChannelManager::SaveStringChannels(tlChannelContainer<tlString>* channels, tlDataChunk* ch)
{
    int numChannels = 0;

    for(std::map<tlFourCC,tlChannel<tlString>*>::iterator i = channels->channels.begin() ; i != channels->channels.end(); ++i)
    {
        tlStringChannel* channel = dynamic_cast<tlStringChannel*>(i->second);
        assert(channel);
        channel->MakeValid();

        if (channel->IsEntityChannel())
        {
            tlEntityChannelChunk* chunk = new tlEntityChannelChunk();
            chunk->SetVersion(ENTITY_CHANNEL_VERSION);
            chunk->SetParam(i->first);
            chunk->SetNumFrames(channel->numKeys);
            chunk->SetFrames((unsigned short*)channel->frames, channel->numKeys);

            char** temp = new char*[channel->numKeys];

            for (unsigned j = 0; j < channel->numKeys; j++)
            {
                temp[j] = (char*)channel->values[j].GetString();
            }

            chunk->SetValues(temp, channel->numKeys);

            delete [] temp;

            tlChannelInterpolationModeChunk* modeCh = new tlChannelInterpolationModeChunk();
            modeCh->SetVersion(INTERPOLATION_MODE_VERSION);
            modeCh->SetInterpolate(channel->interpolate);
            chunk->AppendSubChunk(modeCh);

            ch->AppendSubChunk(chunk);
            numChannels++;
        }
        else
        {
            tlStringChannelChunk* chunk = new tlStringChannelChunk();
            chunk->SetVersion(STRING_CHANNEL_VERSION);
            chunk->SetParam(i->first);
            chunk->SetNumFrames(channel->numKeys);
            chunk->SetFrames((unsigned short*)channel->frames, channel->numKeys);

            char** temp = new char*[channel->numKeys];

            for (unsigned j = 0; j < channel->numKeys; j++)
            {
                temp[j] = (char*)channel->values[j].GetString();
            }

            chunk->SetValues(temp, channel->numKeys);

            delete [] temp;

            ch->AppendSubChunk(chunk);
            numChannels++;
        }
    }

    return numChannels;
}

int
tlChannelManager::SaveBoolChannels(tlChannelContainer<bool>* channels, tlDataChunk* ch)
{
    int numChannels = 0;

    for(std::map<tlFourCC,tlChannel<bool>*>::iterator i = channels->channels.begin() ; i != channels->channels.end(); ++i)
    {
        tlBoolChannel* channel = dynamic_cast<tlBoolChannel*>(i->second);
        assert(channel);
        channel->MakeValid();

        tlBoolChannelChunk* chunk = new tlBoolChannelChunk();
        chunk->SetVersion(BOOL_CHANNEL_VERSION);
        chunk->SetParam(i->first);

        unsigned numFrames = channel->numKeys;
        short* frames = channel->frames;
        bool* values = channel->values;

        int numStateChanges = 0;
        bool currState = values[0];
        short* stateChanges = new short[numFrames];

        for (unsigned i = 1; i < numFrames; i++)
        {
            if (values[i]!=currState)
            {
                currState = values[i];
                stateChanges[numStateChanges] = frames[i];
                numStateChanges++;
            }
        }

        if (numStateChanges == 0)
        {
            numStateChanges = 1;
            values[0] = !values[0];
            stateChanges[0] = 0;
        }

        chunk->SetNumFrames(numStateChanges);
        chunk->SetStartState(values[0]);
        chunk->SetValues((unsigned short*)stateChanges,numStateChanges);

        delete [] stateChanges;

        ch->AppendSubChunk(chunk);
        numChannels++;
    }

    return numChannels;
}

int
tlChannelManager::SaveColourChannels(tlChannelContainer<tlColour>* channels, tlDataChunk* ch)
{
    int numChannels = 0;

    for(std::map<tlFourCC,tlChannel<tlColour>*>::const_iterator i = channels->channels.begin() ; i != channels->channels.end(); ++i)
    {
        tlColourChannel* channel = dynamic_cast<tlColourChannel*>(i->second);
        assert(channel);
        channel->MakeValid();

        tlColourChannelChunk* chunk = new tlColourChannelChunk();
        chunk->SetVersion(COLOUR_CHANNEL_VERSION);
        chunk->SetParam(i->first);
        chunk->SetNumFrames(channel->numKeys);
        chunk->SetFrames((unsigned short*)channel->frames, channel->numKeys);

        unsigned long* temp = new unsigned long[channel->numKeys];
        tlColour* values = channel->values;

        for (unsigned i = 0; i < channel->numKeys; i++)
        {
            temp[i] = values[i].ULong();
        }

        chunk->SetValues(temp, channel->numKeys);

        delete [] temp;

        tlChannelInterpolationModeChunk* modeCh = new tlChannelInterpolationModeChunk();
        modeCh->SetVersion(INTERPOLATION_MODE_VERSION);
        modeCh->SetInterpolate(channel->interpolate);
        chunk->AppendSubChunk(modeCh);

        ch->AppendSubChunk(chunk);
        numChannels++;
    }

    return numChannels;
}

int
tlChannelManager::SaveEventChannels(tlChannelContainer<tlEvent>* channels, tlDataChunk* ch)
{
    int numChannels = 0;

    for(std::map<tlFourCC,tlChannel<tlEvent>*>::const_iterator i = channels->channels.begin() ; i != channels->channels.end(); ++i)
    {
        tlEventChannel* channel = dynamic_cast<tlEventChannel*>(i->second);
        assert(channel);
        channel->MakeValid();

        tlEventChannelChunk* chunk = new tlEventChannelChunk();
        chunk->SetVersion(EVENT_CHANNEL_VERSION);
        chunk->SetParam(i->first);
        chunk->SetNumFrames(channel->numKeys);

        tlEvent* events = channel->values;
        short* time = channel->frames;

        for (unsigned i = 0; i < channel->numKeys; i++)
        {
            tlEvent& currentEvent = events[i];
            tlEventChunk* eventChunk = currentEvent.Chunk();
            eventChunk->SetTime(time[i]); // this is a little weird
            chunk->AppendSubChunk(eventChunk);
        }

        ch->AppendSubChunk(chunk);
        numChannels++;
    }

    return numChannels;
}

tlIntChannel*
tlChannelManager::LoadInToIntChannel(tlDataChunk* ch)
{
    tlIntChannel* channel = NULL;

    switch (ch->ID())
    {
        case Pure3D::Animation::ChannelData::INT :
        {
            tlIntChannelChunk* channelChunk = dynamic_cast<tlIntChannelChunk*> (ch);
            assert( channelChunk );
            assert( channelChunk->Version() == INT_CHANNEL_VERSION);

            channel = new tlIntChannel;
            channel->SetKeys(channelChunk->GetNumFrames(),(const short*)channelChunk->GetFrames(),(int*)channelChunk->GetValues());

            int subChunkCount = ch->SubChunkCount();
            for (int i = 0; i < subChunkCount; i++)
            {
                tlDataChunk* subChunk = ch->GetSubChunk(i);
                switch (subChunk->ID())
                {
                    case Pure3D::Animation::ChannelData::INTERPOLATION_MODE:
                    {
                        tlChannelInterpolationModeChunk* modeChunk = dynamic_cast<tlChannelInterpolationModeChunk*> (subChunk);
                        assert( modeChunk );
                        assert( modeChunk->Version() == INTERPOLATION_MODE_VERSION);
                        channel->EnableInterpolation(modeChunk->Interpolate()==1);
                        break;
                    }
                    default:
                        break;
                }
            }
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    return channel;
}

tlFloat1Channel*
tlChannelManager::LoadInToFloat1Channel(tlDataChunk* ch)
{
    tlFloat1Channel* channel = NULL;

    switch (ch->ID())
    {
        case Pure3D::Animation::ChannelData::FLOAT_1 :
        {
            tlFloat1ChannelChunk* channelChunk = dynamic_cast<tlFloat1ChannelChunk*> (ch);
            assert( channelChunk );
            assert( channelChunk->Version() == FLOAT1_CHANNEL_VERSION);

            channel = new tlFloat1Channel;
            channel->SetKeys(channelChunk->GetNumFrames(),(const short*)channelChunk->GetFrames(),channelChunk->GetValues());

            int subChunkCount = ch->SubChunkCount();
            for (int i = 0; i < subChunkCount; i++)
            {
                tlDataChunk* subChunk = ch->GetSubChunk(i);
                switch (subChunk->ID())
                {
                    case Pure3D::Animation::ChannelData::INTERPOLATION_MODE:
                    {
                        tlChannelInterpolationModeChunk* modeChunk = dynamic_cast<tlChannelInterpolationModeChunk*> (subChunk);
                        assert( modeChunk );
                        assert( modeChunk->Version() == INTERPOLATION_MODE_VERSION);
                        channel->EnableInterpolation(modeChunk->Interpolate()==1);
                        break;
                    }
                    default:
                        break;
                }
            }
            break;
        }
        case P3D_CHANNEL_1DOF :
        {
            tlChannel1DOFChunk16* channelChunk = dynamic_cast<tlChannel1DOFChunk16*> (ch);
            assert( channelChunk );

            unsigned int numFrames = channelChunk->GetNumKeys();
            unsigned short* tempFrames = channelChunk->GetTimeIndex();
            float* tempValues = channelChunk->GetFrames();

            channel = new tlFloat1Channel;
            channel->SetNumKeys(numFrames);

            for (unsigned i = 0; i < numFrames; i++)
            {
                channel->frames[i] = tempFrames[i];
                channel->values[i] = tempValues[i];
            }
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    return channel;
}

tlFloat2Channel*
tlChannelManager::LoadInToFloat2Channel(tlDataChunk* ch)
{
    tlFloat2Channel* channel = NULL;

    switch (ch->ID())
    {
        case Pure3D::Animation::ChannelData::FLOAT_2 :
        {
            tlFloat2ChannelChunk* channelChunk = dynamic_cast<tlFloat2ChannelChunk*> (ch);
            assert( channelChunk );
            assert( channelChunk->Version() == FLOAT1_CHANNEL_VERSION);

            channel = new tlFloat2Channel;
            channel->SetKeys(channelChunk->GetNumFrames(),(const short*)channelChunk->GetFrames(),channelChunk->GetValues());

            int subChunkCount = ch->SubChunkCount();
            for (int i = 0; i < subChunkCount; i++)
            {
                tlDataChunk* subChunk = ch->GetSubChunk(i);
                switch (subChunk->ID())
                {
                    case Pure3D::Animation::ChannelData::INTERPOLATION_MODE:
                    {
                        tlChannelInterpolationModeChunk* modeChunk = dynamic_cast<tlChannelInterpolationModeChunk*> (subChunk);
                        assert( modeChunk );
                        assert( modeChunk->Version() == INTERPOLATION_MODE_VERSION);
                        channel->EnableInterpolation(modeChunk->Interpolate()==1);
                        break;
                    }
                    default:
                        break;
                }
            }
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    return channel;
}

tlVectorChannel*
tlChannelManager::LoadInToVectorChannel(tlDataChunk* ch)
{
    tlVectorChannel* channel = NULL;

    switch (ch->ID())
    {
        case Pure3D::Animation::ChannelData::VECTOR_1DOF :
        {
            tlVector1DOFChannelChunk* channelChunk = dynamic_cast<tlVector1DOFChannelChunk*> (ch);
            assert( channelChunk );
            assert( channelChunk->Version() == VECTOR1DOF_CHANNEL_VERSION);

            unsigned int numFrames = channelChunk->GetNumFrames();
            unsigned short* tempFrames = channelChunk->GetFrames();
            float* tempValues = channelChunk->GetValues();

            channel = new tlVectorChannel;
            channel->SetNumKeys(channelChunk->GetNumFrames());

            for (unsigned i = 0; i < numFrames; i++)
            {
                tlPoint currValue = channelChunk->GetConstants();

                switch(channelChunk->Mapping())
                {
                    case 0:
                    {
                        currValue.x = tempValues[i];
                        break;
                    }
                    case 1:
                    {
                        currValue.y = tempValues[i];
                        break;
                    }
                    case 2:
                    {
                        currValue.z = tempValues[i];
                        break;
                    }
                }
                channel->SetKey(i,tempFrames[i],currValue);
            }

            int subChunkCount = ch->SubChunkCount();
            for (int j = 0; j < subChunkCount; j++)
            {
                tlDataChunk* subChunk = ch->GetSubChunk(j);
                switch (subChunk->ID())
                {
                    case Pure3D::Animation::ChannelData::INTERPOLATION_MODE:
                    {
                        tlChannelInterpolationModeChunk* modeChunk = dynamic_cast<tlChannelInterpolationModeChunk*> (subChunk);
                        assert( modeChunk );
                        assert( modeChunk->Version() == INTERPOLATION_MODE_VERSION);
                        channel->EnableInterpolation(modeChunk->Interpolate()==1);
                        break;
                    }
                    default:
                        break;
                }
            }
            break;
        }
        case Pure3D::Animation::ChannelData::VECTOR_2DOF :
        {
            tlVector2DOFChannelChunk* channelChunk = dynamic_cast<tlVector2DOFChannelChunk*> (ch);
            assert( channelChunk );
            assert( channelChunk->Version() == VECTOR2DOF_CHANNEL_VERSION);

            unsigned int numFrames = channelChunk->GetNumFrames();
            unsigned short* tempFrames = channelChunk->GetFrames();
            const tlPoint2D* tempValues = channelChunk->GetValues();

            channel = new tlVectorChannel;
            channel->SetNumKeys(channelChunk->GetNumFrames());

            for (unsigned i = 0; i < numFrames; i++)
            {
                tlPoint currValue = channelChunk->GetConstants();
                switch(channelChunk->Mapping())
                {
                    case 0:
                    {
                        currValue.y = tempValues[i].x;
                        currValue.z = tempValues[i].y;
                        break;
                    }
                    case 1:
                    {
                        currValue.x = tempValues[i].x;
                        currValue.z = tempValues[i].y;
                        break;
                    }
                    case 2:
                    {
                        currValue.x = tempValues[i].x;
                        currValue.y = tempValues[i].y;
                        break;
                    }
                }
                channel->SetKey(i,tempFrames[i],currValue);
            }

            int subChunkCount = ch->SubChunkCount();
            for (int j = 0; j < subChunkCount; j++)
            {
                tlDataChunk* subChunk = ch->GetSubChunk(j);
                switch (subChunk->ID())
                {
                    case Pure3D::Animation::ChannelData::INTERPOLATION_MODE:
                    {
                        tlChannelInterpolationModeChunk* modeChunk = dynamic_cast<tlChannelInterpolationModeChunk*> (subChunk);
                        assert( modeChunk );
                        assert( modeChunk->Version() == INTERPOLATION_MODE_VERSION);
                        channel->EnableInterpolation(modeChunk->Interpolate()==1);
                        break;
                    }
                    default:
                        break;
                }
            }
            break;
        }
        case Pure3D::Animation::ChannelData::VECTOR_3DOF :
        {
            tlVector3DOFChannelChunk* channelChunk = dynamic_cast<tlVector3DOFChannelChunk*> (ch);
            assert( channelChunk );
            assert( channelChunk->Version() == VECTOR3DOF_CHANNEL_VERSION);

            channel = new tlVectorChannel;
            channel->SetKeys(channelChunk->GetNumFrames(),(const short*)channelChunk->GetFrames(),channelChunk->GetValues());

            int subChunkCount = ch->SubChunkCount();
            for (int i = 0; i < subChunkCount; i++)
            {
                tlDataChunk* subChunk = ch->GetSubChunk(i);
                switch (subChunk->ID())
                {
                    case Pure3D::Animation::ChannelData::INTERPOLATION_MODE:
                    {
                        tlChannelInterpolationModeChunk* modeChunk = dynamic_cast<tlChannelInterpolationModeChunk*> (subChunk);
                        assert( modeChunk );
                        assert( modeChunk->Version() == INTERPOLATION_MODE_VERSION);
                        channel->EnableInterpolation(modeChunk->Interpolate()==1);
                        break;
                    }
                    default:
                        break;
                }
            }
            break;
        }
        case P3D_CHANNEL_STATIC :
        {
            tlChannelStaticVectorChunk16* channelChunk = dynamic_cast<tlChannelStaticVectorChunk16*> (ch);
            assert( channelChunk );

            channel = new tlVectorChannel;
            channel->AddKey(0,tlPoint(channelChunk->GetX(),channelChunk->GetY(),channelChunk->GetZ()));
            break;
        }
        case P3D_CHANNEL_1DOF :
        {
            tlChannel1DOFChunk16* channelChunk = dynamic_cast<tlChannel1DOFChunk16*> (ch);
            assert( channelChunk );

            unsigned int numFrames = channelChunk->GetNumKeys();
            unsigned short* tempFrames = channelChunk->GetTimeIndex();
            float* tempValues = channelChunk->GetFrames();
            tlPoint tempConstants = tlPoint(channelChunk->GetConstants());

            channel = new tlVectorChannel;
            channel->SetNumKeys(numFrames);

            for (unsigned i = 0; i < numFrames; i++)
            {
                channel->frames[i] = tempFrames[i];
                channel->values[i] = tempConstants;
                switch(channelChunk->GetMapping())
                {
                    case 0 :
                    {
                        channel->values[i].x = tempValues[i];
                        break;
                    }
                    case 1 :
                    {
                        channel->values[i].y = tempValues[i];
                        break;
                    }
                    case 2 :
                    {
                        channel->values[i].z = tempValues[i];
                        break;
                    }
                }
            }
            break;
        }
        case P3D_CHANNEL_3DOF :
        {
            tlChannel3DOFChunk16* channelChunk = dynamic_cast<tlChannel3DOFChunk16*> (ch);
            assert( channelChunk );

            unsigned int numFrames = channelChunk->GetNumKeys();
            unsigned short* tempFrames = channelChunk->GetTimeIndex();
            tlTransKeyData* tempValues = channelChunk->GetFrames();

            channel = new tlVectorChannel;
            channel->SetNumKeys(numFrames);

            for (unsigned i = 0; i < numFrames; i++)
            {
                channel->frames[i] = tempFrames[i];
                channel->values[i].x = tempValues[i].x;
                channel->values[i].y = tempValues[i].y;
                channel->values[i].z = tempValues[i].z;
            }
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    return channel;
}

tlQuaternionChannel*
tlChannelManager::LoadInToQuaternionChannel(tlDataChunk* ch)
{
    tlQuaternionChannel* channel = NULL;

    switch (ch->ID())
    {
        case Pure3D::Animation::ChannelData::QUATERNION :
        {
            tlQuaternionChannelChunk* channelChunk = dynamic_cast<tlQuaternionChannelChunk*> (ch);
            assert( channelChunk );
            assert( channelChunk->Version() == QUATERNION_CHANNEL_VERSION);

            channel = new tlQuaternionChannel;
            channel->SetKeys(channelChunk->GetNumFrames(),(const short*)channelChunk->GetFrames(),channelChunk->GetValues());

            int subChunkCount = ch->SubChunkCount();
            for (int i = 0; i < subChunkCount; i++)
            {
                tlDataChunk* subChunk = ch->GetSubChunk(i);
                switch (subChunk->ID())
                {
                    case Pure3D::Animation::ChannelData::QUATERNION_FORMAT:
                    {
                        tlQuaternionFormatChunk* formatChunk = dynamic_cast<tlQuaternionFormatChunk*> (subChunk);
                        assert( formatChunk );
                        assert( formatChunk->Version() == QUATERNION_FORMAT_VERSION);
                        channel->SetFormat(formatChunk->Format());
                        break;
                    }
                    case Pure3D::Animation::ChannelData::INTERPOLATION_MODE:
                    {
                        tlChannelInterpolationModeChunk* modeChunk = dynamic_cast<tlChannelInterpolationModeChunk*> (subChunk);
                        assert( modeChunk );
                        assert( modeChunk->Version() == INTERPOLATION_MODE_VERSION);
                        channel->EnableInterpolation(modeChunk->Interpolate()==1);
                        break;
                    }
                    default:
                        break;
                }
            }
            break;
        }
        case Pure3D::Animation::ChannelData::COMPRESSED_QUATERNION :
        {
            tlCompressedQuaternionChannelChunk* channelChunk = dynamic_cast<tlCompressedQuaternionChannelChunk*> (ch);
            assert( channelChunk );
            assert( channelChunk->Version() == COMPRESSED_QUATERNION_CHANNEL_VERSION);

            channel = new tlQuaternionChannel;
            channel->SetNumKeys(channelChunk->GetNumFrames());
            for ( unsigned int i = 0; i < channelChunk->GetNumFrames(); i++ )
            {
                channel->SetKey(i,channelChunk->GetFrames()[i],channelChunk->GetValues()[i].UnCompress());
            }

            int subChunkCount = ch->SubChunkCount();
            for (int c = 0; c < subChunkCount; c++)
            {
                tlDataChunk* subChunk = ch->GetSubChunk(c);
                switch (subChunk->ID())
                {
                    case Pure3D::Animation::ChannelData::INTERPOLATION_MODE:
                    {
                        tlChannelInterpolationModeChunk* modeChunk = dynamic_cast<tlChannelInterpolationModeChunk*> (subChunk);
                        assert( modeChunk );
                        assert( modeChunk->Version() == INTERPOLATION_MODE_VERSION);
                        channel->EnableInterpolation(modeChunk->Interpolate()==1);
                        break;
                    }
                    default:
                        break;
                }
            }
            break;
        }
        case P3D_CHANNEL_STATIC_ANGLE :
        {
            tlChannelStaticAngleChunk16* channelChunk = dynamic_cast<tlChannelStaticAngleChunk16*> (ch);
            assert( channelChunk );

            channel = new tlQuaternionChannel;
            channel->AddKey(0,EulerToQuat(tlPoint(channelChunk->GetX(), channelChunk->GetY(), channelChunk->GetZ())));
            break;
        }
        case P3D_CHANNEL_1DOF_ANGLE :
        {
            tlChannel1DOFAngleChunk16* channelChunk = dynamic_cast<tlChannel1DOFAngleChunk16*> (ch);
            assert( channelChunk );

            unsigned int numFrames = channelChunk->GetNumKeys();
            unsigned short* tempFrames = channelChunk->GetTimeIndex();
            unsigned short* tempValues = channelChunk->GetFrames();
            float* tempConstants = channelChunk->GetConstants();

            channel = new tlQuaternionChannel;
            channel->SetNumKeys(numFrames);

            float angle[3];
            angle[0] = tempConstants[0];
            angle[1] = tempConstants[1];
            angle[2] = tempConstants[2];

            for (unsigned i = 0; i < numFrames; i++)
            {
                angle[channelChunk->GetMapping()] = ANGLE2RAD(tempValues[i]);
                channel->frames[i] = tempFrames[i];
                channel->values[i] = EulerToQuat(tlPoint(angle[0],angle[1],angle[2]));
            }
            break;
        }
        case P3D_CHANNEL_3DOF_ANGLE :
        {
            tlChannel3DOFAngleChunk16* channelChunk = dynamic_cast<tlChannel3DOFAngleChunk16*> (ch);
            assert( channelChunk );

            unsigned int numFrames = channelChunk->GetNumKeys();
            unsigned short* tempFrames = channelChunk->GetTimeIndex();
            unsigned long* tempValues = channelChunk->GetFrames();

            channel = new tlQuaternionChannel;
            channel->SetNumKeys(numFrames);

            for (unsigned i = 0; i < numFrames; i++)
            {
                channel->frames[i] = tempFrames[i];
                tlPoint angle(ANGLE2RAD(KEYGETX(tempValues[i])), ANGLE2RAD(KEYGETY(tempValues[i])), ANGLE2RAD(KEYGETZ(tempValues[i])));
                channel->values[i] = EulerToQuat(angle);
            }
            break;
        }
        case P3D_CHANNEL_QUATERNION :
        {
            tlChannelQuaternionChunk16* channelChunk = dynamic_cast<tlChannelQuaternionChunk16*> (ch);
            assert( channelChunk );

            unsigned int numFrames = channelChunk->GetNumKeys();
            unsigned short* tempFrames = channelChunk->GetTimeIndex();
            tlQuatKeyData* tempValues = channelChunk->GetFrames();

            channel = new tlQuaternionChannel;
            channel->SetNumKeys(numFrames);

            for (unsigned i = 0; i < numFrames; i++)
            {
                channel->frames[i] = tempFrames[i];
                channel->values[i].x = tempValues[i].x;
                channel->values[i].y = tempValues[i].y;
                channel->values[i].z = tempValues[i].z;
                channel->values[i].w = tempValues[i].w;
            }
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    return channel;
}

tlStringChannel*
tlChannelManager::LoadInToStringChannel(tlDataChunk* ch)
{
    tlStringChannel* channel = NULL;

    switch (ch->ID())
    {
        case Pure3D::Animation::ChannelData::STRING :
        {
            tlStringChannelChunk* channelChunk = dynamic_cast<tlStringChannelChunk*> (ch);
            assert( channelChunk );
            assert( channelChunk->Version() == STRING_CHANNEL_VERSION);

            unsigned int numFrames = channelChunk->GetNumFrames();
            unsigned short* tempFrames = channelChunk->GetFrames();
            const char** tempValues = (const char**)channelChunk->GetValues();

            channel = new tlStringChannel;
            channel->SetNumKeys(numFrames);

            for (unsigned i = 0; i < numFrames; i++)
            {
                channel->frames[i] = tempFrames[i];
                channel->values[i] = tempValues[i];
            }
            break;
        }
        case Pure3D::Animation::ChannelData::ENTITY :
        {
            tlEntityChannelChunk* channelChunk = dynamic_cast<tlEntityChannelChunk*> (ch);
            assert( channelChunk );
            assert( channelChunk->Version() == ENTITY_CHANNEL_VERSION);

            unsigned int numFrames = channelChunk->GetNumFrames();
            unsigned short* tempFrames = channelChunk->GetFrames();
            const char** tempValues = (const char**)channelChunk->GetValues();

            channel = new tlStringChannel;
            channel->SetIsEntityChannel(true);
            channel->SetNumKeys(numFrames);

            for (unsigned i = 0; i < numFrames; i++)
            {
                channel->frames[i] = tempFrames[i];
                channel->values[i] = tempValues[i];
            }
            break;
        }
        case P3D_ENTITY_ANIM_CHANNEL :
        {
            tlEntityChannelChunk16* channelChunk = dynamic_cast<tlEntityChannelChunk16*> (ch);
            assert( channelChunk );

            unsigned int numFrames = channelChunk->GetNumFrames();
            unsigned short* tempFrames = channelChunk->GetTimes();
            char** tempValues = channelChunk->GetNames();

            channel = new tlStringChannel;
            channel->SetIsEntityChannel(true);
            channel->SetNumKeys(numFrames);

            for (unsigned i = 0; i < numFrames; i++)
            {
                channel->frames[i] = tempFrames[i];
                channel->values[i] = tempValues[i];
            }
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    return channel;
}

tlBoolChannel*
tlChannelManager::LoadInToBoolChannel(tlDataChunk* ch)
{
    tlBoolChannel* channel = NULL;

    switch (ch->ID())
    {
        case Pure3D::Animation::ChannelData::BOOL :
        {
            tlBoolChannelChunk* channelChunk = dynamic_cast<tlBoolChannelChunk*> (ch);
            assert( channelChunk );
            assert( channelChunk->Version() == BOOL_CHANNEL_VERSION);

            unsigned int numFrames = channelChunk->GetNumFrames();
            unsigned short* tempValues = channelChunk->GetValues();
            bool currState = (channelChunk->GetStartState()==1);

            short* frames;
            bool* values;

            if (tempValues[0]!=0)
            {
                numFrames++;
                frames = new short[numFrames];
                values = new bool[numFrames];

                frames[0] = 0;
                values[0] = currState;

                for (unsigned i = 1; i < numFrames; i++)
                {
                    currState = !currState;
                    frames[i] = tempValues[i-1];
                    values[i] = currState;
                }
            }
            else
            {
                frames = new short[numFrames];
                values = new bool[numFrames];
                for (unsigned i = 0; i < numFrames; i++)
                {
                    currState = !currState;
                    frames[i] = tempValues[i];
                    values[i] = currState;
                }
            }

            channel = new tlBoolChannel;
            channel->SetKeys(numFrames,frames,values);

            delete [] frames;
            delete [] values;

            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    return channel;
}

tlColourChannel*
tlChannelManager::LoadInToColourChannel(tlDataChunk* ch)
{
    tlColourChannel* channel = NULL;

    switch (ch->ID())
    {
        case Pure3D::Animation::ChannelData::COLOUR :
        {
            tlColourChannelChunk* channelChunk = dynamic_cast<tlColourChannelChunk*> (ch);
            assert( channelChunk );
            assert( channelChunk->Version() == COLOUR_CHANNEL_VERSION);

            unsigned short* frames = channelChunk->GetFrames();
            unsigned long* colours = (unsigned long*)channelChunk->GetValues();

            channel = new tlColourChannel;
            channel->SetNumKeys(channelChunk->GetNumFrames());

            for (unsigned i = 0; i < channelChunk->GetNumFrames(); i++)
            {
                channel->SetKey(i,frames[i],tlColour(colours[i]));
            }

            int subChunkCount = ch->SubChunkCount();
            for (int j = 0; j < subChunkCount; j++)
            {
                tlDataChunk* subChunk = ch->GetSubChunk(j);
                switch (subChunk->ID())
                {
                    case Pure3D::Animation::ChannelData::INTERPOLATION_MODE:
                    {
                        tlChannelInterpolationModeChunk* modeChunk = dynamic_cast<tlChannelInterpolationModeChunk*> (subChunk);
                        assert( modeChunk );
                        assert( modeChunk->Version() == INTERPOLATION_MODE_VERSION);
                        channel->EnableInterpolation(modeChunk->Interpolate()==1);
                        break;
                    }
                    default:
                        break;
                }
            }
            break;
        }
        case P3D_KEYLIST_COLOUR :
        {
            tlKeyListColourChunk16* channelChunk = dynamic_cast<tlKeyListColourChunk16*> (ch);
            assert( channelChunk );

            unsigned int numFrames = channelChunk->GetNumKeys();
            unsigned short* tempFrames = channelChunk->GetFrames();
            unsigned long* tempValues = channelChunk->GetKeys();

            channel = new tlColourChannel;
            channel->SetNumKeys(numFrames);

            for (unsigned i = 0; i < numFrames; i++)
            {
                channel->frames[i] = tempFrames[i];
                channel->values[i] = tlColour(tempValues[i]);
            }
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    return channel;
}


