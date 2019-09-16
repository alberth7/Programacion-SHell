# ! /bin/bash
# Programa para ejemplififcar el uso de arreglos
# Author: Alberth


arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Alberth, Jennie, Lisa, Rose, Jisoo)
arregloRangos=({A..Z} {10..20})

# imprimir todos los valores
echo "Arreglo de Numeros: ${arregloNumeros[*]}"
echo "Arreglo de cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"


# imprimir los tamanhos de los arrelgos
echo "Tamanho de Numeros: ${#arregloNumeros[*]}"
echo "Tamanho de cadenas: ${#arregloCadenas[*]}"
echo "Tamanho de Rangos: ${#arregloRangos[*]}"

# Imprimier la posicion 3 del arreglo de nuemros cadenas y rango
echo "Posicion 3 de arreglo de Numeros: ${arregloNumeros[3]}"
echo "Posicion 3 de Arreglo de cadenas: ${arregloCadenas[3]}"
echo "Posicion 3 de Arreglo de Rangos: ${arregloRangos[3]}"

#Anhadir y eliminar valores en un arreglo 

arregloNumeros[7]=20
unset arregloNumeros[0]
echo "arreglo numeros : ${arregloNumeros[*]}"
echo "Tamanho arreglo de Numeros: ${#arregloNumeros[*]}"

