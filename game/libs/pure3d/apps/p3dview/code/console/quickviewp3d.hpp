//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"interface.hpp"

namespace Console
{

class QuickViewP3D : public View
{
public:
    QuickViewP3D(Buffer* buffer);
    ~QuickViewP3D();

    void Display(void); 

    void SetBuffer(Buffer* b) { buffer = b;}

private:
    Buffer* buffer;
};

}
