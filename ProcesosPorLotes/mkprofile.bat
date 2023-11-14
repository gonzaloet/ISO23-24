@echo off
REM Crea un script llamado mkprofile.bat que se encargue de crear dentro del perfil del usuario actual los siguientes directorios: asir dam smr daw ceti.
REM • Además, dentro de cada directorio creará los directorios: docs, pract y exam.
REM • Para crear los directorios usamos el comando MKDIR. La ruta del perfil del usuario actual la tenemos en la variable de entorno USERPROFILE.
REM 
REM 
REM Autor: Gonzalo Exposito Tuda
REM Fecha: 13-11-2023





mkdir %userProfile%\asir\docs %userProfile%\asir\pract  %userProfile%\asir\exam
mkdir %userProfile%\dam\docs  %userProfile%\dam\pract   %userProfile%\dam\exam
mkdir %userProfile%\smr\docs  %userProfile%\smr\pract   %userProfile%\smr\exam
mkdir %userProfile%\daw\docs  %userProfile%\daw\pract   %userProfile%\daw\exam
mkdir %userProfile%\ceti\docs %userProfile%\ceti\pract  %userProfile%\ceti\exam





