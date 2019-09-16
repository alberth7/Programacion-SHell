# ! /bin/bash

# Progranma para ejemplificar leer en uyn archivo
# Author: Alberth

echo "Leer en un archivo "
cat $1
echo -e "\n Almacenar los valores en una variable"

valorCat= cat $1
echo "$valorCat"

# se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco al inico y el final se recortan
echo -e "\n Leer archivos linea por linea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1



