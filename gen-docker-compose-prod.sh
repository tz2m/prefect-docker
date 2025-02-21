#!/bin/bash

# Verifica se o arquivo .env existe
if [ ! -f .env ]; then
    echo "Erro: Arquivo .env não encontrado."
    exit 1
fi

# Exporta as variáveis do .env para o ambiente
export $(grep -v '^#' .env | xargs)

# Substitui as variáveis no docker-compose.yml e salva como docker-compose-prod.yml
envsubst < docker-compose.yml > docker-compose-prod.yml

echo "Arquivo docker-compose-prod.yml gerado com sucesso."
