# ! /bin/bash

# Progranma para ejemplificar la creacion de archivos y directorios
# Author: Alberth


echo "Archivos y direcctorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "direccortio creado correctamente"
    ls -la $2
 elif [ $1 = "f" ]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe esa opcion: $1"
fi

