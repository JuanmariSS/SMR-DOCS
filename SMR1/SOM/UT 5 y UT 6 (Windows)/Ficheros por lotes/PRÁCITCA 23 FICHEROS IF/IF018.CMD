
@echo off
title Comparador de numeros
:inicio
cls
set /p numero1=Escribe un numero 
set /p numero2=Escribe otro numero 
if %numero1% EQU %numero2%	GOTO	:igual
if %numero1% LSS %numero2%	GOTO	:menor
if %numero1% GTR %numero2%	GOTO	:mayor

:igual
echo Numero1 ES IGUAL A Numero2
GOTO	:fin

:menor
echo Numero1 ES MENOR A Numero2
GOTO	:fin

:mayor
echo Numero1 ES MAYOR QUE Numero2
GOTO	:fin

:fin
set /p final=Hacer otra comparacion (r) salir (s)
if %final%==R	GOTO	:inicio
if %final%==S 	GOTO	:exit
if %final%==r	GOTO	:inicio
if %final%==s 	GOTO	:exit

:exit
exit