#!/bin/bash
nombre_completo=$(getent passwd %USER | cut -d ':' -f 5 | cut -d ',' -f 1)
if [$1 = "tty1"] ; then
	echo "hola $nombre_completo, bienvenido a tty1"
fi

