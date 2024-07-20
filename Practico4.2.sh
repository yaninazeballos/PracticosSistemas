#!/bin/bash 

comprobar_archivo() {
	if [ -f "$1" ]; then
		echo "$1 es un archivo"
	fi
}

comprobar_directorio(){
	if [ -d "$1" ]; then
		echo "$1 es un directorio"
	fi
}




Op=("Opcion 1" "Opcion 2" "Opcion 3" "Opcion 4" "Opcion 5" "Opcion 6" "Salir")

echo "Selecciona una opcion:"

select opt in "${Op[@]}"; do
	case $opt in
		"Opcion 1")
			echo "Se determinara si su argumento es un archivo o directorio"
                           read -p "Ingrese un parametro" parametro
			   comprobar_archivo "$parametro"
			   comprobar_directorio "$parametro" 
			   if [ -z "$1" ]; then
	echo "ingrese un parametro"
elif [ -e "$1" ]; then
	comprobar_archivo "$1"
	comrpobar_directorio "$1"
	if [ ! -f "$1" ] && [ ! -d "$1" ]; then
		echo "$1 existe pero no es ni un directorio ni un archivo"
	fi
else
	echo "$1 no existe"
fi
;;
"Opcion 2")
        echo "Devuelve el tamaño en MB"
	if [ -z "$1" ]; then
	echo "ingrese un archivo o directorio como parametro"
	exit 1
fi
if [ -e "$1"]; then
	size=$ (du -m "$1" | awk '{print $1}' )
	echo "el tama;o de $1 es $size MB"
else
	echo "$1 no existe"
fi
;;
"Opcion 3")
	echo "Opciones de ejecucion"
	if [ -z "$1 "] ; then
	echo "ingrese una opcion:"
	echo "1: Opcion 1"
	echo "2: Opcion 2"
	echo "3: Opcion 3"
else
	echo "La opcion ingresada es: $1"
fi
;;
"Opcion 4" )
	echo "Saludo de consola a usuario tty1"
	nombre_completo=(getent passwd %USER | cut -d ':' -f 5 | cut -d ',' -f 1)
if [$1 = "tty1"] ; then
	echo "hola $nombre_completo, bienvenido a tty1"
fi
;;
"Opcion 5" )
	echo "Informacion de un comando"
	if [ -z "$1" ];then
	echo "ingrese un comando como parametro"
else
	man "$1" || info "$1" || whatis "$1" || help "$1" ||
		echo "no hay informacion de $1q"
fi
;;
"Opcion 6" )
	echo "Generar backup"
	while true; do
	timestamp=$ (date +"%Y%m%d%H%M%")
	tar -czf "backup-$timestamp.tar.gz"
	/home/miusuario
	sleep 300 # 300 seconds = 5 minutes
done
;;
esac 
done
