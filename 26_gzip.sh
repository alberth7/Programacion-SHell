# ! /bin/bash
# Progranma para ejemplificar el empaquetamiento con el comando gzip
#Author: Alberth

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCource.tar *.sh
# cuando se empaqueta con gzip el empaquetamiento anterior se elimina

gzip shellCourse.tar

echo "Emppaquetar un solo archivo, con un tario de 9"

gzip -9 9_options.sh


