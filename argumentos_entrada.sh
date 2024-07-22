#!/bin/bash

echo "El script ejecutado es $0"
echo "El primer valor introducido es $1"
echo "El segundo valor introducido es $2"

echo "Recuento de los valores: $*"
echo "Has indicado un total de: $# argumentos"

echo "Añade un argumento mas: " entrada
read entrada

read -p "Y otro argumento mas: " more_argument

echo "Lista final de argumentos: $@ $entrada $more_argument"
