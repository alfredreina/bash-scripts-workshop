#!/bin/bash

echo "introdueix un numero"
read numero

if [[ $numero -lt 0 ]]; then
        echo "aquest numero no es cero"
elif [[ $numero -gt 0 ]]; then
        echo "aquest numero no es cero"
else
        echo "el numero es cero"
fi

