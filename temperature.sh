#!/bin/bash

UMBRAL=45

# Función para obtener la temperatura de la CPU
obtener_temperatura() {
    TEMPERATURA=$(sensors | grep "Tctl" | awk '{print $2}' | cut -c2- | cut -d'.' -f1)
    echo "$TEMPERATURA"
}

# Función para enviar un mensaje
enviar_mensaje() {
    MENSAJE="La temperatura de la CPU ha superado el umbral. Actual: $1°C"
    echo "$MENSAJE"
}

while true; do
    TEMPERATURA_ACTUAL=$(obtener_temperatura)

    if [ "$TEMPERATURA_ACTUAL" -gt "$UMBRAL" ]; then
        enviar_mensaje "$TEMPERATURA_ACTUAL"
    fi

    # Intervalo de espera
    sleep 5
done
