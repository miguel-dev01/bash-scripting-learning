#!/bin/bash

# Script de menu

nombre=$(whoami)

echo "Bienvenido. Hoy es $(date +%D)"

echo "El nombre de usuario es $nombre"

read -p "¿Desea cambiarlo? Introduzca 'S' para SI o 'N' para NO: " pregunta_cambio

if [ "$pregunta_cambio" == "S" ]
then
	read -p "Introduzca su nuevo nombre: " nuevo_nombre
	nombre=$nuevo_nombre
	echo "El nombre antiguo ha sido cambiado a $nombre"
elif [ "$pregunta_cambio" == "N" ]
then
	echo "Gracias y hasta pronto $nombre"
else
	echo "No has introducido una opcion valida. Vuelve a intentarlo"
fi
