#!/bin/bash

mkdir ~/backup
for i in $(ls -A ~/)
do
    if [ -f "$i" ]
        then
            cp "$i" ~/backup

    elif [ -d "$i" ]
        then
            cp -r "$i" ~/backup
    fi
done

echo "Backup realizado com sucesso!"
