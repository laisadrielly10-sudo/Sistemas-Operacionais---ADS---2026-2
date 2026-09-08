read -p "Digite o nome do arquivo: " arquivo
 
if [ ! -f "$arquivo" ]; then
    echo "Erro: o arquivo '$arquivo' não existe."
    exit 1
fi
 
echo "Escolha a permissão:"
echo "1 - 644 (leitura/escrita para dono, leitura para os demais)"
echo "2 - 755 (leitura/escrita/execução para dono, leitura/execução para os demais)"
echo "3 - 700 (leitura/escrita/execução apenas para o dono)"
echo "4 - Informar outra permissão"
read -p "Opção: " opcao
 
case $opcao in
    1) permissao=644 ;;
    2) permissao=755 ;;
    3) permissao=700 ;;
    4) read -p "Digite a permissão desejada: " permissao ;;
    *)
        echo "Opção inválida."
        exit 1
        ;;
esac
 
chmod "$permissao" "$arquivo"
echo "Permissão do arquivo '$arquivo' alterada para $permissao."
 
