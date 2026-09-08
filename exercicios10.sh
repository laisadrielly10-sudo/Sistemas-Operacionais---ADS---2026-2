read -p "Digite o nome do usuário: " usuario
 
if ! id "$usuario" &>/dev/null; then
    echo "Erro: o usuário '$usuario' não existe."
    exit 1
fi
 
home=$(eval echo "~$usuario")
espaco=$(du -sh "$home" 2>/dev/null | cut -f1)
 
echo "Nome do usuário: $usuario"
echo "Diretório home: $home"
echo "Espaço utilizado: $espaco"

 
