@echo off
:repe
FOR /L %%x IN (0 5 30) DO (
ECHO estamos en el salto %%x de de 30

)
pause
GOTO :repe
