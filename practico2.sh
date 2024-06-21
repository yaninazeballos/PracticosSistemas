#!/bin/bash
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

