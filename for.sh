#!/bin/bash

lista=(Miguel Maria Gonzalo Angel Quique)

# Recorrer la lista de forma indexada con [@]
# No se debe recorrer en string
for i in ${lista[@]}
do
	echo $i
done

# Ahora solo con nombres que empiece por A
for i in ${lista[@]}
do
	if [[ $i == A* ]]
	then
		echo $i
	fi
done
