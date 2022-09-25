@echo off
:inicio
cls
rem En este primer comando, filtro la salida de "ipconfig" para que se guarde
rem en el archivo "prueba" solo los nombres de las tarjetas de red del equipo
ipconfig /all | find "Adaptador Ethernet" > prueba

rem Ahora preparo un archivo auxiliar llamado "prueba2". Es necesario poner los
rem 2 puntos del pricipio separados por espacios
echo . . TARJETAS DE RED DE ESTE EQUIPO: > prueba2
echo . . =============================== >>prueba2

rem ahora con el comando for filtro las lineas del archivo "prueba" y las 
rem guardo sin el caracter ":" en el archivo "prueba2"
for /f "delims=:" %%i in (prueba) do @echo %%i >> prueba2

rem Ahora cojo la segunda palabra, y el resto de linea, de cada linea del 
rem archivo "prueba2", para sacar por pantalla los nombres de las tarjetas
rem de red del equipo
for /f "tokens=2,*" %%i in (prueba2) do @echo %%j

rem ahora borro los archivos auxiliares "prueba" y "prueba2"
del prueba
del prueba2

echo .
echo En que tarjeta de red quieres trabajar:
set /p tarjeta=

cls
echo Quieres poner IP dinámica o estatica:
echo 1.- Dinamica
echo 2.- Estatica
set /p opcion=
if %opcion% == 1 goto dinamica
if %opcion% == 2 goto estatica

goto inicio

:dinamica
cls
netsh interface ip set address name="%tarjeta%" source=dhcp
netsh interface ip set dns "%tarjeta%" source=dhcp
goto fin

:estatica
cls
echo Dirección IP (p.ej: 192.168.1.23)
set /p ip=
echo Mascara de red (p.ej: 255.255.255.0)
set /p mascara=
echo Puerta de enlace (p.ej: 192.168.1.1)
set /p gateway=
echo Servidor DNS primario (p.ej: 80.58.0.33)
set /p dns1=
echo Servidor DNS secundario (p.ej: 80.58.61.254)
set /p dns2=

netsh interface ip set address name="%tarjeta%" source=static %ip% %mascara% 

%gateway% 1
netsh interface ip set dns "%tarjeta%" static %dns1%
netsh interface ip add dns name="%tarjeta%" addr=%dns2%

:fin