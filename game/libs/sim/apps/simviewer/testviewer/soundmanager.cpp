#include "soundmanager.hpp"

SoundManager::SoundManager()
{
    int i;

    mMemRegion = radSoundHalSystemGet()->GetRootMemoryRegion();
    rAssert(mMemRegion != NULL);
    mMemRegion->AddRef();

    for(i = 0; i < cNumClips; i++) {
        char *filename;
        bool loop;
        //set the file to use
        switch(i) {
        case 0: //slide
            filename = "sound\\slide.rsd";
            loop = true;
            break;
        case 1: //roll
            filename = "sound\\roll.rsd";
            loop = true;
            break;
        case 2: //spin
            filename = "sound\\spin.rsd";
            loop = true;
            break;
        case 3: //bounce
            filename = "sound\\bounce.rsd";
            loop = false;
            break;
        case 4: //bounce2
            filename = "sound\\bounce2.rsd";
            loop = false;
            break;
        default:
            mFileDataSource[i] = NULL;
            mClip[i] = NULL;
            filename = NULL;
        }

        if(!filename)
            continue;

        //create file data source
        mFileDataSource[i] = radSoundRsdFileDataSourceCreate();
        rAssert(mFileDataSource[i] != NULL);
        mFileDataSource[i]->AddRef();
        mFileDataSource[i]->InitializeFromFileName(
            filename, 0, IRadSoundHalAudioFormat::Milliseconds, NULL);

        //create clip using data source
        mClip[i] = radSoundClipCreate();
        rAssert(mClip[i] != NULL);
        mClip[i]->AddRef();
        mClip[i]->Initialize(mFileDataSource[i], mMemRegion, loop, "Identifier");
    }

    for(i = 0; i < cNumClipPlayers; i++) {
        mClipPlayer[i] = radSoundClipPlayerCreate();
        rAssert(mClipPlayer[i] != NULL);
        mClipPlayer[i]->AddRef();
        mClipPlayerReserved[i] = false;
    }
}

SoundManager::~SoundManager()
{
    int i;

    for(i = 0; i < cNumClipPlayers; i++) {
        if(mClipPlayer[i]) {
            mClipPlayer[i]->Stop();
            mClipPlayer[i]->Release();
        }
    }

    for(i = 0; i < cNumClips; i++) {
        if(mClip[i]) {
            mClip[i]->Release();
        }
    }

    for(i = 0; i < cNumClips; i++) {
        if(mFileDataSource[i]) {
            mFileDataSource[i]->Release();
        }
    }

    if(mMemRegion)
        mMemRegion->Release();
}

IRadSoundClipPlayer *SoundManager::GetClipPlayer(int whichClip)
{
    IRadSoundClipPlayer *clipPlayer = GetClipPlayer();
    if(clipPlayer)
        clipPlayer->SetClip(mClip[whichClip]);
    return clipPlayer;
}

IRadSoundClipPlayer *SoundManager::GetClipPlayer(void)
{
    for(int i = 0; i < cNumClipPlayers; i++) {
        IRadSoundClipPlayer *clipPlayer = mClipPlayer[i];

        if(!clipPlayer)
            continue;

        if(!mClipPlayerReserved[i] && !clipPlayer->IsPlaying()) {
            mClipPlayerReserved[i] = true;
            return clipPlayer;
        }
    }
    return NULL;
}

void SoundManager::ReleaseClipPlayer(IRadSoundClipPlayer *clipPlayer)
{
    for(int i = 0; i < cNumClipPlayers; i++) {
        if(mClipPlayer[i] == clipPlayer)
            mClipPlayerReserved[i] = false;
    }
}

int SoundManager::NumClipPlayersInUse(void)
{
    int count = 0;
    for(int i = 0; i < cNumClipPlayers; i++) {
        if(mClipPlayerReserved[i] || mClipPlayer[i]->IsPlaying())
            count++;
    }
    return count;
}

IRadSoundClipPlayer *SoundManager::GetClipPlayerInUse(void)
{
    for(int i = 0; i < cNumClipPlayers; i++) {
        IRadSoundClipPlayer *clipPlayer = mClipPlayer[i];

        if(!clipPlayer)
            continue;

        if(mClipPlayerReserved[i] || clipPlayer->IsPlaying())
            return clipPlayer;
    }
    return NULL;
}
