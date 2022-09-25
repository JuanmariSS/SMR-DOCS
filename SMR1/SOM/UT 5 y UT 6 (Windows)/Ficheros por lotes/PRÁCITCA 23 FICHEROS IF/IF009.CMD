@echo off
@REM inicializa con un valor "true"
@SET intCounter=1
:while
@REM prueba
@IF %intCounter% GTR 10 (GOTO wend)
@REM condicion "true"
@echo %intCounter%
@REM set prueba
@SET /a intCounter=intCounter+1
@REM loop
@GOTO while
:wend
@PAUSE
