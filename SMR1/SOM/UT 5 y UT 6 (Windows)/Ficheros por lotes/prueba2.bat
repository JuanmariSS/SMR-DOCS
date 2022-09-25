@echo off
color 0a
title Programando en Batch MS-DOS
cls
rem aqui voya acolocar las variables
set /p nombre=%username%
echo Enter para continuar...
pause > null
:bienvenida
echo Bienvenido %nombre%
pause > nul
