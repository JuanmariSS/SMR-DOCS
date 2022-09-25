@echo off
:ponernum
title RESTAS EN CMD
cls
ECHO PROGRAMA RESTAS CMD
ECHO.
set /p numero1=Escribe el primer numero 
if %numero1%==q	GOTO	:letra
if %numero1%==w	GOTO	:letra
if %numero1%==e	GOTO	:letra
if %numero1%==r	GOTO	:letra
if %numero1%==t	GOTO	:letra
if %numero1%==y	GOTO	:letra
if %numero1%==u	GOTO	:letra
if %numero1%==i	GOTO	:letra
if %numero1%==o	GOTO	:letra
if %numero1%==p	GOTO	:letra
if %numero1%==a	GOTO	:letra
if %numero1%==s	GOTO	:letra
if %numero1%==d	GOTO	:letra
if %numero1%==f	GOTO	:letra
if %numero1%==g	GOTO	:letra
if %numero1%==h	GOTO	:letra
if %numero1%==j	GOTO	:letra
if %numero1%==k	GOTO	:letra
if %numero1%==l	GOTO	:letra
if %numero1%==ñ	GOTO	:letra
if %numero1%==z	GOTO	:letra
if %numero1%==x	GOTO	:letra
if %numero1%==c	GOTO	:letra
if %numero1%==v	GOTO	:letra
if %numero1%==b	GOTO	:letra
if %numero1%==n	GOTO	:letra
if %numero1%==m	GOTO	:letra
set /p numero2=Escribe el segundo numero 
if %numero2%==q	GOTO	:letra
if %numero2%==w	GOTO	:letra
if %numero2%==e	GOTO	:letra
if %numero2%==r	GOTO	:letra
if %numero2%==t	GOTO	:letra
if %numero2%==y	GOTO	:letra
if %numero2%==u	GOTO	:letra
if %numero2%==i	GOTO	:letra
if %numero2%==o	GOTO	:letra
if %numero2%==p	GOTO	:letra
if %numero2%==a	GOTO	:letra
if %numero2%==s	GOTO	:letra
if %numero2%==d	GOTO	:letra
if %numero2%==f	GOTO	:letra
if %numero2%==g	GOTO	:letra
if %numero2%==h	GOTO	:letra
if %numero2%==j	GOTO	:letra
if %numero2%==k	GOTO	:letra
if %numero2%==l	GOTO	:letra
if %numero2%==ñ	GOTO	:letra
if %numero2%==z	GOTO	:letra
if %numero2%==x	GOTO	:letra
if %numero2%==c	GOTO	:letra
if %numero2%==v	GOTO	:letra
if %numero2%==b	GOTO	:letra
if %numero2%==n	GOTO	:letra
if %numero2%==m	GOTO	:letra

set /a numero3=%numero1%-%numero2%
echo.
echo %numero1%-%numero2%=%numero3%
echo.
set /p oos=otra resta (r) o salir (s)

if %oos%==R	GOTO	:ponernum
if %oos%==S	GOTO	:salida
if %oos%==r	GOTO	:ponernum
if %oos%==s	GOTO	:salida




:salida
exit

:mal
echo NO SE PUEDEN RESTAR LETRAS
goto: ponernum

:letra
echo no se pueden restar letras
pause
GOTO	:ponernum