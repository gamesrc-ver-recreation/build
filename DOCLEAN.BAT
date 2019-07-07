@echo off
cls
type BATCHLST.TXT
choice /C:123456789AaBb0 /N Please select what to clean:
echo.

if ERRORLEVEL 14 goto end
if ERRORLEVEL 8 goto default
if ERRORLEVEL 7 goto DN3D15
if ERRORLEVEL 6 goto default
if ERRORLEVEL 5 goto DN3D14G
if ERRORLEVEL 4 goto DN3D14B
if ERRORLEVEL 3 goto DN3D14
goto default

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
if ERRORLEVEL 1 set DIR=19960501
if ERRORLEVEL 2 set DIR=19960904
if ERRORLEVEL 6 set DIR=19961012
if ERRORLEVEL 8 set DIR=19961213
if ERRORLEVEL 9 set DIR=19970212
if ERRORLEVEL 10 set DIR=19970522
if ERRORLEVEL 12 set DIR=20000614

del %DIR%\*.*

:end
