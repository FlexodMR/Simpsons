#ifndef _SOUNDMANAGER_HPP_
#define _SOUNDMANAGER_HPP_

#include <radsound.hpp>

const int cNumClips = 10;
const int cNumClipPlayers = 32;

class SoundManager {
public:
    SoundManager();
    ~SoundManager();
    IRadSoundClipPlayer *GetClipPlayer(int whichClip);
    IRadSoundClipPlayer *GetClipPlayer(void);
    void ReleaseClipPlayer(IRadSoundClipPlayer *clipPlayer);
    int NumClipPlayersInUse(void);

    IRadSoundClipPlayer *GetClipPlayerInUse(void);

protected:
    IRadSoundHalMemoryRegion *mMemRegion;
    IRadSoundClipPlayer *mClipPlayer[cNumClipPlayers];
    bool mClipPlayerReserved[cNumClipPlayers];
    IRadSoundRsdFileDataSource *mFileDataSource[cNumClips];
    IRadSoundClip *mClip[cNumClips];
};

#endif