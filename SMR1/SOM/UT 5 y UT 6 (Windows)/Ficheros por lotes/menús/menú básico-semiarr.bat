@ECHO OFF
:REPETIR 
CLS
ECHO.
ECHO	Menu que controla las siguientes opciones 
ECHO	==================================== 
ECHO.
ECHO	a. Ver la versión del sistema Operativo ECHO.
ECHO	b. Ver el volumen de la Unidad C:
 
ECHO.
ECHO	c. Visualizar las variables de ambiente ECHO.
ECHO	s. Salir del programa ECHO
CHOICE  /C abcs	/CS	/T  30  /D  s	/M Elija una opción de las siguientes
pause > nul


