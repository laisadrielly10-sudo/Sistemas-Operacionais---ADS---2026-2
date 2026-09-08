#!/bin/bash

read -p "Digite o nome atual do arquivo: " arquivo_atual


if [ ! -f "$arquivo_atual" ]; then
    echo "Erro: o arquivo '$arquivo_atual' não existe."
    exit 1
fi


read -p "Digite o novo nome do arquivo: " arquivo_novo

mv "$arquivo_atual" "$arquivo_novo"


if [ $? -eq 0 ]; then
    echo "Arquivo renomeado com sucesso: '$arquivo_atual' -> '$arquivo_novo'"
else
    echo "Erro ao renomear o arquivo."
fi
