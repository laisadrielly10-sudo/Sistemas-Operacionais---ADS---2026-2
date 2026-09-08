#!/bin/bash 

clear 

read -p "infome uma palavra: " a1 

read -p "informe o nome do arquivo: " a2 

if  [ ! -f "$a2" ]; then 

    echo "Erro: o arquivo '$a2' não existe." 

    exit 1	 

fi 
  

if grep -q "$a1" "$a2"; then 

    echo "A palavra '$a1' FOI encontrada no arquivo '$a2'." 

else 

    echo "A palavra '$a1' NÃO foi encontrada no arquivo '$a2'." 

fi 

 

 

 

 

 
