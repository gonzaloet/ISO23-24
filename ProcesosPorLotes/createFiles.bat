@echo off
REM Crear un menú con dos opciones: Si el usuario pulsa 1, se creará un archivo.txt y si pulsa 2 que se cree un archivo .bat.
REM 
REM Autor: Gonzalo Exposito Tuda
REM Fecha: 15-11-2023

title User input
echo pulsa 1 para crear un archivo .txt
echo pulsa 2 para crear un archivo .bat
set/p num=
set/p name="nombre del archivo: "
set/p ruta="en que ruta?: "
if %num%==1 type nul > %ruta%/%name%.txt
if %num%==2 type nul > %ruta%/%name%.bat
