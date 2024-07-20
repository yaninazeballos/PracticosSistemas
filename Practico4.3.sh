#!/bin/bash
while true; do
    timestamp=$(date +"%Y%m%d%H%M%S")
    tar -czf "backup-$timestamp.tar.gz" /home/miusuario >/dev/null 2>&1

    # Verificar el código de retorno ($?) del comando tar
    if [ $? -eq 0 ]; then
        echo "Backup generado correctamente: backup-$timestamp.tar.gz"
    else
        echo "Error al generar el backup. Código de error: $?"
    fi

    sleep 300 # 300 seconds = 5 minutes
done
