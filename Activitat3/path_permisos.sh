#!/bin/bash

if  [[ $# -ne 1 ]]; then
	echo "Sisplau introdueix un sol arxiu"
	exit 1
fi

fitxer="$1"

if [ ! -e "$fitxer" ]; then
	echo "Error: el fitxer $fitxer no existeix."
	exit 1
fi


echo "Aquests són els permisos que te el fitxer: $fitxer"

if [ -r "$fitxer" ]; then
	echo "Lectura: SI"
else
	echo "Lectura: NO"
fi

if [ -w "$fitxer" ]; then
	echo "Escriptura: SI"
else
	echo "Escriptura: NO"
fi

if [ -x "$fitxer" ]; then
	echo "Execució: SI"
else
	echo "Esecució: NO"
fi
