
#!/bin/bash
 
while true; do
    echo "===== GERENCIAMENTO DE ARQUIVOS ====="
    echo "1 - Procurar arquivo"
    echo "2 - Procurar palavra em arquivo"
    echo "3 - Renomear arquivo"
    echo "4 - Mover arquivo"
    echo "5 - Remover arquivo"
    echo "6 - Comparar arquivos"
    echo "7 - Sair"
    read -p "Escolha uma opção: " opcao
 
    case $opcao in
        1)
            read -p "Digite o nome do arquivo a procurar: " nome
            find / -name "$nome" 2>/dev/null
            ;;
        2)
            read -p "Digite a palavra a procurar: " palavra
            read -p "Digite o nome do arquivo: " arquivo
            if [ -f "$arquivo" ]; then
                grep -n "$palavra" "$arquivo"
            else
                echo "Arquivo não encontrado."
            fi
            ;;
        3)
            read -p "Nome atual do arquivo: " atual
            if [ -f "$atual" ]; then
                read -p "Novo nome do arquivo: " novo
                mv "$atual" "$novo"
                echo "Arquivo renomeado."
            else
                echo "Arquivo não encontrado."
            fi
            ;;
        4)
            read -p "Nome do arquivo a mover: " origem
            if [ -f "$origem" ]; then
                read -p "Destino: " destino
                mv "$origem" "$destino"
                echo "Arquivo movido."
            else
                echo "Arquivo não encontrado."
            fi
            ;;
        5)
            read -p "Nome do arquivo a remover: " remover
            if [ -f "$remover" ]; then
                read -p "Confirma remoção de '$remover'? (s/n): " confirmacao
                if [ "$confirmacao" = "s" ]; then
                    rm "$remover"
                    echo "Arquivo removido."
                else
                    echo "Operação cancelada."
                fi
            else
                echo "Arquivo não encontrado."
            fi
            ;;
        6)
            read -p "Primeiro arquivo: " arq1
            read -p "Segundo arquivo: " arq2
            if [ -f "$arq1" ] && [ -f "$arq2" ]; then
                diff "$arq1" "$arq2" && echo "Os arquivos são iguais."
            else
                echo "Um dos arquivos não existe."
            fi
            ;;
        7)
            echo "Saindo..."
            break
            ;;
        *)
            echo "Opção inválida."
            ;;
    esac
 
    echo ""
done
