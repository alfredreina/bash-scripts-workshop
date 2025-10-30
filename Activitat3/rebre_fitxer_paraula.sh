#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Selecciona un fitxer i una paraula clau"
	exit 1
fi 

fitxer="$1"
paraula="$2"

if [ ! -f "$fitxer" ]; then
    echo "Error: El fitxer '$fitxer' no existeix."
    exit 1
fi

if [[ "$fitxer" != *.txt && "$fitxer" != *.csv ]]; then
    echo "Error: El fitxer ha de tenir extensió .txt o .csv."
    exit 1
fi

comptador=$(grep -i -c "$paraula" "$fitxer")

if [ "$comptador" -eq 0 ]; then
    echo "No s'ha trobat cap línia amb la paraula clau '$paraula'."
else
    echo "S'han trobat $comptador línies que contenen la paraula clau '$paraula'."
fi
