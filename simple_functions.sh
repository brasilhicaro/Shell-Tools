#!/bin/bash

function_show_actual_directory() {
    if function_directory_exists($name)
        then
            echo "Show actual directory: $(pwd)"
        else
            echo "Directory not found"
    fi
}

function_directory_exists($name) {
    if [ -d $name ]
        then
            return true
        else
            return false
    fi
}

function_show_all_content_of_actual_directory() {
    if function_directory_exists($name)
        then
            echo "Show all content of actual directory: $(ls -la)"
        else
            echo "Directory not found"
    fi
}

function_create_new_directory($name) {
    echo "Create new directory: $(mkdir $name)"
}

function_go_to_directory($name) {
    if function_directory_exists($name)
        then
            echo "Go to directory: $(cd $name)"
        else
            echo "Directory not found"
    fi
}

function_remove_directory($name) {
    if function_directory_exists($name)
        then
            echo "Remove directory: $(rm -r $name)"
        else
            echo "Directory not found"
    fi
}

function_file_exists($name) {
    if [ -f $name ]
        then
            return true
        else
            return false
    fi
}

function_create_clear_file($name) {
    echo "Create clear file: $(touch $name)"
}

function_acess_file($name) {
    if function_file_exists($name)
        then
            echo "Acess file: $(cat $name)"
        else
            echo "File not found"
    fi
}

function_remove_file($name) {
    if function_file_exists($name)
        then
            echo "Remove file: $(rm $name)"
        else
            echo "File not found"
    fi
}

