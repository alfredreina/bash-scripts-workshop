#!/bin/bash
url="https://www.youtube.com/watch?v=jaLDoWqIq2M"
while true; do
	echo
	echo "Això es una espiral d'emocions alegries i exits"
	echo "Vols continuar aquí?"
	echo " 1) Vull continuar"
	echo " 2) Deixam sortir"
	echo

	read -p  "Escull amb cura: " opcio

	case "$opcio" in
		1)
			echo "Aquí sigo"
			xdg-open "$url" >/dev/null 2>&1
			break
			;;
		2)
			echo "Vamoooo"
			break
			;;
		*)
			echo "Opció no valida"
			;;
	esac
done
