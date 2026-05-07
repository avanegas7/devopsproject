#!/bin/bash

URL="http://localhost:30007/health"

STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ $STATUS -eq 200 ]; then
  echo "✅ Servicio saludable"
else
  echo "❌ Error en servicio"
fi