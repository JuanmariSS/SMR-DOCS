@echo off 
Title Menu del sistema 
color 0a 
cls
:miMenu
echo  [   Menu ]  
echo 1. Java ejemplos
echo 2. Groovy ejemplos
echo 3. Scala ejemplos
echo 4. Clojure ejemplos
echo 5. Ceylon ejemplos
echo 6. Ir a carpeta Django
echo 7. Python ejemplos
echo 8. Mandar un ping
echo 9. Salir
set /p choic=Teclea alguna opcion 

if %choic%==1 goto miJava
if %choic%==2 goto miGroovy
if %choic%==3 goto miScala
if %choic%==4 goto miClojure
if %choic%==5 goto miCeylon
if %choic%==6 goto miServidor
if %choic%==7 goto miPython
if %choic%==8 goto miPing
if %choic%==9 goto miSalida


:miJava
start cmd
cd C:\Users\Uriel\Documents\Programas\Ejemplos
dir
goto miMenu

:miGroovy
start cmd
cd C:\Users\alguien\Documents\Programas\Groovy
dir
goto miMenu

:miScala
start cmd
cd C:\Users\alguien\Documents\Programas\Scala
dir
goto miMenu

:miClojure
start cmd
cd C:\clojure-1.4.0
dir
goto miMenu

:miCeylon
start cmd
cd C:\ceylon-0.4\samples
dir
goto miMenu


:miServidor
start cmd
cd ..
cd C:\Python27\Django-1.4\django\bin
dir
goto miMenu


:miPing
start cmd
ping www.google.com.mx
goto miMenu


:miPython
start cmd
cd ..
cd C:\Users\alguien\Documents\Programas\Python
dir
goto miMenu


:miSalida
goto elFin

:elFin
exit
