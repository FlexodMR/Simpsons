/*
 * choreoviewer/chengine/linebatcher.hpp
 */


#ifndef CHOREOVIEWER_CHENGINE_LINEBATCHER_HPP
#define CHOREOVIEWER_CHENGINE_LINEBATCHER_HPP


#include <radmath/radmath.hpp>
#include <p3d/p3dtypes.hpp>


class tPose;
class pddiShader;


//---------------------------------------------------------------------------
// class CVLineBatcher
//---------------------------------------------------------------------------

class CVLineBatcher
{
public:

    enum
    {
        DEFAULT_MAX_LINES = 4096
    };

    CVLineBatcher(int defaultMaxLines = DEFAULT_MAX_LINES);
    virtual ~CVLineBatcher();

    int GetMaxLineCount() const
        { return m_MaxLineCount; }
    int GetLineCount() const
        { return m_LineCount; }

    bool DrawLine(const rmt::Vector& a, const rmt::Vector& b, tColour c, float duration = 0.0f);
    bool DrawAxes(const rmt::Matrix& m, float radius, float duration = 0.0f);
    bool DrawGrid(const rmt::Matrix& m, int lineCount, float lineSpacing, tColour c, float duration = 0.0f);
    bool DrawGridAndAxes(const rmt::Matrix& m, float axisRadius, int lineCount, float lineSpacing, tColour c, float duration = 0.0f);
    bool DrawPose(tPose* pose, tColour boneColour = tColour(255,255,255), float axisRadius = 0.02f, float duration = 0.0f);

    bool Advance(float deltaTime);
    bool Display();

private:

    struct Line
    {
        rmt::Vector points[2];
        tColour colour;
        float duration;
    };

    pddiShader* m_Shader;

    int m_MaxLineCount;
    int m_LineCount;
    Line* m_Lines;

    float m_DeltaTime;
};


#endif // CHOREOVIEWER_CHENGINE_LINEBATCHER_HPP
