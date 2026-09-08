echo "===== USUÁRIOS CONECTADOS ====="
echo "1 - Listagem simples"
echo "2 - Listagem detalhada"
read -p "Escolha uma opção: " opcao
 
case $opcao in
    1)
        who
        ;;
    2)
        who -a
        ;;
    *)
        echo "Opção inválida."
        exit 1
        ;;
esac
 
echo ""
echo "Esses são os usuários atualmente conectados ao sistema."
