//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef POLYCOUNTER_HPP
#define POLYCOUNTER_HPP

#include<p3d/utility.hpp>
#include<pddi/pddi.hpp>

class PolyCounter
{
public:
   PolyCounter() : polys(0), vertices(0) {}

   void Begin(void)
   {
      polys = p3d::pddi->GetIntStat(PDDI_STAT_BUFFERED_INDEXED_PRIM) + 
              p3d::pddi->GetIntStat(PDDI_STAT_BUFFERED_PRIM) + 
              p3d::pddi->GetIntStat(PDDI_STAT_STREAMED_PRIM);

      vertices = p3d::pddi->GetIntStat(PDDI_STAT_BUFFERED_INDEXED_PRIM_VERT) + 
                 p3d::pddi->GetIntStat(PDDI_STAT_BUFFERED_PRIM_VERT) + 
                 p3d::pddi->GetIntStat(PDDI_STAT_STREAMED_PRIM_VERT);
   }

   void End(unsigned* p, unsigned* v)
   {
      *p = (p3d::pddi->GetIntStat(PDDI_STAT_BUFFERED_INDEXED_PRIM) + 
            p3d::pddi->GetIntStat(PDDI_STAT_BUFFERED_PRIM) + 
            p3d::pddi->GetIntStat(PDDI_STAT_STREAMED_PRIM)) - polys;

      *v = (p3d::pddi->GetIntStat(PDDI_STAT_BUFFERED_INDEXED_PRIM_VERT) + 
                  p3d::pddi->GetIntStat(PDDI_STAT_BUFFERED_PRIM_VERT) + 
                  p3d::pddi->GetIntStat(PDDI_STAT_STREAMED_PRIM_VERT)) - vertices;

#ifdef P3D_PS2
            polys -= p3d::pddi->GetIntStat(PDDI_STAT_BUFFERED_INDEXED_PRIM);
            vertices -= p3d::pddi->GetIntStat(PDDI_STAT_BUFFERED_INDEXED_PRIM_VERT);
#endif
   }
protected:
   unsigned polys, vertices;
};

#endif