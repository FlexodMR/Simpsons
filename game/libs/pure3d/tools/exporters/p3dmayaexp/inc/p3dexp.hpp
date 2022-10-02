//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef P3DEXP_HPP_
#define P3DEXP_HPP_

#ifdef WIN32
#ifdef COMPILING_EXPORTER
#define P3DEXPORT __declspec(dllexport)
#else
#define P3DEXPORT __declspec(dllimport)
#endif
#else
#define P3DEXPORT
#endif

#endif // P3DEXP_H_

