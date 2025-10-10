#!/bin/bash

echo "Introdueix una variable global"

read Nom_variable

echo "Aqui tens la variable $Nom_variable"
echo "${!Nom_variable}"
echo "Valor de retorn: $?"

echo
echo "Arguments passats a l'escript"
echo "Nombre d'arguments: $#"
echo "Arguments: $@"
echo "Valor de retorn: $?"

echo
echo "PID del shell actual: $$"
echo "Valor de retorn: $?"
