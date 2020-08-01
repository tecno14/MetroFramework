@echo off
set dis=.\_Lib\
del /F /Q /S %dis%*

set be=.\
set af=\bin

set name=MetroFramework
call :copy

set name=MetroFramework.Demo
call :copy

set name=MetroFramework.Design
call :copy

goto :end

rem ----------------
:copy

Xcopy %be%%name%%af% %dis% /E /H /C /I /Y

exit /b 0


:end