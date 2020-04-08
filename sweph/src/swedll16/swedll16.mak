# Microsoft Visual C++ generated build script - Do not modify

PROJ = SWEDLL16
DEBUG = 0
PROGTYPE = 1
CALLER = 
ARGS = 
DLLS = 
D_RCDEFINES = /d_DEBUG 
R_RCDEFINES = /dNDEBUG 
ORIGIN = MSVC
ORIGIN_VER = 1.00
PROJPATH = S:\DEVLOP\SWEPH\SRC\SWEDLL16\
USEMFC = 0
CC = cl
CPP = cl
CXX = cl
CCREATEPCHFLAG = 
CPPCREATEPCHFLAG = 
CUSEPCHFLAG = 
CPPUSEPCHFLAG = 
FIRSTC = SWEDATE.C   
FIRSTCPP =             
RC = rc
CFLAGS_D_WDLL = /nologo /G2 /W3 /Zi /ALw /Od /D "_DEBUG" /FR /GD /Fd"SWEDLL16.PDB"
CFLAGS_R_WDLL = /nologo /f- /G2 /Gc /W3 /Gf /ALw /D "NDEBUG" /D "MAKE_DLL" /D "MAKE_DLL16" /FR /GD 
LFLAGS_D_WDLL = /NOLOGO /NOD /NOE /PACKC:61440 /ALIGN:16 /ONERROR:NOEXE /CO /MAP:FULL
LFLAGS_R_WDLL = /NOLOGO /NOD /NOE /PACKC:61440 /ALIGN:16 /ONERROR:NOEXE /MAP /MAP:FULL
LIBS_D_WDLL = oldnames libw ldllcew commdlg.lib olecli.lib olesvr.lib shell.lib 
LIBS_R_WDLL = oldnames libw ldllcew commdlg.lib olecli.lib olesvr.lib shell.lib 
RCFLAGS = /nologo 
RESFLAGS = /nologo /k
RUNFLAGS = 
DEFFILE = SWEDLL16.DEF
OBJS_EXT = 
LIBS_EXT = 
!if "$(DEBUG)" == "1"
CFLAGS = $(CFLAGS_D_WDLL)
LFLAGS = $(LFLAGS_D_WDLL)
LIBS = $(LIBS_D_WDLL)
MAPFILE = nul
RCDEFINES = $(D_RCDEFINES)
!else
CFLAGS = $(CFLAGS_R_WDLL)
LFLAGS = $(LFLAGS_R_WDLL)
LIBS = $(LIBS_R_WDLL)
MAPFILE = nul
RCDEFINES = $(R_RCDEFINES)
!endif
!if [if exist MSVC.BND del MSVC.BND]
!endif
SBRS = SWEHOUSE.SBR \
		SWEJPL.SBR \
		SWEMMOON.SBR \
		SWEMPLAN.SBR \
		SWEPH.SBR \
		SWEPHLIB.SBR \
		SWEDLLST.SBR \
		SWEDATE.SBR \
		SWECL.SBR


SWEHOUSE_DEP = s:\devlop\sweph\src\swephexp.h \
	s:\devlop\sweph\src\sweodef.h \
	s:\devlop\sweph\src\swedll.h \
	s:\devlop\sweph\src\swephlib.h \
	s:\devlop\sweph\src\swehouse.h


SWEJPL_DEP = s:\devlop\sweph\src\swephexp.h \
	s:\devlop\sweph\src\sweodef.h \
	s:\devlop\sweph\src\swedll.h \
	s:\devlop\sweph\src\sweph.h \
	s:\devlop\sweph\src\swejpl.h


SWEMMOON_DEP = s:\devlop\sweph\src\swephexp.h \
	s:\devlop\sweph\src\sweodef.h \
	s:\devlop\sweph\src\swedll.h \
	s:\devlop\sweph\src\sweph.h \
	s:\devlop\sweph\src\swephlib.h


SWEMPLAN_DEP = s:\devlop\sweph\src\swephexp.h \
	s:\devlop\sweph\src\sweodef.h \
	s:\devlop\sweph\src\swedll.h \
	s:\devlop\sweph\src\sweph.h \
	s:\devlop\sweph\src\swephlib.h \
	s:\devlop\sweph\src\swemptab.c


SWEPH_DEP = s:\devlop\sweph\src\swejpl.h \
	s:\devlop\sweph\src\sweodef.h \
	s:\devlop\sweph\src\swephexp.h \
	s:\devlop\sweph\src\swedll.h \
	s:\devlop\sweph\src\sweph.h \
	s:\devlop\sweph\src\swephlib.h


