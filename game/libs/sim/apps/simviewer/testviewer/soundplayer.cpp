#include "soundplayer.hpp"
#include "soundmanager.hpp"
#include "simcollision/collisionanalysertranslator.hpp"

SoundPlayer::Sound::Sound()
:mUID(0, 0, 0, 0),
mPlayerSliding(NULL),
mPlayerRolling(NULL),
mPlayerSpinning(NULL)
{
}

SoundPlayer::Sound::Sound(sim::CollisionAnalyserDataUID UID)
:mUID(UID),
mPlayerSliding(NULL),
mPlayerRolling(NULL),
mPlayerSpinning(NULL)
{
}

bool SoundPlayer::Sound::Idle(void)
{
    if(mPlayerSliding == NULL && mPlayerRolling == NULL && mPlayerSpinning == NULL)
        return true;
    return false;
}

SoundPlayer::SoundPlayer(SoundManager *newManager)
:mManager(newManager),
mSound(20)
{
}

void SoundPlayer::UpdateSounds(sim::CollisionAnalyserDataPList& collisionData)
{
    for(int i = 0; i < collisionData.GetSize(); i++)
        ProcessSounds(*collisionData[i]);

    ReleaseClipPlayer();

    // hack.... should find the real leak instead....
    if (collisionData.GetSize() == 0 && mListPlayerToRelease.GetSize() == 0)
    {
        IRadSoundClipPlayer* player = mManager->GetClipPlayerInUse();
        if (player)
        {
            mListPlayerToRelease.Add(player);
        }
    }
}

void SoundPlayer::ProcessSounds(sim::CollisionAnalyserData& data)
{
    sim::CollisionAnalyserDataUID UID = data.GetUID();
    Sound *sound = GetSoundFor(UID);

    if(sound) {
        ProcessInstantaneousSounds(data, sound);
        ProcessContinuousSounds(data, sound);
        if(sound->Idle())
            RemoveSoundFor(UID);
    }

    data.Processed();
}

#define simSoundVolumeChangeThreshold (radSoundVolumeChangeThreshold * 0.95f)


void SoundPlayer::ReleaseClipPlayer()
{
    bool needcompact = false;

    for (int i=0; i<mListPlayerToRelease.GetSize(); ++i)
    {
        IRadSoundClipPlayer* player = mListPlayerToRelease[i];
        float volume = player->GetVolume();
        if (volume > radSoundVolumeChangeThreshold)
        {
            player->SetVolume(volume-simSoundVolumeChangeThreshold);
        }
        else
        {
            player->SetVolume(0);
            player->Stop();
            mManager->ReleaseClipPlayer(player);
            mListPlayerToRelease.GetAt(i) = NULL;
            needcompact = true;
        }
    }
    if (needcompact)
        mListPlayerToRelease.Compact();
}

float GetNewVolume(float oldVolume, float newVolume)
{
    if (rmt::Fabs(newVolume-oldVolume) >= radSoundVolumeChangeThreshold)
    {
        if (newVolume > oldVolume)
            return oldVolume + simSoundVolumeChangeThreshold;
        else
            return oldVolume - simSoundVolumeChangeThreshold;
    }
    else
    {
        return newVolume;
    }
}

