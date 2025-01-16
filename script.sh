#!/bin/bash
echo "¡Hola! Este es un script para aprender Git desde cero."
echo "1) Mostrar archivos en el directorio actual"
echo "2) Mostrar fecha y hora"
echo "3) Calcular el factorial de un número"
echo "4) Salir"
read -p "Selecciona una opción: " opcion

case $opcion in
    1) ls ;;   2) date ;;
    3)
        echo "Esta opción está en construcción." "El factorial de $numero es $factorial"
        ;;
    4) echo "Adiós"; exit ;;
    *) echo "Opción no válida";;
10.	esac