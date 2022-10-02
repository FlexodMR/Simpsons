# Microsoft Developer Studio Project File - Name="sim" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Static Library" 0x0b04

CFG=sim - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "sim.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "sim.mak" CFG="sim - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "sim - Xbox Release" (based on "Xbox Static Library")
!MESSAGE "sim - Xbox Debug" (based on "Xbox Static Library")
!MESSAGE "sim - Xbox Tune" (based on "Xbox Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "sim"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe

!IF  "$(CFG)" == "sim - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GX /Z7 /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /c
# ADD CPP /nologo /W3 /GR /Z7 /O2 /I "../../" /I "../../../pure3d/" /I "../../../radmath/" /I "../../../poser/inc" /I "../../../radcore/inc" /I "..\..\..\radcontent\inc" /D "NDEBUG" /D "RAD_RELEASE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\simxr.lib"

!ELSEIF  "$(CFG)" == "sim - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GX /Z7 /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /c
# ADD CPP /nologo /W3 /Gm /GR /Zi /Od /I "..\..\..\radcontent\inc" /I "../../" /I "../../../pure3d/" /I "../../../radmath/" /I "../../../poser/inc" /I "../../../radcore/inc" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FR /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\simxd.lib"

!ELSEIF  "$(CFG)" == "sim - Xbox Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Tune"
# PROP BASE Intermediate_Dir "Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Tune"
# PROP Intermediate_Dir "Tune"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GR /Z7 /O2 /I "../../" /I "../../../pure3d/" /I "../../../poser/inc" /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /Zi /O2 /I "../../" /I "../../../pure3d/" /I "../../../radmath/" /I "../../../poser/inc" /I "../../../radcore/inc" /I "..\..\..\radcontent\inc" /D "NDEBUG" /D "RAD_TUNE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FR /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\simxt.lib"

!ENDIF 

# Begin Target

# Name "sim - Xbox Release"
# Name "sim - Xbox Debug"
# Name "sim - Xbox Tune"
# Begin Group "SimCollision Headers"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\simcollision\collision.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionanalyser.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionanalyserdata.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionanalyserdataUID.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionanalyserevent.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionanalyserinfo.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionanalysertranslator.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisiondetector.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisiondisplay.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionmanager.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionvolume.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\impulsebasedcollisionsolver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\proximitydetection.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\subcollisiondetector.hpp
# End Source File
# End Group
# Begin Group "SimCollision Sources"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\simcollision\collision.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionanalyser.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionanalyserdata.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionanalyserdataUID.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionanalyserevent.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionanalyserinfo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionanalysertranslator.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisiondetector.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisiondisplay.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionmanager.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\collisionvolume.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\impulsebasedcollisionsolver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\proximitydetection.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcollision\subcollisiondetector.cpp
# End Source File
# End Group
# Begin Group "SimCommon Sources"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\simcommon\arraymath.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\dline2.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\impulselink.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\kalmann.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\largesymmetricmatrix.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\physicsproperties.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\sbmatrix.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simconstraint.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simenvironment.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simmath.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simstate.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simstatearticulated.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simstateflexible.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simstatetarget.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simtarget.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simulatedobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simutility.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\skeletoninfo.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\symmatrix.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\tlist.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\trackerjointmodifier.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\trajectoryextrapolator.cpp
# End Source File
# End Group
# Begin Group "SimCommon Headers"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\simcommon\arraymath.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\dline2.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\impulselink.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\kalmann.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\largesymmetricmatrix.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\physicsproperties.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\sbmatrix.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simconstraint.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simenvironment.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simlistinitsize.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simmath.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simstate.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simstatearticulated.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simstateflexible.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simstatetarget.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simtarget.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simulatedobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simutility.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\simwind.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\skeletoninfo.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\symmatrix.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\tarray.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\tlist.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\trackerjointmodifier.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simcommon\trajectoryextrapolator.hpp
# End Source File
# End Group
# Begin Group "SimPhysics Sources"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\simphysics\articulatedphysicsobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simphysics\physicsjoint.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simphysics\physicsobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simphysics\restingdetector.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simphysics\virtualcm.cpp
# End Source File
# End Group
# Begin Group "SimPhysics Headers"

# PROP Default_Filter "hpp"
# Begin Source File

SOURCE=..\..\simphysics\articulatedphysicsobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simphysics\physicsjoint.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simphysics\physicsobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simphysics\restingdetector.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simphysics\virtualcm.hpp
# End Source File
# End Group
# Begin Group "SimIK Headers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\simik\aint.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\eqn.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\eulersolver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\ikdriver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\jtlimits.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\myvec.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\srs.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\trig.hpp
# End Source File
# End Group
# Begin Group "SimIK Sources"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\simik\aint.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\eqn.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\eulersolver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\ikdriver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\jtlimits.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\myvec.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\srs.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simik\trig.cpp
# End Source File
# End Group
# Begin Group "SimFlexible Sources"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\simflexible\condition.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\condition1d.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\condition2d.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\flexiblejointobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\flexibleobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\flexjointmodifier.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\flexparticle.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\kinematicsolver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\largestepsolver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\particlesyst.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\particlesyst1d.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\particlesyst2d.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\particlesystemsolver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\psystmanual.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\psystongeom2d.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\semiimplicitsolver1d.cpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\semiimplicitsolver2d.cpp
# End Source File
# End Group
# Begin Group "SimFlexible Headers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\simflexible\condition.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\condition1d.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\condition2d.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\flexiblejointobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\flexibleobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\flexjointmodifier.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\flexparticle.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\kinematicsolver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\largestepsolver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\particlesyst.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\particlesystemsolver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\particlesystxd.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\psystmanual.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\psystongeom2d.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\semiimplicitsolver1d.hpp
# End Source File
# Begin Source File

SOURCE=..\..\simflexible\semiimplicitsolver2d.hpp
# End Source File
# End Group
# End Target
# End Project
