#!/bin/bash

echo "===== PROCURAR ARQUIVOS/COMANDOS ====="
echo "1 - Procurar um arquivo (find)"
echo "2 - Procurar um comando (whereis)"
echo "3 - Procurar um arquivo (locate)"
read -p "Escolha uma opção: " opcao

case $opcao in
    1)
        read -p "Digite o nome do arquivo a procurar: " nome
        find / -name "$nome" 2>/dev/null
        ;;
    2)
        read -p "Digite o nome do comando a procurar: " nome
        whereis "$nome"
        ;;
    3)
        read -p "Digite o nome do arquivo a procurar: " nome
        locate "$nome"
        ;;
    *)
        echo "Opção inválida."
        ;;
esac
