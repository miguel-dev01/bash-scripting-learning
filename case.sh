#!/bin/bash

case $1 in
  [Ss]tart)
    echo "Iniciando el programa"
    ;;
  [Ss]top)
    echo "Deteniendo el programa"
    ;;
  help|*)
    echo "Para hacer uso del script deber pasar argumento start o stop"
    ;;
esac