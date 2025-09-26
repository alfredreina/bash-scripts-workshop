#!/bin/bash
#Alfred Reina Garcia
#25/9/2025
#Aquest script  llegeix el contingut d'un fitxer , elimina les linies buides,
#comptar les linies restants i escriure el resultatt a fitxer linies.log
#si hi ha errors aniran a la carpeta de errors.log
#al executarse possar quan s'ha executat aquest script
echo "Començant el recompte de línies útils..."
cat /etc/passwd | grep -v '^$'2&> errors.log |wc -l > linies.log 
date >>linies.log 
echo "Procés completat! Consulta linies.log i errors.log"
