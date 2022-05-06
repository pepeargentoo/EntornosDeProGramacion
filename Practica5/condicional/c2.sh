#!/bin/bash
#C.2)
# Crear un script que reciba una única cadena como argumento y determine si esa
#cadena es o no un palíndromo.
#Tip: utilizar el comando rev
if [ $# -eq 1 ] ; then
  PAL=$(echo $1 | rev)
  if [ $1 == $PAL ] ; then
    echo 'es palíndromo'
  else
    echo 'no es palíndromo'
  fi
else
  echo 'ingreso mas de un argumento'
fi