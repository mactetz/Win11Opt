@echo off
echo run as admin

rem check pwoershell 5.x or greater
SET POWERSHELL_PATH=%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe
SET PWSH_PATH=%ProgramFiles%\PowerShell\7\pwsh.exe

rem Überprüfen, ob PowerShell installiert ist
IF EXIST "%POWERSHELL_PATH%" (
    SET PSH_EXE=%POWERSHELL_PATH%
)

rem Überprüfen, ob PowerShell Core (pwsh) installiert ist
IF EXIST "%PWSH_PATH%" (
    SET PSH_EXE=%PWSH_PATH%
)

%PSH_EXE% -ExecutionPolicy Unrestricted .\Windows-Services-Stop.ps1
