#include <cstring>
#include <stdio.h>
#include "AnimDSGList.hpp"


AnimDSGList::AnimDSGList ()
{
    mindex =0;
}

AnimDSGList::~AnimDSGList ()
{

}
/*
==============================================================================
AnimDSGList::getanim
==============================================================================
Description:    input DynaDSG name and it should return a pointer to the dsg or null if failure

Parameters:     (const char * name)

Return:         tlAnimDSGChunkWrapper

=============================================================================
*/
tlAnimDSGChunkWrapper* AnimDSGList::getanim(const char * name)
{
    
    //search the array for the name.
    for(unsigned int i=0;i<mindex;i++)
    {
        //printf("    Searching for %s, against %s\n",name,mp_list[i].GetName());
        //if we find it return pointer otherwise it will return null by default 
        if ( 0 == strcmp ( mp_list[i].GetChunk( )->GetName(),name) )
        {
            return( &mp_list[i] );
        }
        int j;
        for ( j = 0; j < mp_list[i].mSkins; j++ )
        {
            if ( 0 == strcmp( mp_list[ i ].mpSkinList[ j ]->Name(), name ) )
            {
                return( &mp_list[i] ); 
            }
        }
        for ( j = 0; j < mp_list[i].mProps; j++ )
        {
            if ( 0 == strcmp( mp_list[ i ].mpPropList[ j ]->Name(), name ) )
            {
                return( &mp_list[i] ); 
            }
        }
        for ( j = 0; j < mp_list[i].mEffects; j++ )
        {
            if ( 0 == strcmp( mp_list[ i ].mpEffectList[ j ]->Name(), name ) )
            {
                return( &mp_list[i] ); 
            }
        }
    }
    return NULL;

}
/*
==============================================================================
AnimDSGList::FindFrameController
==============================================================================
Description:    Comment

Parameters:     (const char * name)

Return:         tlAnimDSGChunkWrapper

=============================================================================
*/
tlAnimDSGChunkWrapper* AnimDSGList::FindFrameController(const char * name)
{
    //search the array for the name.
    for(unsigned int i = 0; i < mindex; i++ )
    {
        int j;
        for ( j = 0; j < mp_list[i].mFrameControllerCount; j++ )
        {
            if ( 0 == strcmp( mp_list[ i ].mpFrameControllerList[ j ]->Name(), name ) )
            {
                return( &mp_list[i] ); 
            }
        }
    }
    return NULL;
}
/*
==============================================================================
tlAnimDSGChunkWrapper* GetCurrent
==============================================================================
Description:    Comment

Parameters:     ( void )

Return:         tlAnimDSGChunkWrapper

=============================================================================
*/
tlAnimDSGChunkWrapper* AnimDSGList::GetCurrent( void )
{
    if ( mindex > 0 )
    {
        return &mp_list[mindex - 1];
    }
    return 0;
}
/*
==============================================================================
AnimDSGList::add 
==============================================================================
Description:    Comment

Parameters:     (tlAnimDSGChunk* p_anim)

Return:         int 

=============================================================================
*/
int AnimDSGList::add (tlAnimDSGChunk* p_anim)
{
    if(mindex < MAX_DYNA_DSG -1)
    {
        mp_list[mindex++].SetChunk( p_anim );
        return 0;
    }
    else
    {
        return 1;
    }

}


tlAnimDSGChunkWrapper* AnimDSGList::getbyindex(unsigned int index)
{
	//check if index is valid
	if ((index >= 0) && (index < mindex))
	{
		return &mp_list[index];
	}
	else
	{
		return NULL;
	}
}

unsigned int AnimDSGList::getindexcount (void)
{
	return mindex;
}

int AnimDSGList::verifychunks(void)
{
	bool badart = false;

	for (unsigned int i=0;i<mindex;i++)
	{
		if( !mp_list[i].HasFrameController() )
		{
			printf("ERROR: %s is missing FrameController Chunk!\n",mp_list[i].GetChunk()->GetName());
			badart = true;
		}
	}
	
	if (badart == true)
	{
		return -1;
	}
	return 0;
}


