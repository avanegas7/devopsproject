#!/bin/bash

echo "🔹 Construyendo imagen..."
docker build -t devopsproject -f docker/Dockerfile .

echo "🔹 Etiquetando imagen..."
docker tag devopsproject avanegas7/devopsproject:latest

echo "🔹 Subiendo a DockerHub..."
docker push avanegas7/devopsproject:latest

echo "✅ Imagen subida correctamente"