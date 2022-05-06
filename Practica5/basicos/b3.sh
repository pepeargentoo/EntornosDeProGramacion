#!/bin/bash
#B.3)
# Crear un script que reciba una cantidad de argumentos sin definir e indique si recibió
# una cantidad par o impar de argumentos. Emplear construcciones de test (corchetes [ ]) y
# operadores lógicos (&& por ejemplo)
# en los test cuando && ls --> permite ejecutar comando de manera arbitraria
# google y se llama command injection
# ejemplo b3.sh pepe ;ls
# nos lista el contenido del directorio actual pero si somos malos
# podemos hacer pepe;cat /etc/passwd
# si tenemos permisos 777 podriamos hacer mucho lio :)
# solucion filtar lo que llega antes de ejecutar :)
# fuente https://blog.hackmetrix.com/command-injection/
# shellcheck disable=SC2034

ARG=$(($#%2))

if [ $ARG -eq 0 ] ; then
  echo "par"
else
  echo "impar"
fi
