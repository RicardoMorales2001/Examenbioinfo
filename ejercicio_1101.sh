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
# Respuesta: 16
# Se usa el comando grep para buscar un patrón en este caso la palabra isogroup00036 y se usó wc -l para el conteo de lineas con determinado caracter.
# 5. Reemplace el delimitador original de "dos espacios" con una coma.
 cat my_file.fasta | tr -s ' ' ',' | head -n 3
# Respuesta: >contig00001,length=527,numreads=2,gene=isogroup00001,status=it_thresh
#ATCCTAGCTACTCTGGAGACTGAGGATTGAAGTTCAAAGTCAGCTCAAGCAAGAGATTTG
#TTTACAATTAACCCACAAAAGGCTGTTACTGAAGGTGTGGCTTAAGTGTCAGAGCAACAG
#Se imprime en la consola el contenido de my_file.fasta y sustituimos los espacios usando el comando tr junto con -s para que agrupe los caracteres definidos.
# 6. ¿Cuántos isogrupos únicos hay en el archivo?
grep '>' my_file.fasta | head -n 2
# Respuesta:
# >contig00001  length=527  numreads=2  gene=isogroup00001  status=it_thresh
# >contig00002  length=551  numreads=8  gene=isogroup00001  status=it_thresh
# Se utiliza el comando grep '>' para extraer el patrón con contig 
#Finalmente usamos la combinación de sort| uniq| wc -l para contar los datos únicos.
grep '>' my_file.fasta | cut -d ',' -f 4 | sort | uniq | wc -l
# Respuesta: 43
