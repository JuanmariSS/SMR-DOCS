@echo off
Title Comprobando existencia de Java
SET MENSAJE =0
SET PWD=%CD%
SET JAVA= %java_home%\bin
CD %JAVA% 
DIR | FIND "java.exe" > NUL
IF ERRORLEVEL 1 GOTO Label1
IF ERRORLEVEL 0 GOTO Label0
:Label1
SET MENSAJE=No se encontro java en %java%
GOTO End
:Label0
SET MENSAJE=Se encontro java
GOTO End
:End
ECHO %MENSAJE%
ECHO Presiona Enter para continuar
pause > null
rem msg *  %MENSAJE%
chdir /d %PWD%
rem **************************************************************

rem ************************ estadisica ************************************************
@echo off