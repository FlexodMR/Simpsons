//---------------------------------------------------------------------------
#include <vcl.h>
#include "../chcommon/interface.hpp"
#pragma hdrstop

#include "simulation.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TSimulationFrame *SimulationFrame;
//---------------------------------------------------------------------------
__fastcall TSimulationFrame::TSimulationFrame(TComponent* Owner)
    : TFrame(Owner)
{
    m_SimRateEditing = false;
    m_ReplayEditing = false;
}
//---------------------------------------------------------------------------
void __fastcall TSimulationFrame::RefreshSimulation()
{
    float rate;
    CVSimulationGetRate(&rate);

    m_SimRateEditing = true;
    AnsiString s = FloatToStrF(rate, ffFixed, 18, 2);
    SimRateEdit->Text = s;
    SimRateTrackBar->Position = (int)(rate * 100.0f);
    m_SimRateEditing = false;
}
//---------------------------------------------------------------------------
void __fastcall TSimulationFrame::RefreshReplay()
{
    m_ReplayEditing = true;

    float bufferTime;
    CVReplayGetBufferTime(&bufferTime);

    ReplayTimeLbl->Caption = FloatToStrF(bufferTime, ffFixed, 18, 2);

    bool recording = (CVReplayGetRecording() != 0);
    ReplayBtn->Caption = recording ? "Replay" : "Simulation";
    PlayBtn->Enabled = !recording;
    bool paused = (CVReplayGetPause() != 0);
    PlayBtn->Caption = paused ? "Play" : "Pause";

    float playTime;
    CVReplayGetPlaybackTime(&playTime);
    if (bufferTime > 0.0f)
    {
        float ratio = -playTime / bufferTime;
        ReplayTrackBar->Position = (int)((1.0f - ratio) * ReplayTrackBar->Max);
    }
    else
    {
        ReplayTrackBar->Position = ReplayTrackBar->Max;
    }
    AnsiString s = FloatToStrF(-playTime, ffFixed, 18, 2);
    ReplayEdit->Text = s;

    m_ReplayEditing = false;
}
//---------------------------------------------------------------------------
void __fastcall TSimulationFrame::SimRateEditKeyPress(TObject *Sender,
      char &Key)
{
    if (!isdigit(Key) && (Key != '.') && (Key != '\b'))
    {
        Key = 0;
    }
}
//---------------------------------------------------------------------------
void __fastcall TSimulationFrame::SimRateEditChange(TObject *Sender)
{
    if (!m_SimRateEditing)
    {
        m_SimRateEditing = true;

        float pos = 0.0f;
        if (SimRateEdit->Text.Length() > 0)
        {
            try
            {
                pos = (float)SimRateEdit->Text.ToDouble();
            }
            catch (Exception&)
            {
                SimRateEdit->Text = "0.00";
            }
        }

        SimRateTrackBar->Position = (int)(pos * 100.0f);

        CVSimulationSetRate(pos);

        m_SimRateEditing = false;
    }
}
//---------------------------------------------------------------------------
void __fastcall TSimulationFrame::SimRateTrackBarChange(TObject *Sender)
{
    if (!m_SimRateEditing)
    {
        m_SimRateEditing = true;

        float pos = SimRateTrackBar->Position / 100.0f;
        CVSimulationSetRate(pos);

        m_SimRateEditing = false;

        RefreshSimulation();
    }
}
//---------------------------------------------------------------------------
void __fastcall TSimulationFrame::ReplayEditChange(TObject *Sender)
{
    if (!m_ReplayEditing)
    {
        m_ReplayEditing = true;

        float pos = 0.0f;
        if (ReplayEdit->Text.Length() > 0)
        {
            try
            {
                pos = (float)ReplayEdit->Text.ToDouble();
            }
            catch (Exception&)
            {
                ReplayEdit->Text = "0.00";
            }
        }

        float bufferTime;
        CVReplayGetBufferTime(&bufferTime);

        if (bufferTime > 0.0f)
        {
            float ratio = pos / bufferTime;
            ReplayTrackBar->Position = (int)((1.0f - ratio) * ReplayTrackBar->Max);
        }
        else
        {
            ReplayTrackBar->Position = ReplayTrackBar->Max;
        }

        CVReplaySetPlaybackTime(-pos);

        m_ReplayEditing = false;
    }
}
//---------------------------------------------------------------------------
void __fastcall TSimulationFrame::ReplayTrackBarChange(TObject *Sender)
{
    if (!m_ReplayEditing)
    {
        m_ReplayEditing = true;

        float bufferTime;
        CVReplayGetBufferTime(&bufferTime);

        float ratio = 1.0f - ((float)ReplayTrackBar->Position / (float)ReplayTrackBar->Max);
        float pos = ratio * bufferTime;

        CVReplaySetPlaybackTime(-pos);
        if (pos != 0.0f)
        {
            CVReplaySetRecording(false);
        }

        m_ReplayEditing = false;

        RefreshReplay();
    }
}
//---------------------------------------------------------------------------
void __fastcall TSimulationFrame::ReplayBtnClick(TObject *Sender)
{
    bool isRecording = CVReplayGetRecording();
    CVReplaySetRecording(!isRecording);
    RefreshReplay();
}
//---------------------------------------------------------------------------
void __fastcall TSimulationFrame::PlayBtnClick(TObject *Sender)
{
    bool isPaused = CVReplayGetPause();
    CVReplaySetPause(!isPaused);
    RefreshReplay();    
}
//---------------------------------------------------------------------------

