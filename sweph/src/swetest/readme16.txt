How to build the SWISSEPH demo programs for Windows:

1 Character mode executables
============================

1.1 swetest.exe (16-bit)
------------------------

This is a DOS executable.
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

define macro:

DOS_DEGREE


3 Character mode executables that need a DLL
============================================
3.1 (16-bit)
------------

files required:

swetest.c
swedll16.lib

swephexp.h
swedll.h
sweodef.h

define macros:

USE_DLL 
USE_DLL16


