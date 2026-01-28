#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Ús: $0 usuari host"
    exit 1
fi

USUARI="$1"
HOST="$2"

echo "Connectant a $USUARI@$HOST i executant comandes remotes..."

ssh "$USUARI@$HOST" << EOF
echo "Informació del sistema"
hostname
whoami
uptime
echo
echo "Espai en disc"
df -h /
echo
echo "Processos actius (top 5)"
ps aux --sort=-%cpu | head -n 6
EOF

echo "Execució remota finalitzada."
