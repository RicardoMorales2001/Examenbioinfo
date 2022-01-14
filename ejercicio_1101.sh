#Ejercicio 10.0.1
# 1. Dirigirse al directorio CSB/unix/sandbox
cd Documents/CSB/CSB/unix/sandbox
# 2. ¿Cuál es el tamaño del archivo Marra2014_data.fasta?
ls -lh ../data/Marra2014_data.fasta
# Respuesta: 553K
# Se utiliza el comando ls -l debido a que este enlista y detalla la información del archivo en cuestio y se agrega la -h para que esta información pueda ser leida.
# 3. Cree una copia de Marra2014_data.fasta en sandbox y asígnele el nombre my_file.fasta.
cp ../data/Marra2014_data.fasta my_file.fasta
# Se usa el comando cp para copiar un archivo de un directorio a otro.
# 4. ¿Cuántos contigs se clasifican como isogrupo00036?
grep isogroup00036 my_file.fasta | wc -l
# Se usa el comando grep para buscar un patrón en este caso la palabra isogroup00036 y se usó wc -l para el conteo de lineas con determinado caracter.
