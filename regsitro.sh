# ! /bash/bin
# Programa para  ejemplificar como capturar la informacion del usuario y validar utilizando expresiones regulares
# Autor Alberth Apaza


identificacionRegx='^[0-9]{4}$'
paisRegx='^EC|COL|USE$'
fechaNacimientoRegx='^19|20[0-9]{2}[1-12][1-31]{2}$'

echo "Expresiones Regulares"
read -p "Ingresar una identificacion: " identificacion
echo -e"\n"
read -p "Ingresar las iniciales del pais [EC, COL, USA]: " pais
echo -e"\n"
read -p "Ingresar la fecha del nacimiento [yyyy/mm/dd]: " fechaNacimiento
echo "identificacion: $identificacion, pais: $pais, fecha de Nacimiento: $fechaNacimiento"

if [[ $identificacion =~ $identificacionRegx ]]; then
  echo "identificacion: $identificacion valida"
  else
  echo "identificacion: $identificacion Invalida"
fi

if [[ $pais =~ $paisRegx ]]; then
  echo "pais: $pais valido"
  else
  echo "pais: $pais Invalido"
fi

if [[ $fechaNacimiento =~ $fechaNacimientoRegx ]]; then
  echo "fecha de nacimiento: $fechaNacimiento valido"
  else
  echo "fecha de nacimiento: $fechaNacimiento Invalido"
fi


