#!/bin/bash

i=5

echo "Cuenta atras..."

while (( i >= 1 ))
do
	echo $i
	sleep 1
	((i--))
done

while true
do
	echo "No voy a parar hasta que sea interrumpido"
	sleep 1
done
