#Titulo:infoUsers
#Autor:Gonzalo Exposito Tuda
#Fecha: 26/02/2024
#================================================================================
#Debéis de crear un script en Python que tenga un menú con 4 opciones. El programa
#acaba cuando se introduce la opción 4.
# Se debe comprobar que el usuario que ejecuta el script es el root.
#▪ Opción 1: Muestra información del SSOO e información de la CPU.
#▪ Opción 2: Pedir un usuario. Si existe, se muestra información sobre él, si no, se crea.
#▪ Opción 3: Pedir al usuario un directorio.
# Comprobar si existe y si es un directorio, en caso contrario, lo crea.
#▪ Opción 4: Salir.
#==================================================================================
import os
import cpuinfo as c
uid=os.getuid()
if uid!=0:
    print("No eres root, abandonando el programa...")
    exit()
while True:
    print("▪ Opción 1: Muestra información del SSOO e información de la CPU.")
    print("▪ Opción 2: Pedir un usuario. Si existe, se muestra información sobre él, si no, se crea.")
    print("▪ Opción 3: Pedir al usuario un directorio.")
    menu=int(input("Introduzca la opcion seleccionada: "))
    match menu:
        case 1:
            #▪ Opción 1: Muestra información del SSOO e información de la CPU.
            print(os.uname())
            print("El numero de procesadores es: ",os.cpu_count())
            print(c.get_cpu_info()["brand_raw"])

        case 2:
            #▪ Opción 2: Pedir un usuario. Si existe, se muestra información sobre él, si no, se crea.
            f = open("/etc/passwd", "r")
            lista = f.readlines()
            usuario = input("Introduzca un usuario: ")
            acumUsers=0
            for i in lista:
                if usuario in i:
                    print("El usuario existe, informacion del usuario: ")
                    infoUser=os.system("id "+usuario)
                    print(infoUser)
                    acumUsers=acumUsers+1
            if acumUsers==0:
                print("No existe, creando usuario...")
                os.system("useradd -m "+usuario)
        case 3:
            # ▪ Opción 3: Pedir al usuario un directorio.
            # Comprobar si existe y si es un directorio, en caso contrario, lo crea.
            dir=input("Introduzca un directorio: ")
            if os.path.isdir(dir):
                print("El directorio existe")
            else:
                print("El directorio no existe,creando el directorio")
                os.mkdir(dir)
        case 4:
            print("saliendo del programa...")
            exit()
        case _:
            print("Error, opcion erronea ")









