read -p "Digite o nome do primeiro arquivo: " arq1
read -p "Digite o nome do segundo arquivo: " arq2
 
if [ ! -f "$arq1" ] || [ ! -f "$arq2" ]; then
    echo "Erro: um dos arquivos informados não existe."
    exit 1
fi
 
diferencas=$(diff "$arq1" "$arq2")
 
if [ -z "$diferencas" ]; then
    echo "Os arquivos são iguais."
else
    echo "Os arquivos possuem diferenças."
    echo ""
    echo "Diferenças encontradas:"
    echo "$diferencas"
fi
