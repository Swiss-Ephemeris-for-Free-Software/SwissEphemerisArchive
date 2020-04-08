How to build the SWISSEPH demo programs for Windows:

1 Character mode executables
============================

1.2 swete32.exe (32-bit)
------------------------

files required:

swetest.c
sweph.c
swephlib.c
swejpl.c
swemmoon.c
swemplan.c
swemptab.c
swedate.c

sweph.h
swephexp.h
swephlib.h
swejpl.h
swemosh.h
sweodef.h

define macros:
 
DOS_DEGREE 
DOS32


3 Character mode executables that need a DLL
============================================
3.2 swete32.exe (32-bit)
------------

files required:

swetest.c
swedll16.lib

swephexp.h
swedll.h
sweodef.h

define macros:

USE_DLL
DOS32
DOS_DEGREE


