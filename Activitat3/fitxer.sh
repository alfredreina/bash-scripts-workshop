#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Uso incorrecto del script"
fi

fichero="$1"

if [[ -e "$fichero" ]]; then
	echo "EXITO: el fichero $fichero existe"
else
	echo "ERROR: el fichero $fichero no existe"
fi

tipus=$(file --brief "$fichero")

echo "Tipo de fichero: $tipus"
