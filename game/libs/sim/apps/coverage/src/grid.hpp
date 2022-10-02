#ifndef _GRID_HPP_
#define _GRID_HPP_

#include <p3d/drawable.hpp>
class tShader;

class Grid : public tDrawable
{
public:
    Grid();
    ~Grid();

    int mode;
    float size;
    int count;

    void Display(void);
    void SetColour(int, int, int);

protected:
    tShader* gridMat;
    tColour colour;
};


#endif
