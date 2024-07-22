#!/bin/bash

dirs=(/root /home/miguel/bash_scripts/aa /home/miguel/bash_scripts/bb)

case $1 in
  [Cc]heck)
    echo "Comprobando si los directorios existen..."
    i=0
    while [ $i -lt ${#dirs[*]} ]
    do
      if [ -d ${dirs[$i]} ]
      then
        echo "El directorio ${dirs[$i]} existe."
      else
        echo "El directorio ${dirs[$i]} no existe."
      fi
      i=$((i+1)) # Tambien sepuede hacer ((i++))
    done
    ;;
  [Mm]ake)
    echo "Creando los directorios..."
    for dir in ${dirs[*]}
    do
      if [ ! -d $dir ]
      then
        mkdir -p $dir
        echo "Directorio $dir creado."
      else
        echo "El directorio $dir ya existe."
      fi
    done
    ;;
  help|*)
    echo "El uso de este script son con los siguientes argumentos: check, make o help."
    ;;
esac