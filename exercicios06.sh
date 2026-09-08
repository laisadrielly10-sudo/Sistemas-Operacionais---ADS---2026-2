#!/bin/bash

read -p "Digite a palavra ou string a procurar: " palavra
read -p "Digite o nome do arquivo: " arquivo

if [ ! -f "$arquivo" ]; then
    echo "Erro: o arquivo '$arquivo' não existe."
    exit 1
fi

resultado=$(grep -n "$palavra" "$arquivo")

if [ -n "$resultado" ]; then
    echo "A palavra '$palavra' foi encontrada no arquivo '$arquivo'."
    echo ""
    echo "Linhas encontradas:"
    echo "$resultado"
else
    echo "A palavra '$palavra' NÃO foi encontrada no arquivo '$arquivo'."
fi
