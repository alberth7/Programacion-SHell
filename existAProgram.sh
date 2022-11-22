#!/bin/bash 

programName=0

read -p "Ingrese el nombre del programa>>>" programName
 
nombreBuscar=$(which programName)

if [ $? -eq 1 ] ; then
	echo "El programa si existe ";
else
	echo "El programa No existe";
fi



