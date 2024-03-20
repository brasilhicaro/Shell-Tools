#!/bin/bash

function_backup(){
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

    echo "Sucess Backup"
}
