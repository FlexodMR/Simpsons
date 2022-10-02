//=============================================================================
// Copyright (c) 2003 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <pddi/gamecube/gcvistest.hpp>


#include <pddi/pddiext.hpp>

gcExtVisibilityTest::gcExtVisibilityTest(gcContext *c) :
mNumPixelsWritten(0)
{
	
}

unsigned gcExtVisibilityTest::MaxIndex(void)
{
    return 1;	
}

void gcExtVisibilityTest::Begin(void)
{
	// We don't want color or z buffer updated, so we disable them.

	// Start logging all writes to the bounding box
	GXDrawDone();
	GXClearBoundingBox();
	

	mNumPixelsWritten = 0;
}

void gcExtVisibilityTest::End(unsigned)
{
	// Wait until drawing is completed
	GXDrawDone();
	unsigned short left, top, right, bottom;
	GXReadBoundingBox(&left, &top, &right, &bottom);
	
	if (left != 1023 || top != 1023 || right != 0 || bottom != 0)
	{
		mNumPixelsWritten = (right - left) * (bottom - top);
	}
	else
	{
		mNumPixelsWritten = 0;
	}


}

unsigned gcExtVisibilityTest::Result(unsigned)
{
	return mNumPixelsWritten;
}

bool gcExtVisibilityTest::CurrentlyTestingVisiblity(void)
{
	return false;
}


gcExtVisibilityTest::~gcExtVisibilityTest(void)
{

}

