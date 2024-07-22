#!/bin/bash

# Script de listas

lista=(uno dos tres)
lista[3]="cuatro"

echo "La lista contiene los valores: ${lista[*]}"
echo "La lista contiene la cantidad de: ${#lista[*]}"
echo "El segundo valor de la lista contiene: ${#lista[1]} caracteres"

if [ $? -eq 0 ]
then
	echo "El comando anterior ha finalizado correctamente"
else
	echo "El comando anterior ha fallado :("
fi
