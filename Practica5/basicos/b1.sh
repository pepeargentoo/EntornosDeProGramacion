#!/bin/bash

#B.1)
# Crear los directorios tuia/edp/bin en su home directory.
#Posteriormente, crear un script en ese directorio que muestre por pantalla “hello world”.
#Agregar el directorio a la variable PATH para poder ejecutar el script como un comando
#corriente.
# shellcheck disable=SC2164
cd ~
RUTA=$(pwd)
FULLPATH=$RUTA/tuia/edp/bin
mkdir -p "$FULLPATH"
touch "$FULLPATH"/script1.sh
echo "#!/bin/bash" > "$FULLPATH"/script1.sh
echo "#comentario script 1" > "$FULLPATH"/script1.sh
echo "echo 'hello world' " > "$FULLPATH"/script1.sh
#echo "exit 0" > $FULLPATH/script1.sh preguntar
chmod +x "$FULLPATH"/script1.sh
PATH=$FULLPATH:$PATH
export PATH
cd ~
script1.sh
exit 0