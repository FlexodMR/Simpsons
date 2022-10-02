//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        rmvmaker.hpp
//
// Subsystem:	radmovie rmv movie file creation tool
//
// Description:	This file keeps all the global function declarations in on spot
//
//
// Revisions:   July 21, 2002 RWS
//
//=============================================================================

#ifndef RMVMAKER_HPP
#define RMVMAKER_HPP

//=============================================================================
// Included Files
//=============================================================================

#include <radfile.hpp>

//=============================================================================
// Destination Platform: PS2
//=============================================================================

bool rmvProcessSourceVideoHeaderPs2( IRadFile * pIRadFile, RadMovieFileHeader * pRadMovieFileHeader );



#endif // RMVMAKER_HPP