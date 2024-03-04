#Nombre: dirFile.py
#Autor: Gonzalo Exposito Tuda
#Fecha: 04/03/2024


import os
import shutil

#▪ Entrega 2 : dirFile.py –GitHub
#▪ Dado un fichero denominado rutas.txt, que contiene el nombre de ficheros y
#directorios que ya deben existir, introducir en 2 listas diferentes cada uno de
#ellos, es decir, en una lista los ficheros y en otra los directorios (habrá que
#comprobar línea a línea si lo leído es un fichero o un directorio).
#▪ Posteriormente, se le pedirá al usuario qué elija una opción:
#▪ A- Pedir nombre de fichero y eliminarlo.
#▪ B- Pedir nombre de directorio y mostrar su información.
#▪ C- Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino.
#▪ D- Mostrar lista elegida por el usuario
#▪ E- Salir


file=open("rutas.txt","r")
listaFicheros=[]
listaDirectorio=[]

for i in file:
    ruta=i.strip()
    if os.path.isfile(ruta):
        listaFicheros.append(ruta)
    elif os.path.isdir(ruta):
        listaDirectorio.append(ruta)

while True:
    print("▪ A- Pedir nombre de fichero y eliminarlo")
    print("▪ B- Pedir nombre de directorio y mostrar su información.")
    print("▪ C- Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino.")
    print("▪ D- Mostrar lista elegida por el usuario")
    print("▪ E- Salir")
    opcion=input("Introduzca una opcion: ")
    match opcion:
        case "A":
            print(listaFicheros)
            nombre=input("Que fichero quiere eliminar? ")
            listaFicheros.remove(nombre)
            os.remove(nombre)
            print("Fichero eliminado")
            print(listaFicheros)
        case "B":
            print(listaDirectorio)
            nombre=input("Introduzca el nombre del directorio: ")
            os.system("ls "+ nombre)
        case "C":
            nombreFichero=input("Introduce el nombre del fichero: ")
            nombreDestino=input("Introduce el nombre del destino: ")
            shutil.copy(nombreFichero,nombreDestino)
        case "D":
            lista=input(int("Introduce la lista que quiere que se muestre: 1.Ficheros 2.Directorios : "))
            if lista==1:
                print(listaFicheros)
            elif lista==2:
                print(listaDirectorio)
            else:
                print("No has introducido ni 1 ni 2, incorrecto.")
        case "E":
            print("Saliendo del menu...")
            exit()
        case _:
            print("Error, no has introducido una opcion del menu")