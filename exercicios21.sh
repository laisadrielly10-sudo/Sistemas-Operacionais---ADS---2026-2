
#!/bin/bash
 
while true; do
    echo "===== GERENCIAMENTO DE PROCESSOS ====="
    echo "1 - Listar processos"
    echo "2 - Procurar processo"
    echo "3 - Encerrar processo"
    echo "4 - Sair"
    read -p "Escolha uma opção: " opcao
 
    case $opcao in
        1)
            ps aux
            ;;
        2)
            read -p "Nome do processo: " processo
            resultado=$(ps aux | grep -i "$processo" | grep -v grep)
            if [ -n "$resultado" ]; then
                echo "$resultado"
            else
                echo "Nenhum processo encontrado."
            fi
            ;;
        3)
            read -p "PID do processo: " pid
            if ps -p "$pid" &>/dev/null; then
                read -p "Deseja realmente encerrar o processo $pid? (s/n): " confirmacao
                if [ "$confirmacao" = "s" ]; then
                    kill "$pid"
                    echo "Processo encerrado."
                else
                    echo "Operação cancelada."
                fi
            else
                echo "PID não encontrado."
            fi
            ;;
        4)
            echo "Saindo..."
            break
            ;;
        *)
            echo "Opção inválida."
            ;;
    esac
 
    echo ""
done
 
