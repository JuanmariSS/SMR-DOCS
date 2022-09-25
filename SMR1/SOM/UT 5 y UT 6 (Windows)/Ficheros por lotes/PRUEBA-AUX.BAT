@ECHO OFF
CLS
:INICIO
SET AUX=0
SET A=5
SET B=6
ECHO %AUX%
ECHO %A%
ECHO %B%
@PAUSE

ECHO Ahora introduciremos aux=a

SET AUX=A
ECHO AUX es igual a %AUX%
@pause
SET A=B
ECHO Ahora A tiene valor de %A%
@pause
SET B= AUX
ECHO ahora B tiene valor de %AUX%
@pause
ECHO AUX ES %AUX% A ES %A% B ES %B%
@PAUSE