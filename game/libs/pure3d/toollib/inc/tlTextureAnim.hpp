//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLTEXTUREANIM_HPP_
#define _TLTEXTUREANIM_HPP_

#include "tlChannel.hpp"
#include "tlAnimation.hpp"
#include "tlTable.hpp"

class tlDataChunk;
class tlTexture;
class tlShader;

//*****************************************************************************
// tlTextureAnim
//*****************************************************************************
class tlTextureAnim : public tlAnimation
{
public:
    tlTextureAnim();
    tlTextureAnim(tlDataChunk *ch);
    ~tlTextureAnim();

    tlAnimation* Clone() const;

    virtual void LoadFromChunk16(tlDataChunk *ch);

    void CreateTextureChannel(int numKeys);
    void SetTextureChannel(const tlStringChannel& channel);
    tlStringChannel* GetTextureChannel();
    void DeleteTextureChannel();
      
    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

protected:  
    tlTable<tlTexture*> textures;
};

#endif // _TLTEXTUREANIM_HPP

