# ! /bin/bash
# Programa para ejemplificar el paso de argumentos
# Author: Alberth Apaza

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horaio de $horarioCurso"
echo "El numero de parametros enviados es: $# "
echo "Los parametros enviados son: $*"



