@echo off
title: Conjunto de ordenes if
:inicio
cls
set /p opc=Elige el conjunto de opciones (1, 2 o 3)

if %opc%==1	(
start mspaint
start notepad
start cmd
echo Hemos abierto Paint, notepad y cmd
GOTO	:finop
)

if %opc%==2	(
start wordpad.exe
start wmplayer.exe
echo Hemos abierto WordPad y Windows Media Player
GOTO	:finop
)

if %opc%==3	(
start WFS.exe
start WINWORD.exe
start SnippingTool.exe
echo Hemos abierto Fax y escaner de Windows, Word y la herramienta recortes
GOTO	:finop
)
:finop
CHOICE /C SN /CS /M "Abrir otro conjunto de programas [S] Salir del programa [N]"
IF	ERRORLEVEL	2	GOTO	:exit
IF	ERRORLEVEL	1	GOTO	:inicio

:exit
exit