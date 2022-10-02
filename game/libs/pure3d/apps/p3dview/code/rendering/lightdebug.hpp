//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _LIGHTDEBUG_HPP_
#define _LIGHTDEBUG_HPP_

class tLightGroup;
class tShader;
class tCamera;

// displays "debug" representations of the supplied light group
class LightDebug
{
public:
   LightDebug();
   ~LightDebug();

   void SetLightGroup(tLightGroup*);
   void SetCamera(tCamera*);
   void Display(void);

protected:
   tLightGroup* lightGroup;
   tCamera* camera;
   tShader* shader;

};


#endif