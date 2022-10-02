ROOTDIR   = ../../../../..
BUILDTOOLS = $(ROOTDIR)/radbuild/globaltools
CP         = $(BUILDTOOLS)/cp.exe
ECHO       = $(BUILDTOOLS)/echo.exe
MKDIR      = $(BUILDTOOLS)/mkdir
ARTDIR    = $(ROOTDIR)/radsound/test/coverage/art
CDDIR     = $(ROOTDIR)/radsound/test/coverage/bin
TOOLSDIR  = $(ROOTDIR)/radsound/tools/bin
BINDIR    = $(ROOTDIR)/radsound/bin

all:
	@$(ECHO) ==============================================================================
	@$(ECHO) Building Art... (wavtorsd.exe)
	@$(ECHO) ==============================================================================
	@$(TOOLSDIR)/wavtorsdr -s . -wt $(CDDIR)/win -xt $(CDDIR)/xboxcd -pt $(CDDIR)/ps2cd -gt $(CDDIR)/gcncd -checkdate -silent
	@$(ECHO) ==============================================================================
	@$(ECHO) Copying To XBox
	@$(ECHO) ==============================================================================
	$(MKDIR) -p $(CDDIR)/xboxcd/img/
	$(CP) $(BINDIR)/rsdeffects.bin $(CDDIR)/xboxcd/img/rsdeffects.bin
	@xbcp /r /d /y /f /t "\atg\stable\current\radsound\test\coverage\bin\xboxcd\*.*" "xE:\soundcoverage"
	@$(ECHO) ==============================================================================
	@$(ECHO) Copying radsound.irx & Sony Irx Modules
	@$(ECHO) ==============================================================================
	@$(MKDIR) -p $(CDDIR)/ps2cd/irx
	@$(CP) $(BINDIR)/radsound.irx $(CDDIR)/ps2cd/irx/radsound.irx
	@$(CP) /usr/local/sce/iop/modules/*.* $(CDDIR)/ps2cd/irx/
	@$(ECHO) ==============================================================================
	@$(ECHO) Copying To GameCube
	@$(ECHO) ==============================================================================
	@$(MKDIR) -p d:/defroot
	@$(CP) $(CDDIR)/gcncd/*.* d:/defroot/

