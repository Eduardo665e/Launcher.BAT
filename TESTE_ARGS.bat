@echo off
cd /d "%~dp0"

echo =========================
echo TESTE DE ARGUMENTOS
echo =========================
echo.

"java\bin\java.exe" ^
-cp "versions\1.8.8\1.8.8.jar;libraries\net\sf\jopt-simple\jopt-simple\4.6\jopt-simple-4.6.jar" ^
net.minecraft.client.main.Main ^
--accessToken 0

echo.
echo =========================
echo CODIGO: %ERRORLEVEL%
echo =========================
pause