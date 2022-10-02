#include <tlAnimCollDSGChunk.hpp>
//custom list class,stores the address of AnimCollDSGDSG in a array
class tlAnimCollDSGChunkWrapper
{
public:
    tlAnimCollDSGChunkWrapper( void )
        :
    mpChunk( 0 ),
    mSkins( 0 ),
    mpSkinList( 0 ),
    mProps( 0 ),
    mpPropList( 0 ),
    mEffects( 0 ),
    mpEffectList( 0 ),
    mpFrameControllerList( 0 ),
    mFrameControllerCount( 0 ),
    mbHasFrameController( false ),
    mbHasCollisionObject( false )
    {
        // It's just pointers.
        //
        mpFrameControllerList = new tlFrameControllerChunk*[ MAX_FRAME_CONTROLLERS ];
    }

    ~tlAnimCollDSGChunkWrapper( void )
    {
        if ( mpSkinList )
        {
            delete [] mpSkinList;
            mpSkinList = 0;
            mSkins = 0;
        }
        if ( mpPropList )
        {
            delete [] mpPropList;
            mpPropList = 0;
            mProps = 0;
        }
        if ( mpEffectList )
        {
            delete [] mpEffectList;
            mpEffectList = 0;
            mEffects = 0;
        }
        if ( mpFrameControllerList )
        {
            delete [] mpFrameControllerList;
            mpFrameControllerList = 0;
            mFrameControllerCount = 0;
        }
    }
    void FoundFrameController( void )
    {
        mbHasFrameController = true;
    }
    void AddFrameController( tlFrameControllerChunk* pChunk )
    {
        mpFrameControllerList[ mFrameControllerCount++ ] = pChunk;
    }
    bool HasFrameController( void ) const
    {
        return mbHasFrameController;
    }
    void FoundCollisionObject( void ) 
    {
        mbHasCollisionObject = true;
    }
    bool HasCollisionObject( void ) const
    {
        return mbHasCollisionObject;
    }
    tlAnimCollDSGChunk* GetChunk( void ) const
    {
        return mpChunk;
    }
    void SetChunk( tlAnimCollDSGChunk* pChunk )
    {
        mpChunk = pChunk;
    }

    tlAnimCollDSGChunk* mpChunk;
    int mSkins;
    tlCompositeDrawableSkinChunk16** mpSkinList;
    int mProps;
    tlCompositeDrawablePropChunk16** mpPropList;
    int mEffects;
    tlCompositeDrawableEffectChunk16** mpEffectList;
    
    enum
    {
        MAX_FRAME_CONTROLLERS = 128
    };
    tlFrameControllerChunk** mpFrameControllerList;
    int mFrameControllerCount;
    bool mbHasFrameController;
    bool mbHasCollisionObject;
};
static const int MAX_DYNA_DSG = 50;
class AnimCollDSGList 
{
	public:
		AnimCollDSGList();
		~AnimCollDSGList();
        int add(tlAnimCollDSGChunk*  p_anim);
        unsigned int getindexcount(void);
        tlAnimCollDSGChunkWrapper* getanim(const char * name);
        tlAnimCollDSGChunkWrapper* getbyindex(unsigned int index);
        int verifychunks(void);     
        tlAnimCollDSGChunkWrapper* GetCurrent( void );
        tlAnimCollDSGChunkWrapper* FindFrameController(const char * name);
	private:
        tlAnimCollDSGChunkWrapper mp_list[ MAX_DYNA_DSG ];
        unsigned int mindex;

        
};