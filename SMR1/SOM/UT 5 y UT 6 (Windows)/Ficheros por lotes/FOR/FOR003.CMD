@echo off
set/p find=Escribe el patron de busqueda de los archivos 
rem Crea un archivo llamado "informe.txt" en el Escritorio del usuario actual
echo. > C:\DSK\Desktop\Informe.txt

rem Y ahora recorrera todas las unidades del sistema buscando archivos que
rem coincidan con el patron
for %%A IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO (
   if exist %%A:\ (

      rem cambiar la unidad actual y el directorio actual
      cd /D %%A:\
     
      rem Ahora que ya estoy en la nueva unidad del sistema operativo, busco archivos
      rem podemos usar el siguiente comando o el que esta dos lineas mas abajo
      for /R %%E IN (*%find%) DO echo %%E >> %userprofile%\Desktop\Informe.txt
    
      rem Este es mas sencillo
      rem dir /s "find" >> C:\DSK\Desktop\Informe.txt

      )
)
@pause
