@echo off

REM Realizar la media de 3 números pasados por párametro o argumentos.
REM 
REM Autor: Gonzalo Exposito Tuda
REM Fecha: 13-11-2023

set v1=%1
set v2=%2
set v3=%3

set/A media=(%v1%+%v2%+%v3%)/3

echo la media es de %v1%,%v2%,%v3% es: %media%