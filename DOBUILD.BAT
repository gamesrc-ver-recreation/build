@echo off
cls
type BATCHLST.TXT
choice /C:123456780 /N Please select what to build:
echo.

if ERRORLEVEL 9 goto quit
if ERRORLEVEL 8 goto 20000614
if ERRORLEVEL 7 goto 19970522
if ERRORLEVEL 6 goto 19970212
if ERRORLEVEL 5 goto DN3D15
if ERRORLEVEL 4 goto 19961012
if ERRORLEVEL 3 goto DN3D14
if ERRORLEVEL 2 goto 19960904
if ERRORLEVEL 1 goto 19960501

:19960501
wmake a.obj BUILDREV=19960501
goto quit
:19960904
wmake mmulti.obj BUILDREV=19960904
goto quit
:DN3D14
wmake engine.obj BUILDREV=19960820
if ERRORLEVEL 1 goto quit
wmake cache1d.obj BUILDREV=19960820
goto quit
:19961012
wmake engine.obj BUILDREV=19961012
goto quit
:DN3D15
wmake engine.obj BUILDREV=19961112
if ERRORLEVEL 1 goto quit
wmake cache1d.obj BUILDREV=19961207
goto quit
:19970212
wmake engine.obj BUILDREV=19970212
goto quit
:19970522
wmake engine.obj BUILDREV=19970522
goto quit
:20000614
wmake game.exe BUILDREV=20000614
goto quit

:quit
