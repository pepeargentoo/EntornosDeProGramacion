#!/bin/bash
#I.3)
# Crear un script que reciba como argumentos una cantidad de palabras.
 #El script debe determinar cuántas palabras son y cuántas de ellas tienen al menos 3
 #caracteres.
 #En caso de no suministrarse argumentos, deberá indicar que sin argumentos el script no
 #puede generar resultados.
PALABRAS=0
if [ $# -gt 1 ];then
  for i in "$@"
  do
    if [ ${#i} -gt 3 ];then
      PALABRAS=$((PALABRAS+1))
    fi
  done
else
  echo 'sin argumentos el script no puede generar resultados'
fi
echo 'cantidad de palabras que tienen al menos 3 carcateres son: ' $PALABRAS