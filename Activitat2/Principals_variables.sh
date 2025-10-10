#!/bin/bash

echo "VARIABLES_PRINCIPALS"
echo "Usuari: $USER"
echo "Directori actual: $PWD"
echo "Directori personal: $HOME"
echo "Shell actual: $SHELL"
echo "Nom del sistema: $HOSTNAME"
echo "Data actual: $(date)"

echo "ARGUMENTS_DEL_SHELL"
echo "Nombre d'arguments: $#"
echo "Arguments: $@"

echo "VALOR_ULTIMA_ORDRE"
echo "ULTIMA_ORDRE: $?"

echo "PID_ACTUAL"
echo "PID: $$"
