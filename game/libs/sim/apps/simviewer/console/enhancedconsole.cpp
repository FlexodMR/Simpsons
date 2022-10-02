#include "enhancedconsole.hpp"
#include "textbuffer.hpp"


tEnhancedConsole::tEnhancedConsole(tTextBuffer* textbuffer, tShader* m, tTextureFont* f) : tConsole(textbuffer)
{
   maximised = 0;
   height = 0.25f;

   mat = m;

   if(mat == NULL)
   {
      mat = new tShader;
   }

   font = f;

   mat->AddRef();
   font->AddRef();

   ustride = 0.25f;
   vstride = 0.25f;

   backgroundColour.Set(0, 0, 0, 96);
   textColour.Set(0xff,0xff,0xff);

   lastActive = false;
   direction = 0.0f;;
   t = 0.0f;
   count = 0;

   ortho =  autopos = fade = slide = 1;
   time = 15;
}

tEnhancedConsole::~tEnhancedConsole()
{
   mat->Release();
   font->Release();
}

void tEnhancedConsole::SetBackgroundShader(tShader* m) 
{ 
   tRefCounted::Assign(mat, m);
}

void tEnhancedConsole::SetFont(tTextureFont* f) 
{
   tRefCounted::Assign(font, f);
}

void tEnhancedConsole::Display(void)
{
   bool active = textBuffer ? (textBuffer->IsActive()) : false;

   if(active != lastActive)
   {
      if(active)
      {
         direction = 1.0f / float(time);
         count = time;
      }
      else
      {
         direction = -1.0f / float(time);
         count = time;
      }
      lastActive = active;
   }

   if(active || count)
   {
      tColour colour0;
      tColour colour1;

      pddiProjectionMode proj = p3d::pddi->GetProjectionMode();

      p3d::stack->Push();

      if(ortho)
      {
         p3d::pddi->SetProjectionMode(PDDI_PROJECTION_ORTHOGRAPHIC);
         if(autopos)
         {
            p3d::stack->LoadIdentity();
            p3d::stack->Translate(-0.5f, -0.375f, 1.0f);
         }
      }

      // select drawing height based on set height and maximisation
      float tmpheight;
      if(maximised)
      {
         tmpheight = 1.0f;
      }
      else
      {
         tmpheight = (height > 1.0f) ? 1.0f : height;
      }

      colour0 = backgroundColour;
      colour1 = textColour;

      if(count)
      {
         t += direction;
         if(t > 1.0f)
            t = 1.0f;

         if(t < 0.0f)
            t = 0.0f;

         if(fade)
         {
            colour0.Set(int(float(backgroundColour.Red()  ) * t),
                        int(float(backgroundColour.Green()) * t),
                        int(float(backgroundColour.Blue() ) * t),
                        int(float(backgroundColour.Alpha()) * t));
            colour1.Set(int(float(textColour.Red()  ) * t),
                        int(float(textColour.Green()) * t),
                        int(float(textColour.Blue() ) * t),
                        int(float(textColour.Alpha()) * t));
         }

         if(slide)
            p3d::stack->Translate(0,-(tmpheight * (1.0f-t)),0.0f);

         count--;
      }

      P3DASSERT(mat);
      P3DASSERT(font);

      // turn off zBuffering while we draw console
      // TODO : turn of other harmful flags as well
      p3d::pddi->PushState(PDDI_STATE_RENDER);
      p3d::pddi->SetZWrite(false);
      p3d::pddi->SetZCompare(PDDI_COMPARE_ALWAYS);
      p3d::pddi->SetFillMode(PDDI_FILL_SOLID);

      // fill vertices with the edges of the background poly
      float width = 1.0f;
/*
      pddiVertex_CT ver[4];

      ver[0].v.Set(0.0f, 0.0f, 0.0f);
      ver[0].uv0.Set(0.0f, tmpheight / vstride);
      ver[0].c = colour0;

      ver[1].v.Set(0.0f, tmpheight, 0.0f);
      ver[1].uv0.Set(0.0f, 0.0f);
      ver[1].c = colour0;

      ver[2].v.Set(width, 0.0f, 0.0f);
      ver[2].uv0.Set(width / ustride, tmpheight / vstride);
      ver[2].c = colour0;

      ver[3].v.Set(width, tmpheight, 0.0f);
      ver[3].uv0.Set(width / ustride, 0.0f);
      ver[3].c = colour0;

      // draw the background
      p3d::pddi->DrawPrims(mat->GetShader(), PDDI_PRIM_TRISTRIP, PDDI_VERTEX_CT, ver, 4);
*/
      font->SetColour(colour1);

      // 'figure out how many lines can be drawn
      float fontHeight = font->GetTextHeight((P3D_UNICODE*)"Aj");
      float leftIndent = 0.01f;
      float topIndent = 0.01f;
      int count = int((tmpheight - topIndent) / (fontHeight));

      int startline = textBuffer->GetNumLines() - count;
      if(startline < 0) startline = 0;

      // draw the relevent portion of the text buffer 
      float line = tmpheight - topIndent - fontHeight;

      p3d::stack->Translate(leftIndent, line, 0.0f);

      for(int i = 0; i < count; i++)
      {
         font->DisplayText((P3D_UNICODE*)(textBuffer->GetLine(startline)));
         startline++;
         line += fontHeight;
         p3d::stack->Translate(0, -fontHeight, 0);
      }

      if(ortho)
         p3d::pddi->SetProjectionMode(proj);

      p3d::stack->Pop();

      p3d::pddi->PopState(PDDI_STATE_RENDER);
   }
}
