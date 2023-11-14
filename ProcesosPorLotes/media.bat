@echo off

REM Realizar la media de 3 números pasados por párametro o argumentos.
REM 
REM Autor: Gonzalo Exposito Tuda
REM Fecha: 13-11-2023



set/A media=(%1+ %2 + %3)/3

echo la media  de %1, %2 ,%3 es: %media%
