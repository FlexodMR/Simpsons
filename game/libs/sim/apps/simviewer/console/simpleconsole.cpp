#include "simpleconsole.hpp"
#include "textbuffer.hpp"
#include "p3d/pure3d.hpp"

tSimpleConsole::tSimpleConsole(tTextBuffer* textbuffer) : tConsole(textbuffer)
{
   maximised = 0;
   height = 160;
   shader = NULL;
}

tSimpleConsole::~tSimpleConsole()
{
   if(shader)
      shader->Release();
}

const int fontHeight = 15;

void tSimpleConsole::Display(void)
{
   if(textBuffer ? textBuffer->IsActive() : false)
   {
      pddiProjectionMode proj = p3d::pddi->GetProjectionMode();
      p3d::pddi->SetProjectionMode(PDDI_PROJECTION_DEVICE);
      p3d::stack->Push();
      p3d::stack->LoadIdentity();

      if(shader == NULL) 
      {
         shader = new tShader;
         shader->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ALPHA);
      }

      // select drawing height based on set height and maximisation
      int tmpheight;
      if(maximised)
      {
         tmpheight = p3d::display->GetHeight();
      }
      else
      {
         tmpheight = (height > p3d::display->GetHeight()) ? p3d::display->GetHeight() : height;
      }
      // turn off zBuffering while we draw console
      // TODO : turn of other harmful flags as well
      p3d::pddi->PushState(PDDI_STATE_RENDER);
      p3d::pddi->EnableZBuffer(false);
      p3d::pddi->SetFillMode(PDDI_FILL_SOLID);

      // fill vertices with the edges of the background poly
      tColour colour(0,0,0,75);
      int width = p3d::display->GetWidth();

      float top = (float)p3d::display->GetHeight() - tmpheight;

      pddiPrimStream* stream = p3d::pddi->BeginPrims(shader->GetShader(), PDDI_PRIM_TRISTRIP, PDDI_V_C, 4);
         stream->Colour(colour);
         stream->Coord(0.0f, top, 1.0f);
         stream->Colour(colour);
         stream->Coord(float(width), top, 1.0f);
         stream->Colour(colour);
         stream->Coord(0.0f, (float)p3d::display->GetHeight(), 1.0f);
         stream->Colour(colour);
         stream->Coord(float(width), (float)p3d::display->GetHeight(), 1.0f);
      p3d::pddi->EndPrims(stream);

      // 'figure out how many lines can be drawn
      int count = (tmpheight - 30) / (fontHeight + 2);

      int startline = textBuffer->GetNumLines() - count;
      if(startline < 0) startline = 0;

      tColour textcolour(255,255,255,255);
      // draw the relevent portion of the text buffer 
      int line = p3d::display->GetHeight() - tmpheight + 5;

      for(int i = 0; i < count; i++)
      {
         p3d::pddi->DrawString(textBuffer->GetLine(startline), 20, line, textcolour);
         startline++;
         line += fontHeight + 2;
      }

      p3d::pddi->PopState(PDDI_STATE_RENDER);

      p3d::pddi->SetProjectionMode(proj);
      p3d::stack->Pop();
   }
}
