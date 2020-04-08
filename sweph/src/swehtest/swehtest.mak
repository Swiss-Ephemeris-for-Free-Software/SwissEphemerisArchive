# Microsoft Visual C++ generated build script - Do not modify

PROJ = SWEHTEST
DEBUG = 0
PROGTYPE = 6
CALLER = 
ARGS = 
DLLS = 
D_RCDEFINES = -d_DEBUG
R_RCDEFINES = -dNDEBUG
ORIGIN = MSVC
ORIGIN_VER = 1.00
PROJPATH = E:\DEVLOP\SWEPH\SRC\SWEHTEST\
USEMFC = 0
CC = cl
CPP = cl
CXX = cl
CCREATEPCHFLAG = 
CPPCREATEPCHFLAG = 
CUSEPCHFLAG = 
CPPUSEPCHFLAG = 
FIRSTC = SWEHTEST.C  
FIRSTCPP =             
RC = rc
CFLAGS_D_DEXE = /nologo /f /G2 /W3 /Zi /ALw /O2 /D "_DEBUG" /D "_DOS" /D "DOS_DEGREE" /FR /Fd"SWEHTEST.PDB"
CFLAGS_R_DEXE = /nologo /f /Gs /G2 /W3 /ALw /O2 /Ox /D "NDEBUG" /D "_DOS" /D "DOS_DEGREE" /FR 
LFLAGS_D_DEXE = /NOLOGO /NOI /STACK:5120 /ONERROR:NOEXE /CO 
LFLAGS_R_DEXE = /NOLOGO /NOI /STACK:5120 /ONERROR:NOEXE 
LIBS_D_DEXE = oldnames llibce 
LIBS_R_DEXE = oldnames llibce 
RCFLAGS = /nologo
RESFLAGS = /nologo
RUNFLAGS = 
OBJS_EXT = 
LIBS_EXT = 
!if "$(DEBUG)" == "1"
CFLAGS = $(CFLAGS_D_DEXE)
LFLAGS = $(LFLAGS_D_DEXE)
LIBS = $(LIBS_D_DEXE)
MAPFILE = nul
RCDEFINES = $(D_RCDEFINES)
!else
CFLAGS = $(CFLAGS_R_DEXE)
LFLAGS = $(LFLAGS_R_DEXE)
LIBS = $(LIBS_R_DEXE)
MAPFILE = nul
RCDEFINES = $(R_RCDEFINES)
!endif
!if [if exist MSVC.BND del MSVC.BND]
!endif
SBRS = SWEHTEST.SBR \
		SWEHOUSE.SBR \
		SWEPHLIB.SBR \
		SWEDATE.SBR


SWEHTEST_DEP = e:\devlop\sweph\src\swephexp.h \
	e:\devlop\sweph\src\ourdef.h \
	e:\devlop\sweph\src\swedll.h


SWEHOUSE_DEP = e:\devlop\sweph\src\swephexp.h \
	e:\devlop\sweph\src\ourdef.h \
	e:\devlop\sweph\src\swedll.h \
	e:\devlop\sweph\src\swephlib.h \
	e:\devlop\sweph\src\swehouse.h


SWEPHLIB_DEP = e:\devlop\sweph\src\swephexp.h \
	e:\devlop\sweph\src\ourdef.h \
	e:\devlop\sweph\src\swedll.h \
	e:\devlop\sweph\src\sweph.h \
	e:\devlop\sweph\src\swephlib.h


SWEDATE_DEP = e:\devlop\sweph\src\swephexp.h \
	e:\devlop\sweph\src\ourdef.h \
	e:\devlop\sweph\src\swedll.h


all:	$(PROJ).EXE $(PROJ).BSC

SWEHTEST.OBJ:	..\SWEHTEST.C $(SWEHTEST_DEP)
	$(CC) $(CFLAGS) $(CCREATEPCHFLAG) /c ..\SWEHTEST.C

SWEHOUSE.OBJ:	..\SWEHOUSE.C $(SWEHOUSE_DEP)
	$(CC) $(CFLAGS) $(CUSEPCHFLAG) /c ..\SWEHOUSE.C

SWEPHLIB.OBJ:	..\SWEPHLIB.C $(SWEPHLIB_DEP)
	$(CC) $(CFLAGS) $(CUSEPCHFLAG) /c ..\SWEPHLIB.C

SWEDATE.OBJ:	..\SWEDATE.C $(SWEDATE_DEP)
	$(CC) $(CFLAGS) $(CUSEPCHFLAG) /c ..\SWEDATE.C

$(PROJ).EXE::	SWEHTEST.OBJ SWEHOUSE.OBJ SWEPHLIB.OBJ SWEDATE.OBJ $(OBJS_EXT) $(DEFFILE)
	echo >NUL @<<$(PROJ).CRF
SWEHTEST.OBJ +
SWEHOUSE.OBJ +
SWEPHLIB.OBJ +
SWEDATE.OBJ +
$(OBJS_EXT)
$(PROJ).EXE
$(MAPFILE)
e:\appl\msvc\lib\+
e:\appl\msvc\mfc\lib\+
$(LIBS)
$(DEFFILE);
<<
	link $(LFLAGS) @$(PROJ).CRF

run: $(PROJ).EXE
	$(PROJ) $(RUNFLAGS)


$(PROJ).BSC: $(SBRS)
	bscmake @<<
/o$@ $(SBRS)
<<
