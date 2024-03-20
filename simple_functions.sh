#!/bin/bash

function_show_actual_directory() {
    if function_directory_exists "$(pwd)"
    then
        echo "Show actual directory: $(pwd)"
    else
        echo "Directory not found"
    fi
}

function_directory_exists() {
    if [ -d "$1" ]
    then
        return 0  # Diretório existe
    else
        return 1  # Diretório não existe
    fi
}

function_show_all_content_of_actual_directory() {
    if function_directory_exists "$(pwd)"
    then
        echo "Show all content of actual directory: $(ls -la)"
    else
        echo "Directory not found"
    fi
}

function_create_new_directory() {
    local name="$1"
    echo "Create new directory: $(mkdir "$name")"
}

function_go_to_directory() {
    local name="$1"
    if function_directory_exists "$name"
    then
        echo "Go to directory: $(cd "$name")"
    else
        echo "Directory not found"
    fi
}

function_remove_directory() {
    local name="$1"
    if function_directory_exists "$name"
    then
        echo "Remove directory: $(rm -r "$name")"
    else
        echo "Directory not found"
    fi
}

function_file_exists() {
    if [ -f "$1" ]
    then
        return 0  # Arquivo existe
    else
        return 1  # Arquivo não existe
    fi
}

function_create_clear_file() {
    local name="$1"
    echo "Create clear file: $(touch "$name")"
}

function_access_file() {
    local name="$1"
    if function_file_exists "$name"
    then
        echo "Access file: $(cat "$name")"
    else
        echo "File not found"
    fi
}

function_remove_file() {
    local name="$1"
    if function_file_exists "$name"
    then
        echo "Remove file: $(rm "$name")"
    else
        echo "File not found"
    fi
}


