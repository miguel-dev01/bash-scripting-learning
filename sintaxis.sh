#!/bin/bash

num1=1
num2=2

num3=$((num1 + num2))
num4=$((num1 - num2))
num5=$((num1 * num2))
num6=$((num1 / num2))
num7=$((num1 % num2))

echo $num3 $num4 $num5 $num6 $num7

if [ $num1 != $num2 ]
then
	echo "$num1 y $num2 NO son iguales"
else
	echo "$num1 y $num2 SON iguales"
fi

# Para ficheros
file="/root"

if [ -d $file ]
then
	echo "$file existe y es un directorio"
else
	echo "$file No existe o no es un directorio"
fi

# Puertas logicas
if [ -r $file ] && [ -x $file ]
then
	echo "$file tiene permisos de lectura y de ejecucion"
else
	echo "$file No tiene permisos de lectura o de ejecucion"
fi
