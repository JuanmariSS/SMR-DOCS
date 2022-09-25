@echo off
set aleatorio=%RANDOM%
set /p numero=Introduce numero:
echo.
IF %numero% EQU %aleatorio% (
	echo Acertaste
) ELSE (
    echo Fallaste, el numero es %aleatorio%
)
echo Presiona Enter...
pause > nul