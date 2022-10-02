#include <tlAnimDSGChunk.hpp>
//custom list class,stores the address of AnimDSGDSG in a array
class tlAnimDSGChunkWrapper
{
public:
    tlAnimDSGChunkWrapper( void )
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
    mbHasisionObject( false )
    {
        // It's just pointers.
        //
        mpFrameControllerList = new tlFrameControllerChunk*[ MAX_FRAME_CONTROLLERS ];
    }

    ~tlAnimDSGChunkWrapper( void )
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
    void FoundisionObject( void ) 
    {
        mbHasisionObject = true;
    }
    bool HasisionObject( void ) const
    {
        return mbHasisionObject;
    }
    tlAnimDSGChunk* GetChunk( void ) const
    {
        return mpChunk;
    }
    void SetChunk( tlAnimDSGChunk* pChunk )
    {
        mpChunk = pChunk;
    }

    tlAnimDSGChunk* mpChunk;
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
    bool mbHasisionObject;
};
static const int MAX_DYNA_DSG = 50;
class AnimDSGList 
{
	public:
		AnimDSGList();
		~AnimDSGList();
        int add(tlAnimDSGChunk*  p_anim);
        unsigned int getindexcount(void);
        tlAnimDSGChunkWrapper* getanim(const char * name);
        tlAnimDSGChunkWrapper* getbyindex(unsigned int index);
        int verifychunks(void);     
        tlAnimDSGChunkWrapper* GetCurrent( void );
        tlAnimDSGChunkWrapper* FindFrameController(const char * name);
	private:
        tlAnimDSGChunkWrapper mp_list[ MAX_DYNA_DSG ];
        unsigned int mindex;

        
};