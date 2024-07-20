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

