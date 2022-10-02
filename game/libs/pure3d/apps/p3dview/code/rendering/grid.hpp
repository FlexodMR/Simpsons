//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GRID_HPP_
#define _GRID_HPP_

#include<p3d/drawable.hpp>

class Settings;
class Origin;
class tShader;

class Grid : public tDrawable
{
public:
    Grid();
    ~Grid();
    
    void Configure(Settings*);
    void Display(void);

    void ToggleGrid(void)      { on = !on; }
    void ToggleOrigin(void)    { originShow = !originShow; }  
    void SetOrigin(bool newOriginShow) { originShow = newOriginShow; }
    void SetGrid(bool newGridShow) { on = newGridShow; }

protected:
    void DisplayWire(void);
    void DisplaySolid(void);

    bool on;
    bool fog;
    float fogStart;
    float fogEnd;
    int mode;
    float size;
    int count;
    bool solid;

    bool originShow;
    Origin* origin;

    tShader* gridMat;
    tColour colour;
    tColour checker1, checker2;
};


#endif

