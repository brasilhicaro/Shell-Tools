#!/bin/bash

contador=0

# Contando a quantidade de itens no sistema
quantidade_itens=$(ls -la | wc -l)

echo "Quantidade de itens: $quantidade_itens"

# Loop for para incrementar o contador
for i in $(seq $quantidade_itens)
do
    contador=$((contador+2))
    echo "Contador: $contador"
done

while [ $contador != 0 ]

do
    echo "Contador: $contador"
    contador=$((contador-2))
done


# Loop until para continuar até o dobro da quantidade de itens
until [ $contador -ge $((2 * quantidade_itens)) ]
do
    echo "Contador: $contador"
    contador=$((contador+2))
done

echo "Total de arquivos: $contador"
