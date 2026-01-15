#!/bin/bash

echo "Log Doctor - analitzador de logs"

demanar_fitxer() {
    read -p "Introdueix el nom del fitxer de log: " fitxer
    while [[ ! -f "$fitxer" || ! -r "$fitxer" ]]; do
        echo "Error: el fitxer no existeix o no és llegible."
        read -p "Torna a introduir el fitxer de log: " fitxer
    done
}

if [[ -n "$1" ]]; then
    fitxer="$1"
    if [[ ! -f "$fitxer" || ! -r "$fitxer" ]]; then
        demanar_fitxer
    fi
else
    demanar_fitxer
fi

total=$(wc -l < "$fitxer")
errors=$(grep -c "ERROR" "$fitxer")
warnings=$(grep -c "WARNING" "$fitxer")

echo "Total de línies: $total"
echo "Línies amb ERROR: $errors"
echo "Línies amb WARNING: $warnings"

validar_n() {
    while ! [[ "$n" =~ ^[1-9][0-9]*$ ]]; do
        echo "Error: ha de ser un enter positiu."
        read -p "Quants informes vols crear? " n
    done
}

read -p "Quants informes vols crear? " n
validar_n

for ((i=1; i<=n; i++)); do
    nom_informe="informe_$i.txt"
    echo "Total de línies: $total" > "$nom_informe"
    echo "Línies amb ERROR: $errors" >> "$nom_informe"
    echo "Línies amb WARNING: $warnings" >> "$nom_informe"
done

