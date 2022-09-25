@echo off
set argC=0
for %%x in (%*) do 	(
@echo %%x
Set /A argC+=1
)
echo no. de parametros: %argC%
@pause