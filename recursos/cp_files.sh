#!/bin/bash
DIR_SCRIPT=/home/jparedes/Subidas/`date +%m-%d-%Y`

# Estso son los usuarios segun el cliente
#cyberapp (spain,colombia,portugal)
#tecnalis (internacional1)
#tecnalisapp (internacional2)

cd $DIR_SCRIPT

echo " Generando ficheros de archivos a sobreescribir"
echo
ls -ltr *.war | awk -F ' ' '{print $9}' >> $DIR_SCRIPT/subidas.txt
while read -r file
        do
                echo "$file"
                echo "DEBUG : find /home -name $file -print -exec cp $file {} \;"
                find /home -name $file -print -exec cp $file {} \;
                echo
        done < $DIR_SCRIPT/subidas.txt
echo
echo "Ahora copia el bacth_processing"
echo "DEBUG : yes | cp $DIR_SCRIPT/ogp-batch-processing/lib/* /home/ogp/ogp-batch-processing/lib"
yes | cp -p $DIR_SCRIPT/ogp-batch-processing/lib/* /home/ogp/ogp-batch-processing/lib
echo

rm -f $DIR_SCRIPT/subidas.txt
