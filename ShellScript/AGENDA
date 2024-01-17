#!/bin/bash
#Autor:Gonzalo Exposito Tuda
#Fecha: 17/01/2024
#Agenda de contactos


opcion=1



while [ $opcion != e ];do
	echo "a) Añadir una entrada "
	echo "b) Buscar por DNI "
	echo "c) Ver la agenda completa "
	echo "d) Eliminar todas las entradas de la agenda "
	echo "e) Finalizar "
	read -p "Introduzca una opcion: " opcion
	
	case $opcion in 
	
	a) 
	echo "Ha seleccionado añadir entrada"
	read -p "Introduzca el DNI de la persona a dar de alta: " dniAlta
	

	if  grep "^$dniAlta:" agenda.txt 2> /dev/null ;then 
		echo "Error, el usuario ya existe"
	
	else
		read -p "Introduce el nombre: " nombre
		read -p "introduce los apellidos: " apellidos
		read -p  "Introduce la localidad: " localidad
		echo "$dniAlta:$nombre:$apellidos:$localidad" >> agenda.txt
	fi
	
	;;
	b)
	read -p "Introduzca un DNI: " dni
	if  grep "^$dni:" agenda.txt 2> /dev/null ;then 
		nombre=$( grep "^$dni:" agenda.txt | cut -d ":" -f 2 )
		apellidos=$( grep "^$dni:" agenda.txt | cut -d ":" -f 3 )
		localidad=$( grep "^$dni:" agenda.txt | cut -d ":" -f 4 )
		echo "La persona con DNI numero $dni es: $nombre $apellidos y vive en $localidad"
	else 
		echo "Error: El dni Introducido no existe "	
	fi
	
	
	;;
	c)
	Contenido=$( cat agenda.txt )
	if [ -s agenda.txt ];then
		echo "$Contenido"
	else 
		echo "Agenda vacia"
	fi	
	;;
	d)
	echo > agenda.txt
	;;
	e)
	echo "Abandonando el menu"
	exit
	;;
	*)
	echo "Ha seleccionado una opcion incorrecta"
	;;
	esac
	done
	
