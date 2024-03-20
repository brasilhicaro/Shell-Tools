#!/bin/bash


function_counter() {

    count=0

    # Counter of files
    quantity_itens=$(ls -la | wc -l)

    echo "Quantity of items: $quantity_itens"

    # Loop for to increment the counter
    for i in $(seq $quantity_itens)
    do
        count=$((count+2))
        echo "Counter: $count"
    done

    # Loop for to decrement the counter
    while [ $count != 0 ]

    do
        echo "Counter: $count"
        count=$((count-2))
    done


    #  Loop while to increment the counter
    until [ $contcountador -ge $((2 * quantity_itens)) ]
    do
        echo "Counter: $count"
        count=$((contador+2))
    done

    echo "Total Files: $count"
}