# !/bin/bash
# programa que permite manejar las utilidades de Posgres
# author: Alberth

opcion=0

while :
do
    #Limpiar la pantalla
    clear
    #despleagar el menu opciones
    echo "------------------------------------------"
    echo "PGUTIL - Programa de utilidad de Postgres"
    echo "------------------------------------------"
    echo "          MENU PRINCIPAL                  "
    echo "------------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desisntalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

#Leer los datos del usuario - capturar la informacion
 # -n1 solo para que ingrese un caracter
read -n1 -p "Ingrese una opcion [1-5]:" opcion

# validar la opcion ingresada
case $opcion in
    1)
        echo -e"\ninstalar postgres....."
        sleep 3
        ;;
    2)  
        echo -e"\nDeinstalar postgres..."
        sleep 3
        ;;
    3) 
        echo -e"\nSacar respaldo..."
        sleep 3
        ;;
    4) 
        echo -e"\nRestaurar respaldo..."
        sleep 3
        ;;
    5) 
        echo -e"\nSalir del Programa"
        exit 0
        ;;
    esac
done


       



