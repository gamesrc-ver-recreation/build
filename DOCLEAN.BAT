@echo off
set MSG=Please select what to clean:
call REVSEL.BAT

if "%CHOICE%" == "" goto end
if "%CHOICE%" == "DN3D13B" goto DN3D13B
if "%CHOICE%" == "199603" goto 199603
if "%CHOICE%" == "DN3D14" goto DN3D14
if "%CHOICE%" == "DN3D14B" goto DN3D14B
if "%CHOICE%" == "DN3D14G" goto DN3D14G
if "%CHOICE%" == "BLOOD" goto BLOOD
if "%CHOICE%" == "DN3D15" goto DN3D15
goto default

:DN3D13B
del 19960305\a.obj
del 19960419\build.obj
del 19960317\cache1d.obj
del 19960305\engine.obj
goto end
:199603
del 19960317\build.obj
del 19960319\cache1d.obj
del 19960320\engine.obj
goto end
:DN3D14
del 19960724\cache1d.obj
goto end
:DN3D14B
del 19960724\engine.obj
del 19960724\build.obj
goto end
:DN3D14G
del 19960820\engine.obj
goto end
:BLOOD
del 19960925\build.obj
del 19960925\cache1d.obj
del 19961006\engine.obj
:DN3D15
del 19961112\*.*
del 19961207\*.*
goto end

:default
del %CHOICE%\*.*

:end
set CHOICE=
