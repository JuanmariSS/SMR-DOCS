@echo off
set nombre=%USERNAME%
echo Hola %nombre%

IF %nombre% EQU %USERNAME% (
	echo Correcto eres usuario registrado

) ELSE (
    echo Incorrecto, no eres usuario registrado
)
@pause