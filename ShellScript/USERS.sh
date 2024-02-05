#!/bin/bash
#Diseña un script en Bash denominado users.sh que recopile la información
#correspondiente al nombre de usuario y UID de éste para todos los usuarios del
#sistema con UID mayor que uno tomado como referencia. El usuario podrá definir
#este valor pasándolo como parámetro al script. En el caso de que no lo haga, el
#script se ejecutará tomando como valor base 1000. 
IFS=":"
variable=0
if [ $# = 1 ];then
	variable=$1
fi

if [ $# -ge 2 ];then
	echo "Error, has introducido mas de un parametro, intentalo de nuevo"
	exit
fi

if [ $# == 0 ];then
	variable=1000
fi

echo "=================================================================="

fecha=$( date +%d/%m/%y)

hora=$( date | cut -d " " -f 5 )
echo "Informes de usuarios el dia $fecha a las $hora"


total=0



while read user x uidd gidd g home shell
do

	if [ $uidd -ge $variable ];then
		echo $user - $uidd
		total=$(($total+1))
	fi

	
done < /etc/passwd






echo "Total: $total usuarios"
echo "==================================================================="

