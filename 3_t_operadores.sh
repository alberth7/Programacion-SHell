# ! /bin/bash
# Programa para revisar los tipos de operadores
# Autor: Alberth Apaza 
#ls -l >>diercctorios.txt

numA=10
numB=21

echo "operadores Aritmeticos"
echo "Numeros A=$numA y B=$numB"
echo "La suma es: " $((numA + numB))
echo "La multiplicacion  es: " $((numA * numB))
echo "La resta es es: " $((numA - numB))
echo " MOD: " $((numA % numB))
echo " DIV: " $((numA / numB))

echo -e "\n Operadores Relacionales"
echo "Numeros A=$numA y B=$numB"
echo " A > B " $((numA > numB))
echo " A < B" $((numA < numB))
echo " A >= B " $((numA >= numB))
echo " A <= B" $((numA <= numB))
echo " A == B " $((numA == numB))
echo " A != B " $((numA != numB))

echo -e "\n Operadores Asignacion"
echo "Numeros A=$numA y B=$numB"
echo "Sumar  A += B " $((numA += numB))
echo "Sumar  A -= B " $((numA -= numB))
echo "Sumar  A *= B " $((numA *= numB))
echo "Sumar  A /= B " $((numA /= numB))


