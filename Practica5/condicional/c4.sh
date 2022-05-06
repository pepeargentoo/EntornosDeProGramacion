#!/bin/bash
#C.4)
# Crear un script para determinar si un año es bisiesto mediante un if con una condición
 #que responda a esto.
 #Un año es bisiesto si es:
 #● Divisible entre 4.
 #● No divisible entre 100.
 #● Pero si es divisible por 100 debe serlo entre 400
 #(2000 y 2400 son bisiestos pues aún siendo divisibles entre 100 lo son también
 #entre 400. Pero los años 1900, 2100, 2200 y 2300 no lo son porque sólo son
 #divisibles entre 100).
if [ $# -eq 1 ]; then
  if [ $(($1%4)) -eq 0 ] && [ $(($1%100)) -ne 0 ];then
    echo 'es bisiesto'
  else
    if [ $(($1%100)) -eq 0 ] && [ $(($1%400)) -eq 0 ];then
      echo 'es bisiesto'
    else
      echo 'no es bisiesto'
    fi

  fi
else
  echo 'solo recibe un paramtro'
fi