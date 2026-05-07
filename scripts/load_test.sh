#!/bin/bash

echo "🔥 Ejecutando prueba de carga..."

for i in {1..50}
do
  curl -s "http://localhost:5000/health" &
done

wait

echo "✅ Prueba completada"