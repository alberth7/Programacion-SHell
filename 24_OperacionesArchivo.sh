
# Progranma para ejemplificar las operaciones de un archivuo
# Author: Alberth

echo "Operaciones para crear un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupsScritps"

cp *.* backupScripts/
ls -la backupScripts/


echo -e "\nMOver el directorio backupScrips a otra ubicacion $HOME"
mv backupScripts $HOME


echo -e "\nEliminar los archivos .txt"
rm *.txt


