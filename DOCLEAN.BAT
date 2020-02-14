@echo off
cls
type BATCHLST.TXT
choice /C:123456789AaBbCcDd0 /N Please select what to clean:
echo.

if ERRORLEVEL 18 goto end
if ERRORLEVEL 10 goto default
if ERRORLEVEL 9 goto DN3D15
if ERRORLEVEL 8 goto default
if ERRORLEVEL 7 goto DN3D14G
if ERRORLEVEL 6 goto DN3D14B
if ERRORLEVEL 5 goto DN3D14
if ERRORLEVEL 2 goto default
if ERRORLEVEL 1 goto DN3D13B
goto default

:DN3D13B
del 19960305\a.obj
del 19960419\build.obj
del 19960305\cache1d.obj
del 19960305\engine.obj
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
:DN3D15
del 19961112\*.*
del 19961207\*.*
goto end

:default
if ERRORLEVEL 2 set DIR=19960319
if ERRORLEVEL 3 set DIR=19960501
if ERRORLEVEL 4 set DIR=19960904
if ERRORLEVEL 8 set DIR=19961012
if ERRORLEVEL 10 set DIR=19961213
if ERRORLEVEL 12 set DIR=19970212
if ERRORLEVEL 14 set DIR=19970522
if ERRORLEVEL 16 set DIR=20000614

del %DIR%\*.*

:end
