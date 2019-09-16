# ! /bin/bash
# Programa para ejemplififcar la sentencia for 
# Author: Alberth


arregloNumeros=(1 2 3 4 5 6)

echo "iterrar en la lista de numeros"
for num in ${arregloNumeros[*]}
do
    echo "numero: $num"
done


echo "Iterar en la lista de cadenas"
for mon in "Jennie" "Lisa" "Rose" "Jisoo"
do
    echo "Nombres: $nom"
done


echo "Iterar en archivos"
for file in *
do
    echo "Nopmbre archivo: $file"
done

echo "Iterar utilizando un comando"
for fil in $(ls)
do
    echo "nombre archivo: $fil"
done

echo "utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "numero: $i"
done







