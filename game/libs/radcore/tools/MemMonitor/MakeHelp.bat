@echo off
REM -- First make map file from Microsoft Visual C++ generated resource.h
echo // MAKEHELP.BAT generated Help Map file.  Used by MEMMONITOR.HPJ. >"hlp\MemMonitor.hm"
echo. >>"hlp\MemMonitor.hm"
echo // Commands (ID_* and IDM_*) >>"hlp\MemMonitor.hm"
makehm ID_,HID_,0x10000 IDM_,HIDM_,0x10000 resource.h >>"hlp\MemMonitor.hm"
echo. >>"hlp\MemMonitor.hm"
echo // Prompts (IDP_*) >>"hlp\MemMonitor.hm"
makehm IDP_,HIDP_,0x30000 resource.h >>"hlp\MemMonitor.hm"
echo. >>"hlp\MemMonitor.hm"
echo // Resources (IDR_*) >>"hlp\MemMonitor.hm"
makehm IDR_,HIDR_,0x20000 resource.h >>"hlp\MemMonitor.hm"
echo. >>"hlp\MemMonitor.hm"
echo // Dialogs (IDD_*) >>"hlp\MemMonitor.hm"
makehm IDD_,HIDD_,0x20000 resource.h >>"hlp\MemMonitor.hm"
echo. >>"hlp\MemMonitor.hm"
echo // Frame Controls (IDW_*) >>"hlp\MemMonitor.hm"
makehm IDW_,HIDW_,0x50000 resource.h >>"hlp\MemMonitor.hm"
REM -- Make help for Project MEMMONITOR


echo Building Win32 Help files
start /wait hcw /C /E /M "hlp\MemMonitor.hpj"
if errorlevel 1 goto :Error
if not exist "hlp\MemMonitor.hlp" goto :Error
if not exist "hlp\MemMonitor.cnt" goto :Error
echo.
if exist Debug\nul copy "hlp\MemMonitor.hlp" Debug
if exist Debug\nul copy "hlp\MemMonitor.cnt" Debug
if exist Release\nul copy "hlp\MemMonitor.hlp" Release
if exist Release\nul copy "hlp\MemMonitor.cnt" Release
echo.
goto :done

:Error
echo hlp\MemMonitor.hpj(1) : error: Problem encountered creating help file

:done
echo.