void SoundPlayer::ProcessInstantaneousSounds(sim::CollisionAnalyserData& data, Sound *sound)
{
    if(!sound)
        return;

    for(int i = 0; i < data.mEventList.GetSize(); i++) {
        sim::CollisionAnalyserEvent event = data.mEventList[i];
        switch(event.mEvent) {
            case sim::cCollisionAnalyserEventBounce: {
                IRadSoundClipPlayer *clipPlayer = mManager->GetClipPlayer(3);
                if(clipPlayer) {
                    clipPlayer->Stop();
                    clipPlayer->SetVolume(sim::CollisionAnalyserTranslator::GetBounceSoundVolume(data, event.mInfo));
                    clipPlayer->Play();
                    mManager->ReleaseClipPlayer(clipPlayer);
                }
            } break;
            case sim::cCollisionAnalyserEventStartInteraction: {
                if(data.mPossibleEvent & sim::cCollisionAnalyserPossibleEventSliding)
                    if(sound->mPlayerSliding = mManager->GetClipPlayer(0)) {
                        sound->mPlayerSliding->Stop();
                        sound->mPlayerSliding->SetVolume(0.0f);
                        sound->mPlayerSliding->Play();
                    }
                if(data.mPossibleEvent & sim::cCollisionAnalyserPossibleEventRolling)
                    if(sound->mPlayerRolling = mManager->GetClipPlayer(1)) {
                        sound->mPlayerRolling->Stop();
                        sound->mPlayerRolling->SetVolume(0.0f);
                        sound->mPlayerRolling->Play();
                    }
                if(data.mPossibleEvent & sim::cCollisionAnalyserPossibleEventSpinning)
                    if(sound->mPlayerSpinning = mManager->GetClipPlayer(2)) {
                        sound->mPlayerSpinning->Stop();
                        sound->mPlayerSpinning->SetVolume(0.0f);
                        sound->mPlayerSpinning->Play();
                    }
            } break;
            case sim::cCollisionAnalyserEventEndInteraction: {
                if(sound->mPlayerSliding) {
                    mListPlayerToRelease.Add(sound->mPlayerSliding);
                    sound->mPlayerSliding = NULL;
                }
                if(sound->mPlayerRolling) {
                    mListPlayerToRelease.Add(sound->mPlayerRolling);
                    sound->mPlayerRolling = NULL;
                }
                if(sound->mPlayerSpinning) {
                    mListPlayerToRelease.Add(sound->mPlayerSpinning);
                    sound->mPlayerSpinning = NULL;
                }
            } break;
        }
    }
}

void SoundPlayer::ProcessContinuousSounds(sim::CollisionAnalyserData& data, Sound *sound)
{
    if(!sound)
        return;

    if(data.mInfo.mState == sim::cCollisionAnalyserStateUnknown)
        return;

    if(sound->mPlayerSliding) {
        float volume = GetNewVolume(sound->mPlayerSliding->GetVolume(), 
                                    sim::CollisionAnalyserTranslator::GetSlidingSoundVolume(data, data.mInfo));
        sound->mPlayerSliding->SetVolume(volume);
    }
    if(sound->mPlayerRolling) {
        float volume = GetNewVolume(sound->mPlayerRolling->GetVolume(), 
                                    sim::CollisionAnalyserTranslator::GetRollingASoundVolume(data, data.mInfo));
        sound->mPlayerRolling->SetVolume(volume);
    }
    if(sound->mPlayerSpinning) {
        float volume = GetNewVolume(sound->mPlayerSpinning->GetVolume(), 
                                    sim::CollisionAnalyserTranslator::GetSpinningASoundVolume(data, data.mInfo));
        sound->mPlayerSpinning->SetVolume(volume);
    }
}

SoundPlayer::Sound *SoundPlayer::GetSoundFor(sim::CollisionAnalyserDataUID UID)
{
    int lastIndex = mSound.GetSize();
    for(int i = 0; i < lastIndex; i++) {
        if(UID.Equals(mSound[i].mUID))
            return &mSound[i];
    }

    //no sound found; create a new one
    SoundPlayer::Sound sound(UID);
    mSound.Add(sound);
    return &mSound[lastIndex];
}

void SoundPlayer::RemoveSoundFor(sim::CollisionAnalyserDataUID UID)
{
    for(int i = mSound.GetSize()-1; i >= 0; i--) {
        if(UID.Equals(mSound[i].mUID)) {
            mSound.RemoveAt(i);
            break;
        }
    }
}

void SoundPlayer::RemoveAllSound()
{
    while (mListPlayerToRelease.GetSize() > 0)
    {
        ReleaseClipPlayer();
    }
    for(int i = mSound.GetSize()-1; i >= 0; i--)
    {
        if(mSound[i].mPlayerSliding) {
            mSound[i].mPlayerSliding->Stop();
            mManager->ReleaseClipPlayer(mSound[i].mPlayerSliding);
            mSound[i].mPlayerSliding = NULL;
        }
        if(mSound[i].mPlayerRolling) {
            mSound[i].mPlayerRolling->Stop();
            mManager->ReleaseClipPlayer(mSound[i].mPlayerRolling);
            mSound[i].mPlayerRolling = NULL;
        }
        if(mSound[i].mPlayerSpinning) {
            mSound[i].mPlayerSpinning->Stop();
            mManager->ReleaseClipPlayer(mSound[i].mPlayerSpinning);
            mSound[i].mPlayerSpinning = NULL;
        }
        mSound.RemoveAt(i);
    }
}