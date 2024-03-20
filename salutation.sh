#!/bin/bash

function_salutation(){
    user_name=$USER
    weekend_day=$(date +%A)
    hours=$(date +%H)
    salutation_text=""
    if [ $hours >= 5 ] && [ $hours < 12 ]
        then
            salutation_text="one good morning"            
    elif [ $hours >= 12 ] && [ $hours < 18 ]
        then
            salutation_text="one good afternoon"
    elif [ $hours >= 18 ] || [ $hours < 5 ]
        then
        salutation_text="one good early morning"
    else 
        salutation_text="one good night"
    fi
    echo "Hello $user_name, $salutation_text. Today is $weekend_day."
}
