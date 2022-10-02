/*
 * choreoviewer/chengine/linebatcher.cpp
 */


#include <chengine/linebatcher.hpp>

#include <p3d/anim/pose.hpp>
#include <p3d/utility.hpp>

#include <string.h>


//---------------------------------------------------------------------------
// class CVLineBatcher
//---------------------------------------------------------------------------

CVLineBatcher::CVLineBatcher(int defaultMaxLines):
    m_MaxLineCount(defaultMaxLines),
    m_LineCount(0),
    m_DeltaTime(0.0f)
{
    m_Shader = p3d::device->NewShader("simple");
    m_Shader->AddRef();
    m_Shader->SetInt(PDDI_SP_ISLIT, 0);
    m_Shader->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ALPHA);

    m_Lines = new Line [m_MaxLineCount];
    memset(m_Lines, 0, sizeof(Line) * m_MaxLineCount);
}

CVLineBatcher::~CVLineBatcher()
{
    delete[] m_Lines;

    m_Shader->Release();
}

bool CVLineBatcher::DrawLine(const rmt::Vector& a, const rmt::Vector& b, tColour c, float duration)
{
    for (int i = 0; i < m_LineCount; ++i)
    {
        if (m_Lines[i].duration < 0.0f)
        {
            m_Lines[i].points[0] = a;
            m_Lines[i].points[1] = b;
            m_Lines[i].colour = c;
            m_Lines[i].duration = duration;
            return true;
        }
    }

    if (m_LineCount >= m_MaxLineCount)
        return false;

    m_Lines[m_LineCount].points[0] = a;
    m_Lines[m_LineCount].points[1] = b;
    m_Lines[m_LineCount].colour = c;
    m_Lines[m_LineCount].duration = duration;

    ++m_LineCount;
    return true;
}

bool CVLineBatcher::DrawAxes(const rmt::Matrix& m, float radius, float duration)
{
   rmt::Vector oldVtx[4] =
   {
      rmt::Vector(0,0,0),
      rmt::Vector(radius,0,0),
      rmt::Vector(0,radius,0),
      rmt::Vector(0,0,radius)
   };
   rmt::Vector newVtx[4];
   m.Transform(4, oldVtx, newVtx);

   if (!DrawLine(newVtx[0], newVtx[1], tColour(255, 0, 0), duration))
       return false;
   if (!DrawLine(newVtx[0], newVtx[2], tColour(0, 255, 0), duration))
       return false;
   if (!DrawLine(newVtx[0], newVtx[3], tColour(0, 0, 255), duration))
       return false;

   return true;
}

bool CVLineBatcher::DrawGrid(const rmt::Matrix& m, int lineCount, float lineSpacing, tColour c, float duration)
{
    int i;
    rmt::Vector vOrig[2];
    rmt::Vector vXform[2];

    for (i = -lineCount; i <= lineCount; ++i)
    {
        vOrig[0].Set(i * lineSpacing, 0.0f, -lineCount * lineSpacing);
        vOrig[1].Set(i * lineSpacing, 0.0f, lineCount * lineSpacing);

        m.Transform(2, vOrig, vXform);

        if (!DrawLine(vXform[0], vXform[1], c, duration))
            return false;
    }

    for (i = -lineCount; i <= lineCount; ++i)
    {
        vOrig[0].Set(-lineCount * lineSpacing, 0.0f, i * lineSpacing);
        vOrig[1].Set(lineCount * lineSpacing, 0.0f, i * lineSpacing);

        m.Transform(2, vOrig, vXform);

        if (!DrawLine(vXform[0], vXform[1], c, duration))
            return false;
    }

    return true;
}

