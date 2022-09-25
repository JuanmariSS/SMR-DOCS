@echo off
title Numero mayor a 10
:inicio
cls
set /p num1=Escribe un numero de 0 a 20 

if %num1% LSS 10	(
GOTO	:menor10
) ELSE	(
IF %num1% GTR 15	(
GOTO	:sup15
)
GOTO	:sup10
)
:menor10
echo el numero es menor a 10
goto :preg
PAUSE

:sup15
echo el numero es superior a 15
goto :preg

:sup10
echo el numero es superior a 10
goto :preg

:preg
set /p otr=Quieres poner otro numero (N) o salir (S)
if %otr%==N	GOTO	:inicio
if %otr%==S	GOTO	:exit
if %otr%==n	GOTO	:inicio
if %otr%==s	GOTO	:exit


:exit
exit