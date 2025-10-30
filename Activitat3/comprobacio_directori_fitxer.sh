#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Selecciona solo un elemento: $0"
    exit 1
fi

path="$1"

if [ ! -e "$path" ]; then
    echo "Error: $path no existeix."
    exit 1
fi

if [ -d "$path" ]; then
    echo "$path és un directori"
elif [ -f "$path" ]; then
    echo "$path és un fitxer."
    nom_fitxer=$(basename "$path")
    extensio="${nom_fitxer##*.}"
    if [ "$nom_fitxer" != "$extensio" ]; then
        echo "Extensió: .$extensio"
    else
        echo "Aquest fitxer no té extensió."
    fi
else
    echo "$path no és ni un fitxer ni un directori"
fi
