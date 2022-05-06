#!/bin/bash
#C.3)
# Crear un script que reciba dos rutas a archivos de texto y que indique si estos archivos
# tienen la misma cantidad de líneas. Validar que los archivos existen y se pueden leer.

if [ $# -eq 2 ]; then
  if [ -f $1 ] && [ -f $2 ]; then
    if [ -r $1 ]; then
      LARCHIVO1=$(wc -l $1 | cut -d ' ' -f1)
      LARCHIVO2=$(wc -l $2 | cut -d ' ' -f1)
      if [ $LARCHIVO1 -eq $LARCHIVO2 ]; then
        echo 'tiene la misma cantidad de lineas'
      else
        echo 'no tiene la misma cantidad de lineas'
      fi
    else
      echo 'no tenemos permisos de lectura'
    fi
  else
    echo 'no existen'
  fi
else
  echo 'solo recibe dos archivos'
fi
exit 0