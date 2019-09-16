# ! /bin/bash
# Progranma para ejemplificar l aform a de como transferir por la red utilizando el comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
#Author: Alberth

echo "Empaquetar archivos con clave con el nombre shellCource y trnaferiri los por la red a otro equipo"

host=""
usuario=""
read -p "Ingresar el host:" host
read -p "Ingresar el usuario:" usuario
echo -e"\nEn este momento se procedera a empaquetar la carpeta y transperir segun los dartos ingresados"
rsync -avz $(pwd) $usuario@host:/home/


