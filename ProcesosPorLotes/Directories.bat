@echo off
REM Crear un menú con cinco opciones:
REM • 1- Crear fichero con nombre pedido al usuario
REM • 2- Mostrar el árbol de directorios de la carpeta de usuario
REM • 3- Mostrar archivos con extensión txt
REM • 4- Crea los directorios alfredoff, marinapg y ramonam en tu directorio
REM actual
REM
REM • 5- Copia el contenido de tu carpeta de usuario al Escritorio.
REM Autor: Gonzalo Exposito Tuda
REM Fecha: 15-11-2023

title User input
set /p num="pulse el numero de la opcion a ejecutar: "
if %num%==1 goto 1
if %num%==2 goto 2
if %num%==3 goto 3
if %num%==4 goto 4
if %num%==5 goto 5
:1 
set/p name="Introduce el nombre del fichero: "
mkdir %name%
:2 
tree %USERPROFILE%
:3
dir /O "%USERPROFILE%"\*.txt 
:4
mkdir jesusrp 
mkdir marinapg 
mkdir ramonam
:5
