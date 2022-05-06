#!/bin/bash
#I.4)
# Crear un script que permita el ingreso de una serie de números (consideremos que la
# entrada es adecuada, que la persona que emplea el script ingresa solo números) y
# determinar cuántos de ellos son:
# pares
# positivos
# que tengan 3 cifras

PARES=0
POSTIVOS=0
TRESCIFRAS=0

for i in "$@"
  do
    if [ $i -gt 100 ];then
      TRESCIFRAS=$((TRESCIFRAS+1))
    fi
    if [ $i -gt 1 ];then
      POSTIVOS=$((POSTIVOS+1))
    fi
    if [ $(($i%2)) -eq 0 ];then
      PARES=$((PARES+1))
    fi
  done
echo 'numeros de 3 cifras: ' $TRESCIFRAS
echo 'numeros postivos: ' $POSTIVOS
echo 'numeros pares: '$PARES