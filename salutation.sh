#!/bin/bash

fun_salutation(){
    user_name=$USER
    weekend_day=$(date +%A)
    hours=$(date +%H)
    salutation_text=""
    if [ "$hours" -ge 5 ] && [ "$hours" -lt 12 ]; then
        salutation_text="one good morning"            
    elif [ "$hours" -ge 12 ] && [ "$hours" -lt 18 ]; then
        salutation_text="one good afternoon"
    elif [ "$hours" -ge 18 ] || [ "$hours" -lt 5 ]; then
        salutation_text="one good early morning"
    else 
        salutation_text="one good night"
    fi
    echo "Hello $user_name, $salutation_text. Today is $weekend_day."
}

fun_salutation