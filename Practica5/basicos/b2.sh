#!/bin/bash
#B.2)
# Crear un script que reciba exactamente dos argumentos, el primero corresponderá a
# un número de mes y el segundo a un año.
# Deberá mostrar por pantalla el calendario del mes y año con el día destacado
# Tip: analizar el comando cal
# Nota: evitaremos por ahora la validación de la cantidad y valor de los argumentos enviados
if [ $# -eq 2 ]; then
if [ $1 -ge 01 ] && [ $1 -le 12 ];then
cal $1 $2
else
echo "el mes tiene que ir entre 01 y 12"
fi
else
echo "ingreso mas de 2 argumentos"
fi
exit 0