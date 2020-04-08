# Microsoft Visual C++ generated build script - Do not modify

PROJ = SWETEST
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
FIRSTC = SWEDATE.C   
FIRSTCPP =             
RC = rc
CFLAGS_D_DEXE = /nologo /G2 /W3 /Zi /AL /Od /D "_DEBUG" /D "DOS_DEGREE" /D "_DOS" /FR /Fd"SWETEST.PDB"
CFLAGS_R_DEXE = /nologo /f- /Gs /G2 /W3 /ALw /D "NDEBUG" /D "_DOS" /D "DOS_DEGREE" /FR 
LFLAGS_D_DEXE = /NOLOGO /NOI /STACK:10000 /ONERROR:NOEXE /CO 
LFLAGS_R_DEXE = /NOLOGO /NOI /STACK:10000 /ONERROR:NOEXE 
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
SBRS = SWEDATE.SBR \
		SWEJPL.SBR \
		SWEMMOON.SBR \
		SWEMPLAN.SBR \
		SWEPH.SBR \
		SWEPHLIB.SBR \
		SWETEST.SBR


SWEDATE_DEP = e:\devlop\sweph\src\swephexp.h \
	e:\devlop\sweph\src\ourdef.h \
	e:\devlop\sweph\src\swedll.h


SWEJPL_DEP = e:\devlop\sweph\src\swephexp.h \
	e:\devlop\sweph\src\ourdef.h \
	e:\devlop\sweph\src\swedll.h \
	e:\devlop\sweph\src\sweph.h \
	e:\devlop\sweph\src\swejpl.h


SWEMMOON_DEP = e:\devlop\sweph\src\swephexp.h \
	e:\devlop\sweph\src\ourdef.h \
	e:\devlop\sweph\src\swedll.h \
	e:\devlop\sweph\src\sweph.h \
	e:\devlop\sweph\src\swephlib.h


SWEMPLAN_DEP = e:\devlop\sweph\src\swephexp.h \
	e:\devlop\sweph\src\ourdef.h \
	e:\devlop\sweph\src\swedll.h \
	e:\devlop\sweph\src\sweph.h \
	e:\devlop\sweph\src\swephlib.h \
	e:\devlop\sweph\src\swemptab.c


SWEPH_DEP = e:\devlop\sweph\src\swejpl.h \
	e:\devlop\sweph\src\ourdef.h \
	e:\devlop\sweph\src\swephexp.h \
	e:\devlop\sweph\src\swedll.h \
	e:\devlop\sweph\src\sweph.h \
	e:\devlop\sweph\src\swephlib.h


SWEPHLIB_DEP = e:\devlop\sweph\src\swephexp.h \
	e:\devlop\sweph\src\ourdef.h \
	e:\devlop\sweph\src\swedll.h \
	e:\devlop\sweph\src\sweph.h \
	e:\devlop\sweph\src\swephlib.h


SWETEST_DEP = e:\devlop\sweph\src\ourdef.h \
	e:\devlop\sweph\src\swephexp.h \
	e:\devlop\sweph\src\swedll.h


all:	$(PROJ).EXE $(PROJ).BSC

SWEDATE.OBJ:	..\SWEDATE.C $(SWEDATE_DEP)
	$(CC) $(CFLAGS) $(CCREATEPCHFLAG) /c ..\SWEDATE.C

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

SWETEST.OBJ:	..\SWETEST.C $(SWETEST_DEP)
	$(CC) $(CFLAGS) $(CUSEPCHFLAG) /c ..\SWETEST.C

$(PROJ).EXE::	SWEDATE.OBJ SWEJPL.OBJ SWEMMOON.OBJ SWEMPLAN.OBJ SWEPH.OBJ SWEPHLIB.OBJ \
	SWETEST.OBJ $(OBJS_EXT) $(DEFFILE)
	echo >NUL @<<$(PROJ).CRF
SWEDATE.OBJ +
SWEJPL.OBJ +
SWEMMOON.OBJ +
SWEMPLAN.OBJ +
SWEPH.OBJ +
SWEPHLIB.OBJ +
SWETEST.OBJ +
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
