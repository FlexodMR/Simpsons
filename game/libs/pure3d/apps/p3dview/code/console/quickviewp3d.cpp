//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"quickviewp3d.hpp"
#include"p3d/pure3d.hpp"

namespace Console
{

QuickViewP3D::QuickViewP3D(Buffer* b)
{
    buffer = b;
}

QuickViewP3D::~QuickViewP3D()
{
}

void QuickViewP3D::Display(void)
{
    p3d::pddi->DrawString(buffer->GetLine(buffer->GetNumLines()-1), 5, p3d::display->GetHeight() - 30, tColour(0,255,0));
}

}
