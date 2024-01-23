#!/bin/bash
#Autor: Gonzalo Exposito Tuda
#Fecha: 23/01/2024

clear
echo "Gonzalo Exposito Tuda"

if [ $# != 2 ];then
	echo "Error, debes introducir 2 parametros"
	exit

else
	if [ -e $1 ];then
		echo "El fichero ya existe"
		exit
	else

	for ((i=1;i<=$2;i++));do
	read -p "Operacion op1 op2 " op op2 op3
	case $op in
	
	S)
		echo >> $1
		suma=$((op2 + op3))
		echo "$op2 + $op3 = $suma"
		echo $op $op2 $op3 >> $1
	;;
	
	R)	echo >> $1
		resta=$((op2 - op3))
		echo "$op2 + $op3 = $resta"
		echo $op $op2 $op3 >> $1
	;;
	M)	
		echo >> $1
		mult=$((op2 * op3))
		echo "$op2 * $op3 = $mult"
		echo $op $op2 $op3 >> $1
	;;
	D)	
		div=$((op2 / op3))
		echo "$op2 / $op3 = $div"
		echo $op $op2 $op3 >> $1
	;;
	X)
		echo "Saliendo de la calculadora"
		break
	;;
	*)
		echo "Operacion incorrecta"
	;;	
esac
done
	fi
fi	
ruta=$(pwd)
echo "El Fichero se encuentra en la ruta: $ruta/$1"
cat $1

