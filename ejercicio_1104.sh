# Para empezar debemos ingresar a la carpeta que contiene la información, usando el siguiente código 
cd Documents/CSB/CSB/unix/data
# Se necesitara obtener el nombre de la columna.
# En este caso para el archivo de datos Buzzard columna 10
cut -d ',' -f 8 ../data/Buzzard2015_data.csv | head -n 1
# Respuesta: basal.area
# Se utiliza el comando cut para analizar el archivo acontinuación usamos el delimitador -d luego usamos -f para seleccionar una columna y finalmente usamos head -n 1 para observar la primera fila,
# Ahora se necesita obtener el número de valores distintos.
cut -d ',' -f 8 ../data/Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l
# Respuesta: 285
# Se usa los mismos comandos que en el paso anterior, adicionando tail -n +2 para poder generar una salida que comience con la línea del número seleccionado, sort se usó para ordenar el contenido, mientras que uniq se lo uso para identificar los elementos y finalmente wc-l para el conteo de líneas. 
# Obtención del mínimo.
cut -d ';' -f 8 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1
# Respuesta: 4.921875
# El comando es parecido al anterior solo que en este caso agragamos un -n al comando sort con la finalidad de que este ordene los números y se uso head -n 1 para observar la primera fila
# Obtención del máximo.
cut -d ',' -f 8 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
# Respuesta: 26085.15
#Se utiliza el mismo código de la parte superior, con la diferencia que aquí se usara tail -n 1 para observar el máximo.
