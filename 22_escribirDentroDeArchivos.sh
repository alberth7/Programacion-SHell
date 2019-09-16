# ! /bin/bash

# Progranma para ejemplificar escribir en un archivo
# Author: Alberth

echo "Escribir en un archivo|"

echo "Valores escritos con el comando echo" >> $1
# echo $2 >> $1

# adicicon multimedia

cat <<EOM>> $1
$2
EOM

