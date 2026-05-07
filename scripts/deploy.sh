#!/bin/bash

echo "🔹 Construyendo imagen..."
docker build -t health-app .

echo "🔹 Etiquetando imagen..."
docker tag health-app your-dockerhub-user/health-app:latest

echo "🔹 Subiendo a DockerHub..."
docker push your-dockerhub-user/health-app:latest

echo "🔹 Desplegando en Kubernetes..."
kubectl apply -f k8s/

echo "✅ Despliegue completo"