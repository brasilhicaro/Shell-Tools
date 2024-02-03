#!/bin/bash

function_showActualDirectory() {
    echo "Actual directory: $(pwd)"
}

function_showAllContentOfActualDirectory() {
    echo "All content of actual directory: $(ls -la)"
}

function_createNewDirectory() {
    echo "Create new directory: $(mkdir new_directory)"
}

function_goToNewDirectory() {
    echo "Go to new directory: $(cd new_directory)"
}

function_removeNewDirectory() {
    echo "Remove new directory: $(rm -rf new_directory)"
}

function_createClearFile() {
    echo "Create clear file: $(touch new_file.txt)"
}

function_acessFile() {
    echo "Acess file: $(cat new_file.txt)"
}

function_removeFile() {
    echo "Remove file: $(rm new_file.txt)"
}

