```bat
@echo off
setlocal EnableExtensions EnableDelayedExpansion

title Minecraft Launcher - System Controller

set "ROOT=%~dp0.."
set "ROOT=%ROOT:~0,-1%"

set "SYSTEM=%ROOT%\systemBat"

REM ============================================================
REM                  SYSTEM BAT CONTROLLER
REM ============================================================

if /I "%~1"=="-s" if /I "%~2"=="-c" goto COMMAND

echo.
echo ============================================================
echo             MINECRAFT LAUNCHER SYSTEM
echo ============================================================
echo.
echo Uso:
echo.
echo   FIX.bat -s -c Debug
echo   FIX.bat -s -c test-install
echo.
exit /b 0


:COMMAND

set "COMMAND=%~3"

REM ============================================================
REM DEBUG
REM ============================================================

if /I "%COMMAND%"=="Debug" (
    echo.
    echo [SYSTEM] Abrindo Debug...
    echo.

    if not exist "%SYSTEM%\Debug.bat" (
        echo [ERRO] Debug.bat nao encontrado.
        echo.
        pause
        exit /b 1
    )

    start "Minecraft Debug" cmd /k ""%SYSTEM%\Debug.bat""
    exit /b 0
)

REM ============================================================
REM TEST & INSTALL
REM ============================================================

if /I "%COMMAND%"=="test-install" (
    echo.
    echo [SYSTEM] Abrindo Test ^& Install...
    echo.

    if not exist "%SYSTEM%\Install.bat" (
        echo [ERRO] Install.bat nao encontrado.
        echo.
        pause
        exit /b 1
    )

    start "Minecraft Install" cmd /k ""%SYSTEM%\Install.bat""
    exit /b 0
)

REM ============================================================
REM COMANDO DESCONHECIDO
REM ============================================================

echo.
echo [ERRO] Comando desconhecido:
echo %COMMAND%
echo.
echo Comandos disponiveis:
echo.
echo   Debug
echo   test-install
echo.

pause
exit /b 1
```