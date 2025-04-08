@echo off
if "%MSG%" == "" goto error
set CHOICE=
cls
echo [1] DN3D13B (BUILD.EXE) - A+BUILD+CACHE1D+ENGINE OBJs (MASM 5.10 + Watcom 10.5)
echo [2] 199603 - BUILD.OBJ(19960317)+CACHE1D.OBJ(19)+ENGINE.OBJ(20) (Watcom 10.5)
echo [3] A.OBJ as presumably prepared on 19960501 (MASM 5.10 + Watcom Make)
echo [4] MMULTI.OBJ as prepared on 19960904 (Watcom 10.5)
echo [5] DN3D14 - Matching CACHE1D.OBJ object (Watcom 10.5)
echo [6] DN3D14B (BUILD.EXE) - Matching BUILD.OBJ+ENGINE.OBJ objects (Watcom 10.5)
echo [7] DN3D14G (DUKE3D.EXE/GAME.EXE) - Matching ENGINE.OBJ object (Watcom 10.5)
echo [8] BLOOD - Matching BUILD.OBJ+ENGINE.OBJ+CACHE1D.OBJ objects (Watcom 10.5)
echo [9] 19961012 - BUILD.OBJ and ENGINE.OBJ (Watcom 10.5)
echo [A] DN3D15 (Game) - Matching CACHE1D.OBJ and ENGINE.OBJ objects (Watcom 10.5)
echo [B] 19961213 - BUILD.OBJ (Watcom 10.5)
echo [C] 19970212 - ENGINE.OBJ (Watcom 10.6)
echo [D] 19970522 - ENGINE.OBJ (Watcom 10.6)
echo [E] 20000614 - All of Ken-Build as prepared in June 2000 (Watcom 11.0)
echo [F] 20021107 - Ken-Build re-upload with minor patches (Watcom 11.0c beta*)
echo.
echo [0] Cancel and quit
echo.
echo * When building Ken-Build as uploaded in 2002, you should
echo use binnt\wcc386.exe, rather than binw\wcc386.exe.
echo.
echo %MSG%
set MSG=
choice /S /C:123456789AaBbCcDdEeFf0 /N
echo.

if ERRORLEVEL 22 goto end
if ERRORLEVEL 20 goto 20021107
if ERRORLEVEL 18 goto 20000614
if ERRORLEVEL 16 goto 19970522
if ERRORLEVEL 14 goto 19970212
if ERRORLEVEL 12 goto 19961213
if ERRORLEVEL 10 goto DN3D15
if ERRORLEVEL 9 goto 19961012
if ERRORLEVEL 8 goto BLOOD
if ERRORLEVEL 7 goto DN3D14G
if ERRORLEVEL 6 goto DN3D14B
if ERRORLEVEL 5 goto DN3D14
if ERRORLEVEL 4 goto 19960904
if ERRORLEVEL 3 goto 19960501
if ERRORLEVEL 2 goto 199603
if ERRORLEVEL 1 goto DN3D13B

:DN3D13B
set CHOICE=DN3D13B
goto end
:199603
set CHOICE=199603
goto end
:19960501
set CHOICE=19960501
goto end
:19960904
set CHOICE=19960904
goto end
:DN3D14
set CHOICE=DN3D14
goto end
:DN3D14B
set CHOICE=DN3D14B
goto end
:DN3D14G
set CHOICE=DN3D14G
goto end
:BLOOD
set CHOICE=BLOOD
goto end
:19961012
set CHOICE=19961012
goto end
:DN3D15
set CHOICE=DN3D15
goto end
:19961213
set CHOICE=19961213
goto end
:19970212
set CHOICE=19970212
goto end
:19970522
set CHOICE=19970522
goto end
:20000614
set CHOICE=20000614
goto end
:20021107
set CHOICE=20021107
goto end

:error
echo This script shouldn't be run independently

:end
