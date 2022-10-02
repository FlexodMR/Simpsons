#ifndef _SOUNDPLAYER_HPP_
#define _SOUNDPLAYER_HPP_

#include "simcommon/tarray.hpp"
#include "soundmanager.hpp"
#include "simcollision/collisionanalyser.hpp"

//this class is the bridge between the collision analyser
//and the sound system.
class SoundPlayer {
public:
    class Sound {
    public:
        Sound();
        Sound(sim::CollisionAnalyserDataUID mUID);
        sim::CollisionAnalyserDataUID mUID;
        IRadSoundClipPlayer *mPlayerSliding;
        IRadSoundClipPlayer *mPlayerRolling;
        IRadSoundClipPlayer *mPlayerSpinning;
        bool Idle(void);
    };
    SoundPlayer(SoundManager *newManager);
    void UpdateSounds(sim::CollisionAnalyserDataPList& collisionData);
    void ProcessSounds(sim::CollisionAnalyserData& data);
    void ProcessInstantaneousSounds(sim::CollisionAnalyserData& data, Sound *sound);
    void ProcessContinuousSounds(sim::CollisionAnalyserData& data, Sound *sound);
    Sound *GetSoundFor(sim::CollisionAnalyserDataUID UID);
    void RemoveSoundFor(sim::CollisionAnalyserDataUID UID);
    void RemoveAllSound();

protected:
    SoundManager *mManager;
    sim::TArray<Sound> mSound;

    void ReleaseClipPlayer();
    sim::TList<IRadSoundClipPlayer*> mListPlayerToRelease;
};

#endif