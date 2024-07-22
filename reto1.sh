#!/bin/bash

# Declarar cuatro variables
nombre=""
edad=0
curso=0
nota=0

# Pedimos al usuario que los rellene
read -p "Introduce a continuacion tu nombre: " nombre
read -p "Introduce a continuacion tu edad: " edad
read -p "Introduce a continuacion tu curso: " curso
read -p "Introduce a continuacion tu nota: " nota

# Verificamos los valores
if [ -n "$nombre" ] && [ -n "$edad" ] && [ -n "$curso" ] && [ -n "$nota" ]; then
    echo "Datos introducidos correctamente"
else
    echo "Algo ha salido mal en la introduccion de datos"
fi

# Condicional relacionado con el nombre del usuario
if [ $nombre == "Miguel" ]
then
	echo "Datos introducidos: Nombre: $nombre, Edad: $edad, Curso: $curso, Nota: $nota. Hoy es dia: $(date)"
else
	echo "No eres la persona que se esperaba."
fi
