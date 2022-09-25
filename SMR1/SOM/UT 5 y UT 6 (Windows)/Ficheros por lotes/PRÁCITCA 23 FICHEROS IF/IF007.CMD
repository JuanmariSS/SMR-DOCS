@echo off
set /p nombre=Introduce tu nombre:
echo Hola %nombre%
IF %nombre% EQU %USERNAME% (
	echo Correcto eres usuario registrado
) ELSE (
    echo Incorrecto, no eres usuario registrado
)
@pause