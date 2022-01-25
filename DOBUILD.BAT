@echo off
set MSG=Please select what to build:
call REVSEL.BAT

if "%CHOICE%" == "" goto end
REM bldhlpr is responsible for resetting %CHOICE%
goto %CHOICE%

:DN3D13B
call bldhlpr a.obj 19960305
if ERRORLEVEL 1 goto end
call bldhlpr build.obj 19960419
if ERRORLEVEL 1 goto end
call bldhlpr cache1d.obj 19960317
if ERRORLEVEL 1 goto end
call bldhlpr engine.obj 19960305
goto end
:199603
call bldhlpr build.obj 19960317
if ERRORLEVEL 1 goto end
call bldhlpr cache1d.obj 19960319
if ERRORLEVEL 1 goto end
call bldhlpr engine.obj 19960320
goto end
:19960501
call bldhlpr a.obj 19960501
goto end
:19960904
call bldhlpr mmulti.obj 19960904
goto end
:DN3D14
call bldhlpr cache1d.obj 19960724
goto end
:DN3D14B
call bldhlpr engine.obj 19960724
if ERRORLEVEL 1 goto end
call bldhlpr build.obj 19960724
goto end
:DN3D14G
call bldhlpr engine.obj 19960820
goto end
:19961012
call bldhlpr build.obj 19961012
if ERRORLEVEL 1 goto end
call bldhlpr engine.obj 19961012
goto end
:DN3D15
call bldhlpr engine.obj 19961112
if ERRORLEVEL 1 goto end
call bldhlpr cache1d.obj 19961207
goto end
:19961213
call bldhlpr build.obj 19961213
goto end
:19970212
call bldhlpr engine.obj 19970212
goto end
:19970522
call bldhlpr engine.obj 19970522
goto end
:20000614
call bldhlpr game.exe 20000614
goto end

:end
