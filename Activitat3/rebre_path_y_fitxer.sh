#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Selecciona dos elementos"
	exit 1
fi

directori="$1"
tarball="$2"

if [[ -e "$directori" ]]; then
	echo "El directorio $directori existe"
else
	echo "El directorio $directori no existe"
	exit 1
fi

if [[ -d "$directori" ]]; then
	echo "SI es un directorio"
else
	echo "NO es un directorio"
	echo "No se puede continuar"
	exit 1
fi 

if [[ -e "$tarball" ]]; then 
	echo "El fichero existe , ¿sobrescribir ? SI/NO"
	read respuesta
	if [[ "$respuesta" == "SI" ]]; then
		echo "Sobreescribiendo fichero $tarball en el directorio $directori"
		tar -czf "$tarball" -C "$(dirname "$directori")" "$(basename "$directori")"
		mv "$tarball" "$directori"
	elif [[ "$respuesta" == "NO" ]]; then
		echo "Cancelando proceso"
		exit 1
	fi
else
	tar -czf "$tarball" -C "$(dirname "$directori")" "$(basename "$directori")"
	mv "$tarball" "$directori"
fi

