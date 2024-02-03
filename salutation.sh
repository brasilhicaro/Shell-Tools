#!/bin/bash

nomeUsuario=$USER
diaSemana=$(date +%A)
horas=$(date +%H)
bomDia=""


if [ $horas >= 5 ] && [ $horas < 12 ]
    then
        bomDia="um bom dia"
elif [ $horas >= 12 ] && [ $horas < 18 ]
    then
        bomDia="uma boa tarde"
elif [ $horas >= 18 ] || [ $horas < 5 ]
    then
        bomDia="uma boa madrugada"
else 
    bomDia="uma boa noite"
fi

echo "Olá $nomeUsuario, hoje é $diaSemana e são $horas horas. tenha $bomDia!"