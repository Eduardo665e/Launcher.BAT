```bat
@echo off
setlocal EnableExtensions EnableDelayedExpansion

title Custom Minecraft Launcher

cd /d "%~dp0"
set "ROOT=%~dp0"
set "JAVA=%ROOT%java\bin\java.exe"
set "VERSION=1.8.8"
set "VERSION_DIR=%ROOT%versions\%VERSION%"
set "GAME=%ROOT:~0,-1%"
set "NATIVES=%ROOT%natives\%VERSION%"

:MENU
cls
echo.
echo ==========================================
echo          CUSTOM MINECRAFT LAUNCHER
echo ==========================================
echo.
echo {1} Minecraft 1.8.8
echo {0} Logout
echo.
echo {-s -c test^&install} Configuration
echo.
set /p "OPTION=Selection de version: "

if "%OPTION%"=="1" goto LAUNCH_188
if "%OPTION%"=="0" goto EXIT
if /I "%OPTION%"=="-s -c test&install" goto CONFIG

echo.
echo Opcao invalida.
pause
goto MENU


:LAUNCH_188
cls
echo.
echo ==========================================
echo        MINECRAFT 1.8.8
echo ==========================================
echo.
echo Preparando...

if not exist "%JAVA%" (
    echo.
    echo [ERRO] Java nao encontrado:
    echo %JAVA%
    pause
    goto MENU
)

if not exist "%VERSION_DIR%\1.8.8.jar" (
    echo.
    echo [ERRO] 1.8.8.jar nao encontrado.
    echo %VERSION_DIR%\1.8.8.jar
    pause
    goto MENU
)

if not exist "%VERSION_DIR%\1.8.8.json" (
    echo.
    echo [ERRO] 1.8.8.json nao encontrado.
    pause
    goto MENU
)

if not exist "%ROOT%libraries" (
    echo.
    echo [ERRO] Pasta libraries nao encontrada.
    pause
    goto MENU
)

if not exist "%NATIVES%" mkdir "%NATIVES%"


REM =========================================================
REM CLASSPATH DA MINECRAFT 1.8.8
REM Baseado nas dependencias usadas pelo SKlauncher
REM =========================================================

set "CP="

call :ADD "%ROOT%libraries\com\mojang\netty\1.8.8\netty-1.8.8.jar"
call :ADD "%ROOT%libraries\oshi-project\oshi-core\1.1\oshi-core-1.1.jar"

call :ADD "%ROOT%libraries\net\java\dev\jna\jna\3.4.0\jna-3.4.0.jar"
call :ADD "%ROOT%libraries\net\java\dev\jna\platform\3.4.0\platform-3.4.0.jar"

call :ADD "%ROOT%libraries\com\ibm\icu\icu4j-core-mojang\51.2\icu4j-core-mojang-51.2.jar"

call :ADD "%ROOT%libraries\net\sf\jopt-simple\jopt-simple\4.6\jopt-simple-4.6.jar"

call :ADD "%ROOT%libraries\com\paulscode\codecjorbis\20101023\codecjorbis-20101023.jar"
call :ADD "%ROOT%libraries\com\paulscode\codecwav\20101023\codecwav-20101023.jar"
call :ADD "%ROOT%libraries\com\paulscode\libraryjavasound\20101123\libraryjavasound-20101123.jar"
call :ADD "%ROOT%libraries\com\paulscode\librarylwjglopenal\20100824\librarylwjglopenal-20100824.jar"
call :ADD "%ROOT%libraries\com\paulscode\soundsystem\20120107\soundsystem-20120107.jar"
call :ADD "%ROOT%libraries\io\netty\netty-all\4.0.23.Final\netty-all-4.0.23.Final.jar"

call :ADD "%ROOT%libraries\com\google\guava\guava\17.0\guava-17.0.jar"

call :ADD "%ROOT%libraries\org\apache\commons\commons-lang3\3.3.2\commons-lang3-3.3.2.jar"
call :ADD "%ROOT%libraries\commons-io\commons-io\2.4\commons-io-2.4.jar"
call :ADD "%ROOT%libraries\commons-codec\commons-codec\1.9\commons-codec-1.9.jar"

call :ADD "%ROOT%libraries\net\java\jinput\jinput\2.0.5\jinput-2.0.5.jar"
call :ADD "%ROOT%libraries\net\java\jutils\jutils\1.0.0\jutils-1.0.0.jar"

call :ADD "%ROOT%libraries\com\google\code\gson\gson\2.2.4\gson-2.2.4.jar"

call :ADD "%ROOT%libraries\com\mojang\authlib\1.5.21\authlib-1.5.21.jar"
call :ADD "%ROOT%libraries\com\mojang\realms\1.7.39\realms-1.7.39.jar"

call :ADD "%ROOT%libraries\org\apache\commons\commons-compress\1.8.1\commons-compress-1.8.1.jar"

call :ADD "%ROOT%libraries\org\apache\httpcomponents\httpclient\4.3.3\httpclient-4.3.3.jar"
call :ADD "%ROOT%libraries\commons-logging\commons-logging\1.1.3\commons-logging-1.1.3.jar"
call :ADD "%ROOT%libraries\org\apache\httpcomponents\httpcore\4.3.2\httpcore-4.3.2.jar"

call :ADD "%ROOT%libraries\org\apache\logging\log4j\log4j-api\2.0-beta9\log4j-api-2.0-beta9.jar"
call :ADD "%ROOT%libraries\org\apache\logging\log4j\log4j-core\2.0-beta9\log4j-core-2.0-beta9.jar"

call :ADD "%ROOT%libraries\org\lwjgl\lwjgl\lwjgl\2.9.4-nightly-20150209\lwjgl-2.9.4-nightly-20150209.jar"
call :ADD "%ROOT%libraries\org\lwjgl\lwjgl\lwjgl_util\2.9.4-nightly-20150209\lwjgl_util-2.9.4-nightly-20150209.jar"

call :ADD "%ROOT%libraries\com\twitchtv\twitch\6.5\twitch-6.5.jar"

REM Minecraft
call :ADD "%VERSION_DIR%\1.8.8.jar"


echo.
echo ==========================================
echo CLASSpath preparado.
echo ==========================================
echo.
echo Iniciando Minecraft...
echo.

cd /d "%GAME%"

echo.
echo TESTE: accessToken = 0
echo.

REM =========================================================
REM DIAGNOSTICO
REM Mostra o comando EXATO que o BAT esta montando.
REM O Java ainda NAO sera executado.
REM =========================================================

"%JAVA%" -Djava.library.path="%NATIVES%" -Dminecraft.launcher.brand=java-minecraft-launcher -Dminecraft.launcher.version=1.6.93 -Dminecraft.client.jar="%VERSION_DIR%\1.8.8.jar" -Xmx2G -cp "%CP%" net.minecraft.client.main.Main --username Player --version 1.8.8 --gameDir "%GAME%" --assetsDir "%ROOT%assets" --assetIndex 1.8 --uuid 00000000-0000-0000-0000-000000000000 --accessToken=0 --userProperties "{}" --userType legacy
echo.
echo ==========================================
echo DIAGNOSTICO FINALIZADO
echo ==========================================
echo.
pause
goto MENU


REM =========================================================
REM ADICIONA JAR AO CLASSPATH
REM =========================================================

:ADD

if not exist "%~1" (
    echo [AVISO] Dependencia ausente:
    echo %~1
    exit /b
)

if defined CP (
    set "CP=!CP!;%~1"
) else (
    set "CP=%~1"
)

exit /b


:CONFIG
cls
echo.
echo ==========================================
echo              CONFIGURATION
echo ==========================================
echo.
echo Abrindo configuracao...
echo.

if exist "%ROOT%systemBat\Install.bat" (
    start "Minecraft Configuration" cmd /k ""%ROOT%systemBat\Install.bat""
) else (
    echo Install.bat nao encontrado.
    pause
)

goto MENU


:EXIT
cls
echo.
echo Logout...
timeout /t 1 >nul
exit /b
```