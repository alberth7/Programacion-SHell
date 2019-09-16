# ! /bin/bash
# Proggrama para Ejemplificar como capturar la informacion del usuario y validarla 
# author: Alberth Apaza

option=0
name=""
clave=""

echo "Porgrama Utilidades Postgres"
#Acepta el ingresode informacion de un solo caracter
read -n1 -p "Ingresar una opcion:" option #n es para el numero de caracteres
echo -e "\n"

read -n10 -p "Ingresar el nombre del archivo:" name
echo -e "\n"
echo "opcion : $option, backupName : $name"

read -s -p "claave: " clave
echo "clave: $clave"







