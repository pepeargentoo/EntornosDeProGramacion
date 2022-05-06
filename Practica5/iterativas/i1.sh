#!/bin/bash
#I.1)
# Crear un script para mostrar por pantalla los números impares del 1 al n.
# n es un argumento recibido por la línea de comandos y debe ser un entero positivo.
if [ $# -eq 1 ]; then
  if [ $1 -ge 1 ]; then
    for ((i=0;i<=$1;i++))
      do
          if [ $(($i%2)) != 0 ]; then
            echo $i
          fi
      done
  else
    echo 'debe ser entero >= 1'
  fi
else
  echo 'solo recibe un argumento'
fi