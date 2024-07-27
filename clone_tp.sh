#!/bin/bash

# Credenciales para el segundo repositorio
USUARIO="mollonr"
TOKEN="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"

# Primer repositorio (clonación directa)
echo "Clonando el repositorio so-deploy..."
git clone https://github.com/sisoputnfrba/so-deploy.git

# Segundo repositorio (clonación con credenciales)
echo "Clonando el repositorio tp-2024-1c-Grupo-1..."
git clone https://${USUARIO}:${TOKEN}@github.com/sisoputnfrba/tp-2024-1c-Grupo-1.git

echo "Clonación completada."

# Cambiar al directorio so-deploy
echo "Cambiando al directorio so-deploy..."
cd so-deploy

# Ejecutar el script deploy.sh con el argumento tp-2024-1c-Grupo-1
echo "Ejecutando deploy.sh con el argumento tp-2024-1c-Grupo-1..."
./deploy.sh tp-2024-1c-Grupo-1

echo "Despliegue completado."
