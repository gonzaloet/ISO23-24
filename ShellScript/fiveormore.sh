#!/bin/bash
#Autor:Gonzalo Exposito Tuda
#Fecha:29/01/2024

if [ $# != 2 ];then
	echo "Error, el numero de parametros es incorrecto"
	exit
	fi
if [ -e $1 ];then
	echo "El fichero existe"
	exit
	fi
fich=$( ls  $2 )
if [ ! -d  $2 ];then
	echo "El Directorio no existe o esta vacio"
	exit
	fi
if [ -z $fich 2>/dev/null ];then
	echo "El directorio esta vacio"
	exit 
	fi	
	
echo "Gonzalo Exposito Tuda"
NumLin=$( cat $1 | wc -l )

ficheros=$( ls $2/*.txt )


	
	
for i in $ficheros; do
    if [ -f $i ];then
    	lineas=$( cat $i | wc -l )
    	if [ $lineas -ge 5 ];then
    		#Parte 3
    		echo $i
    		echo $i >> $1
    		#Parte 4
    		numpalabras=$( cat $i | wc -w )
    		echo "El numero de palabras es $numpalabras" >> "$i.q"
    		echo $i >> "$i.q"
        fi
    fi	
done

echo $NumLin
