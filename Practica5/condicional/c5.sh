#!/bin/bash
#C.5) Crear un programa que permita recibir el nombre completo de un mes del año (M) en
#inglés y muestre por pantalla el mensaje “El mes M tiene X días”. Emplear case para su
#resolución.
#Nota: ignorar el caso de año bisiesto.
if [ $# -eq 1 ]; then
  case $1 in
  January)
    echo "El mes $1 tiene 31 días"
  ;;
  February)
    echo "El mes $1 tiene 28 días"
  ;;
  March)
    echo "El mes $1 tiene 31 días"
  ;;
  April)
    echo "El mes $1 tiene 30 días"
  ;;
  May)
    echo "El mes $1 tiene 31 días"
  ;;
  June)
    echo "El mes $1 tiene 30 días"
  ;;
  July)
    echo "El mes $1 tiene 31 días"
  ;;
  August)
    echo "El mes $1 tiene 31 días"
  ;;
  September)
    echo "El mes $1 tiene 30 días"
  ;;
  October)
    echo "El mes $1 tiene 31 días"
  ;;
  November)
    echo "El mes $1 tiene 30 días"
  ;;
  December)
    echo "El mes $1 tiene 31 días"
  ;;
  *)
    echo "No es un mes"
  ;;
  esac
else
  echo 'solo recibe un parametro'
fi