SWEPHLIB_DEP = s:\devlop\sweph\src\swephexp.h \
	s:\devlop\sweph\src\sweodef.h \
	s:\devlop\sweph\src\swedll.h \
	s:\devlop\sweph\src\sweph.h \
	s:\devlop\sweph\src\swephlib.h


SWEDLLST_DEP = s:\devlop\sweph\src\swephexp.h \
	s:\devlop\sweph\src\sweodef.h \
	s:\devlop\sweph\src\swedll.h


SWEDATE_DEP = s:\devlop\sweph\src\swephexp.h \
	s:\devlop\sweph\src\sweodef.h \
	s:\devlop\sweph\src\swedll.h


SWECL_DEP = s:\devlop\sweph\src\swejpl.h \
	s:\devlop\sweph\src\sweodef.h \
	s:\devlop\sweph\src\swephexp.h \
	s:\devlop\sweph\src\swedll.h \
	s:\devlop\sweph\src\sweph.h \
	s:\devlop\sweph\src\swephlib.h


all:	$(PROJ).DLL $(PROJ).BSC

SWEHOUSE.OBJ:	..\SWEHOUSE.C $(SWEHOUSE_DEP)
	$(CC) $(CFLAGS) $(CUSEPCHFLAG) /c ..\SWEHOUSE.C

SWEJPL.OBJ:	..\SWEJPL.C $(SWEJPL_DEP)
	$(CC) $(CFLAGS) $(CUSEPCHFLAG) /c ..\SWEJPL.C

SWEMMOON.OBJ:	..\SWEMMOON.C $(SWEMMOON_DEP)
	$(CC) $(CFLAGS) $(CUSEPCHFLAG) /c ..\SWEMMOON.C

SWEMPLAN.OBJ:	..\SWEMPLAN.C $(SWEMPLAN_DEP)
	$(CC) $(CFLAGS) $(CUSEPCHFLAG) /c ..\SWEMPLAN.C

SWEPH.OBJ:	..\SWEPH.C $(SWEPH_DEP)
	$(CC) $(CFLAGS) $(CUSEPCHFLAG) /c ..\SWEPH.C

SWEPHLIB.OBJ:	..\SWEPHLIB.C $(SWEPHLIB_DEP)
	$(CC) $(CFLAGS) $(CUSEPCHFLAG) /c ..\SWEPHLIB.C

SWEDLLST.OBJ:	..\SWEDLLST.C $(SWEDLLST_DEP)
	$(CC) $(CFLAGS) $(CUSEPCHFLAG) /c ..\SWEDLLST.C

SWEDATE.OBJ:	..\SWEDATE.C $(SWEDATE_DEP)
	$(CC) $(CFLAGS) $(CCREATEPCHFLAG) /c ..\SWEDATE.C

SWECL.OBJ:	..\SWECL.C $(SWECL_DEP)
	$(CC) $(CFLAGS) $(CUSEPCHFLAG) /c ..\SWECL.C


$(PROJ).DLL::	SWEHOUSE.OBJ SWEJPL.OBJ SWEMMOON.OBJ SWEMPLAN.OBJ SWEPH.OBJ SWEPHLIB.OBJ \
	SWEDLLST.OBJ SWEDATE.OBJ SWECL.OBJ $(OBJS_EXT) $(DEFFILE)
	echo >NUL @<<$(PROJ).CRF
SWEHOUSE.OBJ +
SWEJPL.OBJ +
SWEMMOON.OBJ +
SWEMPLAN.OBJ +
SWEPH.OBJ +
SWEPHLIB.OBJ +
SWEDLLST.OBJ +
SWEDATE.OBJ +
SWECL.OBJ +
$(OBJS_EXT)
$(PROJ).DLL
$(MAPFILE)
e:\appl\msvc\lib\+
e:\appl\msvc\mfc\lib\+
$(LIBS)
$(DEFFILE);
<<
	link $(LFLAGS) @$(PROJ).CRF
	$(RC) $(RESFLAGS) $@
	implib /nowep $(PROJ).LIB $(PROJ).DLL


run: $(PROJ).DLL
	$(PROJ) $(RUNFLAGS)


$(PROJ).BSC: $(SBRS)
	bscmake @<<
/o$@ $(SBRS)
<<
