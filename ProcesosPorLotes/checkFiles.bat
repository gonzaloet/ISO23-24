@echo off
REM Script checkFiles.bat
REM
REM Autor: Gonzalo Exposito Tuda
REM Fecha: 20-11-2023

:inicio

set /p archivo= "Dime el nombre de un archivo: "

if exist %archivo%  (

echo existe

goto inicio
)
else (

echo>%archivo%

)