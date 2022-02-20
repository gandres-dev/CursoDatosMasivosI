#! /bin/bash

# Contando palabras con MapReduce
# Linux Commands that we are going to use
# man cat
# man tr
#echo 'Hola mundo' | tr 'H' 'w'

file_name=big_file.txt
while getopts f: flag
do
    case  "${flag}" in
        f) file_name=${OPTARG};;
    esac
done
echo "Filename: " $file_name;
echo "--------Mapeo-------"
cat $file_name | tr ' ' '\n' > out_bigfile.txt
cat out_bigfile.txt
echo ".---Agrupar llaves---"
cat out_bigfile.txt | sort  
echo "-------Reduccion----"
cat out_bigfile.txt | sort | uniq -c | cat


# https://www.baeldung.com/linux/use-command-line-arguments-in-bash-script
# https://www.shellscript.sh/variables1.html

