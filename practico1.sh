#!/bin/bash
if [ -z "$1" ]; then
	echo "ingrese un parametro"
elif [ -e "$1" ]; then
	if [ -f "$1"]; then
		echo "$1 es un archivo"
	elif [ -d "$1" ] ; then 
		echo "$1 es un directorio"
	else 
		echo "$1 existe pero no es ni archivo ni directorio"
	fi
else
	echo "$1no existe"
fi
