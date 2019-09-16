# ! /bin/bash
# Ejemplificar como capturar la informacion del usuario utilizando el comando echo, read y $REAPLY 
# author: Alberth Apaza

option=0
name=""


echo "Porgrama Utilidades Postgres"
echo -n "Ingresar una opcion:"
read
option=$REPLY

echo -n "Ingresar el nombre del archivo:"
read
name=$REPLY

echo "opcion : $option, backupName : $name"





