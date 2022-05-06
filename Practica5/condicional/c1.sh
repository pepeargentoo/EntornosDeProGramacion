#!/bin/bash
#C.1)
# Crear un script que reciba la ruta absoluta a un archivo e indique si existe o no y si se
# trata de un archivo regular o un directorio.

if [ $# -eq 1 ]; then
  if find $1 -print -quit | grep -q '^' ; then
    if [ -f $1 ]; then
      echo 'es un archivo'
    fi
    if [ -d $1 ]; then
      echo 'es una carpeta'
    fi
  else
    echo 'no existe el archivo ingresado '
  fi
else
  echo 'solo recibe un paramatro'
fi