bool CVLineBatcher::DrawGridAndAxes(const rmt::Matrix& m, float axisRadius, int lineCount, float lineSpacing, tColour c, float duration)
{
    if (!DrawAxes(m, axisRadius, duration))
        return false;

    int i;
    rmt::Vector vOrig[2];
    rmt::Vector vXform[2];

    for (i = -lineCount; i < 0; ++i)
    {
        vOrig[0].Set(i * lineSpacing, 0.0f, -lineCount * lineSpacing);
        vOrig[1].Set(i * lineSpacing, 0.0f, lineCount * lineSpacing);

        m.Transform(2, vOrig, vXform);

        if (!DrawLine(vXform[0], vXform[1], c, duration))
            return false;
    }

    vOrig[0].Set(0.0f, 0.0f, -lineCount * lineSpacing);
    vOrig[1].Set(0.0f, 0.0f, 0.0f);
    m.Transform(2, vOrig, vXform);
    if (!DrawLine(vXform[0], vXform[1], c, duration))
        return false;

    if (axisRadius < (lineCount * lineSpacing))
    {
        vOrig[0].Set(0.0f, 0.0f, axisRadius);
        vOrig[1].Set(0.0f, 0.0f, lineCount * lineSpacing);
        m.Transform(2, vOrig, vXform);
        if (!DrawLine(vXform[0], vXform[1], c, duration))
            return false;

        vOrig[0].Set(axisRadius, 0.0f, 0.0f);
        vOrig[1].Set(lineCount * lineSpacing, 0.0f, 0.0f);
        m.Transform(2, vOrig, vXform);
        if (!DrawLine(vXform[0], vXform[1], c, duration))
            return false;
    }

    for (i = 1; i <= lineCount; ++i)
    {
        vOrig[0].Set(i * lineSpacing, 0.0f, -lineCount * lineSpacing);
        vOrig[1].Set(i * lineSpacing, 0.0f, lineCount * lineSpacing);

        m.Transform(2, vOrig, vXform);

        if (!DrawLine(vXform[0], vXform[1], c, duration))
            return false;
    }

    for (i = -lineCount; i < 0; ++i)
    {
        vOrig[0].Set(-lineCount * lineSpacing, 0.0f, i * lineSpacing);
        vOrig[1].Set(lineCount * lineSpacing, 0.0f, i * lineSpacing);

        m.Transform(2, vOrig, vXform);

        if (!DrawLine(vXform[0], vXform[1], c, duration))
            return false;
    }

    vOrig[0].Set(-lineCount * lineSpacing, 0.0f, 0.0f);
    vOrig[1].Set(0.0f, 0.0f, 0.0f);
    m.Transform(2, vOrig, vXform);
    if (!DrawLine(vXform[0], vXform[1], c, duration))
        return false;

    for (i = 1; i <= lineCount; ++i)
    {
        vOrig[0].Set(-lineCount * lineSpacing, 0.0f, i * lineSpacing);
        vOrig[1].Set(lineCount * lineSpacing, 0.0f, i * lineSpacing);

        m.Transform(2, vOrig, vXform);

        if (!DrawLine(vXform[0], vXform[1], c, duration))
            return false;
    }

    return true;
}

bool CVLineBatcher::DrawPose(tPose* pose, tColour boneColour, float axisRadius, float duration)
{
    pose->Evaluate();

	for (int i = 0; i < pose->GetNumJoint(); ++i)
	{
        tPose::Joint* joint = pose->GetJoint(i);
        tPose::Joint* parent = joint->parent;

        if (parent != 0)
        {
            if (!DrawLine(parent->worldMatrix.Row(3), joint->worldMatrix.Row(3), boneColour, duration))
                return false;
        }

        if (!DrawAxes(joint->worldMatrix, axisRadius, duration))
            return false;
	}

    return true;
}

bool CVLineBatcher::Advance(float deltaTime)
{
    m_DeltaTime += deltaTime;
    return true;
}

bool CVLineBatcher::Display()
{
    if (m_LineCount <= 0)
    {
        m_DeltaTime = 0.0f;
        return true;
    }

    // count number of active lines
    int activeLineCount = 0;

    int i;
    for (i = 0; i < m_LineCount; ++i)
    {
        Line* line = m_Lines + i;

        if (line->duration >= 0.0f)
        {
            ++activeLineCount;
        }
    }

    if (activeLineCount > 0)
    {
        // render lines
        pddiPrimStream* stream;
        stream = p3d::pddi->BeginPrims(m_Shader, PDDI_PRIM_LINES, PDDI_V_C, (activeLineCount * 2));

        for (i = 0; i < m_LineCount; ++i)
        {
            Line* line = m_Lines + i;

            if (line->duration >= 0.0f)
            {
                stream->Vertex((pddiVector*)&(line->points[0]), line->colour);
                stream->Vertex((pddiVector*)&(line->points[1]), line->colour);

                if (m_DeltaTime < line->duration)
                {
                    int alpha = line->colour.Alpha();
                    alpha -= (int)((m_DeltaTime / line->duration) * alpha);
                    line->colour.SetAlpha(alpha);
                    line->duration -= m_DeltaTime;
                }
                else
                {
                    line->duration = -1.0f;
                }
            }
        }

        p3d::pddi->EndPrims(stream);
    }

    // ditch lines
    while (m_LineCount > 0)
    {
        if (m_Lines[m_LineCount - 1].duration < 0.0f)
        {
            --m_LineCount;
        }
        else
        {
            break;
        }
    }

    m_DeltaTime = 0.0f;
    return true;
}


// End of file.
