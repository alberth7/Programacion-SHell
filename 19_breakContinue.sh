# ! /bin/bash
# Programa para ejemplififcar uso BREAK y CONTINUE
# Author: Alberth

echo "setencias Break y Continue"

for fil in $(ls)
do
    for nombre in {1..4}
    do  
        if [ $fil = "10_donwload.sh" ]; then
            break;
        elif [[ $fil == 4* ]]; then
            continue;
        else
            echo "nombre del archivo: $fil _ $nombre"
        fi
   done
done

