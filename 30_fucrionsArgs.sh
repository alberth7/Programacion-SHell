# !/bin/bash
# programa que permite manejar las utilidades de Posgres
# author: Alberth

opcion=0

# funcion para instalar postgres
instalar_postgres (){
    echo "Instalar postgres..."

}

# funcion para desinstalar postgress
desinstalar_postgres (){
    echo "Desinstalar postgres..."

}

#funcion para sacar un respaldo
sacar_respaldo (){
    echo "Sacar respaldo..."
    echo "Directorio de backup: $1"
}

#funcion para retaurar un respaldo
restaurar_respaldo (){
    echo "Restaurar respaldo..."
    echo "Directorio de respaldo: $1"
}

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
        instalar_postgres
        sleep 3
        ;;
    2)  
        desinstalar_postgres
        sleep 3
        ;;
    3) 
        read -p "Directorio Backup:" directorioBackup
        sacar_respaldo $directorioBackup
        sleep 3
        ;;
    4) 
        read -p "Directorio de Respaldos:" directorioRespaldo
        restaurar_respaldo $diretorioRespaldo
        sleep 3
        ;;
    5) 
        echo -e"\nSalir del Programa"
        exit 0
        ;;
    esac
done


       



