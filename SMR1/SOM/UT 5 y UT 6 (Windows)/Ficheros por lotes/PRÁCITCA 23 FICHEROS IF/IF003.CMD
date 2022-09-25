@echo off
echo Cual es tu edad?
SET /P m=
IF %m% GEQ 18 (
echo ERES MAYOR DE EDAD
) ELSE (
echo NO ERES MAYOR DE EDAD
)
@pause