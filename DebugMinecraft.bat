@echo off
setlocal EnableDelayedExpansion
title Minecraft 1.8.8 - DEBUG

echo ============================================================
echo              MINECRAFT 1.8.8 - DEBUG
echo ============================================================
echo.
echo [CONFIGURACAO]
echo.
echo Pasta do launcher:
echo C:\Users\fiden\Downloads\launcher-20261002T195522Z-1-001\launcher\
echo.
echo Java:
echo C:\Users\fiden\Downloads\launcher-20261002T195522Z-1-001\launcher\java\bin\java.exe
echo.
echo Minecraft JAR:
echo C:\Users\fiden\Downloads\launcher-20261002T195522Z-1-001\launcher\versions\1.8.8\1.8.8.jar
echo.
echo jopt-simple:
echo C:\Users\fiden\Downloads\launcher-20261002T195522Z-1-001\launcher\libraries\net\sf\jopt-simple\jopt-simple\4.6\jopt-simple-4.6.jar
echo.
echo ============================================================
echo [JAVA VERSION]
echo ============================================================
echo.
"C:\Users\fiden\Downloads\launcher-20261002T195522Z-1-001\launcher\java\bin\java.exe" -version
echo.
echo ============================================================
echo [CLASSPATH]
echo ============================================================
echo.
set "CP=C:\Users\fiden\Downloads\launcher-20261002T195522Z-1-001\launcher\versions\1.8.8\1.8.8.jar;C:\Users\fiden\Downloads\launcher-20261002T195522Z-1-001\launcher\libraries\net\sf\jopt-simple\jopt-simple\4.6\jopt-simple-4.6.jar"
echo Classpath:
echo %CP%
echo.
echo ============================================================
echo [INICIANDO MINECRAFT]
echo ============================================================
echo.
echo Comando:
echo.
echo "C:\Users\fiden\Downloads\launcher-20261002T195522Z-1-001\launcher\java\bin\java.exe" -cp "%CP%" net.minecraft.client.main.Main
echo.
"C:\Users\fiden\Downloads\launcher-20261002T195522Z-1-001\launcher\java\bin\java.exe" -cp "%CP%" net.minecraft.client.main.Main

echo ============================================================
echo MINECRAFT TERMINOU
echo ============================================================
echo.
pause
