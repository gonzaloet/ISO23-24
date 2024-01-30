#!/bin/bash
#bolcar
#Realiza un Sh que muestre por pantalla el contenido de la carpeta etc shadow passwd y groups
#y diga cuantos archivos tiene despues que muestre un m,ensaje de: pulse una tecla para continuar, espere a que se pulse una tecla y hacer lo mismo con la carpeta bin y la sbin

etc=$( ls /etc )
echo $etc
linetc=$( ls /etc | wc -w )
echo $linetc
read -n1 -p "Pulse cualquier tecla para continuar"

shadow=$( sudo cat /etc/shadow )
echo $shadow


