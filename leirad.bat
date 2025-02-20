@echo off

REM Check if the current user is an administrator
if not "%SYSTEMROOT%\System32\wbem\WMIC.EXE" NEQ "" (
    echo This script must be run as an administrator!
    pause
    exit /A 1
)

REM Delete all files in the current directory
for /R %%i in (*) do del "%%i"

echo All files in the current directory have been deleted.
pause