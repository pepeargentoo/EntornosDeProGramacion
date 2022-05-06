#!/bin/bash
#I.2)
# Crear un script para mostrar por pantalla los números pares del n al 2.
#n es un argumento recibido por la línea de comandos y debe ser un entero mayor a 2.

if [ $# -eq 1 ];then
  if [ $1 -gt 2 ];then
    for ((i=$1;i>=2;i--))
      do
          if [ $(($i%2)) == 0 ]; then
            echo $i
          fi
      done
  else
    echo 'debe ser mayor a 2'
  fi
else
  echo 'solo recibe un argumento'
fi