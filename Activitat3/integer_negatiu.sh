#!/bin/bash

echo "introdueix un numero"
read numero

if [[ $numero -lt 0 ]]; then
	echo "aquest numero es negatiu"
elif [[ $numero -gt 0 ]]; then
	echo "el numero no es negatiu"
else
	echo "el numero es cero"
fi
