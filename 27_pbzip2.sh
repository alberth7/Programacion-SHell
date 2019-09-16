# ! /bin/bash
# Progranma para ejemplificar el empaquetamiento con el comando pbzip
#Author: Alberth

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCource.tar *.sh
pbzip2 -f shellCource.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCource.tar.bz2




