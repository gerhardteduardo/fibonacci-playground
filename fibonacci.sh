#!/bin/bash

# Define os valores iniciais
F0=0
F1=1

# Declara array para armazenar a sequência
declare -a fibonacci
index=0

# Lê o tamanho da sequência desejada
read -p "Fibonacci size: " size

if ! [[ "$size" =~ ^[0-9]+$ ]] || [ "$size" -le 0 ]; then
  echo "Error: Please enter an integer greater than 0."
  exit 1
fi

while [ ${index} -le $((size - 1)) ]; do
  if [ ${index} -eq 0 ]; then
    fibonacci[${index}]=${F0}
  elif [ ${index} -eq 1 ]; then
    fibonacci[${index}]=${F1}
  else
    # Usa bc para somar com precisão arbitrária
    fibonacci[${index}]="$(echo "${fibonacci[$((index - 2))]} + ${fibonacci[$((index - 1))]}" | bc)"
  fi

  index=$((index + 1))
done

echo ""
echo "Fibonacci Sequence: ${fibonacci[@]}"
