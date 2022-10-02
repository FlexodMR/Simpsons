p4 edit ..\..\sdks\win32\BCG\Bin\*.*
p4 edit ..\bin\*.*
p4 edit ..\..\radscript\tools\bin\radTuner\radTunerD.exe

MSDEV crashreportwriter\build\win32\crashreportwriter.dsp /Make "crashreportwriter - Win32 Debug"
MSDEV filecementer\filecementer\build\win32\filecementer.dsp /Make "filecementer - Win32 Debug"
MSDEV filecementer\rcfEncoder\build\win32\rcfEncoder.dsp /Make "rcfEncoder - Win32 Debug"
MSDEV flamer\build\win32\Flamer.dsp /Make "Flamer - Win32 Debug"
MSDEV debugconsoleserver\DebugConsoleServer.dsp /Make "DebugConsoleServer - Win32 Debug"
MSDEV fileserver\FileServer.dsp /Make "FileServer - Win32 Debug"
MSDEV find8dot3\find8dot3.dsp /Make "find8dot3 - Win32 Debug"
MSDEV MemMonitor\MemMonitor.dsp /Make "MemMonitor - Win32 Tune"
MSDEV PEAddr2Line\lib\PEAddr2LineLib.dsp /Make "PEAddr2LineLib - Win32 Tune"
MSDEV raddebugwatchserverdll\build\radDebugWatchServerDll.dsp /Make "radDebugWatchServerDll - Win32 Debug"
MSDEV remotecommandconsole\Build\RemoteCommandConsole.dsp /Make "RemoteCommandConsole - Win32 Debug"
MSDEV targeteditor\TargetEditor.dsp /Make "TargetEditor - Win32 Debug"
MSDEV thewatcher\WatchServer.dsp /Make "WatchServer - Win32 Debug"
MSDEV ..\..\radscript\tools\radTuner\build\radTuner.dsp /Make "radTuner - Win32 Debug"

p4 revert -a ..\..\sdks\win32\BCG\Bin\*.*
p4 revert -a ..\bin\*.*
p4 revert -a ..\..\radscript\tools\bin\radTuner\radTunerD.exe
