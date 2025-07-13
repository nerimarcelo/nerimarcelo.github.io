#!/bin/bash

lista=$(find . -name "Capitulo*")

for arquivo in $lista; do
dataArquivo=$(grep -Eo "2025-0[6-7]-[0-9][0-9]" $arquivo)
nomeArquivo=$(basename "$arquivo")

echo "$arquivo -> $dataArquivo-$nomeArquivo"
mv -v $arquivo $dataArquivo-$nomeArquivo

done
