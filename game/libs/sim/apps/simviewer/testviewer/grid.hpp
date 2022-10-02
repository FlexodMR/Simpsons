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
   int size;
   int count;

   void Display(void);

protected:
   tShader* gridMat;
};


#endif
