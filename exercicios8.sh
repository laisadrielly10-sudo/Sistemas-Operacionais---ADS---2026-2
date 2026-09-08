read -p "Digite o nome do primeiro arquivo: " arq1
read -p "Digite o nome do segundo arquivo: " arq2
read -p "Digite o nome do arquivo de destino: " destino
 
if [ ! -f "$arq1" ] || [ ! -f "$arq2" ]; then
    echo "Erro: um dos arquivos informados não existe."
    exit 1
fi
 
cat "$arq1" "$arq2" >> "$destino"
 
echo "Conteúdo adicionado com sucesso ao final de '$destino'."
