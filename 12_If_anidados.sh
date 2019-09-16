#!/bin/bash
# Programa para ejemplificar los if anidados
# author: alberth

notaClase=0
continua=""

echo "Ejemplificar IF-ELSE"
read -n1 -p"Indique cual es su nota (1-9):" notaClase
echo -e "\n"
if [ $noaClase >= 7 ]; then
    echo "el alumno aprueba la materia"
    read -p "si va continuar estiudiando en el siguiente nivel (s/n):" continua
    if [ $continua = "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else 
        echo "Gracias por trabajar con nosotros, mucha suerte !!!"
    fi
else
    echo "El alumno reprueba la materia"
fi

