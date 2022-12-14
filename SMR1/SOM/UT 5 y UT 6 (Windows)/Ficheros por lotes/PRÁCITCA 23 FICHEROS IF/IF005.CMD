@echo off
@rem ejemplo
color 4f
title Ejemplo

:menu
cls
@echo Estamos en: %CD%
@echo Hola %USERNAME% esto es una prueba

echo.
echo ============  Menu  ============
echo.
      echo 0. Informacion del sistema
      echo 1. Mandar ping
      echo 2. Conocer IP
      echo 3. Tracert
      echo 4. Netstat
      echo 5. Nslookup
      echo 6. Apagar sistema
      echo 7. Escanear disco
      echo 8. Salir

echo =================================
set /p numero=Teclea un opcion (Ctrl + c para salir del menu):
@rem echo Tecleaste %numero%

if %numero%==0 goto :informacion
if %numero%==1 goto :conexion
if %numero%==2 goto :miIP
if %numero%==3 goto :Tracert
if %numero%==4 goto :Netstat
if %numero%==5 goto :Nslookup
if %numero%==6 goto :apagar
if %numero%==7 goto :escanear
if %numero%==8 goto :fin
if %numero% GTR 8 echo Error
goto :menu


:informacion
@rem CALL miInfo
@start cmd /k systeminfo 
goto :menu

:conexion
@start cmd /k ping www.google.com.mx
goto :menu

:miIP
@start cmd /k ipconfig /all
goto :menu


:Tracert
set /p host=Teclea host o IP:
@start cmd /k tracert %host%
goto :menu

:Netstat
@start cmd /k netstat -bo 10
goto :menu

:Nslookup
@start cmd /k nslookup
goto :menu


:apagar
start shutdown -s -t 300 -c "Apagando sistema ..."
echo Apagando ...
goto :menu


:escanear
start sfc /scannow
echo Escaneando disco ...
goto :menu

:fin
exit

