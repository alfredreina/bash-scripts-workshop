#!/bin/bash

echo "Usuari: $USER"
echo "whoami: $(whoami)"
echo
echo "Directori personal: $HOME"
echo "Directori actual: $PWD"
echo
echo "Contingut del directori actual:"
echo "$(ls)"
echo
echo "Nombre d'elements: $(ls | wc -l)"
echo
echo "PID del shell: $$"
echo
echo "Codi de retorn de l'última ordre: $?"
