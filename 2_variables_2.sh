# Programa para la declaracion de variables

opcion=i
nombre=Alberth

echo "Opcion: $opcion y Nombre: $nombre"

#Exportar la variable para que este disponiblea los demas procesos

export nombre

# llamar al siguiente scrip para recuperar la variable
./2_variables.sh

