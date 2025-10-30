#!/bin/bash

if [[ $# -ne 3 ]]; then
	echo "Introdueix el número actual d'arguments"
	exit 1
fi

Numero1="$1"
Operacion="$2"
Numero2="$3"

if ! [[ "$Numero1" =~ ^-?[0-9]+$ ]]; then
        echo "Solo són validos los números"
	exit 1

elif ! [[ "$Numero2" =~ ^-?[0-9]+$ ]]; then
        echo "Solo són validos los números"
        exit 1
fi

if [[ "$Operacion" == "+" ]]; then
	echo "La respuesta es $((Numero1 + Numero2))"
elif [[ "$Operacion" == "-" ]]; then
	echo "La respuesta es $((Numero1 - Numero2))"
elif [[ "$Operacion" == "·" ]]; then
        echo "La respuesta es $((Numero1 * Numero2))"
elif [[ "$Operacion" == "/" ]]; then
        echo "La respuesta es $((Numero1 / Numero2))"
else
	echo "NO has introducido un simbolo valido, introduzca uno de los siguientes (+, -, ·, /)"
fi


