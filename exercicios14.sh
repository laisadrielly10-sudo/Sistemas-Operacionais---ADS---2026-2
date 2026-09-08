read -p "Digite o processo que deseja procurar: " processo
 
resultado=$(ps aux | grep -i "$processo" | grep -v grep)
 
if [ -n "$resultado" ]; then
    echo "Processos encontrados:"
    echo "$resultado"
else
    echo "Nenhum processo encontrado com o nome '$processo'."
fi
 
