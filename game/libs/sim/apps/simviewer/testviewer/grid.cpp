#include "grid.hpp"
#include <p3d/pure3d.hpp>

Grid::Grid()
{
   mode = 0;
   size = 10;
   count = 8;

   gridMat = new tShader;
}

Grid::~Grid()
{
   gridMat->Release();
}

void Grid::Display(void)
{
   p3d::pddi->PushState(PDDI_STATE_FOG);
   p3d::pddi->EnableFog(true);
   p3d::pddi->SetFog(p3d::pddi->GetClearColour(), 0.0f, 400.0f);

   switch(mode)
   {
      case 0: break;
      case 1:
         {
            tColour colour( 255, 255, 255 );
            int gridDivisions = count;
            float edge = (((float)count / 2) * size);
            float step = (edge * 2) / (gridDivisions);
            for(float i = -edge; i <= edge; i += size)
            {
                int j;

                pddiPrimStream* stream = p3d::pddi->BeginPrims(gridMat->GetShader(), PDDI_PRIM_LINESTRIP, PDDI_V_C, gridDivisions + 1);
                float walk = -edge;
                for(j = 0; j <= gridDivisions; j++)
                {
                    stream->Colour(colour);
                    stream->Coord(walk, 0.0f, i);
                    walk += step;
                }
                p3d::pddi->EndPrims(stream);

                stream = p3d::pddi->BeginPrims(gridMat->GetShader(), PDDI_PRIM_LINESTRIP, PDDI_V_C, gridDivisions + 1);
                walk = -edge;
                for(j = 0; j <= gridDivisions; j++)
                {
                    stream->Colour(colour);
                    stream->Coord(i, 0.0f, walk);
                    walk += step;
                }
                p3d::pddi->EndPrims(stream);
            }

         }
         break;
      case 2:
         {
            pddiPrimStream* stream = p3d::pddi->BeginPrims(gridMat->GetShader(), PDDI_PRIM_LINES, PDDI_V_C, 4);
            float edge = (((float)count / 2) * size);
            for(float i = -edge; i <= edge; i += size)
            {
               stream->Colour(tColour(255,255,255));
               stream->Coord(-edge, i, 0.0f);
               stream->Colour(tColour(255,255,255));
               stream->Coord(edge, i, 0.0f);
               stream->Colour(tColour(255,255,255));
               stream->Coord(i, -edge, 0.0f);
               stream->Colour(tColour(255,255,255));
               stream->Coord(i, edge, 0.0f);
            }
            p3d::pddi->EndPrims(stream);
         }
         break;/*
      case 3:
         {
            pddiVertex_C verts[4];
            float edge = (((float)count / 2) * size);
            for(float i = -edge; i <= edge; i += size)
            {
               verts[0].c.Set(255,255,255);
               verts[1].c = verts[2].c = verts[3].c = verts[0].c;
               verts[0].v.Set(0.0f, -edge, i);
               verts[1].v.Set(0.0f, edge, i);
               verts[2].v.Set(0.0f, i, -edge);
               verts[3].v.Set(0.0f, i, edge);
               p3d::pddi->DrawPrims(gridMat->GetMaterial(), PDDI_PRIM_LINES, PDDI_VERTEX_C, verts, 4);
            }

         }
         break;
      case 4:
         {
            pddiVertex_C verts[4];
            float edge = (((float)count / 2) * size);
            for(float i = -edge; i <= edge; i += size)
            {
               verts[0].c.Set(255,255,255);
               verts[1].c = verts[2].c = verts[3].c = verts[0].c;
               verts[0].v.Set(-edge, 0.0f, i);
               verts[1].v.Set(edge, 0.0f, i);
               verts[2].v.Set(i, 0.0f, -edge);
               verts[3].v.Set(i, 0.0f, edge);
               p3d::pddi->DrawPrims(gridMat->GetMaterial(), PDDI_PRIM_LINES, PDDI_VERTEX_C, verts, 4);
               verts[0].c.Set(255,255,255);
               verts[1].c = verts[2].c = verts[3].c = verts[0].c;
               verts[0].v.Set(-edge, i, 0.0f);
               verts[1].v.Set(edge, i, 0.0f);
               verts[2].v.Set(i, -edge, 0.0f);
               verts[3].v.Set(i, edge, 0.0f);
               p3d::pddi->DrawPrims(gridMat->GetMaterial(), PDDI_PRIM_LINES, PDDI_VERTEX_C, verts, 4);
               verts[0].c.Set(255,255,255);
               verts[1].c = verts[2].c = verts[3].c = verts[0].c;
               verts[0].v.Set(0.0f, -edge, i);
               verts[1].v.Set(0.0f, edge, i);
               verts[2].v.Set(0.0f, i, -edge);
               verts[3].v.Set(0.0f, i, edge);
               p3d::pddi->DrawPrims(gridMat->GetMaterial(), PDDI_PRIM_LINES, PDDI_VERTEX_C, verts, 4);
            }

         }
         break;*/
   }
   p3d::pddi->PopState(PDDI_STATE_FOG);
}
