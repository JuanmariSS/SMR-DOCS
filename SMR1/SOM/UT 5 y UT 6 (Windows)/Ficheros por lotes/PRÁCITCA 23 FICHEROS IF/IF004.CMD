@echo off
color 4f
rem declaro variables
set var=Hola este es un mensaje
set edad=13
Title %var%
echo %var%
IF %edad% GEQ 18 (
echo SI
) ELSE (
echo NO
)
echo Enter para continuar
pause >nul