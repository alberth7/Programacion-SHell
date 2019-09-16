#!/bin/bash
# Programa para ejemplificar de lka sentecia CASE
# author: alberth

opcion=""

echo "Ejemplificar  sentecia CASE"
read -p" Ingrese una opcion de la A a la Z:" opcion

case $opcion in 
    "A") echo -e"\nOperacion Guardar Archivo";;
    "E") echo -e"\nOpeeracion eliminar Archivo";;
    [C-E]) echo -e"\nLa operacion no fue implementada";;
    *) echo -e"\nopcion Icorrecta"
esac
