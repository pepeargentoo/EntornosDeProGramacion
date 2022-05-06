#!/bin/bash
#I.5)
# Crear un script que permita recibir tres argumentos:
# una palabra P, un número positivo n y una ruta.
# Se debe validar la cantidad de argumentos, que n cumpla los requerimientos y
# se tenga permiso de escritura en la ruta indicada.
# Deberá generarse con esta información un archivo llamado “palabra_P.dat” en la ruta
# especificada, que contenga n líneas numeradas y que cada línea el texto indique
# “Se ingresó la palabra P”.
touch "$3"'/palabra_P.dat'
if [ $# -eq 3 ];then
  if [ "$2" -gt 0 ];then
    if [ -w "$3" ];then
      for((i=0;i<$2;i++))
      do
        echo "Se ingresó la palabra $1" >> "$3"'/palabra_P.dat'
      done
    else
      echo 'se requiere permiso de escritura'
    fi
  else
    echo 'n debe ser postivo'
  fi

else
  echo 'debe ingresar 3 argumentos'
fi