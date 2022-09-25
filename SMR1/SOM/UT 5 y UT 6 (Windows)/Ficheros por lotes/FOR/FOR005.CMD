@echo off
title Programacion
set /a contador=0
for %%x in (*.txt) do (@echo %%x
    set /a contador=contador+1
)
echo no. de datos %contador%
@pause