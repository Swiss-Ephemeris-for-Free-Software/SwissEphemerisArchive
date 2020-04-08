# Microsoft Visual C++ generated build script - Do not modify

PROJ = SWEWIN
DEBUG = 0
PROGTYPE = 0
CALLER = 
ARGS = 
DLLS = 
D_RCDEFINES = -d_DEBUG
R_RCDEFINES = -dNDEBUG
ORIGIN = MSVC
ORIGIN_VER = 1.00
PROJPATH = S:\DEVLOP\SWEPH\SRC\SWEWIN\
USEMFC = 0
CC = cl
CPP = cl
CXX = cl
CCREATEPCHFLAG = 
CPPCREATEPCHFLAG = 
CUSEPCHFLAG = 
CPPUSEPCHFLAG = 
FIRSTC = SWEWIN.C    
FIRSTCPP =             
RC = rc
CFLAGS_D_WEXE = /nologo /f /G2 /Gc /W3 /Zi /ALw /Od /D "_DEBUG" /D "USE_DLL" /D "USE_DLL16" /FR /GA /Fd"SWEWIN.PDB"
CFLAGS_R_WEXE = /nologo /f /G2 /Gc /W3 /ALw /O1 /D "NDEBUG" /D "USE_DLL" /D "USE_DLL16" /FR /GA 
LFLAGS_D_WEXE = /NOLOGO /NOD /PACKC:61440 /STACK:10240 /ALIGN:16 /ONERROR:NOEXE /CO  
LFLAGS_R_WEXE = /NOLOGO /NOD /PACKC:61440 /STACK:20000 /ALIGN:16 /ONERROR:NOEXE  
LIBS_D_WEXE = oldnames libw llibcew commdlg.lib olecli.lib olesvr.lib shell.lib 
LIBS_R_WEXE = oldnames libw llibcew commdlg.lib olecli.lib olesvr.lib shell.lib 
RCFLAGS = /nologo
RESFLAGS = /nologo
RUNFLAGS = 
DEFFILE = SWEWIN.DEF
OBJS_EXT = 
LIBS_EXT = ..\..\BIN\SWEDLL16.LIB 
!if "$(DEBUG)" == "1"
CFLAGS = $(CFLAGS_D_WEXE)
LFLAGS = $(LFLAGS_D_WEXE)
LIBS = $(LIBS_D_WEXE)
MAPFILE = nul
RCDEFINES = $(D_RCDEFINES)
!else
CFLAGS = $(CFLAGS_R_WEXE)
LFLAGS = $(LFLAGS_R_WEXE)
LIBS = $(LIBS_R_WEXE)
MAPFILE = nul
RCDEFINES = $(R_RCDEFINES)
!endif
!if [if exist MSVC.BND del MSVC.BND]
!endif
SBRS = SWEWIN.SBR


SWEDLL16_DEP = 

SWEWIN_DEP = s:\devlop\sweph\src\sweodef.h \
	s:\devlop\sweph\src\swewin.h \
	s:\devlop\sweph\src\watc1632.h \
	s:\devlop\sweph\src\swephexp.h \
	s:\devlop\sweph\src\swedll.h


all:	$(PROJ).EXE $(PROJ).BSC

SWEWIN.OBJ:	..\SWEWIN.C $(SWEWIN_DEP)
	$(CC) $(CFLAGS) $(CCREATEPCHFLAG) /c ..\SWEWIN.C

SWEWIN.RES:	..\SWEWIN.RC $(SWEWIN_RCDEP)
	$(RC) $(RCFLAGS) $(RCDEFINES) -r -FoS:\DEVLOP\SWEPH\SRC\SWEWIN\SWEWIN.RES ..\SWEWIN.RC


$(PROJ).EXE::	SWEWIN.RES

$(PROJ).EXE::	SWEWIN.OBJ $(OBJS_EXT) $(DEFFILE)
	echo >NUL @<<$(PROJ).CRF
SWEWIN.OBJ +
$(OBJS_EXT)
$(PROJ).EXE
$(MAPFILE)
e:\appl\msvc\lib\+
e:\appl\msvc\mfc\lib\+
..\..\BIN\SWEDLL16.LIB+
$(LIBS)
$(DEFFILE);
<<
	link $(LFLAGS) @$(PROJ).CRF
	$(RC) $(RESFLAGS) SWEWIN.RES $@
	@copy $(PROJ).CRF MSVC.BND

$(PROJ).EXE::	SWEWIN.RES
	if not exist MSVC.BND 	$(RC) $(RESFLAGS) SWEWIN.RES $@

run: $(PROJ).EXE
	$(PROJ) $(RUNFLAGS)


$(PROJ).BSC: $(SBRS)
	bscmake @<<
/o$@ $(SBRS)
<<
