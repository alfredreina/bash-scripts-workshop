#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Ús: $0 nom_usuari"
    exit 1
fi

usuari="$1"

while true; do
    echo
    echo "Opcions disponibles per a l'usuari: $usuari"
    echo "1) Comprovar si té drets d'administrador"
    echo "2) Comprovar si l'usuari existeix"
    echo "3) Comprovar si el directori personal existeix"
    echo "4) Sortir"
    echo

    read -r -p "Escull una opció: " opcio

    case "$opcio" in
        1)
            if id -nG "$usuari" 2>/dev/null | grep -qw sudo; then
                echo "L'usuari $usuari té drets d'administrador."
            else
                echo "L'usuari $usuari NO té drets d'administrador."
            fi
            ;;
        2)
            if id "$usuari" >/dev/null 2>&1; then
                echo "L'usuari $usuari existeix."
            else
                echo "L'usuari $usuari NO existeix."
            fi
            ;;
        3)
            if [ -d "/home/$usuari" ]; then
                echo "El directori personal /home/$usuari existeix."
            else
                echo "El directori personal /home/$usuari NO existeix."
            fi
            ;;
        4)
            echo "Sortint del programa."
            break
            ;;
        *)
            echo "Opció no vàlida."
            ;;
    esac
done

