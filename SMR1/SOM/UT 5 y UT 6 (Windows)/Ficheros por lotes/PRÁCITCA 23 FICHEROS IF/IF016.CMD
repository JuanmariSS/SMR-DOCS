@echo off
@rem saber is existe Java
title Java Batch Compiler V 2.0
echo.
echo Java Batch Compiler V 2.0
echo.
start note.txt
:mainmenu
cls
echo.
echo Java Batch Compiler V 2.0
color 0A
echo.
echo Elije una opcion:
echo.
echo 1 Compile .java file
echo.
echo 2 Run Java file
echo.
echo 3 Check JDK
echo.
echo 4 Exit
echo.
set/p option=">>"
if %option%==1 goto :search
if %option%==2 goto :runfile
if %option%==3 goto :checkjdk
if %option%==4 goto :closeprogram
:search
cls
echo.
echo Java Batch Compiler V 2.0
color 0C
echo.
set /p commnd=Write File name:
goto :action
:action
if exist %command% echo Compiling Project...
else goto :error
goto :compile
echo.
 
:compile
javac *.java
goto :complete
 
:complete
echo.
echo the file was created successfully
echo.
set /p retrn=Return to mainmenu?(use command r)
if %retrn%==r goto :mainmenu
 
:error
echo File Not Found...
 
:checkjdk
cls
color 09
set /p version=Write your JDK version:
if JDK%version% echo "Tienes JDK instalado" 
else echo "NO tienes el JDK instalado"
set /p ret=Return to mainmenu?(use command r)
if %ret%==r goto :mainmenu
 
:closeprogram
exit
 
:runfile
cls
color 0B
echo Jrunner V 2.0
echo.
title Jrunner V 2.0
echo.
set /p file2run=Write File to run:
echo.
if exist *.class goto :run 
else echo not found
 
:run
cls
echo Running Program...
echo.
java %file2run%
echo.
set /p retrn=Return to mainmenu?(use command r)
echo.
if %retrn%==r goto :mainmenu
pause>nul