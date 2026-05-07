#!/bin/bash

URL="http://localhost:5000/health"

STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ $STATUS -eq 200 ]; then
  echo "✅ Servicio saludable"
else
  echo "❌ Error en servicio"
  exit 1
fi