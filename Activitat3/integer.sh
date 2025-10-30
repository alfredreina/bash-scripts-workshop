#!/bin/bash

echo "Introduce un numero "
read numero

if [[ $numero -gt 0 ]]; then
	echo "El numero es positiu"
elif [[ $numero -lt 0 ]]; then
	echo "El numero es negatiu"
else
	echo "El numero es cero"
fi

