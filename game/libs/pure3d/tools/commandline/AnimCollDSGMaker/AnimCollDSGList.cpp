#include <cstring>
#include <stdio.h>
#include "AnimCollDSGList.hpp"


AnimCollDSGList::AnimCollDSGList ()
{
    mindex =0;
}

AnimCollDSGList::~AnimCollDSGList ()
{

}
/*
==============================================================================
AnimCollDSGList::getanim
==============================================================================
Description:    input DynaDSG name and it should return a pointer to the dsg or null if failure

Parameters:     (const char * name)

Return:         tlAnimCollDSGChunkWrapper

=============================================================================
*/
tlAnimCollDSGChunkWrapper* AnimCollDSGList::getanim(const char * name)
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
AnimCollDSGList::FindFrameController
==============================================================================
Description:    Comment

Parameters:     (const char * name)

Return:         tlAnimCollDSGChunkWrapper

=============================================================================
*/
tlAnimCollDSGChunkWrapper* AnimCollDSGList::FindFrameController(const char * name)
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
tlAnimCollDSGChunkWrapper* GetCurrent
==============================================================================
Description:    Comment

Parameters:     ( void )

Return:         tlAnimCollDSGChunkWrapper

=============================================================================
*/
tlAnimCollDSGChunkWrapper* AnimCollDSGList::GetCurrent( void )
{
    if ( mindex > 0 )
    {
        return &mp_list[mindex - 1];
    }
    return 0;
}
/*
==============================================================================
AnimCollDSGList::add 
==============================================================================
Description:    Comment

Parameters:     (tlAnimCollDSGChunk* p_anim)

Return:         int 

=============================================================================
*/
int AnimCollDSGList::add (tlAnimCollDSGChunk* p_anim)
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


tlAnimCollDSGChunkWrapper* AnimCollDSGList::getbyindex(unsigned int index)
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

unsigned int AnimCollDSGList::getindexcount (void)
{
	return mindex;
}

int AnimCollDSGList::verifychunks(void)
{
	bool badart = false;

	for (unsigned int i=0;i<mindex;i++)
	{
		if( !mp_list[i].HasFrameController() )
		{
			printf("ERROR: %s is missing FrameController Chunk!\n",mp_list[i].GetChunk()->GetName());
			badart = true;
		}
        else if ( !mp_list[ i ].HasCollisionObject() )
        {
			printf("ERROR: %s is missing CollisionObject Chunk!\n",mp_list[i].GetChunk()->GetName());
			badart = true;
        }
	}
	
	if (badart == true)
	{
		return -1;
	}
	return 0;
}


