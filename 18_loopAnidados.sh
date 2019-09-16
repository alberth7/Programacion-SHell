# ! /bin/bash
# Programa para ejemplififcar uso de los LOOP anidados
# Author: Alberth

echo "Loop anidados"

for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "nombre del archivo: $fil _ $nombre"
    done
done

