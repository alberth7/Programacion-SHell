# !/bin/bash
# programa que permite manejar las utilidades de Posgres
# author: Alberth

opcion=0

# funcion para instalar postgres
instalar_postgres (){
    echo -e "\n vedificar instalacion postgres ..."
    verifyInstall=$(which psql)
    if [ $? -eq 0  ]; then
        echo -e "/n Postgres ya esta instalado en el equipo"
    else
        read -s -p "Ingresar password de sudo:" password
        read -s -p "Ingresar password a utilizar en postgress:" passwordPostgres
        echo "password" | sudo -S apt update
        echo "password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$passwordPostgres}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n 1 -s -r -p "Presione [ENTER] para continuar..."

}

# funcion para desinstalar postgress
desinstalar_postgres (){
    
    read -s -p "Ingresar password de sudo:" password
    echo -e "/n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql 
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "Presione [ENTER] para continuar"
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


       



