read -p "Digite o nome do arquivo: " arquivo
 
if [ ! -f "$arquivo" ]; then
    echo "Erro: o arquivo '$arquivo' não existe."
    exit 1
fi
 
linhas=$(wc -l < "$arquivo")
palavras=$(wc -w < "$arquivo")
caracteres=$(wc -c < "$arquivo")
 
echo "Arquivo: $arquivo"
echo "Linhas: $linhas"
echo "Palavras: $palavras"
echo "Caracteres: $caracteres"
 
