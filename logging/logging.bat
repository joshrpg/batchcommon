@echo off

for /F "tokens=1-4 delims=/ " %%i in ('date /t') do (
    set WD=%%i
    set D=%%j
    set M=%%k
    set Y=%%l
) 

for /F "tokens=1-4 delims=: " %%i in ('time /t') do (
    set H=%%i
    set Mn=%%j
    set AP=%%k
)

::if "%AP%"=="PM" set /A H=%H%+12

set log=%WD%-%D%-%M%-%Y%-%H%-%Mn%%AP%.log
