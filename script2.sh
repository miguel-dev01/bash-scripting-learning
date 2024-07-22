#!/bin/bash

# Una variable de cadena
nombre="Miguel"
num=1

#result=`ps -ef | grep bash | grep -v grep`
# Otra forma de ejecutar la anterior linea
result=$(ps -ef | grep bash | grep -v grep)

echo $nombre
echo $num
echo $result

# Una manera de tratar los numeros sin dolar
((num++))
((num+=2))

echo "Esto es lo que vale despues de los incrementos: $num"
