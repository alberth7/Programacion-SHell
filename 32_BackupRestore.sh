# !/bin/bash
# programa que permite manejar las utilidades de Posgres
# author: Alberth

opcion=0
fechaActual=`date +%y%m%d`

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
    echo "Listar las bases de datos"
    sudo -U postgres psql -c "\l"
    read -p "Elegir la base de datos a respaldar:" bdRespaldo
    echo -e "\n"
    if [ -d "$1" ]; then
        echo "Establecer permisos directorio"
        echo "$password" | sudo -S chmod 755 $1
        echo "Realizando resoaldo"
        sudo -u posgres pg_dump -Fc $bdRespaldo > "$1/bdRespaldo$fechaActural.bak"
        echo "Respaldo realizado correctamente en la ubicacion: $1/bdRespaldo$fechaActual.bak"
    else
        echo "Directorio $1 no existe"
    fi

    read -n 1 -s -r -p "Presione [ENTER] para continuar"
    echo "Directorio de backup: $1"
}

#funcion para retaurar un respaldo
restaurar_respaldo (){
    echo "Listar respaldos"
    read -p "INgresar el directorio donde estan los respaldos:" directorioBackup
    ls -la $directorioBackup
    read -p "Elegir el respaldo a restaurar:" respaldoRestaurar
    echo -e "\n"
    read -p "Ingrese el nombre de l abase de datos destino:" bdDestino
    #verificar su le bs exsite
    verifyBdd=$(sudo -u postgres pswl -lqt | cut-d \| -f 1 | grep -wq $bdDestino)
    if [ $? -eq 0 ]; then
        echo "Restaurando en BD destino: $bdDestino"
    else
        sudo -u postgresql psql -c "create database $bsDestino"
    fi

    if [ -f "$1/$respaldoRestaurar" ]; then
        echo "Restaurando respaldo..."
        sudo -u postgres pg_restore -Fc -d $bdDestino "$directorioBackup/$respaldoRestaurar"
        echo "Listar la base de datos"
        sudo -u postgres psql -c "\l"
    else
        echo "El respaldo $respaldoRestaurar no existe"
    fi  
    read -n 1 -s -r -p "Presione [ENTER] para continuar"
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


       



