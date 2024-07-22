#!/bin/bash

fichero=$1
pos=1

while read LINE
do
  for dir in $LINE
  do
    if [ ! -d $dir ] && [ ${#dir} -lt 5 ]
    then
      mkdir -p $dir
      echo "Directorio $dir creado."
    else
      echo "El directorio $dir ya existe."
    fi
  done
  # ((pos++))
done < $fichero