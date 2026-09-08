read -p "Digite o PID do processo que deseja encerrar: " pid
 
if ! ps -p "$pid" &>/dev/null; then
    echo "Erro: não existe processo em execução com o PID $pid."
    exit 1
fi
 
echo "PID informado: $pid"
ps -p "$pid"
read -p "Deseja realmente encerrar esse processo? (s/n): " confirmacao
 
if [ "$confirmacao" = "s" ] || [ "$confirmacao" = "S" ]; then
    kill "$pid"
    echo "Processo $pid encerrado."
else
    echo "Operação cancelada."
fi
 
