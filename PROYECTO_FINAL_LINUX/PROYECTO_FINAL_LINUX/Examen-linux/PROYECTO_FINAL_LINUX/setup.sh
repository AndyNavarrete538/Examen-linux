#!/bin/bash


echo "--- [1/3] Actualizando el sistema... ---"
sudo apt-get update -y

echo "--- [2/3] Instalando Git, Curl y Docker... ---"

sudo apt-get install -y git curl docker.io docker-compose

echo "--- [3/3] Iniciando servicios... ---"

sudo systemctl start docker
sudo systemctl enable docker

echo "--- ¡Instalación completada! ---"
echo "Versión de Docker instalada:"
docker --version
