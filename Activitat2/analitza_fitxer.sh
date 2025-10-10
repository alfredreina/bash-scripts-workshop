#!/bin/bash

echo "Analitzant fitxer..."
echo -n "Nom del fitxer a analitzar: "
read fitxer

echo "Procés completat! Revisa resultats.log i errors.log"

{
echo "==============================="
echo "Fitxer analitzat: $fitxer"
echo "Línies útils: $(grep -cv '^$' "$fitxer" 2>> errors.log)"
echo "Paraules totals: $(wc -w < "$fitxer" 2>> errors.log)"
echo "Caràcters totals: $(wc -m < "$fitxer" 2>> errors.log)"
echo "Data: $(date)"
echo "Executat per: $USER"
echo "Directori: $PWD"
echo "PID Shell: $$"
echo "==============================="
} > resultats.log


