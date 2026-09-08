#!/bin/bash 

  

clear 

  

read -p "infome um numero" n1 

read -p "informe um numero" n2 

  

echo "Escolha a funçao matematica a ser feito" 

echo "digite 1 para soma" 

echo "digite 2 para subtraçao" 

echo "digite 3 para multiplicaçao" 

echo "digite 4 para divisao" 

echo "digite 5 para sair"  

  

read -p "Informe a funçao: " x 

  

case $x in 

1) 

echo "1" 

soma=$(expr $n1 + $n2)  

        echo "valor $soma" 

        ;; 

2) 

echo "2" 

        subtracao=$(expr $n1 - $n2)  

        echo "valor $subtracao" 

;; 

3) 

echo "3" 

        multiplicacao=$(expr $n1 \* $n2)  

        echo "valor $multiplicacao" 

;; 

4) 

echo "4" 

        divisao=$(expr $n1 / $n2)  

        echo "valor $divisao" 

;; 

5) 

echo "5" 

        echo "voce saiu" 

;; 

*) 

echo "Erro. OP Encerrada" 

esac 
