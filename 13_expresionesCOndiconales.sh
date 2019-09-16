#!/bin/bash
# Programa para ejemplificar  el uso de expresiones condicionales 
# author: alberth

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su pais:" pais
read -p "Ingrese el pathg de su archivo:" pathArchivo


echo -e "\nExpresinoes Condicionales con numeros"
if [ $edad -lt 10 ]; then
    echo "la personas es un ninho"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolecente"
else
    echo "la persona es mayor de edad"
fi

echo -e "\nExpresinoes con cadenas"
if [ $pais = "EEUU" ]; then
    echo "la personas es Americana"
elif [ $pais = "Ecucador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es de sur America"
else
    echo "se desconoce la nacionalidad"
fi


echo -e "\nExpresinoes con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "el directorio $pathArchivo no existe"
fi



